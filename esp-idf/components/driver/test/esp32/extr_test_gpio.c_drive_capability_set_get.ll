; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_gpio.c_drive_capability_set_get.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_gpio.c_drive_capability_set_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPIO_DRIVE_CAP_MAX = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @drive_capability_set_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drive_capability_set_get(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @init_io(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = call i32 @gpio_config(i32* %5)
  %10 = call i32 @TEST_ESP_OK(i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @GPIO_DRIVE_CAP_MAX, align 4
  %13 = call i32 @gpio_set_drive_capability(i32 %11, i32 %12)
  %14 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @TEST_ASSERT(i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @gpio_set_drive_capability(i32 %18, i32 %19)
  %21 = call i32 @TEST_ESP_OK(i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @gpio_get_drive_capability(i32 %22, i32* %6)
  %24 = call i32 @TEST_ESP_OK(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @TEST_ASSERT_EQUAL_INT(i32 %25, i32 %26)
  ret void
}

declare dso_local i32 @init_io(i32) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @gpio_config(i32*) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @gpio_set_drive_capability(i32, i32) #1

declare dso_local i32 @gpio_get_drive_capability(i32, i32*) #1

declare dso_local i32 @TEST_ASSERT_EQUAL_INT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
