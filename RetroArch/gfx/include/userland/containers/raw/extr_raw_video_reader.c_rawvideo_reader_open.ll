; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/raw/extr_raw_video_reader.c_rawvideo_reader_open.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/raw/extr_raw_video_reader.c_rawvideo_reader_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_20__*, %struct.TYPE_26__** }
%struct.TYPE_20__ = type { i32, i32, i32 (%struct.TYPE_24__*)*, %struct.TYPE_25__*, i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__*, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32 }

@VC_CONTAINER_ERROR_FORMAT_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"container\00", align 1
@VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"YUV4MPEG2 \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"yuv\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"using raw video reader\00", align 1
@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@VC_CONTAINER_ES_TYPE_VIDEO = common dso_local global i32 0, align 4
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"rawvideo %4.4s/%ix%i/fps:%i:%i/size:%i\00", align 1
@rawvideo_reader_read = common dso_local global i32 0, align 4
@rawvideo_reader_seek = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"rawvideo: error opening stream (%i)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rawvideo_reader_open(%struct.TYPE_24__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [10 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  %15 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 8
  store i64 %15, i64* %4, align 8
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i8* @vc_uri_path_extension(i32 %20)
  store i8* %21, i8** %5, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %6, align 8
  store i32 0, i32* %7, align 4
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @vc_uri_find_query(i32 %26, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %5)
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %29 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 0
  %30 = call i32 @PEEK_BYTES(%struct.TYPE_24__* %28, i32* %29, i32 40)
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 40
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  %34 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %34, i64* %2, align 8
  br label %334

35:                                               ; preds = %1
  %36 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 0
  %37 = call i32 @memcmp(i32* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 40)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  store i32 1, i32* %7, align 4
  br label %40

40:                                               ; preds = %39, %35
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %40
  %44 = load i8*, i8** %5, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @strcasecmp(i8* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46, %43
  %51 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %51, i64* %2, align 8
  br label %334

52:                                               ; preds = %46, %40
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %54 = call i32 (%struct.TYPE_24__*, i8*, ...) @LOG_DEBUG(%struct.TYPE_24__* %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %55 = call %struct.TYPE_25__* @malloc(i32 24)
  store %struct.TYPE_25__* %55, %struct.TYPE_25__** %6, align 8
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %57 = icmp ne %struct.TYPE_25__* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %52
  %59 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %59, i64* %2, align 8
  br label %334

60:                                               ; preds = %52
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %62 = call i32 @memset(%struct.TYPE_25__* %61, i32 0, i32 24)
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 3
  store %struct.TYPE_25__* %63, %struct.TYPE_25__** %67, align 8
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 4
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 2
  store %struct.TYPE_26__** %71, %struct.TYPE_26__*** %73, align 8
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %75 = call %struct.TYPE_26__* @vc_container_allocate_track(%struct.TYPE_24__* %74, i32 0)
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %78, i64 0
  store %struct.TYPE_26__* %75, %struct.TYPE_26__** %79, align 8
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %82, i64 0
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %83, align 8
  %85 = icmp ne %struct.TYPE_26__* %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %60
  %87 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %87, i64* %4, align 8
  br label %327

88:                                               ; preds = %60
  %89 = load i32, i32* @VC_CONTAINER_ES_TYPE_VIDEO, align 4
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %92, i64 0
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 2
  store i32 %89, i32* %97, align 4
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %100, i64 0
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %106, i64 0
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 0
  store i32 25, i32* %114, align 4
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %117, i64 0
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 1
  store i32 1, i32* %125, align 4
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %128, i64 0
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 2
  store i32 1, i32* %136, align 4
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %139, i64 0
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 3
  store i32 1, i32* %147, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %171

150:                                              ; preds = %88
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %152 = call i64 @read_yuv4mpeg2_file_header(%struct.TYPE_24__* %151)
  store i64 %152, i64* %4, align 8
  %153 = load i64, i64* %4, align 8
  %154 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  br label %327

157:                                              ; preds = %150
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %159 = call i32 @STREAM_POSITION(%struct.TYPE_24__* %158)
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i32 0, i32 3
  store i32 %159, i32* %161, align 4
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %163 = call i64 @read_yuv4mpeg2_frame_header(%struct.TYPE_24__* %162)
  store i64 %163, i64* %4, align 8
  %164 = load i64, i64* %4, align 8
  %165 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %157
  br label %327

168:                                              ; preds = %157
  %169 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %169, i32 0, i32 0
  store i32 1, i32* %170, align 8
  br label %246

171:                                              ; preds = %88
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %173 = call i64 @rawvideo_parse_uri(%struct.TYPE_24__* %172, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14)
  store i64 %173, i64* %4, align 8
  %174 = load i64, i64* %4, align 8
  %175 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %171
  br label %327

178:                                              ; preds = %171
  %179 = load i32, i32* %9, align 4
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 2
  %182 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %182, i64 0
  %184 = load %struct.TYPE_26__*, %struct.TYPE_26__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 1
  store i32 %179, i32* %187, align 8
  %188 = load i32, i32* %10, align 4
  %189 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %189, i32 0, i32 2
  %191 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %191, i64 0
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 4
  store i32 %188, i32* %199, align 4
  %200 = load i32, i32* %11, align 4
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 2
  %203 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %203, i64 0
  %205 = load %struct.TYPE_26__*, %struct.TYPE_26__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i32 0, i32 5
  store i32 %200, i32* %211, align 4
  %212 = load i32, i32* %12, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %242

214:                                              ; preds = %178
  %215 = load i32, i32* %13, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %242

217:                                              ; preds = %214
  %218 = load i32, i32* %12, align 4
  %219 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %219, i32 0, i32 2
  %221 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %221, i64 0
  %223 = load %struct.TYPE_26__*, %struct.TYPE_26__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_23__*, %struct.TYPE_23__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i32 0, i32 0
  store i32 %218, i32* %229, align 4
  %230 = load i32, i32* %13, align 4
  %231 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %231, i32 0, i32 2
  %233 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %233, i64 0
  %235 = load %struct.TYPE_26__*, %struct.TYPE_26__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %235, i32 0, i32 1
  %237 = load %struct.TYPE_23__*, %struct.TYPE_23__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %237, i32 0, i32 0
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %240, i32 0, i32 1
  store i32 %230, i32* %241, align 4
  br label %242

242:                                              ; preds = %217, %214, %178
  %243 = load i32, i32* %14, align 4
  %244 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %244, i32 0, i32 1
  store i32 %243, i32* %245, align 4
  br label %246

246:                                              ; preds = %242, %168
  %247 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %248 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %248, i32 0, i32 2
  %250 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %250, i64 0
  %252 = load %struct.TYPE_26__*, %struct.TYPE_26__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %252, i32 0, i32 1
  %254 = load %struct.TYPE_23__*, %struct.TYPE_23__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %254, i32 0, i32 1
  %256 = bitcast i32* %255 to i8*
  %257 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %257, i32 0, i32 2
  %259 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %259, i64 0
  %261 = load %struct.TYPE_26__*, %struct.TYPE_26__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %261, i32 0, i32 1
  %263 = load %struct.TYPE_23__*, %struct.TYPE_23__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %263, i32 0, i32 0
  %265 = load %struct.TYPE_22__*, %struct.TYPE_22__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %266, i32 0, i32 4
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %269, i32 0, i32 2
  %271 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %271, i64 0
  %273 = load %struct.TYPE_26__*, %struct.TYPE_26__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %273, i32 0, i32 1
  %275 = load %struct.TYPE_23__*, %struct.TYPE_23__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %275, i32 0, i32 0
  %277 = load %struct.TYPE_22__*, %struct.TYPE_22__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %278, i32 0, i32 5
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %281, i32 0, i32 2
  %283 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %283, i64 0
  %285 = load %struct.TYPE_26__*, %struct.TYPE_26__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %285, i32 0, i32 1
  %287 = load %struct.TYPE_23__*, %struct.TYPE_23__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %287, i32 0, i32 0
  %289 = load %struct.TYPE_22__*, %struct.TYPE_22__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %293, i32 0, i32 2
  %295 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %295, i64 0
  %297 = load %struct.TYPE_26__*, %struct.TYPE_26__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %297, i32 0, i32 1
  %299 = load %struct.TYPE_23__*, %struct.TYPE_23__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %299, i32 0, i32 0
  %301 = load %struct.TYPE_22__*, %struct.TYPE_22__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @LOG_INFO(%struct.TYPE_24__* %247, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %256, i32 %268, i32 %280, i32 %292, i32 %304, i32 %307)
  %309 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %310 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %309, i32 0, i32 1
  %311 = load %struct.TYPE_20__*, %struct.TYPE_20__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %311, i32 0, i32 2
  store i32 (%struct.TYPE_24__*)* @rawvideo_reader_close, i32 (%struct.TYPE_24__*)** %312, align 8
  %313 = load i32, i32* @rawvideo_reader_read, align 4
  %314 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %315 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %314, i32 0, i32 1
  %316 = load %struct.TYPE_20__*, %struct.TYPE_20__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %316, i32 0, i32 1
  store i32 %313, i32* %317, align 4
  %318 = load i32, i32* @rawvideo_reader_seek, align 4
  %319 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %319, i32 0, i32 1
  %321 = load %struct.TYPE_20__*, %struct.TYPE_20__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %321, i32 0, i32 0
  store i32 %318, i32* %322, align 8
  %323 = load i32, i32* %7, align 4
  %324 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %324, i32 0, i32 2
  store i32 %323, i32* %325, align 8
  %326 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %326, i64* %2, align 8
  br label %334

327:                                              ; preds = %177, %167, %156, %86
  %328 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %329 = load i64, i64* %4, align 8
  %330 = call i32 (%struct.TYPE_24__*, i8*, ...) @LOG_DEBUG(%struct.TYPE_24__* %328, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i64 %329)
  %331 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %332 = call i32 @rawvideo_reader_close(%struct.TYPE_24__* %331)
  %333 = load i64, i64* %4, align 8
  store i64 %333, i64* %2, align 8
  br label %334

334:                                              ; preds = %327, %246, %58, %50, %33
  %335 = load i64, i64* %2, align 8
  ret i64 %335
}

declare dso_local i8* @vc_uri_path_extension(i32) #1

declare dso_local i32 @vc_uri_find_query(i32, i32, i8*, i8**) #1

declare dso_local i32 @PEEK_BYTES(%struct.TYPE_24__*, i32*, i32) #1

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @LOG_DEBUG(%struct.TYPE_24__*, i8*, ...) #1

declare dso_local %struct.TYPE_25__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_25__*, i32, i32) #1

declare dso_local %struct.TYPE_26__* @vc_container_allocate_track(%struct.TYPE_24__*, i32) #1

declare dso_local i64 @read_yuv4mpeg2_file_header(%struct.TYPE_24__*) #1

declare dso_local i32 @STREAM_POSITION(%struct.TYPE_24__*) #1

declare dso_local i64 @read_yuv4mpeg2_frame_header(%struct.TYPE_24__*) #1

declare dso_local i64 @rawvideo_parse_uri(%struct.TYPE_24__*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @LOG_INFO(%struct.TYPE_24__*, i8*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rawvideo_reader_close(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
