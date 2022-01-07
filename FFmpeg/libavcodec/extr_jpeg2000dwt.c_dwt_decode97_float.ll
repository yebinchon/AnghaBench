; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000dwt.c_dwt_decode97_float.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000dwt.c_dwt_decode97_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32**, i32, float*, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, float*)* @dwt_decode97_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwt_decode97_float(%struct.TYPE_3__* %0, float* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store float* %1, float** %4, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32**, i32*** %20, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %21, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load float*, float** %32, align 8
  store float* %33, float** %7, align 8
  %34 = load float*, float** %4, align 8
  store float* %34, float** %8, align 8
  %35 = load float*, float** %7, align 8
  %36 = getelementptr inbounds float, float* %35, i64 5
  store float* %36, float** %7, align 8
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %264, %2
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %267

43:                                               ; preds = %37
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %9, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %10, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  %64 = load i32**, i32*** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %11, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  %73 = load i32**, i32*** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %73, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %12, align 4
  %80 = load float*, float** %7, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, float* %80, i64 %82
  store float* %83, float** %14, align 8
  store i32 0, i32* %13, align 4
  br label %84

84:                                               ; preds = %168, %43
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %171

88:                                               ; preds = %84
  store i32 0, i32* %16, align 4
  %89 = load i32, i32* %11, align 4
  store i32 %89, i32* %15, align 4
  br label %90

90:                                               ; preds = %108, %88
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %113

94:                                               ; preds = %90
  %95 = load float*, float** %8, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %13, align 4
  %98 = mul nsw i32 %96, %97
  %99 = load i32, i32* %16, align 4
  %100 = add nsw i32 %98, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds float, float* %95, i64 %101
  %103 = load float, float* %102, align 4
  %104 = load float*, float** %14, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds float, float* %104, i64 %106
  store float %103, float* %107, align 4
  br label %108

108:                                              ; preds = %94
  %109 = load i32, i32* %15, align 4
  %110 = add nsw i32 %109, 2
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %16, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %16, align 4
  br label %90

113:                                              ; preds = %90
  %114 = load i32, i32* %11, align 4
  %115 = sub nsw i32 1, %114
  store i32 %115, i32* %15, align 4
  br label %116

116:                                              ; preds = %134, %113
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %139

120:                                              ; preds = %116
  %121 = load float*, float** %8, align 8
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %13, align 4
  %124 = mul nsw i32 %122, %123
  %125 = load i32, i32* %16, align 4
  %126 = add nsw i32 %124, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds float, float* %121, i64 %127
  %129 = load float, float* %128, align 4
  %130 = load float*, float** %14, align 8
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds float, float* %130, i64 %132
  store float %129, float* %133, align 4
  br label %134

134:                                              ; preds = %120
  %135 = load i32, i32* %15, align 4
  %136 = add nsw i32 %135, 2
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %16, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %16, align 4
  br label %116

139:                                              ; preds = %116
  %140 = load float*, float** %7, align 8
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %142, %143
  %145 = call i32 @sr_1d97_float(float* %140, i32 %141, i32 %144)
  store i32 0, i32* %15, align 4
  br label %146

146:                                              ; preds = %164, %139
  %147 = load i32, i32* %15, align 4
  %148 = load i32, i32* %9, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %167

150:                                              ; preds = %146
  %151 = load float*, float** %14, align 8
  %152 = load i32, i32* %15, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds float, float* %151, i64 %153
  %155 = load float, float* %154, align 4
  %156 = load float*, float** %8, align 8
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* %13, align 4
  %159 = mul nsw i32 %157, %158
  %160 = load i32, i32* %15, align 4
  %161 = add nsw i32 %159, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds float, float* %156, i64 %162
  store float %155, float* %163, align 4
  br label %164

164:                                              ; preds = %150
  %165 = load i32, i32* %15, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %15, align 4
  br label %146

167:                                              ; preds = %146
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %13, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %13, align 4
  br label %84

171:                                              ; preds = %84
  %172 = load float*, float** %7, align 8
  %173 = load i32, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds float, float* %172, i64 %174
  store float* %175, float** %14, align 8
  store i32 0, i32* %13, align 4
  br label %176

176:                                              ; preds = %260, %171
  %177 = load i32, i32* %13, align 4
  %178 = load i32, i32* %9, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %263

180:                                              ; preds = %176
  store i32 0, i32* %18, align 4
  %181 = load i32, i32* %12, align 4
  store i32 %181, i32* %17, align 4
  br label %182

182:                                              ; preds = %200, %180
  %183 = load i32, i32* %17, align 4
  %184 = load i32, i32* %10, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %205

186:                                              ; preds = %182
  %187 = load float*, float** %8, align 8
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* %18, align 4
  %190 = mul nsw i32 %188, %189
  %191 = load i32, i32* %13, align 4
  %192 = add nsw i32 %190, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds float, float* %187, i64 %193
  %195 = load float, float* %194, align 4
  %196 = load float*, float** %14, align 8
  %197 = load i32, i32* %17, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds float, float* %196, i64 %198
  store float %195, float* %199, align 4
  br label %200

200:                                              ; preds = %186
  %201 = load i32, i32* %17, align 4
  %202 = add nsw i32 %201, 2
  store i32 %202, i32* %17, align 4
  %203 = load i32, i32* %18, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %18, align 4
  br label %182

205:                                              ; preds = %182
  %206 = load i32, i32* %12, align 4
  %207 = sub nsw i32 1, %206
  store i32 %207, i32* %17, align 4
  br label %208

208:                                              ; preds = %226, %205
  %209 = load i32, i32* %17, align 4
  %210 = load i32, i32* %10, align 4
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %212, label %231

212:                                              ; preds = %208
  %213 = load float*, float** %8, align 8
  %214 = load i32, i32* %6, align 4
  %215 = load i32, i32* %18, align 4
  %216 = mul nsw i32 %214, %215
  %217 = load i32, i32* %13, align 4
  %218 = add nsw i32 %216, %217
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds float, float* %213, i64 %219
  %221 = load float, float* %220, align 4
  %222 = load float*, float** %14, align 8
  %223 = load i32, i32* %17, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds float, float* %222, i64 %224
  store float %221, float* %225, align 4
  br label %226

226:                                              ; preds = %212
  %227 = load i32, i32* %17, align 4
  %228 = add nsw i32 %227, 2
  store i32 %228, i32* %17, align 4
  %229 = load i32, i32* %18, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %18, align 4
  br label %208

231:                                              ; preds = %208
  %232 = load float*, float** %7, align 8
  %233 = load i32, i32* %12, align 4
  %234 = load i32, i32* %12, align 4
  %235 = load i32, i32* %10, align 4
  %236 = add nsw i32 %234, %235
  %237 = call i32 @sr_1d97_float(float* %232, i32 %233, i32 %236)
  store i32 0, i32* %17, align 4
  br label %238

238:                                              ; preds = %256, %231
  %239 = load i32, i32* %17, align 4
  %240 = load i32, i32* %10, align 4
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %242, label %259

242:                                              ; preds = %238
  %243 = load float*, float** %14, align 8
  %244 = load i32, i32* %17, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds float, float* %243, i64 %245
  %247 = load float, float* %246, align 4
  %248 = load float*, float** %8, align 8
  %249 = load i32, i32* %6, align 4
  %250 = load i32, i32* %17, align 4
  %251 = mul nsw i32 %249, %250
  %252 = load i32, i32* %13, align 4
  %253 = add nsw i32 %251, %252
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds float, float* %248, i64 %254
  store float %247, float* %255, align 4
  br label %256

256:                                              ; preds = %242
  %257 = load i32, i32* %17, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %17, align 4
  br label %238

259:                                              ; preds = %238
  br label %260

260:                                              ; preds = %259
  %261 = load i32, i32* %13, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %13, align 4
  br label %176

263:                                              ; preds = %176
  br label %264

264:                                              ; preds = %263
  %265 = load i32, i32* %5, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %5, align 4
  br label %37

267:                                              ; preds = %37
  ret void
}

declare dso_local i32 @sr_1d97_float(float*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
