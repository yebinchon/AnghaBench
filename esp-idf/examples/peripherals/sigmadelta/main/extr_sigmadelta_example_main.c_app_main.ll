; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/sigmadelta/main/extr_sigmadelta_example_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/sigmadelta/main/extr_sigmadelta_example_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGMADELTA_CHANNEL_0 = common dso_local global i32 0, align 4
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @sigmadelta_example_init()
  store i32 0, i32* %1, align 4
  store i32 1, i32* %2, align 4
  br label %4

4:                                                ; preds = %0, %22
  %5 = load i32, i32* @SIGMADELTA_CHANNEL_0, align 4
  %6 = load i32, i32* %1, align 4
  %7 = call i32 @sigmadelta_set_duty(i32 %5, i32 %6)
  %8 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %9 = sdiv i32 10, %8
  %10 = call i32 @vTaskDelay(i32 %9)
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, %11
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = icmp eq i32 %14, 127
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %1, align 4
  %18 = icmp eq i32 %17, -127
  br i1 %18, label %19, label %22

19:                                               ; preds = %16, %4
  %20 = load i32, i32* %2, align 4
  %21 = mul nsw i32 -1, %20
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %19, %16
  br label %4
}

declare dso_local i32 @sigmadelta_example_init(...) #1

declare dso_local i32 @sigmadelta_set_duty(i32, i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
