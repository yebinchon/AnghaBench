; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_parser.c_dca_find_frame_end.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_parser.c_dca_find_frame_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@END_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32)* @dca_find_frame_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dca_find_frame_end(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 4
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %12, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %104, label %26

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %100, %26
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %103

31:                                               ; preds = %27
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %11, align 4
  %35 = shl i32 %34, 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %35, %40
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i64 @IS_MARKER(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %99

45:                                               ; preds = %31
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i64 @CORE_MARKER(i32 %54)
  %56 = icmp eq i64 %53, %55
  br i1 %56, label %62, label %57

57:                                               ; preds = %50
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 128
  br i1 %61, label %62, label %99

62:                                               ; preds = %57, %50, %45
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %81, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %11, align 4
  %69 = call i64 @IS_EXSS_MARKER(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* %9, align 4
  %73 = sub nsw i32 %72, 4
  br label %77

74:                                               ; preds = %67
  %75 = load i32, i32* %9, align 4
  %76 = sub nsw i32 %75, 6
  br label %77

77:                                               ; preds = %74, %71
  %78 = phi i32 [ %73, %71 ], [ %76, %74 ]
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %77, %62
  %82 = load i32, i32* %11, align 4
  %83 = call i64 @IS_EXSS_MARKER(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @EXSS_MARKER(i32 %86)
  %88 = sext i32 %87 to i64
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  br label %96

91:                                               ; preds = %81
  %92 = load i32, i32* %11, align 4
  %93 = call i64 @CORE_MARKER(i32 %92)
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %91, %85
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %103

99:                                               ; preds = %57, %31
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %27

103:                                              ; preds = %96, %27
  br label %104

104:                                              ; preds = %103, %3
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %268

107:                                              ; preds = %104
  br label %108

108:                                              ; preds = %264, %107
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %267

112:                                              ; preds = %108
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %11, align 4
  %116 = shl i32 %115, 8
  %117 = load i32*, i32** %6, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %116, %121
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %185

125:                                              ; preds = %112
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  switch i64 %128, label %182 [
    i64 130, label %129
    i64 129, label %139
    i64 132, label %150
    i64 131, label %161
    i64 128, label %173
  ]

129:                                              ; preds = %125
  %130 = load i32, i32* %9, align 4
  %131 = icmp eq i32 %130, 2
  br i1 %131, label %132, label %138

132:                                              ; preds = %129
  %133 = load i32, i32* %11, align 4
  %134 = call i8* @CORE_FRAMESIZE(i32 %133)
  %135 = ptrtoint i8* %134 to i32
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  store i32 2, i32* %8, align 4
  br label %138

138:                                              ; preds = %132, %129
  br label %184

139:                                              ; preds = %125
  %140 = load i32, i32* %9, align 4
  %141 = icmp eq i32 %140, 2
  br i1 %141, label %142, label %149

142:                                              ; preds = %139
  %143 = load i32, i32* %11, align 4
  %144 = call i32 @STATE_LE(i32 %143)
  %145 = call i8* @CORE_FRAMESIZE(i32 %144)
  %146 = ptrtoint i8* %145 to i32
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 4
  store i32 4, i32* %8, align 4
  br label %149

149:                                              ; preds = %142, %139
  br label %184

150:                                              ; preds = %125
  %151 = load i32, i32* %9, align 4
  %152 = icmp eq i32 %151, 4
  br i1 %152, label %153, label %160

153:                                              ; preds = %150
  %154 = load i32, i32* %11, align 4
  %155 = call i32 @STATE_14(i32 %154)
  %156 = call i8* @CORE_FRAMESIZE(i32 %155)
  %157 = ptrtoint i8* %156 to i32
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 4
  store i32 4, i32* %8, align 4
  br label %160

160:                                              ; preds = %153, %150
  br label %184

161:                                              ; preds = %125
  %162 = load i32, i32* %9, align 4
  %163 = icmp eq i32 %162, 4
  br i1 %163, label %164, label %172

164:                                              ; preds = %161
  %165 = load i32, i32* %11, align 4
  %166 = call i32 @STATE_LE(i32 %165)
  %167 = call i32 @STATE_14(i32 %166)
  %168 = call i8* @CORE_FRAMESIZE(i32 %167)
  %169 = ptrtoint i8* %168 to i32
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 3
  store i32 %169, i32* %171, align 4
  store i32 4, i32* %8, align 4
  br label %172

172:                                              ; preds = %164, %161
  br label %184

173:                                              ; preds = %125
  %174 = load i32, i32* %9, align 4
  %175 = icmp eq i32 %174, 6
  br i1 %175, label %176, label %181

176:                                              ; preds = %173
  %177 = load i32, i32* %11, align 4
  %178 = call i32 @EXSS_FRAMESIZE(i32 %177)
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 4
  store i32 4, i32* %8, align 4
  br label %181

181:                                              ; preds = %176, %173
  br label %184

182:                                              ; preds = %125
  %183 = call i32 @av_assert0(i32 0)
  br label %184

184:                                              ; preds = %182, %181, %172, %160, %149, %138
  br label %264

185:                                              ; preds = %112
  %186 = load i32, i32* %8, align 4
  %187 = icmp eq i32 %186, 2
  br i1 %187, label %188, label %204

188:                                              ; preds = %185
  %189 = load i32, i32* %11, align 4
  %190 = call i64 @IS_EXSS_MARKER(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %204

192:                                              ; preds = %188
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %9, align 4
  %197 = add nsw i32 %196, 2
  %198 = icmp sle i32 %195, %197
  br i1 %198, label %199, label %204

199:                                              ; preds = %192
  %200 = load i32, i32* %9, align 4
  %201 = add nsw i32 %200, 2
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 3
  store i32 %201, i32* %203, align 4
  store i32 3, i32* %8, align 4
  br label %264

204:                                              ; preds = %192, %188, %185
  %205 = load i32, i32* %8, align 4
  %206 = icmp eq i32 %205, 3
  br i1 %206, label %207, label %222

207:                                              ; preds = %204
  %208 = load i32, i32* %9, align 4
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, 4
  %213 = icmp eq i32 %208, %212
  br i1 %213, label %214, label %221

214:                                              ; preds = %207
  %215 = load i32, i32* %11, align 4
  %216 = call i32 @EXSS_FRAMESIZE(i32 %215)
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %219, %216
  store i32 %220, i32* %218, align 4
  store i32 4, i32* %8, align 4
  br label %221

221:                                              ; preds = %214, %207
  br label %264

222:                                              ; preds = %204
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %9, align 4
  %227 = icmp sgt i32 %225, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %222
  br label %264

229:                                              ; preds = %222
  %230 = load i32, i32* %11, align 4
  %231 = call i64 @IS_MARKER(i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %263

233:                                              ; preds = %229
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = load i32, i32* %11, align 4
  %238 = call i64 @CORE_MARKER(i32 %237)
  %239 = icmp eq i64 %236, %238
  br i1 %239, label %245, label %240

240:                                              ; preds = %233
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = icmp eq i64 %243, 128
  br i1 %244, label %245, label %263

245:                                              ; preds = %240, %233
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 0
  store i32 0, i32* %247, align 4
  %248 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 1
  store i32 -1, i32* %249, align 4
  %250 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 0
  store i32 0, i32* %251, align 8
  %252 = load i32, i32* %11, align 4
  %253 = call i64 @IS_EXSS_MARKER(i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %245
  %256 = load i32, i32* %10, align 4
  %257 = sub nsw i32 %256, 3
  br label %261

258:                                              ; preds = %245
  %259 = load i32, i32* %10, align 4
  %260 = sub nsw i32 %259, 5
  br label %261

261:                                              ; preds = %258, %255
  %262 = phi i32 [ %257, %255 ], [ %260, %258 ]
  store i32 %262, i32* %4, align 4
  br label %279

263:                                              ; preds = %240, %229
  br label %264

264:                                              ; preds = %263, %228, %221, %199, %184
  %265 = load i32, i32* %10, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %10, align 4
  br label %108

267:                                              ; preds = %108
  br label %268

268:                                              ; preds = %267, %104
  %269 = load i32, i32* %8, align 4
  %270 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 0
  store i32 %269, i32* %271, align 4
  %272 = load i32, i32* %11, align 4
  %273 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 1
  store i32 %272, i32* %274, align 4
  %275 = load i32, i32* %9, align 4
  %276 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 0
  store i32 %275, i32* %277, align 8
  %278 = load i32, i32* @END_NOT_FOUND, align 4
  store i32 %278, i32* %4, align 4
  br label %279

279:                                              ; preds = %268, %261
  %280 = load i32, i32* %4, align 4
  ret i32 %280
}

declare dso_local i64 @IS_MARKER(i32) #1

declare dso_local i64 @CORE_MARKER(i32) #1

declare dso_local i64 @IS_EXSS_MARKER(i32) #1

declare dso_local i32 @EXSS_MARKER(i32) #1

declare dso_local i8* @CORE_FRAMESIZE(i32) #1

declare dso_local i32 @STATE_LE(i32) #1

declare dso_local i32 @STATE_14(i32) #1

declare dso_local i32 @EXSS_FRAMESIZE(i32) #1

declare dso_local i32 @av_assert0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
