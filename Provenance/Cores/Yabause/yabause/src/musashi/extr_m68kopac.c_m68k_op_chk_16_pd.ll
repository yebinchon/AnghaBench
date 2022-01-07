; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_chk_16_pd.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_chk_16_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DX = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@VFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4
@CFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4
@FLAG_N = common dso_local global i32 0, align 4
@EXCEPTION_CHK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_chk_16_pd() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @DX, align 4
  %4 = call i64 @MAKE_INT_16(i32 %3)
  store i64 %4, i64* %1, align 8
  %5 = call i32 (...) @OPER_AY_PD_16()
  %6 = call i64 @MAKE_INT_16(i32 %5)
  store i64 %6, i64* %2, align 8
  %7 = load i64, i64* %1, align 8
  %8 = call i32 @ZFLAG_16(i64 %7)
  store i32 %8, i32* @FLAG_Z, align 4
  %9 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %9, i32* @FLAG_V, align 4
  %10 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %10, i32* @FLAG_C, align 4
  %11 = load i64, i64* %1, align 8
  %12 = icmp sge i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %0
  %14 = load i64, i64* %1, align 8
  %15 = load i64, i64* %2, align 8
  %16 = icmp sle i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %25

18:                                               ; preds = %13, %0
  %19 = load i64, i64* %1, align 8
  %20 = icmp slt i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = shl i32 %21, 7
  store i32 %22, i32* @FLAG_N, align 4
  %23 = load i32, i32* @EXCEPTION_CHK, align 4
  %24 = call i32 @m68ki_exception_trap(i32 %23)
  br label %25

25:                                               ; preds = %18, %17
  ret void
}

declare dso_local i64 @MAKE_INT_16(i32) #1

declare dso_local i32 @OPER_AY_PD_16(...) #1

declare dso_local i32 @ZFLAG_16(i64) #1

declare dso_local i32 @m68ki_exception_trap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
