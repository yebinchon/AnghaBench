; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kcpu.c_m68k_set_cpu_type.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kcpu.c_m68k_set_cpu_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_TYPE_000 = common dso_local global i32 0, align 4
@CPU_TYPE = common dso_local global i32 0, align 4
@CPU_ADDRESS_MASK = common dso_local global i32 0, align 4
@CPU_SR_MASK = common dso_local global i32 0, align 4
@m68ki_cycles = common dso_local global i32* null, align 8
@CYC_INSTRUCTION = common dso_local global i32 0, align 4
@m68ki_exception_cycle_table = common dso_local global i32* null, align 8
@CYC_EXCEPTION = common dso_local global i32 0, align 4
@CYC_BCC_NOTAKE_B = common dso_local global i32 0, align 4
@CYC_BCC_NOTAKE_W = common dso_local global i32 0, align 4
@CYC_DBCC_F_NOEXP = common dso_local global i32 0, align 4
@CYC_DBCC_F_EXP = common dso_local global i32 0, align 4
@CYC_SCC_R_TRUE = common dso_local global i32 0, align 4
@CYC_MOVEM_W = common dso_local global i32 0, align 4
@CYC_MOVEM_L = common dso_local global i32 0, align 4
@CYC_SHIFT = common dso_local global i32 0, align 4
@CYC_RESET = common dso_local global i32 0, align 4
@CPU_TYPE_010 = common dso_local global i32 0, align 4
@CPU_TYPE_EC020 = common dso_local global i32 0, align 4
@CPU_TYPE_020 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_set_cpu_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %36 [
    i32 131, label %4
    i32 130, label %12
    i32 128, label %20
    i32 129, label %28
  ]

4:                                                ; preds = %1
  %5 = load i32, i32* @CPU_TYPE_000, align 4
  store i32 %5, i32* @CPU_TYPE, align 4
  store i32 16777215, i32* @CPU_ADDRESS_MASK, align 4
  store i32 42783, i32* @CPU_SR_MASK, align 4
  %6 = load i32*, i32** @m68ki_cycles, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* @CYC_INSTRUCTION, align 4
  %9 = load i32*, i32** @m68ki_exception_cycle_table, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* @CYC_EXCEPTION, align 4
  store i32 -2, i32* @CYC_BCC_NOTAKE_B, align 4
  store i32 2, i32* @CYC_BCC_NOTAKE_W, align 4
  store i32 -2, i32* @CYC_DBCC_F_NOEXP, align 4
  store i32 2, i32* @CYC_DBCC_F_EXP, align 4
  store i32 2, i32* @CYC_SCC_R_TRUE, align 4
  store i32 2, i32* @CYC_MOVEM_W, align 4
  store i32 3, i32* @CYC_MOVEM_L, align 4
  store i32 1, i32* @CYC_SHIFT, align 4
  store i32 132, i32* @CYC_RESET, align 4
  br label %36

12:                                               ; preds = %1
  %13 = load i32, i32* @CPU_TYPE_010, align 4
  store i32 %13, i32* @CPU_TYPE, align 4
  store i32 16777215, i32* @CPU_ADDRESS_MASK, align 4
  store i32 42783, i32* @CPU_SR_MASK, align 4
  %14 = load i32*, i32** @m68ki_cycles, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* @CYC_INSTRUCTION, align 4
  %17 = load i32*, i32** @m68ki_exception_cycle_table, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* @CYC_EXCEPTION, align 4
  store i32 -4, i32* @CYC_BCC_NOTAKE_B, align 4
  store i32 0, i32* @CYC_BCC_NOTAKE_W, align 4
  store i32 0, i32* @CYC_DBCC_F_NOEXP, align 4
  store i32 6, i32* @CYC_DBCC_F_EXP, align 4
  store i32 0, i32* @CYC_SCC_R_TRUE, align 4
  store i32 2, i32* @CYC_MOVEM_W, align 4
  store i32 3, i32* @CYC_MOVEM_L, align 4
  store i32 1, i32* @CYC_SHIFT, align 4
  store i32 130, i32* @CYC_RESET, align 4
  br label %36

20:                                               ; preds = %1
  %21 = load i32, i32* @CPU_TYPE_EC020, align 4
  store i32 %21, i32* @CPU_TYPE, align 4
  store i32 16777215, i32* @CPU_ADDRESS_MASK, align 4
  store i32 63263, i32* @CPU_SR_MASK, align 4
  %22 = load i32*, i32** @m68ki_cycles, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* @CYC_INSTRUCTION, align 4
  %25 = load i32*, i32** @m68ki_exception_cycle_table, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* @CYC_EXCEPTION, align 4
  store i32 -2, i32* @CYC_BCC_NOTAKE_B, align 4
  store i32 0, i32* @CYC_BCC_NOTAKE_W, align 4
  store i32 0, i32* @CYC_DBCC_F_NOEXP, align 4
  store i32 4, i32* @CYC_DBCC_F_EXP, align 4
  store i32 0, i32* @CYC_SCC_R_TRUE, align 4
  store i32 2, i32* @CYC_MOVEM_W, align 4
  store i32 2, i32* @CYC_MOVEM_L, align 4
  store i32 0, i32* @CYC_SHIFT, align 4
  store i32 518, i32* @CYC_RESET, align 4
  br label %36

28:                                               ; preds = %1
  %29 = load i32, i32* @CPU_TYPE_020, align 4
  store i32 %29, i32* @CPU_TYPE, align 4
  store i32 -1, i32* @CPU_ADDRESS_MASK, align 4
  store i32 63263, i32* @CPU_SR_MASK, align 4
  %30 = load i32*, i32** @m68ki_cycles, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* @CYC_INSTRUCTION, align 4
  %33 = load i32*, i32** @m68ki_exception_cycle_table, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* @CYC_EXCEPTION, align 4
  store i32 -2, i32* @CYC_BCC_NOTAKE_B, align 4
  store i32 0, i32* @CYC_BCC_NOTAKE_W, align 4
  store i32 0, i32* @CYC_DBCC_F_NOEXP, align 4
  store i32 4, i32* @CYC_DBCC_F_EXP, align 4
  store i32 0, i32* @CYC_SCC_R_TRUE, align 4
  store i32 2, i32* @CYC_MOVEM_W, align 4
  store i32 2, i32* @CYC_MOVEM_L, align 4
  store i32 0, i32* @CYC_SHIFT, align 4
  store i32 518, i32* @CYC_RESET, align 4
  br label %36

36:                                               ; preds = %4, %12, %20, %28, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
