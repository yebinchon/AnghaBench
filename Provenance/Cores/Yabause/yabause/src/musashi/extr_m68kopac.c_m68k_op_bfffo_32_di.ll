; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_bfffo_32_di.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_bfffo_32_di.c"
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
define dso_local void @m68k_op_bfffo_32_di() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @CPU_TYPE, align 4
  %9 = call i64 @CPU_TYPE_IS_EC020_PLUS(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %116

11:                                               ; preds = %0
  %12 = call i32 (...) @OPER_I_16()
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = ashr i32 %13, 6
  %15 = and i32 %14, 31
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %1, align 4
  store i32 %16, i32* %4, align 4
  %17 = call i32 (...) @EA_AY_DI_8()
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %1, align 4
  %19 = call i64 @BIT_B(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %11
  %22 = load i32*, i32** @REG_D, align 8
  %23 = load i32, i32* %2, align 4
  %24 = and i32 %23, 7
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @MAKE_INT_32(i32 %27)
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %21, %11
  %30 = load i32, i32* %1, align 4
  %31 = call i64 @BIT_5(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i32*, i32** @REG_D, align 8
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, 7
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %33, %29
  %41 = load i32, i32* %2, align 4
  %42 = sdiv i32 %41, 8
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %2, align 4
  %46 = srem i32 %45, 8
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %40
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 8
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %49, %40
  %55 = load i32, i32* %4, align 4
  %56 = sub nsw i32 %55, 1
  %57 = and i32 %56, 31
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @m68ki_read_32(i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %3, align 4
  %63 = shl i32 %61, %62
  %64 = call i32 @MASK_OUT_ABOVE_32(i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %65, %66
  %68 = icmp sgt i32 %67, 32
  br i1 %68, label %69, label %78

69:                                               ; preds = %54
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 4
  %72 = call i32 @m68ki_read_8(i32 %71)
  %73 = load i32, i32* %3, align 4
  %74 = shl i32 %72, %73
  %75 = ashr i32 %74, 8
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %69, %54
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @NFLAG_32(i32 %79)
  store i32 %80, i32* @FLAG_N, align 4
  %81 = load i32, i32* %4, align 4
  %82 = sub nsw i32 32, %81
  %83 = load i32, i32* %5, align 4
  %84 = ashr i32 %83, %82
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* @FLAG_Z, align 4
  %86 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %86, i32* @FLAG_V, align 4
  %87 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %87, i32* @FLAG_C, align 4
  %88 = load i32, i32* %4, align 4
  %89 = sub nsw i32 %88, 1
  %90 = shl i32 1, %89
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %105, %78
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %6, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  br label %100

100:                                              ; preds = %94, %91
  %101 = phi i1 [ false, %91 ], [ %99, %94 ]
  br i1 %101, label %102, label %108

102:                                              ; preds = %100
  %103 = load i32, i32* %2, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %6, align 4
  %107 = ashr i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %91

108:                                              ; preds = %100
  %109 = load i32, i32* %2, align 4
  %110 = load i32*, i32** @REG_D, align 8
  %111 = load i32, i32* %1, align 4
  %112 = ashr i32 %111, 12
  %113 = and i32 %112, 7
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %110, i64 %114
  store i32 %109, i32* %115, align 4
  br label %118

116:                                              ; preds = %0
  %117 = call i32 (...) @m68ki_exception_illegal()
  br label %118

118:                                              ; preds = %116, %108
  ret void
}

declare dso_local i64 @CPU_TYPE_IS_EC020_PLUS(i32) #1

declare dso_local i32 @OPER_I_16(...) #1

declare dso_local i32 @EA_AY_DI_8(...) #1

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
