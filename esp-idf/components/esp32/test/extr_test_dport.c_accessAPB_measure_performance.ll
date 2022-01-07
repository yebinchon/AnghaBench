; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_dport.c_accessAPB_measure_performance.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_dport.c_accessAPB_measure_performance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@apb_test_result = common dso_local global i32 0, align 4
@apb_counter = common dso_local global i64 0, align 8
@exit_flag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @accessAPB_measure_performance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @accessAPB_measure_performance(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to i32*
  store i32* %6, i32** %3, align 8
  %7 = call i32 @UART_DATE_REG(i32 0)
  %8 = call i64 @REG_READ(i32 %7)
  store i64 %8, i64* %4, align 8
  store i32 1, i32* @apb_test_result, align 4
  store i64 0, i64* @apb_counter, align 8
  br label %9

9:                                                ; preds = %20, %1
  %10 = load i32, i32* @exit_flag, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load i64, i64* @apb_counter, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* @apb_counter, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @UART_DATE_REG(i32 0)
  %17 = call i64 @REG_READ(i32 %16)
  %18 = icmp ne i64 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 0, i32* @apb_test_result, align 4
  br label %21

20:                                               ; preds = %12
  br label %9

21:                                               ; preds = %19, %9
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @xSemaphoreGive(i32 %23)
  %25 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i64 @REG_READ(i32) #1

declare dso_local i32 @UART_DATE_REG(i32) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
