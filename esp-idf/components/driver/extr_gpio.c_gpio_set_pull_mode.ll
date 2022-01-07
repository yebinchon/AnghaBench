; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_gpio.c_gpio_set_pull_mode.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_gpio.c_gpio_set_pull_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"GPIO number error\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"GPIO pull mode error\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@GPIO_TAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Unknown pull up/down mode,gpio_num=%u,pull=%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpio_set_pull_mode(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @GPIO_IS_VALID_GPIO(i32 %6)
  %8 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %9 = call i32 @GPIO_CHECK(i32 %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = icmp sle i32 %10, 131
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %14 = call i32 @GPIO_CHECK(i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @ESP_OK, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %37 [
    i32 129, label %17
    i32 130, label %22
    i32 128, label %27
    i32 131, label %32
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @gpio_pulldown_dis(i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @gpio_pullup_en(i32 %20)
  br label %43

22:                                               ; preds = %2
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @gpio_pulldown_en(i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @gpio_pullup_dis(i32 %25)
  br label %43

27:                                               ; preds = %2
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @gpio_pulldown_en(i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @gpio_pullup_en(i32 %30)
  br label %43

32:                                               ; preds = %2
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @gpio_pulldown_dis(i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @gpio_pullup_dis(i32 %35)
  br label %43

37:                                               ; preds = %2
  %38 = load i32, i32* @GPIO_TAG, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @ESP_LOGE(i32 %38, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %37, %32, %27, %22, %17
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @GPIO_CHECK(i32, i8*, i32) #1

declare dso_local i32 @GPIO_IS_VALID_GPIO(i32) #1

declare dso_local i32 @gpio_pulldown_dis(i32) #1

declare dso_local i32 @gpio_pullup_en(i32) #1

declare dso_local i32 @gpio_pulldown_en(i32) #1

declare dso_local i32 @gpio_pullup_dis(i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
