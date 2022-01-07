; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_bls_16.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_bls_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_PC = common dso_local global i32 0, align 4
@CYC_BCC_NOTAKE_W = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_bls_16() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 (...) @COND_LS()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = call i32 (...) @OPER_I_16()
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* @REG_PC, align 4
  %7 = sub nsw i32 %6, 2
  store i32 %7, i32* @REG_PC, align 4
  %8 = call i32 (...) @m68ki_trace_t0()
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @m68ki_branch_16(i32 %9)
  br label %16

11:                                               ; preds = %0
  %12 = load i32, i32* @REG_PC, align 4
  %13 = add nsw i32 %12, 2
  store i32 %13, i32* @REG_PC, align 4
  %14 = load i32, i32* @CYC_BCC_NOTAKE_W, align 4
  %15 = call i32 @USE_CYCLES(i32 %14)
  br label %16

16:                                               ; preds = %11, %4
  ret void
}

declare dso_local i64 @COND_LS(...) #1

declare dso_local i32 @OPER_I_16(...) #1

declare dso_local i32 @m68ki_trace_t0(...) #1

declare dso_local i32 @m68ki_branch_16(i32) #1

declare dso_local i32 @USE_CYCLES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
