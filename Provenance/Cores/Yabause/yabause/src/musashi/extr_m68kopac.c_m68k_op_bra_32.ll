; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_bra_32.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_bra_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_TYPE = common dso_local global i32 0, align 4
@REG_PC = common dso_local global i64 0, align 8
@REG_PPC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_bra_32() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @CPU_TYPE, align 4
  %3 = call i64 @CPU_TYPE_IS_EC020_PLUS(i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %0
  %6 = call i32 (...) @OPER_I_32()
  store i32 %6, i32* %1, align 4
  %7 = load i64, i64* @REG_PC, align 8
  %8 = sub nsw i64 %7, 4
  store i64 %8, i64* @REG_PC, align 8
  %9 = call i32 (...) @m68ki_trace_t0()
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @m68ki_branch_32(i32 %10)
  %12 = load i64, i64* @REG_PC, align 8
  %13 = load i64, i64* @REG_PPC, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = call i32 (...) @USE_ALL_CYCLES()
  br label %17

17:                                               ; preds = %15, %5
  br label %20

18:                                               ; preds = %0
  %19 = call i32 (...) @m68ki_exception_illegal()
  br label %20

20:                                               ; preds = %18, %17
  ret void
}

declare dso_local i64 @CPU_TYPE_IS_EC020_PLUS(i32) #1

declare dso_local i32 @OPER_I_32(...) #1

declare dso_local i32 @m68ki_trace_t0(...) #1

declare dso_local i32 @m68ki_branch_32(i32) #1

declare dso_local i32 @USE_ALL_CYCLES(...) #1

declare dso_local i32 @m68ki_exception_illegal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
