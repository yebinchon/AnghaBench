; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_chk_32_pi.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_chk_32_pi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_TYPE = common dso_local global i32 0, align 4
@DX = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@VFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4
@CFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4
@FLAG_N = common dso_local global i32 0, align 4
@EXCEPTION_CHK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_chk_32_pi() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @CPU_TYPE, align 4
  %4 = call i64 @CPU_TYPE_IS_EC020_PLUS(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %0
  %7 = load i32, i32* @DX, align 4
  %8 = call i64 @MAKE_INT_32(i32 %7)
  store i64 %8, i64* %1, align 8
  %9 = call i32 (...) @OPER_AY_PI_32()
  %10 = call i64 @MAKE_INT_32(i32 %9)
  store i64 %10, i64* %2, align 8
  %11 = load i64, i64* %1, align 8
  %12 = call i32 @ZFLAG_32(i64 %11)
  store i32 %12, i32* @FLAG_Z, align 4
  %13 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %13, i32* @FLAG_V, align 4
  %14 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %14, i32* @FLAG_C, align 4
  %15 = load i64, i64* %1, align 8
  %16 = icmp sge i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %6
  %18 = load i64, i64* %1, align 8
  %19 = load i64, i64* %2, align 8
  %20 = icmp sle i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %31

22:                                               ; preds = %17, %6
  %23 = load i64, i64* %1, align 8
  %24 = icmp slt i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = shl i32 %25, 7
  store i32 %26, i32* @FLAG_N, align 4
  %27 = load i32, i32* @EXCEPTION_CHK, align 4
  %28 = call i32 @m68ki_exception_trap(i32 %27)
  br label %31

29:                                               ; preds = %0
  %30 = call i32 (...) @m68ki_exception_illegal()
  br label %31

31:                                               ; preds = %29, %22, %21
  ret void
}

declare dso_local i64 @CPU_TYPE_IS_EC020_PLUS(i32) #1

declare dso_local i64 @MAKE_INT_32(i32) #1

declare dso_local i32 @OPER_AY_PI_32(...) #1

declare dso_local i32 @ZFLAG_32(i64) #1

declare dso_local i32 @m68ki_exception_trap(i32) #1

declare dso_local i32 @m68ki_exception_illegal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
