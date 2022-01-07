; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_bfexts_32_aw.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_bfexts_32_aw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_TYPE = common dso_local global i32 0, align 4
@REG_D = common dso_local global i32* null, align 8
@FLAG_N = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@VFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4
@CFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_bfexts_32_aw() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @CPU_TYPE, align 4
  %7 = call i64 @CPU_TYPE_IS_EC020_PLUS(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %94

9:                                                ; preds = %0
  %10 = call i32 (...) @OPER_I_16()
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = ashr i32 %11, 6
  %13 = and i32 %12, 31
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %1, align 4
  store i32 %14, i32* %3, align 4
  %15 = call i32 (...) @EA_AW_8()
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %1, align 4
  %17 = call i64 @BIT_B(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %9
  %20 = load i32*, i32** @REG_D, align 8
  %21 = load i32, i32* %2, align 4
  %22 = and i32 %21, 7
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @MAKE_INT_32(i32 %25)
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %19, %9
  %28 = load i32, i32* %1, align 4
  %29 = call i64 @BIT_5(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i32*, i32** @REG_D, align 8
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, 7
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %31, %27
  %39 = load i32, i32* %2, align 4
  %40 = sdiv i32 %39, 8
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %2, align 4
  %44 = srem i32 %43, 8
  store i32 %44, i32* %2, align 4
  %45 = load i32, i32* %2, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load i32, i32* %2, align 4
  %49 = add nsw i32 %48, 8
  store i32 %49, i32* %2, align 4
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %47, %38
  %53 = load i32, i32* %3, align 4
  %54 = sub nsw i32 %53, 1
  %55 = and i32 %54, 31
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @m68ki_read_32(i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %2, align 4
  %61 = shl i32 %59, %60
  %62 = call i32 @MASK_OUT_ABOVE_32(i32 %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %2, align 4
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %63, %64
  %66 = icmp sgt i32 %65, 32
  br i1 %66, label %67, label %76

67:                                               ; preds = %52
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 4
  %70 = call i32 @m68ki_read_8(i32 %69)
  %71 = load i32, i32* %2, align 4
  %72 = shl i32 %70, %71
  %73 = ashr i32 %72, 8
  %74 = load i32, i32* %4, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %67, %52
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @NFLAG_32(i32 %77)
  store i32 %78, i32* @FLAG_N, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @MAKE_INT_32(i32 %79)
  %81 = load i32, i32* %3, align 4
  %82 = sub nsw i32 32, %81
  %83 = ashr i32 %80, %82
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* @FLAG_Z, align 4
  %85 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %85, i32* @FLAG_V, align 4
  %86 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %86, i32* @FLAG_C, align 4
  %87 = load i32, i32* %4, align 4
  %88 = load i32*, i32** @REG_D, align 8
  %89 = load i32, i32* %1, align 4
  %90 = ashr i32 %89, 12
  %91 = and i32 %90, 7
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %88, i64 %92
  store i32 %87, i32* %93, align 4
  br label %96

94:                                               ; preds = %0
  %95 = call i32 (...) @m68ki_exception_illegal()
  br label %96

96:                                               ; preds = %94, %76
  ret void
}

declare dso_local i64 @CPU_TYPE_IS_EC020_PLUS(i32) #1

declare dso_local i32 @OPER_I_16(...) #1

declare dso_local i32 @EA_AW_8(...) #1

declare dso_local i64 @BIT_B(i32) #1

declare dso_local i32 @MAKE_INT_32(i32) #1

declare dso_local i64 @BIT_5(i32) #1

declare dso_local i32 @m68ki_read_32(i32) #1

declare dso_local i32 @MASK_OUT_ABOVE_32(i32) #1

declare dso_local i32 @m68ki_read_8(i32) #1

declare dso_local i32 @NFLAG_32(i32) #1

declare dso_local i32 @m68ki_exception_illegal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
