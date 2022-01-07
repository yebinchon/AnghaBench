; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_rtmp_write.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_rtmp_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i64, i32, i64, i64, i64, i32*, %struct.TYPE_18__**, i32, %struct.TYPE_17__*, %struct.TYPE_22__, i32*, i32, i32* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32*, i64, i32 }
%struct.TYPE_20__ = type { i32 }

@RTMP_HEADER = common dso_local global i64 0, align 8
@RTMP_AUDIO_CHANNEL = common dso_local global i32 0, align 4
@RTMP_PT_VIDEO = common dso_local global i32 0, align 4
@RTMP_VIDEO_CHANNEL = common dso_local global i32 0, align 4
@RTMP_PT_AUDIO = common dso_local global i32 0, align 4
@RTMP_PT_NOTIFY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"onMetaData\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"|RtmpSampleAccess\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"@setDataFrame\00", align 1
@AVIO_FLAG_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32*, i32)* @rtmp_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtmp_write(%struct.TYPE_19__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca [64 x i32], align 16
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_20__, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  store %struct.TYPE_21__* %27, %struct.TYPE_21__** %8, align 8
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32*, i32** %6, align 8
  store i32* %29, i32** %14, align 8
  br label %30

30:                                               ; preds = %307, %3
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %30
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @FFMIN(i64 %39, i32 %40)
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %17, align 4
  %43 = load i32*, i32** %14, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32* %45, i32** %14, align 8
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %17, align 4
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %307

54:                                               ; preds = %30
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @RTMP_HEADER, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %176

60:                                               ; preds = %54
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 13
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %18, align 8
  %64 = load i32, i32* @RTMP_AUDIO_CHANNEL, align 4
  store i32 %64, i32* %19, align 4
  %65 = load i64, i64* @RTMP_HEADER, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %65, %68
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @FFMIN(i64 %69, i32 %70)
  store i32 %71, i32* %12, align 4
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 13
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @bytestream_get_buffer(i32** %14, i32* %78, i32 %79)
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, %82
  store i64 %86, i64* %84, align 8
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %9, align 4
  %89 = sub nsw i32 %88, %87
  store i32 %89, i32* %9, align 4
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @RTMP_HEADER, align 8
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %60
  br label %317

96:                                               ; preds = %60
  %97 = call i32 @bytestream_get_byte(i32** %18)
  store i32 %97, i32* %11, align 4
  %98 = call i32 @bytestream_get_be24(i32** %18)
  store i32 %98, i32* %10, align 4
  %99 = call i32 @bytestream_get_be24(i32** %18)
  store i32 %99, i32* %13, align 4
  %100 = call i32 @bytestream_get_byte(i32** %18)
  %101 = shl i32 %100, 24
  %102 = load i32, i32* %13, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %13, align 4
  %104 = call i32 @bytestream_get_be24(i32** %18)
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @RTMP_PT_VIDEO, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %96
  %112 = load i32, i32* @RTMP_VIDEO_CHANNEL, align 4
  store i32 %112, i32* %19, align 4
  br label %113

113:                                              ; preds = %111, %96
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @RTMP_PT_VIDEO, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %121, label %117

117:                                              ; preds = %113
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @RTMP_PT_AUDIO, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %117, %113
  %122 = load i32, i32* %13, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %121, %117
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* @RTMP_PT_NOTIFY, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %152

128:                                              ; preds = %124, %121
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 7
  %131 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %131, i64 1
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 6
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load i32, i32* %19, align 4
  %138 = call i32 @ff_rtmp_check_alloc_array(%struct.TYPE_18__** %132, i32* %136, i32 %137)
  store i32 %138, i32* %16, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %128
  %141 = load i32, i32* %16, align 4
  store i32 %141, i32* %4, align 4
  br label %397

142:                                              ; preds = %128
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 7
  %145 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %145, i64 1
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %146, align 8
  %148 = load i32, i32* %19, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 0
  store i64 0, i64* %151, align 8
  br label %152

152:                                              ; preds = %142, %124
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 10
  %155 = load i32, i32* %19, align 4
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* %10, align 4
  %159 = call i32 @ff_rtmp_packet_create(%struct.TYPE_22__* %154, i32 %155, i32 %156, i32 %157, i32 %158)
  store i32 %159, i32* %16, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %152
  %162 = load i32, i32* %16, align 4
  store i32 %162, i32* %4, align 4
  br label %397

163:                                              ; preds = %152
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 12
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 10
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 3
  store i32 %166, i32* %169, align 8
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 10
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 11
  store i32* %173, i32** %175, align 8
  br label %176

176:                                              ; preds = %163, %54
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = sub nsw i64 %180, %183
  %185 = load i32, i32* %9, align 4
  %186 = call i32 @FFMIN(i64 %184, i32 %185)
  store i32 %186, i32* %12, align 4
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 11
  %189 = load i32*, i32** %188, align 8
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = getelementptr inbounds i32, i32* %189, i64 %192
  %194 = load i32, i32* %12, align 4
  %195 = call i32 @bytestream_get_buffer(i32** %14, i32* %193, i32 %194)
  %196 = load i32, i32* %12, align 4
  %197 = sext i32 %196 to i64
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = add nsw i64 %200, %197
  store i64 %201, i64* %199, align 8
  %202 = load i32, i32* %12, align 4
  %203 = load i32, i32* %9, align 4
  %204 = sub nsw i32 %203, %202
  store i32 %204, i32* %9, align 4
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = sext i32 %210 to i64
  %212 = icmp eq i64 %207, %211
  br i1 %212, label %213, label %306

213:                                              ; preds = %176
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %214, i32 0, i32 0
  store i32 4, i32* %215, align 8
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 10
  %218 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @RTMP_PT_NOTIFY, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %287

222:                                              ; preds = %213
  store i32 0, i32* %21, align 4
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i32 0, i32 11
  %225 = load i32*, i32** %224, align 8
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @bytestream2_init(i32* %22, i32* %225, i32 %228)
  %230 = getelementptr inbounds [64 x i32], [64 x i32]* %20, i64 0, i64 0
  %231 = call i32 @ff_amf_read_string(i32* %22, i32* %230, i32 256, i32* %21)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %286, label %233

233:                                              ; preds = %222
  %234 = getelementptr inbounds [64 x i32], [64 x i32]* %20, i64 0, i64 0
  %235 = call i32 @strcmp(i32* %234, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %233
  %238 = getelementptr inbounds [64 x i32], [64 x i32]* %20, i64 0, i64 0
  %239 = call i32 @strcmp(i32* %238, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %285, label %241

241:                                              ; preds = %237, %233
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %242, i32 0, i32 10
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 1
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %245, i32 0, i32 10
  %247 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = add nsw i64 %248, 16
  %250 = call i32 @av_reallocp(i32** %244, i64 %249)
  store i32 %250, i32* %16, align 4
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %252, label %260

252:                                              ; preds = %241
  %253 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %253, i32 0, i32 1
  store i64 0, i64* %254, align 8
  %255 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %255, i32 0, i32 3
  store i64 0, i64* %256, align 8
  %257 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %258 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %257, i32 0, i32 2
  store i32 0, i32* %258, align 8
  %259 = load i32, i32* %16, align 4
  store i32 %259, i32* %4, align 4
  br label %397

260:                                              ; preds = %241
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %261, i32 0, i32 10
  %263 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %262, i32 0, i32 1
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 16
  %266 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %266, i32 0, i32 10
  %268 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %267, i32 0, i32 1
  %269 = load i32*, i32** %268, align 8
  %270 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %271 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %270, i32 0, i32 10
  %272 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %271, i32 0, i32 2
  %273 = load i64, i64* %272, align 8
  %274 = call i32 @memmove(i32* %265, i32* %269, i64 %273)
  %275 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %275, i32 0, i32 10
  %277 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %276, i32 0, i32 2
  %278 = load i64, i64* %277, align 8
  %279 = add nsw i64 %278, 16
  store i64 %279, i64* %277, align 8
  %280 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %280, i32 0, i32 10
  %282 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %281, i32 0, i32 1
  %283 = load i32*, i32** %282, align 8
  store i32* %283, i32** %23, align 8
  %284 = call i32 @ff_amf_write_string(i32** %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %285

285:                                              ; preds = %260, %237
  br label %286

286:                                              ; preds = %285, %222
  br label %287

287:                                              ; preds = %286, %213
  %288 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %289 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %290 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %289, i32 0, i32 10
  %291 = call i32 @rtmp_send_packet(%struct.TYPE_21__* %288, %struct.TYPE_22__* %290, i32 0)
  store i32 %291, i32* %16, align 4
  %292 = icmp slt i32 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %287
  %294 = load i32, i32* %16, align 4
  store i32 %294, i32* %4, align 4
  br label %397

295:                                              ; preds = %287
  %296 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %297 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %296, i32 0, i32 2
  store i32 0, i32* %297, align 8
  %298 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %298, i32 0, i32 3
  store i64 0, i64* %299, align 8
  %300 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %300, i32 0, i32 1
  store i64 0, i64* %301, align 8
  %302 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %302, i32 0, i32 4
  %304 = load i64, i64* %303, align 8
  %305 = add nsw i64 %304, 1
  store i64 %305, i64* %303, align 8
  br label %306

306:                                              ; preds = %295, %176
  br label %307

307:                                              ; preds = %306, %35
  %308 = load i32*, i32** %14, align 8
  %309 = load i32*, i32** %6, align 8
  %310 = ptrtoint i32* %308 to i64
  %311 = ptrtoint i32* %309 to i64
  %312 = sub i64 %310, %311
  %313 = sdiv exact i64 %312, 4
  %314 = load i32, i32* %7, align 4
  %315 = sext i32 %314 to i64
  %316 = icmp slt i64 %313, %315
  br i1 %316, label %30, label %317

317:                                              ; preds = %307, %95
  %318 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %319 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %318, i32 0, i32 4
  %320 = load i64, i64* %319, align 8
  %321 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %322 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %321, i32 0, i32 5
  %323 = load i64, i64* %322, align 8
  %324 = icmp slt i64 %320, %323
  br i1 %324, label %325, label %327

325:                                              ; preds = %317
  %326 = load i32, i32* %7, align 4
  store i32 %326, i32* %4, align 4
  br label %397

327:                                              ; preds = %317
  %328 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %329 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %328, i32 0, i32 4
  store i64 0, i64* %329, align 8
  %330 = load i32, i32* @AVIO_FLAG_NONBLOCK, align 4
  %331 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %332 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %331, i32 0, i32 9
  %333 = load %struct.TYPE_17__*, %struct.TYPE_17__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = or i32 %335, %330
  store i32 %336, i32* %334, align 4
  %337 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %338 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %337, i32 0, i32 9
  %339 = load %struct.TYPE_17__*, %struct.TYPE_17__** %338, align 8
  %340 = call i32 @ffurl_read(%struct.TYPE_17__* %339, i32* %15, i32 1)
  store i32 %340, i32* %16, align 4
  %341 = load i32, i32* @AVIO_FLAG_NONBLOCK, align 4
  %342 = xor i32 %341, -1
  %343 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %344 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %343, i32 0, i32 9
  %345 = load %struct.TYPE_17__*, %struct.TYPE_17__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = and i32 %347, %342
  store i32 %348, i32* %346, align 4
  %349 = load i32, i32* %16, align 4
  %350 = load i32, i32* @EAGAIN, align 4
  %351 = call i32 @AVERROR(i32 %350)
  %352 = icmp eq i32 %349, %351
  br i1 %352, label %353, label %355

353:                                              ; preds = %327
  %354 = load i32, i32* %7, align 4
  store i32 %354, i32* %4, align 4
  br label %397

355:                                              ; preds = %327
  %356 = load i32, i32* %16, align 4
  %357 = icmp slt i32 %356, 0
  br i1 %357, label %358, label %360

358:                                              ; preds = %355
  %359 = load i32, i32* %16, align 4
  store i32 %359, i32* %4, align 4
  br label %397

360:                                              ; preds = %355
  %361 = load i32, i32* %16, align 4
  %362 = icmp eq i32 %361, 1
  br i1 %362, label %363, label %393

363:                                              ; preds = %360
  %364 = bitcast %struct.TYPE_20__* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %364, i8 0, i64 4, i1 false)
  %365 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %366 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %365, i32 0, i32 9
  %367 = load %struct.TYPE_17__*, %struct.TYPE_17__** %366, align 8
  %368 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %369 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %368, i32 0, i32 8
  %370 = load i32, i32* %369, align 8
  %371 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %372 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %371, i32 0, i32 7
  %373 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %373, i64 0
  %375 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %376 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %375, i32 0, i32 6
  %377 = load i32*, i32** %376, align 8
  %378 = getelementptr inbounds i32, i32* %377, i64 0
  %379 = load i32, i32* %15, align 4
  %380 = call i32 @ff_rtmp_packet_read_internal(%struct.TYPE_17__* %367, %struct.TYPE_20__* %24, i32 %370, %struct.TYPE_18__** %374, i32* %378, i32 %379)
  store i32 %380, i32* %16, align 4
  %381 = icmp sle i32 %380, 0
  br i1 %381, label %382, label %384

382:                                              ; preds = %363
  %383 = load i32, i32* %16, align 4
  store i32 %383, i32* %4, align 4
  br label %397

384:                                              ; preds = %363
  %385 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %386 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %387 = call i32 @rtmp_parse_result(%struct.TYPE_19__* %385, %struct.TYPE_21__* %386, %struct.TYPE_20__* %24)
  store i32 %387, i32* %16, align 4
  %388 = icmp slt i32 %387, 0
  br i1 %388, label %389, label %391

389:                                              ; preds = %384
  %390 = load i32, i32* %16, align 4
  store i32 %390, i32* %4, align 4
  br label %397

391:                                              ; preds = %384
  %392 = call i32 @ff_rtmp_packet_destroy(%struct.TYPE_20__* %24)
  br label %393

393:                                              ; preds = %391, %360
  br label %394

394:                                              ; preds = %393
  br label %395

395:                                              ; preds = %394
  %396 = load i32, i32* %7, align 4
  store i32 %396, i32* %4, align 4
  br label %397

397:                                              ; preds = %395, %389, %382, %358, %353, %325, %293, %252, %161, %140
  %398 = load i32, i32* %4, align 4
  ret i32 %398
}

declare dso_local i32 @FFMIN(i64, i32) #1

declare dso_local i32 @bytestream_get_buffer(i32**, i32*, i32) #1

declare dso_local i32 @bytestream_get_byte(i32**) #1

declare dso_local i32 @bytestream_get_be24(i32**) #1

declare dso_local i32 @ff_rtmp_check_alloc_array(%struct.TYPE_18__**, i32*, i32) #1

declare dso_local i32 @ff_rtmp_packet_create(%struct.TYPE_22__*, i32, i32, i32, i32) #1

declare dso_local i32 @bytestream2_init(i32*, i32*, i32) #1

declare dso_local i32 @ff_amf_read_string(i32*, i32*, i32, i32*) #1

declare dso_local i32 @strcmp(i32*, i8*) #1

declare dso_local i32 @av_reallocp(i32**, i64) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

declare dso_local i32 @ff_amf_write_string(i32**, i8*) #1

declare dso_local i32 @rtmp_send_packet(%struct.TYPE_21__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @ffurl_read(%struct.TYPE_17__*, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ff_rtmp_packet_read_internal(%struct.TYPE_17__*, %struct.TYPE_20__*, i32, %struct.TYPE_18__**, i32*, i32) #1

declare dso_local i32 @rtmp_parse_result(%struct.TYPE_19__*, %struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32 @ff_rtmp_packet_destroy(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
