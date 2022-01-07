; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_cas2_32.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_cas2_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_TYPE = common dso_local global i32 0, align 4
@REG_D = common dso_local global i32* null, align 8
@REG_DA = common dso_local global i32* null, align 8
@FLAG_N = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_cas2_32() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* @CPU_TYPE, align 4
  %11 = call i64 @CPU_TYPE_IS_EC020_PLUS(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %112

13:                                               ; preds = %0
  %14 = call i32 (...) @OPER_I_32()
  store i32 %14, i32* %1, align 4
  %15 = load i32*, i32** @REG_D, align 8
  %16 = load i32, i32* %1, align 4
  %17 = ashr i32 %16, 16
  %18 = and i32 %17, 7
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %15, i64 %19
  store i32* %20, i32** %2, align 8
  %21 = load i32*, i32** @REG_DA, align 8
  %22 = load i32, i32* %1, align 4
  %23 = ashr i32 %22, 28
  %24 = and i32 %23, 15
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @m68ki_read_32(i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %30, %32
  store i32 %33, i32* %5, align 4
  %34 = load i32*, i32** @REG_D, align 8
  %35 = load i32, i32* %1, align 4
  %36 = and i32 %35, 7
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  store i32* %38, i32** %6, align 8
  %39 = load i32*, i32** @REG_DA, align 8
  %40 = load i32, i32* %1, align 4
  %41 = ashr i32 %40, 12
  %42 = and i32 %41, 15
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @m68ki_read_32(i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = call i32 (...) @m68ki_trace_t0()
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @NFLAG_32(i32 %49)
  store i32 %50, i32* @FLAG_N, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @MASK_OUT_ABOVE_32(i32 %51)
  store i32 %52, i32* @FLAG_Z, align 4
  %53 = load i32*, i32** %2, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @VFLAG_SUB_32(i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* @FLAG_V, align 4
  %58 = load i32*, i32** %2, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @CFLAG_SUB_32(i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* @FLAG_C, align 4
  %63 = call i64 (...) @COND_EQ()
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %107

65:                                               ; preds = %13
  %66 = load i32, i32* %8, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %66, %68
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @NFLAG_32(i32 %70)
  store i32 %71, i32* @FLAG_N, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @MASK_OUT_ABOVE_32(i32 %72)
  store i32 %73, i32* @FLAG_Z, align 4
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @VFLAG_SUB_32(i32 %75, i32 %76, i32 %77)
  store i32 %78, i32* @FLAG_V, align 4
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @CFLAG_SUB_32(i32 %80, i32 %81, i32 %82)
  store i32 %83, i32* @FLAG_C, align 4
  %84 = call i64 (...) @COND_EQ()
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %106

86:                                               ; preds = %65
  %87 = call i32 @USE_CYCLES(i32 3)
  %88 = load i32, i32* %3, align 4
  %89 = load i32*, i32** @REG_D, align 8
  %90 = load i32, i32* %1, align 4
  %91 = ashr i32 %90, 22
  %92 = and i32 %91, 7
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %89, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @m68ki_write_32(i32 %88, i32 %95)
  %97 = load i32, i32* %7, align 4
  %98 = load i32*, i32** @REG_D, align 8
  %99 = load i32, i32* %1, align 4
  %100 = ashr i32 %99, 6
  %101 = and i32 %100, 7
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %98, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @m68ki_write_32(i32 %97, i32 %104)
  br label %114

106:                                              ; preds = %65
  br label %107

107:                                              ; preds = %106, %13
  %108 = load i32, i32* %4, align 4
  %109 = load i32*, i32** %2, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load i32*, i32** %6, align 8
  store i32 %110, i32* %111, align 4
  br label %114

112:                                              ; preds = %0
  %113 = call i32 (...) @m68ki_exception_illegal()
  br label %114

114:                                              ; preds = %112, %107, %86
  ret void
}

declare dso_local i64 @CPU_TYPE_IS_EC020_PLUS(i32) #1

declare dso_local i32 @OPER_I_32(...) #1

declare dso_local i32 @m68ki_read_32(i32) #1

declare dso_local i32 @m68ki_trace_t0(...) #1

declare dso_local i32 @NFLAG_32(i32) #1

declare dso_local i32 @MASK_OUT_ABOVE_32(i32) #1

declare dso_local i32 @VFLAG_SUB_32(i32, i32, i32) #1

declare dso_local i32 @CFLAG_SUB_32(i32, i32, i32) #1

declare dso_local i64 @COND_EQ(...) #1

declare dso_local i32 @USE_CYCLES(i32) #1

declare dso_local i32 @m68ki_write_32(i32, i32) #1

declare dso_local i32 @m68ki_exception_illegal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
