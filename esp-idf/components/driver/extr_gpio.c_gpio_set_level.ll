; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_gpio.c_gpio_set_level.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_gpio.c_gpio_set_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"GPIO output gpio_num error\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@GPIO = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpio_set_level(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @GPIO_IS_VALID_OUTPUT_GPIO(i32 %5)
  %7 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %8 = call i32 @GPIO_CHECK(i32 %6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 32
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = shl i32 1, %15
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @GPIO, i32 0, i32 0), align 4
  br label %21

17:                                               ; preds = %11
  %18 = load i32, i32* %3, align 4
  %19 = sub nsw i32 %18, 32
  %20 = shl i32 1, %19
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @GPIO, i32 0, i32 3, i32 0), align 4
  br label %21

21:                                               ; preds = %17, %14
  br label %33

22:                                               ; preds = %2
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 32
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* %3, align 4
  %27 = shl i32 1, %26
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @GPIO, i32 0, i32 1), align 4
  br label %32

28:                                               ; preds = %22
  %29 = load i32, i32* %3, align 4
  %30 = sub nsw i32 %29, 32
  %31 = shl i32 1, %30
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @GPIO, i32 0, i32 2, i32 0), align 4
  br label %32

32:                                               ; preds = %28, %25
  br label %33

33:                                               ; preds = %32, %21
  %34 = load i32, i32* @ESP_OK, align 4
  ret i32 %34
}

declare dso_local i32 @GPIO_CHECK(i32, i8*, i32) #1

declare dso_local i32 @GPIO_IS_VALID_OUTPUT_GPIO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
