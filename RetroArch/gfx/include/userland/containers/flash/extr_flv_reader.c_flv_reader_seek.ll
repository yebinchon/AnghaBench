; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/flash/extr_flv_reader.c_flv_reader_seek.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/flash/extr_flv_reader.c_flv_reader_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_19__**, %struct.TYPE_15__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__*, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, i64, i64, i64, i64, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@VC_CONTAINER_ES_TYPE_VIDEO = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_CORRUPTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"seek (%i, prev %i)\00", align 1
@VC_CONTAINER_SEEK_FLAG_FORWARD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"seek failed (%i)\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"seek failed (%i), look for previous frame\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"seek done (%i)\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"seek adjustment (%i)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_20__*, i32*, i32, i32)* @flv_reader_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @flv_reader_seek(%struct.TYPE_20__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_22__, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  store %struct.TYPE_21__* %26, %struct.TYPE_21__** %10, align 8
  %27 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %27, i64* %11, align 8
  %28 = bitcast %struct.TYPE_22__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 0, i64 48, i1 false)
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %30, 1000
  store i32 %31, i32* %14, align 4
  store i32 0, i32* %20, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @VC_CONTAINER_PARAM_UNUSED(i32 %32)
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %34

34:                                               ; preds = %57, %4
  %35 = load i32, i32* %17, align 4
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ult i32 %35, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %34
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %42, align 8
  %44 = load i32, i32* %17, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %43, i64 %45
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @VC_CONTAINER_ES_TYPE_VIDEO, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  br label %57

55:                                               ; preds = %40
  %56 = load i32, i32* %17, align 4
  store i32 %56, i32* %18, align 4
  br label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %17, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %17, align 4
  br label %34

60:                                               ; preds = %55, %34
  %61 = load i32, i32* %18, align 4
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp uge i32 %61, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i64, i64* @VC_CONTAINER_ERROR_CORRUPTED, align 8
  store i64 %67, i64* %5, align 8
  br label %325

68:                                               ; preds = %60
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %70, align 8
  %72 = load i32, i32* %18, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %71, i64 %73
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %80, align 8
  store %struct.TYPE_22__* %81, %struct.TYPE_22__** %13, align 8
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %16, align 4
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %16, align 4
  %88 = call i32 (%struct.TYPE_20__*, i8*, i32, ...) @LOG_DEBUG(%struct.TYPE_20__* %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %87)
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %115

93:                                               ; preds = %68
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 5
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @VC_CONTAINER_SEEK_FLAG_FORWARD, align 4
  %99 = and i32 %97, %98
  %100 = load i32*, i32** %7, align 8
  %101 = call i64 @vc_container_index_get(i64 %96, i32 %99, i32* %100, i32* %21, i32* %20)
  %102 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %93
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* %21, align 4
  %108 = load i32, i32* %21, align 4
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = sdiv i64 %111, 1000
  %113 = trunc i64 %112 to i32
  %114 = call i32 @flv_update_track_position(%struct.TYPE_20__* %105, i32 %106, i32 %107, i32 0, i32 %108, i32 0, i32 %113, i32 0)
  br label %135

115:                                              ; preds = %93, %68
  %116 = load i32, i32* %14, align 4
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sdiv i32 %119, 2
  %121 = icmp slt i32 %116, %120
  br i1 %121, label %122, label %134

122:                                              ; preds = %115
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %124 = load i32, i32* %18, align 4
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = call i32 @flv_update_track_position(%struct.TYPE_20__* %123, i32 %124, i32 %128, i32 0, i32 %132, i32 0, i32 0, i32 0)
  br label %134

134:                                              ; preds = %122, %115
  store i32 1, i32* %20, align 4
  br label %135

135:                                              ; preds = %134, %104
  %136 = load i32, i32* %20, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %140 = load i32, i32* %18, align 4
  %141 = call i64 @flv_find_next_frame(%struct.TYPE_20__* %139, i32 %140, i32* %19, i32* %15, i32 0, i32 1, i32 0)
  store i64 %141, i64* %11, align 8
  br label %205

142:                                              ; preds = %135
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* %16, align 4
  %145 = icmp sgt i32 %143, %144
  br i1 %145, label %146, label %171

146:                                              ; preds = %142
  br label %147

147:                                              ; preds = %163, %146
  %148 = load i64, i64* %11, align 8
  %149 = icmp ne i64 %148, 0
  %150 = xor i1 %149, true
  br i1 %150, label %151, label %170

151:                                              ; preds = %147
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %153 = load i32, i32* %18, align 4
  %154 = call i64 @flv_find_next_frame(%struct.TYPE_20__* %152, i32 %153, i32* %19, i32* %15, i32 0, i32 1, i32 0)
  store i64 %154, i64* %11, align 8
  %155 = load i64, i64* %11, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  br label %170

158:                                              ; preds = %151
  %159 = load i32, i32* %14, align 4
  %160 = load i32, i32* %15, align 4
  %161 = icmp sle i32 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  br label %170

163:                                              ; preds = %158
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %165 = bitcast %struct.TYPE_22__* %12 to i8*
  %166 = bitcast %struct.TYPE_22__* %164 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %165, i8* align 8 %166, i64 48, i1 false)
  %167 = load i32, i32* %19, align 4
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  br label %147

170:                                              ; preds = %162, %157, %147
  br label %204

171:                                              ; preds = %142
  br label %172

172:                                              ; preds = %196, %171
  %173 = load i64, i64* %11, align 8
  %174 = icmp ne i64 %173, 0
  %175 = xor i1 %174, true
  br i1 %175, label %176, label %203

176:                                              ; preds = %172
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %178 = load i32, i32* %18, align 4
  %179 = call i64 @flv_find_previous_frame(%struct.TYPE_20__* %177, i32 %178, i32* %19, i32* %15, i32 0, i32 1, i32 0)
  store i64 %179, i64* %11, align 8
  %180 = load i64, i64* %11, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %176
  br label %203

183:                                              ; preds = %176
  %184 = load i32, i32* %14, align 4
  %185 = load i32, i32* %15, align 4
  %186 = icmp sge i32 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %183
  br label %203

188:                                              ; preds = %183
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp eq i32 %191, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %188
  br label %203

196:                                              ; preds = %188
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %198 = bitcast %struct.TYPE_22__* %12 to i8*
  %199 = bitcast %struct.TYPE_22__* %197 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %198, i8* align 8 %199, i64 48, i1 false)
  %200 = load i32, i32* %19, align 4
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 1
  store i32 %200, i32* %202, align 4
  br label %172

203:                                              ; preds = %195, %187, %182, %172
  br label %204

204:                                              ; preds = %203, %170
  br label %205

205:                                              ; preds = %204, %138
  %206 = load i64, i64* %11, align 8
  %207 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %209, label %220

209:                                              ; preds = %205
  %210 = load i32, i32* %9, align 4
  %211 = load i32, i32* @VC_CONTAINER_SEEK_FLAG_FORWARD, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %209
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %216 = load i64, i64* %11, align 8
  %217 = trunc i64 %216 to i32
  %218 = call i32 (%struct.TYPE_20__*, i8*, i32, ...) @LOG_DEBUG(%struct.TYPE_20__* %215, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %217)
  %219 = load i64, i64* %11, align 8
  store i64 %219, i64* %5, align 8
  br label %325

220:                                              ; preds = %209, %205
  %221 = load i64, i64* %11, align 8
  %222 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %223 = icmp ne i64 %221, %222
  br i1 %223, label %224, label %241

224:                                              ; preds = %220
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %226 = load i64, i64* %11, align 8
  %227 = trunc i64 %226 to i32
  %228 = call i32 (%struct.TYPE_20__*, i8*, i32, ...) @LOG_DEBUG(%struct.TYPE_20__* %225, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %227)
  %229 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 3
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %224
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %234 = bitcast %struct.TYPE_22__* %233 to i8*
  %235 = bitcast %struct.TYPE_22__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %234, i8* align 8 %235, i64 48, i1 false)
  br label %240

236:                                              ; preds = %224
  %237 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %238 = load i32, i32* %18, align 4
  %239 = call i64 @flv_find_previous_frame(%struct.TYPE_20__* %237, i32 %238, i32* %19, i32* %15, i32 0, i32 1, i32 0)
  store i64 %239, i64* %11, align 8
  br label %240

240:                                              ; preds = %236, %232
  br label %241

241:                                              ; preds = %240, %220
  br label %242

242:                                              ; preds = %241
  %243 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %244 = load i32, i32* %15, align 4
  %245 = call i32 (%struct.TYPE_20__*, i8*, i32, ...) @LOG_DEBUG(%struct.TYPE_20__* %243, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %244)
  %246 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %247 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 4
  store i64 %246, i64* %248, align 8
  %249 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %250 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 4
  store i64 %249, i64* %250, align 8
  %251 = load i32, i32* %20, align 4
  %252 = icmp eq i32 %251, 1
  br i1 %252, label %253, label %306

253:                                              ; preds = %242
  %254 = load i32, i32* %9, align 4
  %255 = load i32, i32* @VC_CONTAINER_SEEK_FLAG_FORWARD, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %279

258:                                              ; preds = %253
  %259 = load i32, i32* %15, align 4
  %260 = load i32, i32* %14, align 4
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %262, label %279

262:                                              ; preds = %258
  %263 = load i32, i32* %15, align 4
  %264 = load i32, i32* %16, align 4
  %265 = icmp slt i32 %263, %264
  br i1 %265, label %266, label %279

266:                                              ; preds = %262
  %267 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 3
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %274

270:                                              ; preds = %266
  %271 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %272 = bitcast %struct.TYPE_22__* %271 to i8*
  %273 = bitcast %struct.TYPE_22__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %272, i8* align 8 %273, i64 48, i1 false)
  br label %278

274:                                              ; preds = %266
  %275 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %276 = load i32, i32* %18, align 4
  %277 = call i64 @flv_find_next_frame(%struct.TYPE_20__* %275, i32 %276, i32* %19, i32* %15, i32 0, i32 1, i32 0)
  store i64 %277, i64* %11, align 8
  br label %278

278:                                              ; preds = %274, %270
  br label %302

279:                                              ; preds = %262, %258, %253
  %280 = load i32, i32* %9, align 4
  %281 = load i32, i32* @VC_CONTAINER_SEEK_FLAG_FORWARD, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %301, label %284

284:                                              ; preds = %279
  %285 = load i32, i32* %15, align 4
  %286 = load i32, i32* %14, align 4
  %287 = icmp sgt i32 %285, %286
  br i1 %287, label %288, label %301

288:                                              ; preds = %284
  %289 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 3
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %296

292:                                              ; preds = %288
  %293 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %294 = bitcast %struct.TYPE_22__* %293 to i8*
  %295 = bitcast %struct.TYPE_22__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %294, i8* align 8 %295, i64 48, i1 false)
  br label %300

296:                                              ; preds = %288
  %297 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %298 = load i32, i32* %18, align 4
  %299 = call i64 @flv_find_previous_frame(%struct.TYPE_20__* %297, i32 %298, i32* %19, i32* %15, i32 0, i32 1, i32 0)
  store i64 %299, i64* %11, align 8
  br label %300

300:                                              ; preds = %296, %292
  br label %301

301:                                              ; preds = %300, %284, %279
  br label %302

302:                                              ; preds = %301, %278
  %303 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %304 = load i32, i32* %15, align 4
  %305 = call i32 (%struct.TYPE_20__*, i8*, i32, ...) @LOG_DEBUG(%struct.TYPE_20__* %303, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %304)
  br label %306

306:                                              ; preds = %302, %242
  %307 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %308 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %307, i32 0, i32 2
  %309 = load i64, i64* %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 2
  %311 = load i64, i64* %310, align 8
  %312 = icmp eq i64 %309, %311
  br i1 %312, label %313, label %319

313:                                              ; preds = %306
  %314 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %315 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %316 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %315, i32 0, i32 2
  %317 = load i64, i64* %316, align 8
  %318 = call i64 @SEEK(%struct.TYPE_20__* %314, i64 %317)
  store i64 %318, i64* %11, align 8
  br label %319

319:                                              ; preds = %313, %306
  %320 = load i32, i32* %15, align 4
  %321 = call i32 @INT64_C(i32 1000)
  %322 = mul nsw i32 %320, %321
  %323 = load i32*, i32** %7, align 8
  store i32 %322, i32* %323, align 4
  %324 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %324, i64* %5, align 8
  br label %325

325:                                              ; preds = %319, %214, %66
  %326 = load i64, i64* %5, align 8
  ret i64 %326
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @VC_CONTAINER_PARAM_UNUSED(i32) #2

declare dso_local i32 @LOG_DEBUG(%struct.TYPE_20__*, i8*, i32, ...) #2

declare dso_local i64 @vc_container_index_get(i64, i32, i32*, i32*, i32*) #2

declare dso_local i32 @flv_update_track_position(%struct.TYPE_20__*, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i64 @flv_find_next_frame(%struct.TYPE_20__*, i32, i32*, i32*, i32, i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @flv_find_previous_frame(%struct.TYPE_20__*, i32, i32*, i32*, i32, i32, i32) #2

declare dso_local i64 @SEEK(%struct.TYPE_20__*, i64) #2

declare dso_local i32 @INT64_C(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
