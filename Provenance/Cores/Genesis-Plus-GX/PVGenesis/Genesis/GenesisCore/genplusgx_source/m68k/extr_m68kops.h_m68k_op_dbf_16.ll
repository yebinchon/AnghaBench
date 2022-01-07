; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_dbf_16.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_dbf_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@DY = common dso_local global i32 0, align 4
@m68ki_cpu = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@REG_PC = common dso_local global i32 0, align 4
@CYC_DBCC_F_NOEXP = common dso_local global i32 0, align 4
@CYC_DBCC_F_EXP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @m68k_op_dbf_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m68k_op_dbf_16() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32* @DY, i32** %1, align 8
  %4 = load i32*, i32** %1, align 8
  %5 = load i32, i32* %4, align 4
  %6 = sub nsw i32 %5, 1
  %7 = call i32 @MASK_OUT_ABOVE_16(i32 %6)
  store i32 %7, i32* %2, align 4
  %8 = load i32*, i32** %1, align 8
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @MASK_OUT_BELOW_16(i32 %9)
  %11 = load i32, i32* %2, align 4
  %12 = or i32 %10, %11
  %13 = load i32*, i32** %1, align 8
  store i32 %12, i32* %13, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @m68ki_cpu, i32 0, i32 0, i32 0), align 8
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 65535
  br i1 %15, label %16, label %24

16:                                               ; preds = %0
  %17 = call i32 (...) @OPER_I_16()
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @REG_PC, align 4
  %19 = sub nsw i32 %18, 2
  store i32 %19, i32* @REG_PC, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @m68ki_branch_16(i32 %20)
  %22 = load i32, i32* @CYC_DBCC_F_NOEXP, align 4
  %23 = call i32 @USE_CYCLES(i32 %22)
  br label %29

24:                                               ; preds = %0
  %25 = load i32, i32* @REG_PC, align 4
  %26 = add nsw i32 %25, 2
  store i32 %26, i32* @REG_PC, align 4
  %27 = load i32, i32* @CYC_DBCC_F_EXP, align 4
  %28 = call i32 @USE_CYCLES(i32 %27)
  br label %29

29:                                               ; preds = %24, %16
  ret void
}

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
