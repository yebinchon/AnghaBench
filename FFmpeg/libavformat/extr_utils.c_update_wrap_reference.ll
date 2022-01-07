; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_update_wrap_reference.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_update_wrap_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_15__**, i32 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_16__ = type { i64, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_17__ = type { i64, i32, i32, i64* }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@AV_PTS_WRAP_ADD_OFFSET = common dso_local global i32 0, align 4
@AV_PTS_WRAP_SUB_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_16__*, i32, %struct.TYPE_18__*)* @update_wrap_reference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_wrap_reference(%struct.TYPE_19__* %0, %struct.TYPE_16__* %1, i32 %2, %struct.TYPE_18__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %9, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %10, align 8
  br label %27

27:                                               ; preds = %23, %4
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %47, label %33

33:                                               ; preds = %27
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %36, 63
  br i1 %37, label %47, label %38

38:                                               ; preds = %33
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42, %38, %33, %27
  store i32 0, i32* %5, align 4
  br label %272

48:                                               ; preds = %42
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = zext i32 %51 to i64
  %53 = shl i64 1, %52
  %54 = sub nsw i64 %53, 1
  %55 = load i64, i64* %10, align 8
  %56 = and i64 %55, %54
  store i64 %56, i64* %10, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @av_rescale(i32 60, i32 %61, i32 %65)
  %67 = sub nsw i64 %57, %66
  store i64 %67, i64* %13, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = zext i32 %71 to i64
  %73 = shl i64 1, %72
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %76, 3
  %78 = zext i32 %77 to i64
  %79 = shl i64 1, %78
  %80 = sub nsw i64 %73, %79
  %81 = icmp slt i64 %68, %80
  br i1 %81, label %100, label %82

82:                                               ; preds = %48
  %83 = load i64, i64* %10, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = zext i32 %86 to i64
  %88 = shl i64 1, %87
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @av_rescale(i32 60, i32 %92, i32 %96)
  %98 = sub nsw i64 %88, %97
  %99 = icmp slt i64 %83, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %82, %48
  %101 = load i32, i32* @AV_PTS_WRAP_ADD_OFFSET, align 4
  br label %104

102:                                              ; preds = %82
  %103 = load i32, i32* @AV_PTS_WRAP_SUB_OFFSET, align 4
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i32 [ %101, %100 ], [ %103, %102 ]
  store i32 %105, i32* %12, align 4
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %107 = load i32, i32* %8, align 4
  %108 = call %struct.TYPE_17__* @av_find_program_from_stream(%struct.TYPE_19__* %106, %struct.TYPE_17__* null, i32 %107)
  store %struct.TYPE_17__* %108, %struct.TYPE_17__** %14, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %110 = icmp ne %struct.TYPE_17__* %109, null
  br i1 %110, label %185, label %111

111:                                              ; preds = %104
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %113 = call i32 @av_find_default_stream_index(%struct.TYPE_19__* %112)
  store i32 %113, i32* %15, align 4
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %115, align 8
  %117 = load i32, i32* %15, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %116, i64 %118
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %161

125:                                              ; preds = %111
  store i32 0, i32* %11, align 4
  br label %126

126:                                              ; preds = %157, %125
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %160

132:                                              ; preds = %126
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %134 = load i32, i32* %11, align 4
  %135 = call %struct.TYPE_17__* @av_find_program_from_stream(%struct.TYPE_19__* %133, %struct.TYPE_17__* null, i32 %134)
  %136 = icmp ne %struct.TYPE_17__* %135, null
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %157

138:                                              ; preds = %132
  %139 = load i64, i64* %13, align 8
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %141, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %142, i64 %144
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  store i64 %139, i64* %147, align 8
  %148 = load i32, i32* %12, align 4
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %150, align 8
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %151, i64 %153
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 1
  store i32 %148, i32* %156, align 8
  br label %157

157:                                              ; preds = %138, %137
  %158 = load i32, i32* %11, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %11, align 4
  br label %126

160:                                              ; preds = %126
  br label %184

161:                                              ; preds = %111
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %163, align 8
  %165 = load i32, i32* %15, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %164, i64 %166
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 0
  store i64 %170, i64* %172, align 8
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %174, align 8
  %176 = load i32, i32* %15, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %175, i64 %177
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 2
  store i32 %181, i32* %183, align 4
  br label %184

184:                                              ; preds = %161, %160
  br label %271

185:                                              ; preds = %104
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  store %struct.TYPE_17__* %186, %struct.TYPE_17__** %16, align 8
  br label %187

187:                                              ; preds = %203, %185
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %189 = icmp ne %struct.TYPE_17__* %188, null
  br i1 %189, label %190, label %208

190:                                              ; preds = %187
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %195 = icmp ne i64 %193, %194
  br i1 %195, label %196, label %203

196:                                              ; preds = %190
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  store i64 %199, i64* %13, align 8
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  store i32 %202, i32* %12, align 4
  br label %208

203:                                              ; preds = %190
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %206 = load i32, i32* %8, align 4
  %207 = call %struct.TYPE_17__* @av_find_program_from_stream(%struct.TYPE_19__* %204, %struct.TYPE_17__* %205, i32 %206)
  store %struct.TYPE_17__* %207, %struct.TYPE_17__** %16, align 8
  br label %187

208:                                              ; preds = %196, %187
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  store %struct.TYPE_17__* %209, %struct.TYPE_17__** %16, align 8
  br label %210

210:                                              ; preds = %265, %208
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %212 = icmp ne %struct.TYPE_17__* %211, null
  br i1 %212, label %213, label %270

213:                                              ; preds = %210
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* %13, align 8
  %218 = icmp ne i64 %216, %217
  br i1 %218, label %219, label %265

219:                                              ; preds = %213
  store i32 0, i32* %11, align 4
  br label %220

220:                                              ; preds = %255, %219
  %221 = load i32, i32* %11, align 4
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = icmp slt i32 %221, %224
  br i1 %225, label %226, label %258

226:                                              ; preds = %220
  %227 = load i64, i64* %13, align 8
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i32 0, i32 1
  %230 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %229, align 8
  %231 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %231, i32 0, i32 3
  %233 = load i64*, i64** %232, align 8
  %234 = load i32, i32* %11, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i64, i64* %233, i64 %235
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %230, i64 %237
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 0
  store i64 %227, i64* %240, align 8
  %241 = load i32, i32* %12, align 4
  %242 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %242, i32 0, i32 1
  %244 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %243, align 8
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 3
  %247 = load i64*, i64** %246, align 8
  %248 = load i32, i32* %11, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i64, i64* %247, i64 %249
  %251 = load i64, i64* %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %244, i64 %251
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 1
  store i32 %241, i32* %254, align 8
  br label %255

255:                                              ; preds = %226
  %256 = load i32, i32* %11, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %11, align 4
  br label %220

258:                                              ; preds = %220
  %259 = load i64, i64* %13, align 8
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 0
  store i64 %259, i64* %261, align 8
  %262 = load i32, i32* %12, align 4
  %263 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %264 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %263, i32 0, i32 1
  store i32 %262, i32* %264, align 8
  br label %265

265:                                              ; preds = %258, %213
  %266 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %268 = load i32, i32* %8, align 4
  %269 = call %struct.TYPE_17__* @av_find_program_from_stream(%struct.TYPE_19__* %266, %struct.TYPE_17__* %267, i32 %268)
  store %struct.TYPE_17__* %269, %struct.TYPE_17__** %16, align 8
  br label %210

270:                                              ; preds = %210
  br label %271

271:                                              ; preds = %270, %184
  store i32 1, i32* %5, align 4
  br label %272

272:                                              ; preds = %271, %47
  %273 = load i32, i32* %5, align 4
  ret i32 %273
}

declare dso_local i64 @av_rescale(i32, i32, i32) #1

declare dso_local %struct.TYPE_17__* @av_find_program_from_stream(%struct.TYPE_19__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @av_find_default_stream_index(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
