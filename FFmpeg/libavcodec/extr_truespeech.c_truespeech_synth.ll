; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truespeech.c_truespeech_synth.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truespeech.c_truespeech_synth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32*, i32*, i32 }

@ts_decay_35_64 = common dso_local global i32* null, align 8
@ts_decay_3_4 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32)* @truespeech_synth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @truespeech_synth(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [8 x i32], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %10, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 %21, 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  store i32* %24, i32** %11, align 8
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %90, %3
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 60
  br i1 %27, label %28, label %93

28:                                               ; preds = %25
  store i32 0, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %46, %28
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 8
  br i1 %31, label %32, label %49

32:                                               ; preds = %29
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = mul i32 %37, %42
  %44 = load i32, i32* %12, align 4
  %45 = add i32 %44, %43
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %32
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %29

49:                                               ; preds = %29
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 2048
  %57 = ashr i32 %56, 12
  %58 = add i32 %54, %57
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @av_clip(i32 %59, i32 -32766, i32 32766)
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %60, i32* %64, align 4
  store i32 7, i32* %8, align 4
  br label %65

65:                                               ; preds = %79, %49
  %66 = load i32, i32* %8, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %65
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %10, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %74, i32* %78, align 4
  br label %79

79:                                               ; preds = %68
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %8, align 4
  br label %65

82:                                               ; preds = %65
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %10, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %82
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %25

93:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %113, %93
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %95, 8
  br i1 %96, label %97, label %116

97:                                               ; preds = %94
  %98 = load i32*, i32** @ts_decay_35_64, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %11, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = mul i32 %102, %107
  %109 = lshr i32 %108, 15
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %111
  store i32 %109, i32* %112, align 4
  br label %113

113:                                              ; preds = %97
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %7, align 4
  br label %94

116:                                              ; preds = %94
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  store i32* %119, i32** %10, align 8
  store i32 0, i32* %7, align 4
  br label %120

120:                                              ; preds = %178, %116
  %121 = load i32, i32* %7, align 4
  %122 = icmp slt i32 %121, 60
  br i1 %122, label %123, label %181

123:                                              ; preds = %120
  store i32 0, i32* %13, align 4
  store i32 0, i32* %8, align 4
  br label %124

124:                                              ; preds = %140, %123
  %125 = load i32, i32* %8, align 4
  %126 = icmp slt i32 %125, 8
  br i1 %126, label %127, label %143

127:                                              ; preds = %124
  %128 = load i32*, i32** %10, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = mul i32 %132, %136
  %138 = load i32, i32* %13, align 4
  %139 = add i32 %138, %137
  store i32 %139, i32* %13, align 4
  br label %140

140:                                              ; preds = %127
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %8, align 4
  br label %124

143:                                              ; preds = %124
  store i32 7, i32* %8, align 4
  br label %144

144:                                              ; preds = %158, %143
  %145 = load i32, i32* %8, align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %161

147:                                              ; preds = %144
  %148 = load i32*, i32** %10, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load i32*, i32** %10, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  store i32 %153, i32* %157, align 4
  br label %158

158:                                              ; preds = %147
  %159 = load i32, i32* %8, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %8, align 4
  br label %144

161:                                              ; preds = %144
  %162 = load i32*, i32** %5, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** %10, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  store i32 %166, i32* %168, align 4
  %169 = load i32, i32* %13, align 4
  %170 = sub nsw i32 0, %169
  %171 = ashr i32 %170, 12
  %172 = load i32*, i32** %5, align 8
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = add i32 %176, %171
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %161
  %179 = load i32, i32* %7, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %7, align 4
  br label %120

181:                                              ; preds = %120
  store i32 0, i32* %7, align 4
  br label %182

182:                                              ; preds = %201, %181
  %183 = load i32, i32* %7, align 4
  %184 = icmp slt i32 %183, 8
  br i1 %184, label %185, label %204

185:                                              ; preds = %182
  %186 = load i32*, i32** @ts_decay_3_4, align 8
  %187 = load i32, i32* %7, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load i32*, i32** %11, align 8
  %192 = load i32, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = mul i32 %190, %195
  %197 = lshr i32 %196, 15
  %198 = load i32, i32* %7, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %199
  store i32 %197, i32* %200, align 4
  br label %201

201:                                              ; preds = %185
  %202 = load i32, i32* %7, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %7, align 4
  br label %182

204:                                              ; preds = %182
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 3
  %207 = load i32*, i32** %206, align 8
  store i32* %207, i32** %10, align 8
  store i32 0, i32* %7, align 4
  br label %208

208:                                              ; preds = %289, %204
  %209 = load i32, i32* %7, align 4
  %210 = icmp slt i32 %209, 60
  br i1 %210, label %211, label %292

211:                                              ; preds = %208
  %212 = load i32*, i32** %5, align 8
  %213 = load i32, i32* %7, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = mul i32 %216, 4096
  store i32 %217, i32* %14, align 4
  store i32 0, i32* %8, align 4
  br label %218

218:                                              ; preds = %234, %211
  %219 = load i32, i32* %8, align 4
  %220 = icmp slt i32 %219, 8
  br i1 %220, label %221, label %237

221:                                              ; preds = %218
  %222 = load i32*, i32** %10, align 8
  %223 = load i32, i32* %8, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %8, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = mul i32 %226, %230
  %232 = load i32, i32* %14, align 4
  %233 = add i32 %232, %231
  store i32 %233, i32* %14, align 4
  br label %234

234:                                              ; preds = %221
  %235 = load i32, i32* %8, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %8, align 4
  br label %218

237:                                              ; preds = %218
  store i32 7, i32* %8, align 4
  br label %238

238:                                              ; preds = %252, %237
  %239 = load i32, i32* %8, align 4
  %240 = icmp sgt i32 %239, 0
  br i1 %240, label %241, label %255

241:                                              ; preds = %238
  %242 = load i32*, i32** %10, align 8
  %243 = load i32, i32* %8, align 4
  %244 = sub nsw i32 %243, 1
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %242, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = load i32*, i32** %10, align 8
  %249 = load i32, i32* %8, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  store i32 %247, i32* %251, align 4
  br label %252

252:                                              ; preds = %241
  %253 = load i32, i32* %8, align 4
  %254 = add nsw i32 %253, -1
  store i32 %254, i32* %8, align 4
  br label %238

255:                                              ; preds = %238
  %256 = load i32, i32* %14, align 4
  %257 = add nsw i32 %256, 2048
  %258 = ashr i32 %257, 12
  %259 = call i32 @av_clip(i32 %258, i32 -32766, i32 32766)
  %260 = load i32*, i32** %10, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 0
  store i32 %259, i32* %261, align 4
  %262 = load i32*, i32** %10, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 1
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 4
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 4
  %270 = load i32, i32* %269, align 8
  %271 = ashr i32 %270, 2
  %272 = sub nsw i32 %267, %271
  %273 = mul i32 %264, %272
  %274 = lshr i32 %273, 4
  %275 = load i32, i32* %14, align 4
  %276 = add i32 %274, %275
  store i32 %276, i32* %14, align 4
  %277 = load i32, i32* %14, align 4
  %278 = load i32, i32* %14, align 4
  %279 = ashr i32 %278, 3
  %280 = sub nsw i32 %277, %279
  store i32 %280, i32* %14, align 4
  %281 = load i32, i32* %14, align 4
  %282 = add nsw i32 %281, 2048
  %283 = ashr i32 %282, 12
  %284 = call i32 @av_clip(i32 %283, i32 -32766, i32 32766)
  %285 = load i32*, i32** %5, align 8
  %286 = load i32, i32* %7, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  store i32 %284, i32* %288, align 4
  br label %289

289:                                              ; preds = %255
  %290 = load i32, i32* %7, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %7, align 4
  br label %208

292:                                              ; preds = %208
  ret void
}

declare dso_local i32 @av_clip(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
