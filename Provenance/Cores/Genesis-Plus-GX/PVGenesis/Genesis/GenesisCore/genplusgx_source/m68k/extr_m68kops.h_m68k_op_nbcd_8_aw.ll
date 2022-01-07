; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_nbcd_8_aw.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_nbcd_8_aw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FLAG_V = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@CFLAG_SET = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4
@XFLAG_SET = common dso_local global i32 0, align 4
@FLAG_X = common dso_local global i32 0, align 4
@VFLAG_CLEAR = common dso_local global i32 0, align 4
@CFLAG_CLEAR = common dso_local global i32 0, align 4
@XFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_N = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @m68k_op_nbcd_8_aw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m68k_op_nbcd_8_aw() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @EA_AW_8()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = call i32 @m68ki_read_8(i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = sub nsw i32 154, %7
  %9 = call i32 (...) @XFLAG_AS_1()
  %10 = sub nsw i32 %8, %9
  %11 = call i32 @MASK_OUT_ABOVE_8(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 154
  br i1 %13, label %14, label %39

14:                                               ; preds = %0
  %15 = load i32, i32* %3, align 4
  %16 = xor i32 %15, -1
  store i32 %16, i32* @FLAG_V, align 4
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, 15
  %19 = icmp eq i32 %18, 10
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, 240
  %23 = add nsw i32 %22, 16
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %20, %14
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @MASK_OUT_ABOVE_8(i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @FLAG_V, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* @FLAG_V, align 4
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @MASK_OUT_ABOVE_8(i32 %31)
  %33 = call i32 @m68ki_write_8(i32 %30, i32 %32)
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @FLAG_Z, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* @FLAG_Z, align 4
  %37 = load i32, i32* @CFLAG_SET, align 4
  store i32 %37, i32* @FLAG_C, align 4
  %38 = load i32, i32* @XFLAG_SET, align 4
  store i32 %38, i32* @FLAG_X, align 4
  br label %43

39:                                               ; preds = %0
  %40 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %40, i32* @FLAG_V, align 4
  %41 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %41, i32* @FLAG_C, align 4
  %42 = load i32, i32* @XFLAG_CLEAR, align 4
  store i32 %42, i32* @FLAG_X, align 4
  br label %43

43:                                               ; preds = %39, %24
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @NFLAG_8(i32 %44)
  store i32 %45, i32* @FLAG_N, align 4
  ret void
}

declare dso_local i32 @EA_AW_8(...) #1

declare dso_local i32 @m68ki_read_8(i32) #1

declare dso_local i32 @MASK_OUT_ABOVE_8(i32) #1

declare dso_local i32 @XFLAG_AS_1(...) #1

declare dso_local i32 @m68ki_write_8(i32, i32) #1

declare dso_local i32 @NFLAG_8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
