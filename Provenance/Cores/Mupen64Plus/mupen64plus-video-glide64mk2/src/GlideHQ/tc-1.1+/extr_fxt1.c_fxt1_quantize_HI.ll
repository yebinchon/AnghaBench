; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-video-glide64mk2/src/GlideHQ/tc-1.1+/extr_fxt1.c_fxt1_quantize_HI.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-video-glide64mk2/src/GlideHQ/tc-1.1+/extr_fxt1.c_fxt1_quantize_HI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@N_TEXELS = common dso_local global i32 0, align 4
@MAX_COMP = common dso_local global i32 0, align 4
@BCOMP = common dso_local global i64 0, align 8
@GCOMP = common dso_local global i64 0, align 8
@RCOMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32)* @fxt1_quantize_HI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fxt1_quantize_HI(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %25 = load i32, i32* @N_TEXELS, align 4
  %26 = zext i32 %25 to i64
  %27 = load i32, i32* @MAX_COMP, align 4
  %28 = zext i32 %27 to i64
  %29 = load i32, i32* @N_TEXELS, align 4
  %30 = zext i32 %29 to i64
  %31 = load i32, i32* @MAX_COMP, align 4
  %32 = zext i32 %31 to i64
  store i32 6, i32* %9, align 4
  store i32 3, i32* %10, align 4
  store float 0.000000e+00, float* %11, align 4
  %33 = load i32, i32* @MAX_COMP, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %12, align 8
  %36 = alloca float, i64 %34, align 16
  store i64 %34, i64* %13, align 8
  store i32 2000, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %15, align 4
  br label %37

37:                                               ; preds = %75, %4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %78

41:                                               ; preds = %37
  store i32 0, i32* %21, align 4
  store i32 0, i32* %14, align 4
  br label %42

42:                                               ; preds = %57, %41
  %43 = load i32, i32* %14, align 4
  %44 = icmp slt i32 %43, 3
  br i1 %44, label %45, label %60

45:                                               ; preds = %42
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = mul nsw i64 %48, %32
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %21, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %21, align 4
  br label %57

57:                                               ; preds = %45
  %58 = load i32, i32* %14, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %14, align 4
  br label %42

60:                                               ; preds = %42
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* %21, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* %21, align 4
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %15, align 4
  store i32 %66, i32* %19, align 4
  br label %67

67:                                               ; preds = %64, %60
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* %21, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* %21, align 4
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* %15, align 4
  store i32 %73, i32* %20, align 4
  br label %74

74:                                               ; preds = %71, %67
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %15, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %15, align 4
  br label %37

78:                                               ; preds = %37
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %79

79:                                               ; preds = %97, %78
  %80 = load i32, i32* %14, align 4
  %81 = icmp slt i32 %80, 3
  br i1 %81, label %82, label %100

82:                                               ; preds = %79
  %83 = load i32, i32* %16, align 4
  %84 = shl i32 %83, 5
  store i32 %84, i32* %16, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %20, align 4
  %87 = sext i32 %86 to i64
  %88 = mul nsw i64 %87, %32
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = ashr i32 %93, 3
  %95 = load i32, i32* %16, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %16, align 4
  br label %97

97:                                               ; preds = %82
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %14, align 4
  br label %79

100:                                              ; preds = %79
  store i32 0, i32* %14, align 4
  br label %101

101:                                              ; preds = %119, %100
  %102 = load i32, i32* %14, align 4
  %103 = icmp slt i32 %102, 3
  br i1 %103, label %104, label %122

104:                                              ; preds = %101
  %105 = load i32, i32* %16, align 4
  %106 = shl i32 %105, 5
  store i32 %106, i32* %16, align 4
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* %19, align 4
  %109 = sext i32 %108 to i64
  %110 = mul nsw i64 %109, %32
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = ashr i32 %115, 3
  %117 = load i32, i32* %16, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %16, align 4
  br label %119

119:                                              ; preds = %104
  %120 = load i32, i32* %14, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %14, align 4
  br label %101

122:                                              ; preds = %101
  %123 = load i32, i32* %16, align 4
  %124 = load i32*, i32** %5, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 3
  store i32 %123, i32* %125, align 4
  %126 = load i32*, i32** %5, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 2
  store i32 0, i32* %127, align 4
  %128 = load i32*, i32** %5, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  store i32 0, i32* %129, align 4
  %130 = load i32*, i32** %5, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  store i32 0, i32* %131, align 4
  %132 = load i32, i32* %19, align 4
  %133 = load i32, i32* %20, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %148

135:                                              ; preds = %122
  %136 = load float, float* %11, align 4
  %137 = load i32*, i32** %7, align 8
  %138 = load i32, i32* %19, align 4
  %139 = sext i32 %138 to i64
  %140 = mul nsw i64 %139, %32
  %141 = getelementptr inbounds i32, i32* %137, i64 %140
  %142 = load i32*, i32** %7, align 8
  %143 = load i32, i32* %20, align 4
  %144 = sext i32 %143 to i64
  %145 = mul nsw i64 %144, %32
  %146 = getelementptr inbounds i32, i32* %142, i64 %145
  %147 = call i32 @MAKEIVEC(i32 6, i32 3, float* %36, float %136, i32* %141, i32* %146)
  br label %148

148:                                              ; preds = %135, %122
  %149 = load i32, i32* @N_TEXELS, align 4
  %150 = sub nsw i32 %149, 1
  store i32 %150, i32* %15, align 4
  br label %151

151:                                              ; preds = %201, %148
  %152 = load i32, i32* %15, align 4
  %153 = icmp sge i32 %152, 0
  br i1 %153, label %154, label %204

154:                                              ; preds = %151
  %155 = load i32, i32* %15, align 4
  %156 = mul nsw i32 %155, 3
  store i32 %156, i32* %22, align 4
  %157 = load i32*, i32** %5, align 8
  %158 = load i32, i32* %22, align 4
  %159 = sdiv i32 %158, 8
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %157, i64 %160
  store i32* %161, i32** %23, align 8
  store i32 7, i32* %24, align 4
  %162 = load i32*, i32** %6, align 8
  %163 = load i32, i32* %15, align 4
  %164 = sext i32 %163 to i64
  %165 = mul nsw i64 %164, %28
  %166 = getelementptr inbounds i32, i32* %162, i64 %165
  %167 = call i32 @ISTBLACK(i32* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %191, label %169

169:                                              ; preds = %154
  %170 = load i32, i32* %19, align 4
  %171 = load i32, i32* %20, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %190

173:                                              ; preds = %169
  %174 = load i32, i32* %24, align 4
  %175 = load float, float* %11, align 4
  %176 = load i32*, i32** %6, align 8
  %177 = load i32, i32* %15, align 4
  %178 = sext i32 %177 to i64
  %179 = mul nsw i64 %178, %28
  %180 = getelementptr inbounds i32, i32* %176, i64 %179
  %181 = call i32 @CALCCDOT(i32 %174, i32 6, i32 3, float* %36, float %175, i32* %180)
  %182 = load i32, i32* %24, align 4
  %183 = load i32, i32* %22, align 4
  %184 = and i32 %183, 7
  %185 = shl i32 %182, %184
  %186 = load i32*, i32** %23, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 4
  br label %190

190:                                              ; preds = %173, %169
  br label %200

191:                                              ; preds = %154
  %192 = load i32, i32* %24, align 4
  %193 = load i32, i32* %22, align 4
  %194 = and i32 %193, 7
  %195 = shl i32 %192, %194
  %196 = load i32*, i32** %23, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  %198 = load i32, i32* %197, align 4
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 4
  br label %200

200:                                              ; preds = %191, %190
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %15, align 4
  %203 = add nsw i32 %202, -1
  store i32 %203, i32* %15, align 4
  br label %151

204:                                              ; preds = %151
  %205 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %205)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MAKEIVEC(i32, i32, float*, float, i32*, i32*) #2

declare dso_local i32 @ISTBLACK(i32*) #2

declare dso_local i32 @CALCCDOT(i32, i32, i32, float*, float, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
