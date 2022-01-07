; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopdm.c_m68k_op_divs_16_i.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopdm.c_m68k_op_divs_16_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DX = common dso_local global i64 0, align 8
@FLAG_Z = common dso_local global i32 0, align 4
@NFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_N = common dso_local global i32 0, align 4
@VFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4
@CFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4
@VFLAG_SET = common dso_local global i32 0, align 4
@EXCEPTION_ZERO_DIVIDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_divs_16_i() #0 {
  %1 = alloca i64*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64* @DX, i64** %1, align 8
  %5 = call i32 (...) @OPER_I_16()
  %6 = call i32 @MAKE_INT_16(i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %52

9:                                                ; preds = %0
  %10 = load i64*, i64** %1, align 8
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = icmp eq i32 %12, -2147483648
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load i32, i32* %2, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  store i32 0, i32* @FLAG_Z, align 4
  %18 = load i32, i32* @NFLAG_CLEAR, align 4
  store i32 %18, i32* @FLAG_N, align 4
  %19 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %19, i32* @FLAG_V, align 4
  %20 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %20, i32* @FLAG_C, align 4
  %21 = load i64*, i64** %1, align 8
  store i64 0, i64* %21, align 8
  br label %55

22:                                               ; preds = %14, %9
  %23 = load i64*, i64** %1, align 8
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @MAKE_INT_32(i64 %24)
  %26 = load i32, i32* %2, align 4
  %27 = sdiv i32 %25, %26
  store i32 %27, i32* %3, align 4
  %28 = load i64*, i64** %1, align 8
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @MAKE_INT_32(i64 %29)
  %31 = load i32, i32* %2, align 4
  %32 = srem i32 %30, %31
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @MAKE_INT_16(i32 %34)
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %22
  %38 = load i32, i32* %3, align 4
  store i32 %38, i32* @FLAG_Z, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @NFLAG_16(i32 %39)
  store i32 %40, i32* @FLAG_N, align 4
  %41 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %41, i32* @FLAG_V, align 4
  %42 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %42, i32* @FLAG_C, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @MASK_OUT_ABOVE_16(i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = shl i32 %45, 16
  %47 = or i32 %44, %46
  %48 = call i64 @MASK_OUT_ABOVE_32(i32 %47)
  %49 = load i64*, i64** %1, align 8
  store i64 %48, i64* %49, align 8
  br label %55

50:                                               ; preds = %22
  %51 = load i32, i32* @VFLAG_SET, align 4
  store i32 %51, i32* @FLAG_V, align 4
  br label %55

52:                                               ; preds = %0
  %53 = load i32, i32* @EXCEPTION_ZERO_DIVIDE, align 4
  %54 = call i32 @m68ki_exception_trap(i32 %53)
  br label %55

55:                                               ; preds = %52, %50, %37, %17
  ret void
}

declare dso_local i32 @MAKE_INT_16(i32) #1

declare dso_local i32 @OPER_I_16(...) #1

declare dso_local i32 @MAKE_INT_32(i64) #1

declare dso_local i32 @NFLAG_16(i32) #1

declare dso_local i64 @MASK_OUT_ABOVE_32(i32) #1

declare dso_local i32 @MASK_OUT_ABOVE_16(i32) #1

declare dso_local i32 @m68ki_exception_trap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
