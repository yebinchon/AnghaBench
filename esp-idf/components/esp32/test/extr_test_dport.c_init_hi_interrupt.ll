; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_dport.c_init_hi_interrupt.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_dport.c_init_hi_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"init hi_interrupt on CPU%d \0A\00", align 1
@ETS_INTERNAL_TIMER2_INTR_SOURCE = common dso_local global i32 0, align 4
@ESP_INTR_FLAG_LEVEL5 = common dso_local global i32 0, align 4
@ESP_INTR_FLAG_IRAM = common dso_local global i32 0, align 4
@inth = common dso_local global i32 0, align 4
@exit_flag = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"disable hi_interrupt on CPU%d \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @init_hi_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_hi_interrupt(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 (...) @xPortGetCoreID()
  %4 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %3)
  %5 = load i32, i32* @ETS_INTERNAL_TIMER2_INTR_SOURCE, align 4
  %6 = load i32, i32* @ESP_INTR_FLAG_LEVEL5, align 4
  %7 = load i32, i32* @ESP_INTR_FLAG_IRAM, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @esp_intr_alloc(i32 %5, i32 %8, i32* null, i32* null, i32* @inth)
  %10 = call i32 @TEST_ESP_OK(i32 %9)
  br label %11

11:                                               ; preds = %14, %1
  %12 = load i32, i32* @exit_flag, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %11

15:                                               ; preds = %11
  %16 = load i32, i32* @inth, align 4
  %17 = call i32 @esp_intr_free(i32 %16)
  %18 = call i32 (...) @xPortGetCoreID()
  %19 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @xPortGetCoreID(...) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @esp_intr_alloc(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @esp_intr_free(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
