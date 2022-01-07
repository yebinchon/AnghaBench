; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-video-glide64mk2/src/GlideHQ/tc-1.1+/extr_fxt1.c_fxt1_quantize_CHROMA.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-video-glide64mk2/src/GlideHQ/tc-1.1+/extr_fxt1.c_fxt1_quantize_CHROMA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@N_TEXELS = common dso_local global i32 0, align 4
@MAX_COMP = common dso_local global i32 0, align 4
@MAX_VECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @fxt1_quantize_CHROMA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fxt1_quantize_CHROMA(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = load i32, i32* @N_TEXELS, align 4
  %17 = zext i32 %16 to i64
  %18 = load i32, i32* @MAX_COMP, align 4
  %19 = zext i32 %18 to i64
  store i32 4, i32* %5, align 4
  store i32 3, i32* %6, align 4
  %20 = load i32, i32* @MAX_VECT, align 4
  %21 = zext i32 %20 to i64
  %22 = load i32, i32* @MAX_COMP, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %7, align 8
  %25 = mul nuw i64 %21, %23
  %26 = alloca float, i64 %25, align 16
  store i64 %21, i64* %8, align 8
  store i64 %23, i64* %9, align 8
  %27 = bitcast float* %26 to float**
  %28 = load i32*, i32** %4, align 8
  %29 = bitcast i32* %28 to i32**
  %30 = load i32, i32* @N_TEXELS, align 4
  %31 = call i64 @fxt1_choose(float** %27, i32 4, i32** %29, i32 3, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %2
  %34 = bitcast float* %26 to float**
  %35 = load i32*, i32** %4, align 8
  %36 = bitcast i32* %35 to i32**
  %37 = load i32, i32* @N_TEXELS, align 4
  %38 = call i32 @fxt1_lloyd(float** %34, i32 4, i32** %36, i32 3, i32 %37)
  br label %39

39:                                               ; preds = %33, %2
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @Q_MOV32(i32 %40, i32 4)
  store i32 3, i32* %11, align 4
  br label %42

42:                                               ; preds = %68, %39
  %43 = load i32, i32* %11, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %71

45:                                               ; preds = %42
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %64, %45
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 3
  br i1 %48, label %49, label %67

49:                                               ; preds = %46
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @Q_SHL(i32 %50, i32 5)
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = mul nsw i64 %54, %23
  %56 = getelementptr inbounds float, float* %26, i64 %55
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, float* %56, i64 %58
  %60 = load float, float* %59, align 4
  %61 = fdiv float %60, 8.000000e+00
  %62 = fptosi float %61 to i32
  %63 = call i32 @Q_OR32(i32 %52, i32 %62)
  br label %64

64:                                               ; preds = %49
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %46

67:                                               ; preds = %46
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %11, align 4
  br label %42

71:                                               ; preds = %42
  %72 = load i32, i32* %13, align 4
  %73 = load i32*, i32** %3, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 %72, i32* %74, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  %75 = load i32, i32* @N_TEXELS, align 4
  %76 = sub nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %94, %71
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @N_TEXELS, align 4
  %80 = sdiv i32 %79, 2
  %81 = icmp sge i32 %78, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %77
  %83 = load i32, i32* %14, align 4
  %84 = shl i32 %83, 2
  store i32 %84, i32* %14, align 4
  %85 = bitcast float* %26 to float**
  %86 = load i32*, i32** %4, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = mul nsw i64 %88, %19
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = call i32 @fxt1_bestcol(float** %85, i32 4, i32* %90, i32 3)
  %92 = load i32, i32* %14, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %14, align 4
  br label %94

94:                                               ; preds = %82
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %12, align 4
  br label %77

97:                                               ; preds = %77
  br label %98

98:                                               ; preds = %113, %97
  %99 = load i32, i32* %12, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %98
  %102 = load i32, i32* %15, align 4
  %103 = shl i32 %102, 2
  store i32 %103, i32* %15, align 4
  %104 = bitcast float* %26 to float**
  %105 = load i32*, i32** %4, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = mul nsw i64 %107, %19
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = call i32 @fxt1_bestcol(float** %104, i32 4, i32* %109, i32 3)
  %111 = load i32, i32* %15, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %15, align 4
  br label %113

113:                                              ; preds = %101
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %12, align 4
  br label %98

116:                                              ; preds = %98
  %117 = load i32, i32* %14, align 4
  %118 = load i32*, i32** %3, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %15, align 4
  %121 = load i32*, i32** %3, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  store i32 %120, i32* %122, align 4
  %123 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %123)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @fxt1_choose(float**, i32, i32**, i32, i32) #2

declare dso_local i32 @fxt1_lloyd(float**, i32, i32**, i32, i32) #2

declare dso_local i32 @Q_MOV32(i32, i32) #2

declare dso_local i32 @Q_SHL(i32, i32) #2

declare dso_local i32 @Q_OR32(i32, i32) #2

declare dso_local i32 @fxt1_bestcol(float**, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
