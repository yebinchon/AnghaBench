; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_dport.c_accessDPORT2_stall_other_cpu.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_dport.c_accessDPORT2_stall_other_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dport_test_result = common dso_local global i32 0, align 4
@exit_flag = common dso_local global i32 0, align 4
@xt_highint5_read_apb = common dso_local global i32 0, align 4
@DPORT_DATE_REG = common dso_local global i32 0, align 4
@apb_test_result = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"accessDPORT2_stall_other_cpu finish\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @accessDPORT2_stall_other_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @accessDPORT2_stall_other_cpu(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to i32*
  store i32* %6, i32** %3, align 8
  store i32 1, i32* @dport_test_result, align 4
  br label %7

7:                                                ; preds = %28, %1
  %8 = load i32, i32* @exit_flag, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %7
  %11 = call i32 (...) @DPORT_STALL_OTHER_CPU_START()
  %12 = call i32 (...) @XTHAL_GET_CCOUNT()
  %13 = call i32 @XTHAL_SET_CCOMPARE(i32 2, i32 %12)
  store i32 1, i32* @xt_highint5_read_apb, align 4
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %25, %10
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 200
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = load i32, i32* @DPORT_DATE_REG, align 4
  %19 = call i64 @_DPORT_REG_READ(i32 %18)
  %20 = load i32, i32* @DPORT_DATE_REG, align 4
  %21 = call i64 @_DPORT_REG_READ(i32 %20)
  %22 = icmp ne i64 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* @apb_test_result, align 4
  br label %28

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %14

28:                                               ; preds = %23, %14
  store i32 0, i32* @xt_highint5_read_apb, align 4
  %29 = call i32 (...) @DPORT_STALL_OTHER_CPU_END()
  br label %7

30:                                               ; preds = %7
  %31 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @xSemaphoreGive(i32 %33)
  %35 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @DPORT_STALL_OTHER_CPU_START(...) #1

declare dso_local i32 @XTHAL_SET_CCOMPARE(i32, i32) #1

declare dso_local i32 @XTHAL_GET_CCOUNT(...) #1

declare dso_local i64 @_DPORT_REG_READ(i32) #1

declare dso_local i32 @DPORT_STALL_OTHER_CPU_END(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
