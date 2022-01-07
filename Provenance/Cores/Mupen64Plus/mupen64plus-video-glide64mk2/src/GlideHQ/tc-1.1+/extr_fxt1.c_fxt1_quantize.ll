; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-video-glide64mk2/src/GlideHQ/tc-1.1+/extr_fxt1.c_fxt1_quantize.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-video-glide64mk2/src/GlideHQ/tc-1.1+/extr_fxt1.c_fxt1_quantize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@N_TEXELS = common dso_local global i32 0, align 4
@MAX_COMP = common dso_local global i32 0, align 4
@ACOMP = common dso_local global i64 0, align 8
@ALPHA_TS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32**, i32)* @fxt1_quantize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fxt1_quantize(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* @N_TEXELS, align 4
  %17 = zext i32 %16 to i64
  %18 = load i32, i32* @MAX_COMP, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = mul nuw i64 %17, %19
  %22 = alloca i32, i64 %21, align 16
  store i64 %17, i64* %9, align 8
  store i64 %19, i64* %10, align 8
  %23 = load i32, i32* @N_TEXELS, align 4
  %24 = zext i32 %23 to i64
  %25 = load i32, i32* @MAX_COMP, align 4
  %26 = zext i32 %25 to i64
  %27 = mul nuw i64 %24, %26
  %28 = alloca i32, i64 %27, align 16
  store i64 %24, i64* %11, align 8
  store i64 %26, i64* %12, align 8
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %37

31:                                               ; preds = %3
  %32 = bitcast i32* %28 to i32**
  %33 = mul nuw i64 %24, %26
  %34 = mul nuw i64 4, %33
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memset(i32** %32, i32 -1, i32 %35)
  br label %37

37:                                               ; preds = %31, %3
  store i32 0, i32* %15, align 4
  br label %38

38:                                               ; preds = %111, %37
  %39 = load i32, i32* %15, align 4
  %40 = icmp slt i32 %39, 4
  br i1 %40, label %41, label %114

41:                                               ; preds = %38
  store i32 0, i32* %14, align 4
  br label %42

42:                                               ; preds = %72, %41
  %43 = load i32, i32* %14, align 4
  %44 = icmp slt i32 %43, 4
  br i1 %44, label %45, label %75

45:                                               ; preds = %42
  store i32 0, i32* %13, align 4
  br label %46

46:                                               ; preds = %68, %45
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %46
  %51 = load i32**, i32*** %5, align 8
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %54, align 8
  %57 = load i32, i32* %55, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %15, align 4
  %60 = mul nsw i32 %59, 4
  %61 = add nsw i32 %58, %60
  %62 = sext i32 %61 to i64
  %63 = mul nsw i64 %62, %26
  %64 = getelementptr inbounds i32, i32* %28, i64 %63
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %57, i32* %67, align 4
  br label %68

68:                                               ; preds = %50
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %13, align 4
  br label %46

71:                                               ; preds = %46
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %14, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %14, align 4
  br label %42

75:                                               ; preds = %42
  br label %76

76:                                               ; preds = %107, %75
  %77 = load i32, i32* %14, align 4
  %78 = icmp slt i32 %77, 8
  br i1 %78, label %79, label %110

79:                                               ; preds = %76
  store i32 0, i32* %13, align 4
  br label %80

80:                                               ; preds = %103, %79
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %106

84:                                               ; preds = %80
  %85 = load i32**, i32*** %5, align 8
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32*, i32** %85, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %88, align 8
  %91 = load i32, i32* %89, align 4
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %15, align 4
  %94 = mul nsw i32 %93, 4
  %95 = add nsw i32 %92, %94
  %96 = add nsw i32 %95, 12
  %97 = sext i32 %96 to i64
  %98 = mul nsw i64 %97, %26
  %99 = getelementptr inbounds i32, i32* %28, i64 %98
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %91, i32* %102, align 4
  br label %103

103:                                              ; preds = %84
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %13, align 4
  br label %80

106:                                              ; preds = %80
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %14, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %14, align 4
  br label %76

110:                                              ; preds = %76
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %15, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %15, align 4
  br label %38

114:                                              ; preds = %38
  %115 = load i32, i32* @N_TEXELS, align 4
  store i32 %115, i32* %15, align 4
  store i32 0, i32* %7, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp eq i32 %116, 4
  br i1 %117, label %118, label %159

118:                                              ; preds = %114
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %119

119:                                              ; preds = %155, %118
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* @N_TEXELS, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %158

123:                                              ; preds = %119
  %124 = load i32, i32* %14, align 4
  %125 = sext i32 %124 to i64
  %126 = mul nsw i64 %125, %26
  %127 = getelementptr inbounds i32, i32* %28, i64 %126
  %128 = call i32 @ISTBLACK(i32* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %154, label %130

130:                                              ; preds = %123
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = mul nsw i64 %132, %19
  %134 = getelementptr inbounds i32, i32* %22, i64 %133
  %135 = load i32, i32* %14, align 4
  %136 = sext i32 %135 to i64
  %137 = mul nsw i64 %136, %26
  %138 = getelementptr inbounds i32, i32* %28, i64 %137
  %139 = call i32 @COPY_4UBV(i32* %134, i32* %138)
  %140 = load i32, i32* %15, align 4
  %141 = sext i32 %140 to i64
  %142 = mul nsw i64 %141, %19
  %143 = getelementptr inbounds i32, i32* %22, i64 %142
  %144 = load i64, i64* @ACOMP, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @ALPHA_TS, align 4
  %148 = sub nsw i32 255, %147
  %149 = icmp slt i32 %146, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %130
  store i32 1, i32* %7, align 4
  br label %151

151:                                              ; preds = %150, %130
  %152 = load i32, i32* %15, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %15, align 4
  br label %154

154:                                              ; preds = %151, %123
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %14, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %14, align 4
  br label %119

158:                                              ; preds = %119
  br label %159

159:                                              ; preds = %158, %114
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load i32*, i32** %4, align 8
  %164 = bitcast i32* %28 to i32**
  %165 = call i32 @fxt1_quantize_ALPHA1(i32* %163, i32** %164)
  br label %192

166:                                              ; preds = %159
  %167 = load i32, i32* %15, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %178

169:                                              ; preds = %166
  %170 = load i32*, i32** %4, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 2
  store i32 -1, i32* %171, align 4
  %172 = load i32*, i32** %4, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  store i32 -1, i32* %173, align 4
  %174 = load i32*, i32** %4, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  store i32 -1, i32* %175, align 4
  %176 = load i32*, i32** %4, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 3
  store i32 0, i32* %177, align 4
  br label %191

178:                                              ; preds = %166
  %179 = load i32, i32* %15, align 4
  %180 = load i32, i32* @N_TEXELS, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %178
  %183 = load i32*, i32** %4, align 8
  %184 = bitcast i32* %28 to i32**
  %185 = call i32 @fxt1_quantize_MIXED1(i32* %183, i32** %184)
  br label %190

186:                                              ; preds = %178
  %187 = load i32*, i32** %4, align 8
  %188 = bitcast i32* %28 to i32**
  %189 = call i32 @fxt1_quantize_MIXED0(i32* %187, i32** %188)
  br label %190

190:                                              ; preds = %186, %182
  br label %191

191:                                              ; preds = %190, %169
  br label %192

192:                                              ; preds = %191, %162
  %193 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %193)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32**, i32, i32) #2

declare dso_local i32 @ISTBLACK(i32*) #2

declare dso_local i32 @COPY_4UBV(i32*, i32*) #2

declare dso_local i32 @fxt1_quantize_ALPHA1(i32*, i32**) #2

declare dso_local i32 @fxt1_quantize_MIXED1(i32*, i32**) #2

declare dso_local i32 @fxt1_quantize_MIXED0(i32*, i32**) #2

declare dso_local i32 @fxt1_quantize_ALPHA0(i32*, i32**, i32**, i32) #2

declare dso_local i32 @fxt1_quantize_HI(i32*, i32**, i32**, i32) #2

declare dso_local i32 @fxt1_quantize_CHROMA(i32*, i32**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
