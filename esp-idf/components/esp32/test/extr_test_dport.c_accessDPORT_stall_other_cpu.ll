; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_dport.c_accessDPORT_stall_other_cpu.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_dport.c_accessDPORT_stall_other_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DPORT_DATE_REG = common dso_local global i32 0, align 4
@dport_test_result = common dso_local global i32 0, align 4
@stall_other_cpu_counter = common dso_local global i64 0, align 8
@exit_flag = common dso_local global i32 0, align 4
@apb_test_result = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @accessDPORT_stall_other_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @accessDPORT_stall_other_cpu(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %3, align 8
  %8 = load i32, i32* @DPORT_DATE_REG, align 4
  %9 = call i64 @DPORT_REG_READ(i32 %8)
  store i64 %9, i64* %4, align 8
  store i32 1, i32* @dport_test_result, align 4
  store i64 0, i64* @stall_other_cpu_counter, align 8
  br label %10

10:                                               ; preds = %24, %1
  %11 = load i32, i32* @exit_flag, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load i64, i64* @stall_other_cpu_counter, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* @stall_other_cpu_counter, align 8
  %16 = call i32 (...) @DPORT_STALL_OTHER_CPU_START()
  %17 = load i32, i32* @DPORT_DATE_REG, align 4
  %18 = call i64 @_DPORT_REG_READ(i32 %17)
  store i64 %18, i64* %5, align 8
  %19 = call i32 (...) @DPORT_STALL_OTHER_CPU_END()
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  store i32 0, i32* @apb_test_result, align 4
  br label %25

24:                                               ; preds = %13
  br label %10

25:                                               ; preds = %23, %10
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @xSemaphoreGive(i32 %27)
  %29 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i64 @DPORT_REG_READ(i32) #1

declare dso_local i32 @DPORT_STALL_OTHER_CPU_START(...) #1

declare dso_local i64 @_DPORT_REG_READ(i32) #1

declare dso_local i32 @DPORT_STALL_OTHER_CPU_END(...) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
