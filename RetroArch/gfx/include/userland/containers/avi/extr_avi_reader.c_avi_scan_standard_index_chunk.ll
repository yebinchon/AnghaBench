; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/avi/extr_avi_reader.c_avi_scan_standard_index_chunk.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/avi/extr_avi_reader.c_avi_scan_standard_index_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_18__** }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32, i32, i64, i32 }

@VC_CONTAINER_ERROR_NOT_FOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"Chunk ID\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Chunk Size\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"wLongsPerEntry\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"bIndexSubType\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"bIndexType\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"nEntriesInUse\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"dwChunkId\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"qwBaseOffset\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"dwReserved\00", align 1
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_FORMAT_INVALID = common dso_local global i64 0, align 8
@AVI_INDEX_OF_CHUNKS = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"dwOffset\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"dwSize\00", align 1
@AVI_INDEX_DELTAFRAME = common dso_local global i32 0, align 4
@VC_CONTAINER_PACKET_FLAG_KEYFRAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_20__*, i32, i32, i32*, i32, i32*)* @avi_scan_standard_index_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @avi_scan_standard_index_chunk(%struct.TYPE_20__* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_21__, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %32 = load i64, i64* @VC_CONTAINER_ERROR_NOT_FOUND, align 8
  store i64 %32, i64* %14, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %15, align 8
  store i32 0, i32* %23, align 4
  %33 = call i32 @UINT64_C(i32 0)
  store i32 %33, i32* %25, align 4
  %34 = call i32 @UINT64_C(i32 0)
  store i32 %34, i32* %26, align 4
  %35 = call i32 @INT64_C(i32 0)
  store i32 %35, i32* %27, align 4
  %36 = bitcast %struct.TYPE_21__* %28 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %36, i8 0, i64 32, i1 false)
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @SEEK(%struct.TYPE_20__* %37, i32 %38)
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %41 = call i32 @READ_FOURCC(%struct.TYPE_20__* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %41, i32* %16, align 4
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %43 = call i32 @READ_U32(%struct.TYPE_20__* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %43, i32* %17, align 4
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %45 = call i32 @READ_U16(%struct.TYPE_20__* %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 %45, i32* %24, align 4
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %47 = call i64 @READ_U8(%struct.TYPE_20__* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i64 %47, i64* %21, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %49 = call i64 @READ_U8(%struct.TYPE_20__* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i64 %49, i64* %20, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %51 = call i32 @READ_U32(%struct.TYPE_20__* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  store i32 %51, i32* %23, align 4
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %53 = call i32 @READ_FOURCC(%struct.TYPE_20__* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32 %53, i32* %16, align 4
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %55 = call i32 @READ_U64(%struct.TYPE_20__* %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  store i32 %55, i32* %25, align 4
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %57 = call i32 @SKIP_U32(%struct.TYPE_20__* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %59 = call i64 @STREAM_STATUS(%struct.TYPE_20__* %58)
  store i64 %59, i64* %14, align 8
  %60 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %6
  %63 = load i64, i64* %14, align 8
  store i64 %63, i64* %7, align 8
  br label %240

64:                                               ; preds = %6
  %65 = load i32, i32* %16, align 4
  %66 = call i32 @avi_track_from_chunk_id(i32 %65, i32* %18, i32* %19)
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* %19, align 4
  %70 = call i64 @avi_check_track(%struct.TYPE_20__* %67, i32 %68, i32 %69)
  store i64 %70, i64* %14, align 8
  %71 = load i64, i64* %14, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %64
  %74 = load i32, i32* %17, align 4
  %75 = icmp slt i32 %74, 24
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76, %73, %64
  %81 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 8
  store i64 %81, i64* %7, align 8
  br label %240

82:                                               ; preds = %76
  %83 = load i32, i32* %24, align 4
  %84 = icmp ne i32 %83, 2
  br i1 %84, label %92, label %85

85:                                               ; preds = %82
  %86 = load i64, i64* %21, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = load i64, i64* %20, align 8
  %90 = load i64, i64* @AVI_INDEX_OF_CHUNKS, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88, %85, %82
  %93 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %93, i64* %7, align 8
  br label %240

94:                                               ; preds = %88
  %95 = load i32, i32* %23, align 4
  %96 = load i32, i32* %17, align 4
  %97 = sub nsw i32 %96, 24
  %98 = load i32, i32* %24, align 4
  %99 = mul i32 %98, 4
  %100 = udiv i32 %97, %99
  %101 = call i32 @MIN(i32 %95, i32 %100)
  store i32 %101, i32* %23, align 4
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %104, i64 %106
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %111, align 8
  store %struct.TYPE_19__* %112, %struct.TYPE_19__** %15, align 8
  store i32 0, i32* %22, align 4
  br label %113

113:                                              ; preds = %235, %94
  %114 = load i32, i32* %22, align 4
  %115 = load i32, i32* %23, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %238

117:                                              ; preds = %113
  store i32 0, i32* %30, align 4
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %119 = call i32 @READ_U32(%struct.TYPE_20__* %118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  store i32 %119, i32* %29, align 4
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %121 = call i32 @READ_U32(%struct.TYPE_20__* %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  store i32 %121, i32* %17, align 4
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %123 = call i64 @STREAM_STATUS(%struct.TYPE_20__* %122)
  store i64 %123, i64* %14, align 8
  %124 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %117
  br label %238

127:                                              ; preds = %117
  %128 = load i64, i64* @VC_CONTAINER_ERROR_NOT_FOUND, align 8
  store i64 %128, i64* %14, align 8
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* @AVI_INDEX_DELTAFRAME, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %127
  store i32 1, i32* %30, align 4
  br label %134

134:                                              ; preds = %133, %127
  %135 = load i32, i32* @AVI_INDEX_DELTAFRAME, align 4
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %17, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %17, align 4
  %139 = load i32, i32* %25, align 4
  %140 = load i32, i32* %29, align 4
  %141 = add nsw i32 %139, %140
  %142 = sub nsw i32 %141, 8
  store i32 %142, i32* %26, align 4
  %143 = load i32, i32* %30, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %134
  %146 = load i64, i64* @VC_CONTAINER_PACKET_FLAG_KEYFRAME, align 8
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 3
  store i64 %146, i64* %149, align 8
  br label %154

150:                                              ; preds = %134
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 3
  store i64 0, i64* %153, align 8
  br label %154

154:                                              ; preds = %150, %145
  %155 = load i32*, i32** %11, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %210

157:                                              ; preds = %154
  %158 = load i64, i64* @VC_CONTAINER_ERROR_NOT_FOUND, align 8
  store i64 %158, i64* %14, align 8
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** %11, align 8
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %30, align 4
  %166 = load i32, i32* %12, align 4
  %167 = call i32 @avi_compare_seek_time(i32 %162, i32 %164, i32 %165, i32 %166)
  store i32 %167, i32* %31, align 4
  %168 = load i32, i32* %31, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %157
  %171 = load i32, i32* %26, align 4
  %172 = load i32*, i32** %13, align 8
  store i32 %171, i32* %172, align 4
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** %11, align 8
  store i32 %176, i32* %177, align 4
  %178 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %178, i64* %14, align 8
  br label %238

179:                                              ; preds = %157
  %180 = load i32, i32* %31, align 4
  %181 = icmp sgt i32 %180, 0
  br i1 %181, label %182, label %199

182:                                              ; preds = %179
  %183 = load i32, i32* %27, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %198

185:                                              ; preds = %182
  %186 = load i32, i32* %27, align 4
  %187 = load i32*, i32** %13, align 8
  store i32 %186, i32* %187, align 4
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 0
  %190 = bitcast %struct.TYPE_21__* %189 to i8*
  %191 = bitcast %struct.TYPE_21__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %190, i8* align 8 %191, i64 32, i1 false)
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load i32*, i32** %11, align 8
  store i32 %195, i32* %196, align 4
  %197 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %197, i64* %14, align 8
  br label %198

198:                                              ; preds = %185, %182
  br label %238

199:                                              ; preds = %179
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %30, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %200
  %204 = load i32, i32* %26, align 4
  store i32 %204, i32* %27, align 4
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 0
  %207 = bitcast %struct.TYPE_21__* %28 to i8*
  %208 = bitcast %struct.TYPE_21__* %206 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %207, i8* align 8 %208, i64 32, i1 false)
  br label %209

209:                                              ; preds = %203, %200
  br label %218

210:                                              ; preds = %154
  %211 = load i32, i32* %26, align 4
  %212 = load i32*, i32** %13, align 8
  %213 = load i32, i32* %212, align 4
  %214 = icmp sge i32 %211, %213
  br i1 %214, label %215, label %217

215:                                              ; preds = %210
  %216 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %216, i64* %14, align 8
  br label %238

217:                                              ; preds = %210
  br label %218

218:                                              ; preds = %217, %209
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %221, align 8
  %224 = load i32, i32* %17, align 4
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = add nsw i32 %228, %224
  store i32 %229, i32* %227, align 8
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %231 = call i32 @avi_calculate_chunk_time(%struct.TYPE_19__* %230)
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %233, i32 0, i32 1
  store i32 %231, i32* %234, align 4
  br label %235

235:                                              ; preds = %218
  %236 = load i32, i32* %22, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %22, align 4
  br label %113

238:                                              ; preds = %215, %198, %170, %126, %113
  %239 = load i64, i64* %14, align 8
  store i64 %239, i64* %7, align 8
  br label %240

240:                                              ; preds = %238, %92, %80, %62
  %241 = load i64, i64* %7, align 8
  ret i64 %241
}

declare dso_local i32 @UINT64_C(i32) #1

declare dso_local i32 @INT64_C(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @SEEK(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @READ_FOURCC(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @READ_U32(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @READ_U16(%struct.TYPE_20__*, i8*) #1

declare dso_local i64 @READ_U8(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @READ_U64(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @SKIP_U32(%struct.TYPE_20__*, i8*) #1

declare dso_local i64 @STREAM_STATUS(%struct.TYPE_20__*) #1

declare dso_local i32 @avi_track_from_chunk_id(i32, i32*, i32*) #1

declare dso_local i64 @avi_check_track(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @avi_compare_seek_time(i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @avi_calculate_chunk_time(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
