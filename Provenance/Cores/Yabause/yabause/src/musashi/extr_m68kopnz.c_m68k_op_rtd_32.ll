; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopnz.c_m68k_op_rtd_32.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopnz.c_m68k_op_rtd_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_TYPE = common dso_local global i32 0, align 4
@REG_A = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_rtd_32() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @CPU_TYPE, align 4
  %3 = call i64 @CPU_TYPE_IS_010_PLUS(i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %0
  %6 = call i32 (...) @m68ki_pull_32()
  store i32 %6, i32* %1, align 4
  %7 = call i32 (...) @m68ki_trace_t0()
  %8 = load i64*, i64** @REG_A, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 7
  %10 = load i64, i64* %9, align 8
  %11 = call i32 (...) @OPER_I_16()
  %12 = call i64 @MAKE_INT_16(i32 %11)
  %13 = add nsw i64 %10, %12
  %14 = call i64 @MASK_OUT_ABOVE_32(i64 %13)
  %15 = load i64*, i64** @REG_A, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 7
  store i64 %14, i64* %16, align 8
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @m68ki_jump(i32 %17)
  br label %21

19:                                               ; preds = %0
  %20 = call i32 (...) @m68ki_exception_illegal()
  br label %21

21:                                               ; preds = %19, %5
  ret void
}

declare dso_local i64 @CPU_TYPE_IS_010_PLUS(i32) #1

declare dso_local i32 @m68ki_pull_32(...) #1

declare dso_local i32 @m68ki_trace_t0(...) #1

declare dso_local i64 @MASK_OUT_ABOVE_32(i64) #1

declare dso_local i64 @MAKE_INT_16(i32) #1

declare dso_local i32 @OPER_I_16(...) #1

declare dso_local i32 @m68ki_jump(i32) #1

declare dso_local i32 @m68ki_exception_illegal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
