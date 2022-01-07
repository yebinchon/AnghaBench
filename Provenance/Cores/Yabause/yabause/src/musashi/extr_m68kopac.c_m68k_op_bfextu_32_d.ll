; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_bfextu_32_d.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_bfextu_32_d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_TYPE = common dso_local global i32 0, align 4
@DY = common dso_local global i32 0, align 4
@REG_D = common dso_local global i32* null, align 8
@FLAG_N = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@VFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4
@CFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_bfextu_32_d() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @CPU_TYPE, align 4
  %6 = call i64 @CPU_TYPE_IS_EC020_PLUS(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %62

8:                                                ; preds = %0
  %9 = call i32 (...) @OPER_I_16()
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = ashr i32 %10, 6
  %12 = and i32 %11, 31
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %1, align 4
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @DY, align 4
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %1, align 4
  %16 = call i64 @BIT_B(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %8
  %19 = load i32*, i32** @REG_D, align 8
  %20 = load i32, i32* %2, align 4
  %21 = and i32 %20, 7
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %18, %8
  %26 = load i32, i32* %1, align 4
  %27 = call i64 @BIT_5(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i32*, i32** @REG_D, align 8
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, 7
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %29, %25
  %37 = load i32, i32* %2, align 4
  %38 = and i32 %37, 31
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* %3, align 4
  %40 = sub nsw i32 %39, 1
  %41 = and i32 %40, 31
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @ROL_32(i32 %43, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @NFLAG_32(i32 %46)
  store i32 %47, i32* @FLAG_N, align 4
  %48 = load i32, i32* %3, align 4
  %49 = sub nsw i32 32, %48
  %50 = load i32, i32* %4, align 4
  %51 = ashr i32 %50, %49
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* @FLAG_Z, align 4
  %53 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %53, i32* @FLAG_V, align 4
  %54 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %54, i32* @FLAG_C, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32*, i32** @REG_D, align 8
  %57 = load i32, i32* %1, align 4
  %58 = ashr i32 %57, 12
  %59 = and i32 %58, 7
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  store i32 %55, i32* %61, align 4
  br label %64

62:                                               ; preds = %0
  %63 = call i32 (...) @m68ki_exception_illegal()
  br label %64

64:                                               ; preds = %62, %36
  ret void
}

declare dso_local i64 @CPU_TYPE_IS_EC020_PLUS(i32) #1

declare dso_local i32 @OPER_I_16(...) #1

declare dso_local i64 @BIT_B(i32) #1

declare dso_local i64 @BIT_5(i32) #1

declare dso_local i32 @ROL_32(i32, i32) #1

declare dso_local i32 @NFLAG_32(i32) #1

declare dso_local i32 @m68ki_exception_illegal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
