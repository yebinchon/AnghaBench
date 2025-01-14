; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_pwm.c_carrier_with_configuration_test.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_pwm.c_carrier_with_configuration_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32, i32, i32)* @carrier_with_configuration_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carrier_with_configuration_test(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_3__, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %13, align 4
  %24 = call i32 @mcpwm_basic_config(i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* %16, align 4
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %17, align 4
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %14, align 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 4
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %18, align 4
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %15, align 4
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @mcpwm_carrier_init(i32 %35, i32 %36, %struct.TYPE_3__* %19)
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %9
  %41 = load i32, i32* %16, align 4
  %42 = add nsw i32 %41, 1
  %43 = sdiv i32 62500, %42
  %44 = call i32 @judge_count_value(i32 500, i32 %43)
  br label %50

45:                                               ; preds = %9
  %46 = load i32, i32* %16, align 4
  %47 = add nsw i32 %46, 1
  %48 = sdiv i32 40000, %47
  %49 = call i32 @judge_count_value(i32 500, i32 %48)
  br label %50

50:                                               ; preds = %45, %40
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @mcpwm_carrier_disable(i32 %51, i32 %52)
  %54 = call i32 @TEST_ESP_OK(i32 %53)
  %55 = call i32 @judge_count_value(i32 2, i32 1000)
  ret void
}

declare dso_local i32 @mcpwm_basic_config(i32, i32, i32, i32) #1

declare dso_local i32 @mcpwm_carrier_init(i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @judge_count_value(i32, i32) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @mcpwm_carrier_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
