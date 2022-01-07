; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-video-glide64mk2/src/GlideHQ/tc-1.1+/extr_fxt1.c_fxt1_quantize_ALPHA0.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-video-glide64mk2/src/GlideHQ/tc-1.1+/extr_fxt1.c_fxt1_quantize_ALPHA0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@N_TEXELS = common dso_local global i32 0, align 4
@MAX_COMP = common dso_local global i32 0, align 4
@MAX_VECT = common dso_local global i32 0, align 4
@ACOMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32)* @fxt1_quantize_ALPHA0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fxt1_quantize_ALPHA0(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %20 = load i32, i32* @N_TEXELS, align 4
  %21 = zext i32 %20 to i64
  %22 = load i32, i32* @MAX_COMP, align 4
  %23 = zext i32 %22 to i64
  %24 = load i32, i32* @N_TEXELS, align 4
  %25 = zext i32 %24 to i64
  %26 = load i32, i32* @MAX_COMP, align 4
  %27 = zext i32 %26 to i64
  store i32 3, i32* %9, align 4
  store i32 4, i32* %10, align 4
  %28 = load i32, i32* @MAX_VECT, align 4
  %29 = zext i32 %28 to i64
  %30 = load i32, i32* @MAX_COMP, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %11, align 8
  %33 = mul nuw i64 %29, %31
  %34 = alloca float, i64 %33, align 16
  store i64 %29, i64* %12, align 8
  store i64 %31, i64* %13, align 8
  store i32 0, i32* %14, align 4
  br label %35

35:                                               ; preds = %44, %4
  %36 = load i32, i32* %14, align 4
  %37 = icmp slt i32 %36, 4
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = mul nsw i64 3, %31
  %40 = getelementptr inbounds float, float* %34, i64 %39
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %40, i64 %42
  store float 0.000000e+00, float* %43, align 4
  br label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %14, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %14, align 4
  br label %35

47:                                               ; preds = %35
  %48 = bitcast float* %34 to float**
  %49 = load i32*, i32** %7, align 8
  %50 = bitcast i32* %49 to i32**
  %51 = load i32, i32* %8, align 4
  %52 = call i64 @fxt1_choose(float** %48, i32 3, i32** %50, i32 4, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = bitcast float* %34 to float**
  %56 = load i32*, i32** %7, align 8
  %57 = bitcast i32* %56 to i32**
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @fxt1_lloyd(float** %55, i32 3, i32** %57, i32 4, i32 %58)
  br label %60

60:                                               ; preds = %54, %47
  %61 = load i32, i32* %17, align 4
  %62 = call i32 @Q_MOV32(i32 %61, i32 6)
  store i32 2, i32* %15, align 4
  br label %63

63:                                               ; preds = %80, %60
  %64 = load i32, i32* %15, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %63
  %67 = load i32, i32* %17, align 4
  %68 = call i32 @Q_SHL(i32 %67, i32 5)
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* %15, align 4
  %71 = sext i32 %70 to i64
  %72 = mul nsw i64 %71, %31
  %73 = getelementptr inbounds float, float* %34, i64 %72
  %74 = load i64, i64* @ACOMP, align 8
  %75 = getelementptr inbounds float, float* %73, i64 %74
  %76 = load float, float* %75, align 4
  %77 = fdiv float %76, 8.000000e+00
  %78 = fptosi float %77 to i32
  %79 = call i32 @Q_OR32(i32 %69, i32 %78)
  br label %80

80:                                               ; preds = %66
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %15, align 4
  br label %63

83:                                               ; preds = %63
  store i32 2, i32* %15, align 4
  br label %84

84:                                               ; preds = %110, %83
  %85 = load i32, i32* %15, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %113

87:                                               ; preds = %84
  store i32 0, i32* %14, align 4
  br label %88

88:                                               ; preds = %106, %87
  %89 = load i32, i32* %14, align 4
  %90 = icmp slt i32 %89, 3
  br i1 %90, label %91, label %109

91:                                               ; preds = %88
  %92 = load i32, i32* %17, align 4
  %93 = call i32 @Q_SHL(i32 %92, i32 5)
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = mul nsw i64 %96, %31
  %98 = getelementptr inbounds float, float* %34, i64 %97
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, float* %98, i64 %100
  %102 = load float, float* %101, align 4
  %103 = fdiv float %102, 8.000000e+00
  %104 = fptosi float %103 to i32
  %105 = call i32 @Q_OR32(i32 %94, i32 %104)
  br label %106

106:                                              ; preds = %91
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %14, align 4
  br label %88

109:                                              ; preds = %88
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %15, align 4
  br label %84

113:                                              ; preds = %84
  %114 = load i32, i32* %17, align 4
  %115 = load i32*, i32** %5, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  store i32 %114, i32* %116, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  %117 = load i32, i32* @N_TEXELS, align 4
  %118 = sub nsw i32 %117, 1
  store i32 %118, i32* %16, align 4
  br label %119

119:                                              ; preds = %136, %113
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* @N_TEXELS, align 4
  %122 = sdiv i32 %121, 2
  %123 = icmp sge i32 %120, %122
  br i1 %123, label %124, label %139

124:                                              ; preds = %119
  %125 = load i32, i32* %18, align 4
  %126 = shl i32 %125, 2
  store i32 %126, i32* %18, align 4
  %127 = bitcast float* %34 to float**
  %128 = load i32*, i32** %6, align 8
  %129 = load i32, i32* %16, align 4
  %130 = sext i32 %129 to i64
  %131 = mul nsw i64 %130, %23
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  %133 = call i32 @fxt1_bestcol(float** %127, i32 4, i32* %132, i32 4)
  %134 = load i32, i32* %18, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %18, align 4
  br label %136

136:                                              ; preds = %124
  %137 = load i32, i32* %16, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %16, align 4
  br label %119

139:                                              ; preds = %119
  br label %140

140:                                              ; preds = %155, %139
  %141 = load i32, i32* %16, align 4
  %142 = icmp sge i32 %141, 0
  br i1 %142, label %143, label %158

143:                                              ; preds = %140
  %144 = load i32, i32* %19, align 4
  %145 = shl i32 %144, 2
  store i32 %145, i32* %19, align 4
  %146 = bitcast float* %34 to float**
  %147 = load i32*, i32** %6, align 8
  %148 = load i32, i32* %16, align 4
  %149 = sext i32 %148 to i64
  %150 = mul nsw i64 %149, %23
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  %152 = call i32 @fxt1_bestcol(float** %146, i32 4, i32* %151, i32 4)
  %153 = load i32, i32* %19, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %19, align 4
  br label %155

155:                                              ; preds = %143
  %156 = load i32, i32* %16, align 4
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %16, align 4
  br label %140

158:                                              ; preds = %140
  %159 = load i32, i32* %18, align 4
  %160 = load i32*, i32** %5, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* %19, align 4
  %163 = load i32*, i32** %5, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  store i32 %162, i32* %164, align 4
  %165 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %165)
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
