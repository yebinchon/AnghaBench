; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_dbcs_16.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_dbcs_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DY = common dso_local global i32 0, align 4
@REG_PC = common dso_local global i32 0, align 4
@CYC_DBCC_F_NOEXP = common dso_local global i32 0, align 4
@CYC_DBCC_F_EXP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @m68k_op_dbcs_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m68k_op_dbcs_16() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i64 (...) @COND_NOT_CS()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %32

6:                                                ; preds = %0
  store i32* @DY, i32** %1, align 8
  %7 = load i32*, i32** %1, align 8
  %8 = load i32, i32* %7, align 4
  %9 = sub nsw i32 %8, 1
  %10 = call i32 @MASK_OUT_ABOVE_16(i32 %9)
  store i32 %10, i32* %2, align 4
  %11 = load i32*, i32** %1, align 8
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @MASK_OUT_BELOW_16(i32 %12)
  %14 = load i32, i32* %2, align 4
  %15 = or i32 %13, %14
  %16 = load i32*, i32** %1, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp ne i32 %17, 65535
  br i1 %18, label %19, label %27

19:                                               ; preds = %6
  %20 = call i32 (...) @OPER_I_16()
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @REG_PC, align 4
  %22 = sub nsw i32 %21, 2
  store i32 %22, i32* @REG_PC, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @m68ki_branch_16(i32 %23)
  %25 = load i32, i32* @CYC_DBCC_F_NOEXP, align 4
  %26 = call i32 @USE_CYCLES(i32 %25)
  br label %35

27:                                               ; preds = %6
  %28 = load i32, i32* @REG_PC, align 4
  %29 = add nsw i32 %28, 2
  store i32 %29, i32* @REG_PC, align 4
  %30 = load i32, i32* @CYC_DBCC_F_EXP, align 4
  %31 = call i32 @USE_CYCLES(i32 %30)
  br label %35

32:                                               ; preds = %0
  %33 = load i32, i32* @REG_PC, align 4
  %34 = add nsw i32 %33, 2
  store i32 %34, i32* @REG_PC, align 4
  br label %35

35:                                               ; preds = %32, %27, %19
  ret void
}

declare dso_local i64 @COND_NOT_CS(...) #1

declare dso_local i32 @MASK_OUT_ABOVE_16(i32) #1

declare dso_local i32 @MASK_OUT_BELOW_16(i32) #1

declare dso_local i32 @OPER_I_16(...) #1

declare dso_local i32 @m68ki_branch_16(i32) #1

declare dso_local i32 @USE_CYCLES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
