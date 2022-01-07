; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_draw_bar_yuv.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_draw_bar_yuv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32, i32** }

@AV_PIX_FMT_YUV420P = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV444P = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV422P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, float*, float*, i32*, i32, float)* @draw_bar_yuv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_bar_yuv(%struct.TYPE_3__* %0, float* %1, float* %2, i32* %3, i32 %4, float %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store float* %1, float** %8, align 8
  store float* %2, float** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store float %5, float* %12, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %11, align 4
  %35 = sitofp i32 %34 to float
  %36 = fdiv float 1.000000e+00, %35
  store float %36, float* %19, align 4
  %37 = load float, float* %12, align 4
  %38 = fdiv float 1.000000e+00, %37
  store float %38, float* %20, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  %41 = load i32**, i32*** %40, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 0
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %21, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  %46 = load i32**, i32*** %45, align 8
  %47 = getelementptr inbounds i32*, i32** %46, i64 1
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %22, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load i32**, i32*** %50, align 8
  %52 = getelementptr inbounds i32*, i32** %51, i64 2
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %23, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %27, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %28, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %29, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %30, align 4
  store i32 0, i32* %14, align 4
  br label %72

72:                                               ; preds = %227, %6
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %230

76:                                               ; preds = %72
  %77 = load i32, i32* %30, align 4
  %78 = load i32, i32* @AV_PIX_FMT_YUV420P, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* %14, align 4
  %82 = sdiv i32 %81, 2
  br label %85

83:                                               ; preds = %76
  %84 = load i32, i32* %14, align 4
  br label %85

85:                                               ; preds = %83, %80
  %86 = phi i32 [ %82, %80 ], [ %84, %83 ]
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %14, align 4
  %89 = sub nsw i32 %87, %88
  %90 = sitofp i32 %89 to float
  %91 = load float, float* %19, align 4
  %92 = fmul float %90, %91
  store float %92, float* %18, align 4
  %93 = load i32*, i32** %21, align 8
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %27, align 4
  %96 = mul nsw i32 %94, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %93, i64 %97
  store i32* %98, i32** %24, align 8
  %99 = load i32*, i32** %22, align 8
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %28, align 4
  %102 = mul nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %99, i64 %103
  store i32* %104, i32** %25, align 8
  %105 = load i32*, i32** %23, align 8
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %29, align 4
  %108 = mul nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %105, i64 %109
  store i32* %110, i32** %26, align 8
  %111 = load i32, i32* %30, align 4
  %112 = load i32, i32* @AV_PIX_FMT_YUV444P, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %129

114:                                              ; preds = %85
  store i32 0, i32* %13, align 4
  br label %115

115:                                              ; preds = %125, %114
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %16, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %115
  %120 = load i32, i32* %13, align 4
  %121 = call i32 @DRAW_BAR_WITH_CHROMA(i32 %120)
  %122 = load i32, i32* %13, align 4
  %123 = add nsw i32 %122, 1
  %124 = call i32 @DRAW_BAR_WITH_CHROMA(i32 %123)
  br label %125

125:                                              ; preds = %119
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %126, 2
  store i32 %127, i32* %13, align 4
  br label %115

128:                                              ; preds = %115
  br label %144

129:                                              ; preds = %85
  store i32 0, i32* %13, align 4
  br label %130

130:                                              ; preds = %140, %129
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %16, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %130
  %135 = load i32, i32* %13, align 4
  %136 = call i32 @DRAW_BAR_WITH_CHROMA(i32 %135)
  %137 = load i32, i32* %13, align 4
  %138 = add nsw i32 %137, 1
  %139 = call i32 @DRAW_BAR_WITHOUT_CHROMA(i32 %138)
  br label %140

140:                                              ; preds = %134
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %141, 2
  store i32 %142, i32* %13, align 4
  br label %130

143:                                              ; preds = %130
  br label %144

144:                                              ; preds = %143, %128
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %14, align 4
  %147 = add nsw i32 %146, 1
  %148 = sub nsw i32 %145, %147
  %149 = sitofp i32 %148 to float
  %150 = load float, float* %19, align 4
  %151 = fmul float %149, %150
  store float %151, float* %18, align 4
  %152 = load i32*, i32** %21, align 8
  %153 = load i32, i32* %14, align 4
  %154 = add nsw i32 %153, 1
  %155 = load i32, i32* %27, align 4
  %156 = mul nsw i32 %154, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %152, i64 %157
  store i32* %158, i32** %24, align 8
  %159 = load i32*, i32** %22, align 8
  %160 = load i32, i32* %14, align 4
  %161 = add nsw i32 %160, 1
  %162 = load i32, i32* %28, align 4
  %163 = mul nsw i32 %161, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %159, i64 %164
  store i32* %165, i32** %25, align 8
  %166 = load i32*, i32** %23, align 8
  %167 = load i32, i32* %14, align 4
  %168 = add nsw i32 %167, 1
  %169 = load i32, i32* %29, align 4
  %170 = mul nsw i32 %168, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %166, i64 %171
  store i32* %172, i32** %26, align 8
  %173 = load i32, i32* %30, align 4
  %174 = load i32, i32* @AV_PIX_FMT_YUV444P, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %191

176:                                              ; preds = %144
  store i32 0, i32* %13, align 4
  br label %177

177:                                              ; preds = %187, %176
  %178 = load i32, i32* %13, align 4
  %179 = load i32, i32* %16, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %190

181:                                              ; preds = %177
  %182 = load i32, i32* %13, align 4
  %183 = call i32 @DRAW_BAR_WITH_CHROMA(i32 %182)
  %184 = load i32, i32* %13, align 4
  %185 = add nsw i32 %184, 1
  %186 = call i32 @DRAW_BAR_WITH_CHROMA(i32 %185)
  br label %187

187:                                              ; preds = %181
  %188 = load i32, i32* %13, align 4
  %189 = add nsw i32 %188, 2
  store i32 %189, i32* %13, align 4
  br label %177

190:                                              ; preds = %177
  br label %226

191:                                              ; preds = %144
  %192 = load i32, i32* %30, align 4
  %193 = load i32, i32* @AV_PIX_FMT_YUV422P, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %210

195:                                              ; preds = %191
  store i32 0, i32* %13, align 4
  br label %196

196:                                              ; preds = %206, %195
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* %16, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %209

200:                                              ; preds = %196
  %201 = load i32, i32* %13, align 4
  %202 = call i32 @DRAW_BAR_WITH_CHROMA(i32 %201)
  %203 = load i32, i32* %13, align 4
  %204 = add nsw i32 %203, 1
  %205 = call i32 @DRAW_BAR_WITHOUT_CHROMA(i32 %204)
  br label %206

206:                                              ; preds = %200
  %207 = load i32, i32* %13, align 4
  %208 = add nsw i32 %207, 2
  store i32 %208, i32* %13, align 4
  br label %196

209:                                              ; preds = %196
  br label %225

210:                                              ; preds = %191
  store i32 0, i32* %13, align 4
  br label %211

211:                                              ; preds = %221, %210
  %212 = load i32, i32* %13, align 4
  %213 = load i32, i32* %16, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %224

215:                                              ; preds = %211
  %216 = load i32, i32* %13, align 4
  %217 = call i32 @DRAW_BAR_WITHOUT_CHROMA(i32 %216)
  %218 = load i32, i32* %13, align 4
  %219 = add nsw i32 %218, 1
  %220 = call i32 @DRAW_BAR_WITHOUT_CHROMA(i32 %219)
  br label %221

221:                                              ; preds = %215
  %222 = load i32, i32* %13, align 4
  %223 = add nsw i32 %222, 2
  store i32 %223, i32* %13, align 4
  br label %211

224:                                              ; preds = %211
  br label %225

225:                                              ; preds = %224, %209
  br label %226

226:                                              ; preds = %225, %190
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %14, align 4
  %229 = add nsw i32 %228, 2
  store i32 %229, i32* %14, align 4
  br label %72

230:                                              ; preds = %72
  ret void
}

declare dso_local i32 @DRAW_BAR_WITH_CHROMA(i32) #1

declare dso_local i32 @DRAW_BAR_WITHOUT_CHROMA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
