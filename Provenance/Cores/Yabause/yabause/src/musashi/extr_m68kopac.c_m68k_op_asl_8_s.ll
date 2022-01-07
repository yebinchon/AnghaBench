; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_asl_8_s.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_asl_8_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DY = common dso_local global i32 0, align 4
@REG_IR = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4
@FLAG_X = common dso_local global i32 0, align 4
@FLAG_N = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@m68ki_shift_8_table = common dso_local global i32* null, align 8
@FLAG_V = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_asl_8_s() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* @DY, i32** %1, align 8
  %5 = load i32, i32* @REG_IR, align 4
  %6 = ashr i32 %5, 9
  %7 = sub nsw i32 %6, 1
  %8 = and i32 %7, 7
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %2, align 4
  %10 = load i32*, i32** %1, align 8
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @MASK_OUT_ABOVE_8(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %2, align 4
  %15 = shl i32 %13, %14
  %16 = call i32 @MASK_OUT_ABOVE_8(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32*, i32** %1, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @MASK_OUT_BELOW_8(i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %19, %20
  %22 = load i32*, i32** %1, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %2, align 4
  %25 = shl i32 %23, %24
  store i32 %25, i32* @FLAG_C, align 4
  store i32 %25, i32* @FLAG_X, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @NFLAG_8(i32 %26)
  store i32 %27, i32* @FLAG_N, align 4
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* @FLAG_Z, align 4
  %29 = load i32*, i32** @m68ki_shift_8_table, align 8
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %0
  %40 = load i32, i32* %3, align 4
  %41 = load i32*, i32** @m68ki_shift_8_table, align 8
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %40, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* %2, align 4
  %50 = icmp slt i32 %49, 8
  br label %51

51:                                               ; preds = %48, %39
  %52 = phi i1 [ false, %39 ], [ %50, %48 ]
  br label %53

53:                                               ; preds = %51, %0
  %54 = phi i1 [ true, %0 ], [ %52, %51 ]
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = shl i32 %56, 7
  store i32 %57, i32* @FLAG_V, align 4
  ret void
}

declare dso_local i32 @MASK_OUT_ABOVE_8(i32) #1

declare dso_local i32 @MASK_OUT_BELOW_8(i32) #1

declare dso_local i32 @NFLAG_8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
