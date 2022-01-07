; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_bfffo_32_d.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_bfffo_32_d.c"
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
define dso_local void @m68k_op_bfffo_32_d() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @CPU_TYPE, align 4
  %7 = call i64 @CPU_TYPE_IS_EC020_PLUS(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %84

9:                                                ; preds = %0
  %10 = call i32 (...) @OPER_I_16()
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = ashr i32 %11, 6
  %13 = and i32 %12, 31
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %1, align 4
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @DY, align 4
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %1, align 4
  %17 = call i64 @BIT_B(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %9
  %20 = load i32*, i32** @REG_D, align 8
  %21 = load i32, i32* %2, align 4
  %22 = and i32 %21, 7
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %19, %9
  %27 = load i32, i32* %1, align 4
  %28 = call i64 @BIT_5(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i32*, i32** @REG_D, align 8
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, 7
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %30, %26
  %38 = load i32, i32* %2, align 4
  %39 = and i32 %38, 31
  store i32 %39, i32* %2, align 4
  %40 = load i32, i32* %3, align 4
  %41 = sub nsw i32 %40, 1
  %42 = and i32 %41, 31
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @ROL_32(i32 %44, i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @NFLAG_32(i32 %47)
  store i32 %48, i32* @FLAG_N, align 4
  %49 = load i32, i32* %3, align 4
  %50 = sub nsw i32 32, %49
  %51 = load i32, i32* %4, align 4
  %52 = ashr i32 %51, %50
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* @FLAG_Z, align 4
  %54 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %54, i32* @FLAG_V, align 4
  %55 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %55, i32* @FLAG_C, align 4
  %56 = load i32, i32* %3, align 4
  %57 = sub nsw i32 %56, 1
  %58 = shl i32 1, %57
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %73, %37
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %5, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  br label %68

68:                                               ; preds = %62, %59
  %69 = phi i1 [ false, %59 ], [ %67, %62 ]
  br i1 %69, label %70, label %76

70:                                               ; preds = %68
  %71 = load i32, i32* %2, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %5, align 4
  %75 = ashr i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %59

76:                                               ; preds = %68
  %77 = load i32, i32* %2, align 4
  %78 = load i32*, i32** @REG_D, align 8
  %79 = load i32, i32* %1, align 4
  %80 = ashr i32 %79, 12
  %81 = and i32 %80, 7
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %78, i64 %82
  store i32 %77, i32* %83, align 4
  br label %86

84:                                               ; preds = %0
  %85 = call i32 (...) @m68ki_exception_illegal()
  br label %86

86:                                               ; preds = %84, %76
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
