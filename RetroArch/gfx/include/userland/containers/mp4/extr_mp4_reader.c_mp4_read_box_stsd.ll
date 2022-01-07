; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_reader.c_mp4_read_box_stsd.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_reader.c_mp4_read_box_stsd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_22__**, %struct.TYPE_16__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__*, %struct.TYPE_18__* }
%struct.TYPE_21__ = type { i32, i64, i32, i32*, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"entry_count\00", align 1
@VC_CONTAINER_ERROR_CORRUPTED = common dso_local global i64 0, align 8
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@VC_CONTAINER_ES_TYPE_VIDEO = common dso_local global i64 0, align 8
@MP4_BOX_TYPE_VIDE = common dso_local global i32 0, align 4
@VC_CONTAINER_ES_TYPE_AUDIO = common dso_local global i64 0, align 8
@MP4_BOX_TYPE_SOUN = common dso_local global i32 0, align 4
@VC_CONTAINER_ES_TYPE_SUBPICTURE = common dso_local global i64 0, align 8
@MP4_BOX_TYPE_TEXT = common dso_local global i32 0, align 4
@MP4_BOX_TYPE_STSD = common dso_local global i32 0, align 4
@VC_CONTAINER_CODEC_MPGA = common dso_local global i32 0, align 4
@VC_CONTAINER_CODEC_EVRC = common dso_local global i32 0, align 4
@VC_CONTAINER_CODEC_QCELP = common dso_local global i32 0, align 4
@VC_CONTAINER_CODEC_UNKNOWN = common dso_local global i8* null, align 8
@VC_CONTAINER_CODEC_MP4V = common dso_local global i32 0, align 4
@VC_CONTAINER_CODEC_JPEG = common dso_local global i32 0, align 4
@VC_CONTAINER_CODEC_MP2V = common dso_local global i32 0, align 4
@VC_CONTAINER_CODEC_MP1V = common dso_local global i32 0, align 4
@MP4_MAX_SAMPLES_BATCH_SIZE = common dso_local global i32 0, align 4
@mp4_read_box_stsd.rate = internal global [13 x i32] [i32 96000, i32 88200, i32 64000, i32 48000, i32 44100, i32 32000, i32 24000, i32 22050, i32 16000, i32 12000, i32 11025, i32 8000, i32 7350], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_23__*, i32)* @mp4_read_box_stsd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mp4_read_box_stsd(%struct.TYPE_23__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  store %struct.TYPE_24__* %20, %struct.TYPE_24__** %6, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %22, align 8
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %23, i64 %26
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %27, align 8
  store %struct.TYPE_22__* %28, %struct.TYPE_22__** %7, align 8
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %30 = call i32 @MP4_SKIP_U8(%struct.TYPE_23__* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %32 = call i32 @MP4_SKIP_U24(%struct.TYPE_23__* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %34 = call i32 @MP4_READ_U32(%struct.TYPE_23__* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %2
  %38 = load i64, i64* @VC_CONTAINER_ERROR_CORRUPTED, align 8
  store i64 %38, i64* %3, align 8
  br label %420

39:                                               ; preds = %2
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @mp4_read_box_header(%struct.TYPE_23__* %40, i32 %41, i32* %9, i32* %10)
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i64, i64* %8, align 8
  store i64 %47, i64* %3, align 8
  br label %420

48:                                               ; preds = %39
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @mp4_box_type_to_codec(i32 %49)
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 8
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %48
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 0
  store i32 %62, i32* %66, align 8
  br label %67

67:                                               ; preds = %61, %48
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @VC_CONTAINER_ES_TYPE_VIDEO, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* @MP4_BOX_TYPE_VIDE, align 4
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %75, %67
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @VC_CONTAINER_ES_TYPE_AUDIO, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i32, i32* @MP4_BOX_TYPE_SOUN, align 4
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %85, %77
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @VC_CONTAINER_ES_TYPE_SUBPICTURE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load i32, i32* @MP4_BOX_TYPE_TEXT, align 4
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %95, %87
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @MP4_BOX_TYPE_STSD, align 4
  %102 = call i64 @mp4_read_box_data(%struct.TYPE_23__* %98, i32 %99, i32 %100, i32 %101)
  store i64 %102, i64* %8, align 8
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %97
  %107 = load i64, i64* %8, align 8
  store i64 %107, i64* %3, align 8
  br label %420

108:                                              ; preds = %97
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 131
  br i1 %114, label %115, label %154

115:                                              ; preds = %108
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  switch i32 %122, label %146 [
    i32 136, label %123
    i32 140, label %123
    i32 143, label %128
    i32 142, label %128
    i32 144, label %128
    i32 134, label %134
    i32 133, label %134
    i32 146, label %140
  ]

123:                                              ; preds = %115, %115
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  store i32 131, i32* %127, align 8
  br label %153

128:                                              ; preds = %115, %115, %115
  %129 = load i32, i32* @VC_CONTAINER_CODEC_MPGA, align 4
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 0
  store i32 %129, i32* %133, align 8
  br label %153

134:                                              ; preds = %115, %115
  %135 = load i32, i32* @VC_CONTAINER_CODEC_EVRC, align 4
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 0
  store i32 %135, i32* %139, align 8
  br label %153

140:                                              ; preds = %115
  %141 = load i32, i32* @VC_CONTAINER_CODEC_QCELP, align 4
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 0
  store i32 %141, i32* %145, align 8
  br label %153

146:                                              ; preds = %115
  %147 = load i8*, i8** @VC_CONTAINER_CODEC_UNKNOWN, align 8
  %148 = ptrtoint i8* %147 to i32
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 0
  store i32 %148, i32* %152, align 8
  br label %153

153:                                              ; preds = %146, %140, %134, %128, %123
  br label %203

154:                                              ; preds = %108
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @VC_CONTAINER_CODEC_MP4V, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %202

162:                                              ; preds = %154
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  switch i32 %169, label %194 [
    i32 135, label %170
    i32 145, label %176
    i32 137, label %182
    i32 138, label %182
    i32 140, label %182
    i32 139, label %182
    i32 141, label %188
  ]

170:                                              ; preds = %162
  %171 = load i32, i32* @VC_CONTAINER_CODEC_MP4V, align 4
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 0
  store i32 %171, i32* %175, align 8
  br label %201

176:                                              ; preds = %162
  %177 = load i32, i32* @VC_CONTAINER_CODEC_JPEG, align 4
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 0
  store i32 %177, i32* %181, align 8
  br label %201

182:                                              ; preds = %162, %162, %162, %162
  %183 = load i32, i32* @VC_CONTAINER_CODEC_MP2V, align 4
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 0
  store i32 %183, i32* %187, align 8
  br label %201

188:                                              ; preds = %162
  %189 = load i32, i32* @VC_CONTAINER_CODEC_MP1V, align 4
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 0
  store i32 %189, i32* %193, align 8
  br label %201

194:                                              ; preds = %162
  %195 = load i8*, i8** @VC_CONTAINER_CODEC_UNKNOWN, align 8
  %196 = ptrtoint i8* %195 to i32
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 0
  store i32 %196, i32* %200, align 8
  br label %201

201:                                              ; preds = %194, %188, %182, %176, %170
  br label %202

202:                                              ; preds = %201, %154
  br label %203

203:                                              ; preds = %202, %153
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_21__*, %struct.TYPE_21__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i64 @codec_needs_batch_mode(i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %219

211:                                              ; preds = %203
  %212 = load i32, i32* @MP4_MAX_SAMPLES_BATCH_SIZE, align 4
  %213 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 2
  store i32 %212, i32* %218, align 4
  br label %219

219:                                              ; preds = %211, %203
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  switch i32 %224, label %417 [
    i32 132, label %225
    i32 130, label %225
    i32 128, label %247
    i32 129, label %247
    i32 131, label %273
  ]

225:                                              ; preds = %219, %219
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i32 0, i32 4
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 0
  store i32 8, i32* %232, align 4
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %235, i32 0, i32 4
  %237 = load %struct.TYPE_20__*, %struct.TYPE_20__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %241, i32 0, i32 1
  %243 = load %struct.TYPE_18__*, %struct.TYPE_18__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 1
  store i32 %240, i32* %246, align 4
  br label %418

247:                                              ; preds = %219, %219
  %248 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 4
  %252 = load %struct.TYPE_20__*, %struct.TYPE_20__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = add nsw i32 %255, 7
  %257 = sdiv i32 %256, 8
  %258 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_21__*, %struct.TYPE_21__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %260, i32 0, i32 4
  %262 = load %struct.TYPE_20__*, %struct.TYPE_20__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = mul nsw i32 %257, %265
  %267 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %267, i32 0, i32 1
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i32 0, i32 0
  %271 = load %struct.TYPE_17__*, %struct.TYPE_17__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %271, i32 0, i32 1
  store i32 %266, i32* %272, align 4
  br label %418

273:                                              ; preds = %219
  %274 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %274, i32 0, i32 0
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = icmp sge i32 %278, 2
  br i1 %279, label %280, label %416

280:                                              ; preds = %273
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %281 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %281, i32 0, i32 0
  %283 = load %struct.TYPE_21__*, %struct.TYPE_21__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %283, i32 0, i32 3
  %285 = load i32*, i32** %284, align 8
  store i32* %285, i32** %14, align 8
  %286 = load i32*, i32** %14, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 0
  %288 = load i32, i32* %287, align 4
  %289 = and i32 %288, 7
  %290 = shl i32 %289, 1
  %291 = load i32*, i32** %14, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 1
  %293 = load i32, i32* %292, align 4
  %294 = ashr i32 %293, 7
  %295 = or i32 %290, %294
  store i32 %295, i32* %15, align 4
  %296 = load i32, i32* %15, align 4
  %297 = icmp eq i32 %296, 15
  br i1 %297, label %298, label %331

298:                                              ; preds = %280
  %299 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %299, i32 0, i32 0
  %301 = load %struct.TYPE_21__*, %struct.TYPE_21__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = icmp sge i32 %303, 5
  br i1 %304, label %305, label %331

305:                                              ; preds = %298
  %306 = load i32*, i32** %14, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 1
  %308 = load i32, i32* %307, align 4
  %309 = and i32 %308, 127
  %310 = shl i32 %309, 17
  %311 = load i32*, i32** %14, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 2
  %313 = load i32, i32* %312, align 4
  %314 = shl i32 %313, 9
  %315 = or i32 %310, %314
  %316 = load i32*, i32** %14, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 3
  %318 = load i32, i32* %317, align 4
  %319 = shl i32 %318, 1
  %320 = or i32 %315, %319
  %321 = load i32*, i32** %14, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 4
  %323 = load i32, i32* %322, align 4
  %324 = ashr i32 %323, 7
  %325 = or i32 %320, %324
  store i32 %325, i32* %12, align 4
  %326 = load i32*, i32** %14, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 4
  %328 = load i32, i32* %327, align 4
  %329 = ashr i32 %328, 3
  %330 = and i32 %329, 15
  store i32 %330, i32* %13, align 4
  br label %345

331:                                              ; preds = %298, %280
  %332 = load i32, i32* %15, align 4
  %333 = icmp slt i32 %332, 13
  br i1 %333, label %334, label %344

334:                                              ; preds = %331
  %335 = load i32, i32* %15, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [13 x i32], [13 x i32]* @mp4_read_box_stsd.rate, i64 0, i64 %336
  %338 = load i32, i32* %337, align 4
  store i32 %338, i32* %12, align 4
  %339 = load i32*, i32** %14, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 1
  %341 = load i32, i32* %340, align 4
  %342 = ashr i32 %341, 3
  %343 = and i32 %342, 15
  store i32 %343, i32* %13, align 4
  br label %344

344:                                              ; preds = %334, %331
  br label %345

345:                                              ; preds = %344, %305
  %346 = load i32, i32* %12, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %380

348:                                              ; preds = %345
  %349 = load i32, i32* %12, align 4
  %350 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %351 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %350, i32 0, i32 0
  %352 = load %struct.TYPE_21__*, %struct.TYPE_21__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %352, i32 0, i32 4
  %354 = load %struct.TYPE_20__*, %struct.TYPE_20__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 4
  %358 = icmp ne i32 %349, %357
  br i1 %358, label %359, label %380

359:                                              ; preds = %348
  %360 = load i32, i32* %12, align 4
  %361 = mul i32 2, %360
  %362 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %363 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %362, i32 0, i32 0
  %364 = load %struct.TYPE_21__*, %struct.TYPE_21__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %364, i32 0, i32 4
  %366 = load %struct.TYPE_20__*, %struct.TYPE_20__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 4
  %370 = icmp ne i32 %361, %369
  br i1 %370, label %371, label %380

371:                                              ; preds = %359
  %372 = load i32, i32* %12, align 4
  %373 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %374 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %373, i32 0, i32 0
  %375 = load %struct.TYPE_21__*, %struct.TYPE_21__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %375, i32 0, i32 4
  %377 = load %struct.TYPE_20__*, %struct.TYPE_20__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %378, i32 0, i32 2
  store i32 %372, i32* %379, align 4
  br label %380

380:                                              ; preds = %371, %359, %348, %345
  %381 = load i32, i32* %13, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %415

383:                                              ; preds = %380
  %384 = load i32, i32* %13, align 4
  %385 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %386 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %385, i32 0, i32 0
  %387 = load %struct.TYPE_21__*, %struct.TYPE_21__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %387, i32 0, i32 4
  %389 = load %struct.TYPE_20__*, %struct.TYPE_20__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = icmp ne i32 %384, %392
  br i1 %393, label %394, label %415

394:                                              ; preds = %383
  %395 = load i32, i32* %13, align 4
  %396 = mul i32 2, %395
  %397 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %398 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %397, i32 0, i32 0
  %399 = load %struct.TYPE_21__*, %struct.TYPE_21__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %399, i32 0, i32 4
  %401 = load %struct.TYPE_20__*, %struct.TYPE_20__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 4
  %405 = icmp ne i32 %396, %404
  br i1 %405, label %406, label %415

406:                                              ; preds = %394
  %407 = load i32, i32* %13, align 4
  %408 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %409 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %408, i32 0, i32 0
  %410 = load %struct.TYPE_21__*, %struct.TYPE_21__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %410, i32 0, i32 4
  %412 = load %struct.TYPE_20__*, %struct.TYPE_20__** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %413, i32 0, i32 1
  store i32 %407, i32* %414, align 4
  br label %415

415:                                              ; preds = %406, %394, %383, %380
  br label %416

416:                                              ; preds = %415, %273
  br label %418

417:                                              ; preds = %219
  br label %418

418:                                              ; preds = %417, %416, %247, %225
  %419 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %419, i64* %3, align 8
  br label %420

420:                                              ; preds = %418, %106, %46, %37
  %421 = load i64, i64* %3, align 8
  ret i64 %421
}

declare dso_local i32 @MP4_SKIP_U8(%struct.TYPE_23__*, i8*) #1

declare dso_local i32 @MP4_SKIP_U24(%struct.TYPE_23__*, i8*) #1

declare dso_local i32 @MP4_READ_U32(%struct.TYPE_23__*, i8*) #1

declare dso_local i64 @mp4_read_box_header(%struct.TYPE_23__*, i32, i32*, i32*) #1

declare dso_local i32 @mp4_box_type_to_codec(i32) #1

declare dso_local i64 @mp4_read_box_data(%struct.TYPE_23__*, i32, i32, i32) #1

declare dso_local i64 @codec_needs_batch_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
