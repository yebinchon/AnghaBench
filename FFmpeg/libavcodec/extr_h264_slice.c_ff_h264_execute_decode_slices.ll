; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_slice.c_ff_h264_execute_decode_slices.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_slice.c_ff_h264_execute_decode_slices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, i32, %struct.TYPE_16__*, i64, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_18__*, i32 (%struct.TYPE_18__*, %struct.TYPE_16__*)*, %struct.TYPE_16__*, i32*, i32, i32)*, i64 }

@INT_MAX = common dso_local global i32 0, align 4
@CONFIG_ERROR_RESILIENCE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_h264_execute_decode_slices(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 6
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %4, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %22 = load i32, i32* @INT_MAX, align 4
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  store i32 %22, i32* %27, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 6
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %1
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %1
  store i32 0, i32* %2, align 4
  br label %331

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br label %55

55:                                               ; preds = %41, %38
  %56 = phi i1 [ false, %38 ], [ %54, %41 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @av_assert0(i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %94

61:                                               ; preds = %55
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %64, %67
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  store i32 %68, i32* %73, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 5
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 4
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i64 0
  %81 = call i32 @decode_slice(%struct.TYPE_18__* %76, %struct.TYPE_16__* %80)
  store i32 %81, i32* %7, align 4
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %61
  br label %327

93:                                               ; preds = %61
  br label %326

94:                                               ; preds = %55
  %95 = load i32, i32* %6, align 4
  %96 = icmp sgt i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @av_assert0(i32 %97)
  store i32 0, i32* %8, align 4
  br label %99

99:                                               ; preds = %176, %94
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %179

103:                                              ; preds = %99
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %106, %109
  store i32 %110, i32* %10, align 4
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 4
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i64 %115
  store %struct.TYPE_16__* %116, %struct.TYPE_16__** %5, align 8
  %117 = load i64, i64* @CONFIG_ERROR_RESILIENCE, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %103
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  store i64 0, i64* %122, align 8
  br label %123

123:                                              ; preds = %119, %103
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = mul nsw i32 %126, %129
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %130, %133
  store i32 %134, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %135

135:                                              ; preds = %169, %123
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %172

139:                                              ; preds = %135
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 4
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %141, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i64 %144
  store %struct.TYPE_16__* %145, %struct.TYPE_16__** %12, align 8
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = mul nsw i32 %148, %151
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %152, %155
  store i32 %156, i32* %13, align 4
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %9, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %164, label %160

160:                                              ; preds = %139
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* %11, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %160, %139
  br label %169

165:                                              ; preds = %160
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* %13, align 4
  %168 = call i32 @FFMIN(i32 %166, i32 %167)
  store i32 %168, i32* %10, align 4
  br label %169

169:                                              ; preds = %165, %164
  %170 = load i32, i32* %9, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %9, align 4
  br label %135

172:                                              ; preds = %135
  %173 = load i32, i32* %10, align 4
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 8
  br label %176

176:                                              ; preds = %172
  %177 = load i32, i32* %8, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %8, align 4
  br label %99

179:                                              ; preds = %99
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 0
  %182 = load i32 (%struct.TYPE_18__*, i32 (%struct.TYPE_18__*, %struct.TYPE_16__*)*, %struct.TYPE_16__*, i32*, i32, i32)*, i32 (%struct.TYPE_18__*, i32 (%struct.TYPE_18__*, %struct.TYPE_16__*)*, %struct.TYPE_16__*, i32*, i32, i32)** %181, align 8
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 4
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %185, align 8
  %187 = load i32, i32* %6, align 4
  %188 = call i32 %182(%struct.TYPE_18__* %183, i32 (%struct.TYPE_18__*, %struct.TYPE_16__*)* @decode_slice, %struct.TYPE_16__* %186, i32* null, i32 %187, i32 32)
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 4
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %190, align 8
  %192 = load i32, i32* %6, align 4
  %193 = sub nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i64 %194
  store %struct.TYPE_16__* %195, %struct.TYPE_16__** %5, align 8
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 3
  store i32 %198, i32* %200, align 4
  %201 = load i64, i64* @CONFIG_ERROR_RESILIENCE, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %230

203:                                              ; preds = %179
  store i32 1, i32* %8, align 4
  br label %204

204:                                              ; preds = %226, %203
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* %6, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %229

208:                                              ; preds = %204
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 4
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %210, align 8
  %212 = load i32, i32* %8, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 5
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 4
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i64 0
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 5
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = add nsw i64 %224, %217
  store i64 %225, i64* %223, align 8
  br label %226

226:                                              ; preds = %208
  %227 = load i32, i32* %8, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %8, align 4
  br label %204

229:                                              ; preds = %204
  br label %230

230:                                              ; preds = %229, %179
  %231 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %231, i32 0, i32 5
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %325

235:                                              ; preds = %230
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 5
  store i64 0, i64* %237, align 8
  store i32 0, i32* %8, align 4
  br label %238

238:                                              ; preds = %321, %235
  %239 = load i32, i32* %8, align 4
  %240 = load i32, i32* %6, align 4
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %242, label %324

242:                                              ; preds = %238
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 4
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %244, align 8
  %246 = load i32, i32* %8, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i64 %247
  store %struct.TYPE_16__* %248, %struct.TYPE_16__** %5, align 8
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = add nsw i32 %251, 1
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @FFMIN(i32 %252, i32 %255)
  store i32 %256, i32* %14, align 4
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = icmp sge i32 %259, %262
  br i1 %263, label %264, label %268

264:                                              ; preds = %242
  %265 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  br label %272

268:                                              ; preds = %242
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  br label %272

272:                                              ; preds = %268, %264
  %273 = phi i32 [ %267, %264 ], [ %271, %268 ]
  store i32 %273, i32* %15, align 4
  %274 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 4
  store i32 %276, i32* %9, align 4
  br label %277

277:                                              ; preds = %312, %272
  %278 = load i32, i32* %9, align 4
  %279 = load i32, i32* %14, align 4
  %280 = icmp slt i32 %278, %279
  br i1 %280, label %281, label %320

281:                                              ; preds = %277
  %282 = load i32, i32* %9, align 4
  %283 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i32 0, i32 1
  store i32 %282, i32* %284, align 4
  %285 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %286 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %287 = load i32, i32* %9, align 4
  %288 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = icmp sgt i32 %287, %290
  br i1 %291, label %292, label %293

292:                                              ; preds = %281
  br label %297

293:                                              ; preds = %281
  %294 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %294, i32 0, i32 4
  %296 = load i32, i32* %295, align 8
  br label %297

297:                                              ; preds = %293, %292
  %298 = phi i32 [ 0, %292 ], [ %296, %293 ]
  %299 = load i32, i32* %9, align 4
  %300 = load i32, i32* %14, align 4
  %301 = sub nsw i32 %300, 1
  %302 = icmp eq i32 %299, %301
  br i1 %302, label %303, label %305

303:                                              ; preds = %297
  %304 = load i32, i32* %15, align 4
  br label %309

305:                                              ; preds = %297
  %306 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %307 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 8
  br label %309

309:                                              ; preds = %305, %303
  %310 = phi i32 [ %304, %303 ], [ %308, %305 ]
  %311 = call i32 @loop_filter(%struct.TYPE_17__* %285, %struct.TYPE_16__* %286, i32 %298, i32 %310)
  br label %312

312:                                              ; preds = %309
  %313 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %314 = call i64 @FIELD_OR_MBAFF_PICTURE(%struct.TYPE_17__* %313)
  %315 = add nsw i64 1, %314
  %316 = load i32, i32* %9, align 4
  %317 = sext i32 %316 to i64
  %318 = add nsw i64 %317, %315
  %319 = trunc i64 %318 to i32
  store i32 %319, i32* %9, align 4
  br label %277

320:                                              ; preds = %277
  br label %321

321:                                              ; preds = %320
  %322 = load i32, i32* %8, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %8, align 4
  br label %238

324:                                              ; preds = %238
  br label %325

325:                                              ; preds = %324, %230
  br label %326

326:                                              ; preds = %325, %93
  br label %327

327:                                              ; preds = %326, %92
  %328 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %329 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %328, i32 0, i32 0
  store i32 0, i32* %329, align 8
  %330 = load i32, i32* %7, align 4
  store i32 %330, i32* %2, align 4
  br label %331

331:                                              ; preds = %327, %37
  %332 = load i32, i32* %2, align 4
  ret i32 %332
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @decode_slice(%struct.TYPE_18__*, %struct.TYPE_16__*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @loop_filter(%struct.TYPE_17__*, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i64 @FIELD_OR_MBAFF_PICTURE(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
