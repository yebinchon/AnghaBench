; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264dec.c_decode_nal_units.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264dec.c_decode_nal_units.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_50__ = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, %struct.TYPE_39__*, i32, %struct.TYPE_39__, %struct.TYPE_49__*, i64, %struct.TYPE_42__, %struct.TYPE_52__*, %struct.TYPE_40__, i32, %struct.TYPE_44__, i32 }
%struct.TYPE_39__ = type { i32, i32, %struct.TYPE_48__* }
%struct.TYPE_48__ = type { i32, i32, i64*, i32 }
%struct.TYPE_49__ = type { %struct.TYPE_38__**, %struct.TYPE_45__, i64* }
%struct.TYPE_38__ = type { %struct.TYPE_39__*, i32, i32, i32 }
%struct.TYPE_45__ = type { i64, i32, i32, i32, i64 }
%struct.TYPE_42__ = type { %struct.TYPE_47__*, %struct.TYPE_46__**, i32* }
%struct.TYPE_47__ = type { i64 }
%struct.TYPE_46__ = type { i64 }
%struct.TYPE_52__ = type { i32, i32, i64, i32, i32, %struct.TYPE_43__*, i32 }
%struct.TYPE_43__ = type { i32 (%struct.TYPE_52__*, i32*, i32)*, i32 (%struct.TYPE_52__*, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32)* }
%struct.TYPE_40__ = type { i32, %struct.TYPE_41__ }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_44__ = type { i32, %struct.TYPE_51__* }
%struct.TYPE_51__ = type { i64, i32, i32*, i32, i32, i32, i32 }

@AV_CODEC_FLAG2_CHUNKS = common dso_local global i32 0, align 4
@AV_CODEC_FLAG2_FAST = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Error splitting the input into NAL units.\0A\00", align 1
@FF_THREAD_FRAME = common dso_local global i32 0, align 4
@AVDISCARD_NONREF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid inter IDR frame\0A\00", align 1
@INT_MIN = common dso_local global i32 0, align 4
@AV_EF_EXPLODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"data partitioning\00", align 1
@FF_DEBUG_GREEN_MD = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"SPS decoding failure, trying again with the complete NAL\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Unknown NAL code: %d (%d bits)\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"decode_slice_header error\0A\00", align 1
@FF_DECODE_ERROR_DECODE_SLICES = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@PICT_BOTTOM_FIELD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_50__*, i32*, i32)* @decode_nal_units to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_nal_units(%struct.TYPE_50__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_50__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_52__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_51__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_49__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_50__* %0, %struct.TYPE_50__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %18, i32 0, i32 17
  %20 = load %struct.TYPE_52__*, %struct.TYPE_52__** %19, align 8
  store %struct.TYPE_52__* %20, %struct.TYPE_52__** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %21 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @AV_CODEC_FLAG2_CHUNKS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %3
  %32 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %32, i32 0, i32 2
  store i32 0, i32* %33, align 8
  %34 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %34, i32 0, i32 21
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %31
  %39 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %39, i32 0, i32 11
  store %struct.TYPE_39__* null, %struct.TYPE_39__** %40, align 8
  %41 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %41, i32 0, i32 18
  %43 = call i32 @ff_h264_sei_uninit(%struct.TYPE_40__* %42)
  br label %44

44:                                               ; preds = %38, %31
  br label %45

45:                                               ; preds = %44, %3
  %46 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 4
  br i1 %49, label %50, label %83

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  %52 = icmp sgt i32 %51, 8
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @AV_RB32(i32* %54)
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 5
  %60 = call i32 @AV_RB32(i32* %59)
  %61 = load i32, i32* %7, align 4
  %62 = icmp ugt i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %64, i32 0, i32 4
  store i32 0, i32* %65, align 8
  br label %82

66:                                               ; preds = %57, %53, %50
  %67 = load i32, i32* %7, align 4
  %68 = icmp sgt i32 %67, 3
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @AV_RB32(i32* %70)
  %72 = icmp ugt i32 %71, 1
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @AV_RB32(i32* %74)
  %76 = load i32, i32* %7, align 4
  %77 = icmp ule i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %79, i32 0, i32 4
  store i32 1, i32* %80, align 8
  br label %81

81:                                               ; preds = %78, %73, %69, %66
  br label %82

82:                                               ; preds = %81, %63
  br label %83

83:                                               ; preds = %82, %45
  %84 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %84, i32 0, i32 20
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %89 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @AV_CODEC_FLAG2_FAST, align 4
  %102 = and i32 %100, %101
  %103 = call i32 @ff_h2645_packet_split(%struct.TYPE_44__* %85, i32* %86, i32 %87, %struct.TYPE_52__* %88, i32 %91, i32 %94, i32 %97, i32 %102, i32 0)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %83
  %107 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %108 = load i32, i32* @AV_LOG_ERROR, align 4
  %109 = call i32 (%struct.TYPE_52__*, i32, i8*, ...) @av_log(%struct.TYPE_52__* %107, i32 %108, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %110 = load i32, i32* %12, align 4
  store i32 %110, i32* %4, align 4
  br label %621

111:                                              ; preds = %83
  %112 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @FF_THREAD_FRAME, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %120 = call i32 @get_last_needed_nal(%struct.TYPE_50__* %119)
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %118, %111
  %122 = load i32, i32* %9, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i32, i32* %9, align 4
  store i32 %125, i32* %4, align 4
  br label %621

126:                                              ; preds = %121
  store i32 0, i32* %11, align 4
  br label %127

127:                                              ; preds = %539, %126
  %128 = load i32, i32* %11, align 4
  %129 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %129, i32 0, i32 20
  %131 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp slt i32 %128, %132
  br i1 %133, label %134, label %542

134:                                              ; preds = %127
  %135 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %135, i32 0, i32 20
  %137 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_51__*, %struct.TYPE_51__** %137, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %138, i64 %140
  store %struct.TYPE_51__* %141, %struct.TYPE_51__** %13, align 8
  %142 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @AVDISCARD_NONREF, align 8
  %146 = icmp sge i64 %144, %145
  br i1 %146, label %147, label %158

147:                                              ; preds = %134
  %148 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %147
  %153 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 131
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  br label %539

158:                                              ; preds = %152, %147, %134
  %159 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %160 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %162, i32 0, i32 5
  store i64 %161, i64* %163, align 8
  %164 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  store i32 0, i32* %15, align 4
  %169 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %170 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  switch i32 %171, label %519 [
    i32 133, label %172
    i32 130, label %198
    i32 139, label %335
    i32 138, label %335
    i32 137, label %335
    i32 131, label %338
    i32 129, label %391
    i32 132, label %462
    i32 141, label %518
    i32 136, label %518
    i32 135, label %518
    i32 134, label %518
    i32 128, label %518
    i32 140, label %518
  ]

172:                                              ; preds = %158
  %173 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %173, i32 0, i32 2
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 1
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, 252
  %179 = icmp eq i32 %178, 152
  br i1 %179, label %180, label %189

180:                                              ; preds = %172
  %181 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %181, i32 0, i32 17
  %183 = load %struct.TYPE_52__*, %struct.TYPE_52__** %182, align 8
  %184 = load i32, i32* @AV_LOG_ERROR, align 4
  %185 = call i32 (%struct.TYPE_52__*, i32, i8*, ...) @av_log(%struct.TYPE_52__* %183, i32 %184, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %186 = load i32, i32* @INT_MIN, align 4
  %187 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %187, i32 0, i32 19
  store i32 %186, i32* %188, align 8
  store i32 -1, i32* %12, align 4
  br label %584

189:                                              ; preds = %172
  %190 = load i32, i32* %10, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %189
  %193 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %194 = call i32 @idr(%struct.TYPE_50__* %193)
  br label %195

195:                                              ; preds = %192, %189
  store i32 1, i32* %10, align 4
  %196 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %196, i32 0, i32 6
  store i32 1, i32* %197, align 8
  br label %198

198:                                              ; preds = %158, %195
  %199 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %199, i32 0, i32 0
  store i32 1, i32* %200, align 8
  %201 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %202 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %203 = call i32 @ff_h264_queue_decode_slice(%struct.TYPE_50__* %201, %struct.TYPE_51__* %202)
  store i32 %203, i32* %15, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %222

205:                                              ; preds = %198
  %206 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %206, i32 0, i32 14
  %208 = load %struct.TYPE_49__*, %struct.TYPE_49__** %207, align 8
  %209 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %209, i32 0, i32 7
  %211 = load i32, i32* %210, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %208, i64 %212
  store %struct.TYPE_49__* %213, %struct.TYPE_49__** %16, align 8
  %214 = load %struct.TYPE_49__*, %struct.TYPE_49__** %16, align 8
  %215 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %214, i32 0, i32 2
  %216 = load i64*, i64** %215, align 8
  %217 = getelementptr inbounds i64, i64* %216, i64 1
  store i64 0, i64* %217, align 8
  %218 = load %struct.TYPE_49__*, %struct.TYPE_49__** %16, align 8
  %219 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %218, i32 0, i32 2
  %220 = load i64*, i64** %219, align 8
  %221 = getelementptr inbounds i64, i64* %220, i64 0
  store i64 0, i64* %221, align 8
  br label %529

222:                                              ; preds = %198
  %223 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = icmp eq i32 %225, 1
  br i1 %226, label %227, label %277

227:                                              ; preds = %222
  %228 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @FF_THREAD_FRAME, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %253

234:                                              ; preds = %227
  %235 = load i32, i32* %11, align 4
  %236 = load i32, i32* %9, align 4
  %237 = icmp sge i32 %235, %236
  br i1 %237, label %238, label %253

238:                                              ; preds = %234
  %239 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %239, i32 0, i32 8
  %241 = load i32, i32* %240, align 8
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %253, label %243

243:                                              ; preds = %238
  %244 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %244, i32 0, i32 11
  %246 = load %struct.TYPE_39__*, %struct.TYPE_39__** %245, align 8
  %247 = icmp ne %struct.TYPE_39__* %246, null
  br i1 %247, label %248, label %253

248:                                              ; preds = %243
  %249 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %250 = call i32 @ff_thread_finish_setup(%struct.TYPE_52__* %249)
  %251 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %251, i32 0, i32 8
  store i32 1, i32* %252, align 8
  br label %253

253:                                              ; preds = %248, %243, %238, %234, %227
  %254 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %254, i32 0, i32 17
  %256 = load %struct.TYPE_52__*, %struct.TYPE_52__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %256, i32 0, i32 5
  %258 = load %struct.TYPE_43__*, %struct.TYPE_43__** %257, align 8
  %259 = icmp ne %struct.TYPE_43__* %258, null
  br i1 %259, label %260, label %276

260:                                              ; preds = %253
  %261 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %261, i32 0, i32 17
  %263 = load %struct.TYPE_52__*, %struct.TYPE_52__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %263, i32 0, i32 5
  %265 = load %struct.TYPE_43__*, %struct.TYPE_43__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %265, i32 0, i32 0
  %267 = load i32 (%struct.TYPE_52__*, i32*, i32)*, i32 (%struct.TYPE_52__*, i32*, i32)** %266, align 8
  %268 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %268, i32 0, i32 17
  %270 = load %struct.TYPE_52__*, %struct.TYPE_52__** %269, align 8
  %271 = load i32*, i32** %6, align 8
  %272 = load i32, i32* %7, align 4
  %273 = call i32 %267(%struct.TYPE_52__* %270, i32* %271, i32 %272)
  store i32 %273, i32* %12, align 4
  %274 = icmp slt i32 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %260
  br label %584

276:                                              ; preds = %260, %253
  br label %277

277:                                              ; preds = %276, %222
  %278 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %279 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %278, i32 0, i32 5
  %280 = load %struct.TYPE_43__*, %struct.TYPE_43__** %279, align 8
  %281 = icmp ne %struct.TYPE_43__* %280, null
  br i1 %281, label %282, label %283

282:                                              ; preds = %277
  br label %287

283:                                              ; preds = %277
  %284 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %284, i32 0, i32 9
  %286 = load i32, i32* %285, align 4
  br label %287

287:                                              ; preds = %283, %282
  %288 = phi i32 [ 1, %282 ], [ %286, %283 ]
  store i32 %288, i32* %14, align 4
  %289 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %289, i32 0, i32 7
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* %14, align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %294, label %334

294:                                              ; preds = %287
  %295 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %295, i32 0, i32 17
  %297 = load %struct.TYPE_52__*, %struct.TYPE_52__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %297, i32 0, i32 5
  %299 = load %struct.TYPE_43__*, %struct.TYPE_43__** %298, align 8
  %300 = icmp ne %struct.TYPE_43__* %299, null
  br i1 %300, label %301, label %317

301:                                              ; preds = %294
  %302 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %302, i32 0, i32 5
  %304 = load %struct.TYPE_43__*, %struct.TYPE_43__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %304, i32 0, i32 1
  %306 = load i32 (%struct.TYPE_52__*, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32)** %305, align 8
  %307 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %308 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %309 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %308, i32 0, i32 6
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %312 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %311, i32 0, i32 5
  %313 = load i32, i32* %312, align 8
  %314 = call i32 %306(%struct.TYPE_52__* %307, i32 %310, i32 %313)
  store i32 %314, i32* %12, align 4
  %315 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %315, i32 0, i32 7
  store i32 0, i32* %316, align 4
  br label %320

317:                                              ; preds = %294
  %318 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %319 = call i32 @ff_h264_execute_decode_slices(%struct.TYPE_50__* %318)
  store i32 %319, i32* %12, align 4
  br label %320

320:                                              ; preds = %317, %301
  %321 = load i32, i32* %12, align 4
  %322 = icmp slt i32 %321, 0
  br i1 %322, label %323, label %333

323:                                              ; preds = %320
  %324 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %324, i32 0, i32 17
  %326 = load %struct.TYPE_52__*, %struct.TYPE_52__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 8
  %329 = load i32, i32* @AV_EF_EXPLODE, align 4
  %330 = and i32 %328, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %333

332:                                              ; preds = %323
  br label %584

333:                                              ; preds = %323, %320
  br label %334

334:                                              ; preds = %333, %287
  br label %529

335:                                              ; preds = %158, %158, %158
  %336 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %337 = call i32 @avpriv_request_sample(%struct.TYPE_52__* %336, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %529

338:                                              ; preds = %158
  %339 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %339, i32 0, i32 18
  %341 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %342 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %341, i32 0, i32 4
  %343 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %344 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %343, i32 0, i32 16
  %345 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %346 = call i32 @ff_h264_sei_decode(%struct.TYPE_40__* %340, i32* %342, %struct.TYPE_42__* %344, %struct.TYPE_52__* %345)
  store i32 %346, i32* %12, align 4
  %347 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %347, i32 0, i32 6
  %349 = load i32, i32* %348, align 8
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %358, label %351

351:                                              ; preds = %338
  %352 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %352, i32 0, i32 18
  %354 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = icmp ne i32 %356, -1
  br label %358

358:                                              ; preds = %351, %338
  %359 = phi i1 [ true, %338 ], [ %357, %351 ]
  %360 = zext i1 %359 to i32
  %361 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %362 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %361, i32 0, i32 6
  store i32 %360, i32* %362, align 8
  %363 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %364 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %363, i32 0, i32 4
  %365 = load i32, i32* %364, align 4
  %366 = load i32, i32* @FF_DEBUG_GREEN_MD, align 4
  %367 = and i32 %365, %366
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %377

369:                                              ; preds = %358
  %370 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %371 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %370, i32 0, i32 18
  %372 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %371, i32 0, i32 0
  %373 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %374 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %373, i32 0, i32 17
  %375 = load %struct.TYPE_52__*, %struct.TYPE_52__** %374, align 8
  %376 = call i32 @debug_green_metadata(i32* %372, %struct.TYPE_52__* %375)
  br label %377

377:                                              ; preds = %369, %358
  %378 = load i32, i32* %12, align 4
  %379 = icmp slt i32 %378, 0
  br i1 %379, label %380, label %390

380:                                              ; preds = %377
  %381 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %382 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %381, i32 0, i32 17
  %383 = load %struct.TYPE_52__*, %struct.TYPE_52__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %383, i32 0, i32 3
  %385 = load i32, i32* %384, align 8
  %386 = load i32, i32* @AV_EF_EXPLODE, align 4
  %387 = and i32 %385, %386
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %390

389:                                              ; preds = %380
  br label %584

390:                                              ; preds = %380, %377
  br label %529

391:                                              ; preds = %158
  %392 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %393 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %392, i32 0, i32 4
  %394 = load i32, i32* %393, align 4
  store i32 %394, i32* %17, align 4
  %395 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %396 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %395, i32 0, i32 5
  %397 = load %struct.TYPE_43__*, %struct.TYPE_43__** %396, align 8
  %398 = icmp ne %struct.TYPE_43__* %397, null
  br i1 %398, label %399, label %427

399:                                              ; preds = %391
  %400 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %401 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %400, i32 0, i32 5
  %402 = load %struct.TYPE_43__*, %struct.TYPE_43__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %402, i32 0, i32 2
  %404 = load i32 (%struct.TYPE_52__*, i32, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32)** %403, align 8
  %405 = icmp ne i32 (%struct.TYPE_52__*, i32, i32, i32)* %404, null
  br i1 %405, label %406, label %427

406:                                              ; preds = %399
  %407 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %408 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %407, i32 0, i32 5
  %409 = load %struct.TYPE_43__*, %struct.TYPE_43__** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %409, i32 0, i32 2
  %411 = load i32 (%struct.TYPE_52__*, i32, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32)** %410, align 8
  %412 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %413 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %414 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 8
  %416 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %417 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %416, i32 0, i32 6
  %418 = load i32, i32* %417, align 4
  %419 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %420 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %419, i32 0, i32 5
  %421 = load i32, i32* %420, align 8
  %422 = call i32 %411(%struct.TYPE_52__* %412, i32 %415, i32 %418, i32 %421)
  store i32 %422, i32* %12, align 4
  %423 = load i32, i32* %12, align 4
  %424 = icmp slt i32 %423, 0
  br i1 %424, label %425, label %426

425:                                              ; preds = %406
  br label %584

426:                                              ; preds = %406
  br label %427

427:                                              ; preds = %426, %399, %391
  %428 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %429 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %430 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %429, i32 0, i32 16
  %431 = call i32 @ff_h264_decode_seq_parameter_set(i32* %17, %struct.TYPE_52__* %428, %struct.TYPE_42__* %430, i32 0)
  %432 = icmp sge i32 %431, 0
  br i1 %432, label %433, label %434

433:                                              ; preds = %427
  br label %529

434:                                              ; preds = %427
  %435 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %436 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %435, i32 0, i32 17
  %437 = load %struct.TYPE_52__*, %struct.TYPE_52__** %436, align 8
  %438 = load i32, i32* @AV_LOG_DEBUG, align 4
  %439 = call i32 (%struct.TYPE_52__*, i32, i8*, ...) @av_log(%struct.TYPE_52__* %437, i32 %438, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  %440 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %441 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %440, i32 0, i32 6
  %442 = load i32, i32* %441, align 4
  %443 = add nsw i32 %442, 1
  %444 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %445 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %444, i32 0, i32 5
  %446 = load i32, i32* %445, align 8
  %447 = sub nsw i32 %446, 1
  %448 = call i32 @init_get_bits8(i32* %17, i32 %443, i32 %447)
  %449 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %450 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %451 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %450, i32 0, i32 16
  %452 = call i32 @ff_h264_decode_seq_parameter_set(i32* %17, %struct.TYPE_52__* %449, %struct.TYPE_42__* %451, i32 0)
  %453 = icmp sge i32 %452, 0
  br i1 %453, label %454, label %455

454:                                              ; preds = %434
  br label %529

455:                                              ; preds = %434
  %456 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %457 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %456, i32 0, i32 4
  %458 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %459 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %460 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %459, i32 0, i32 16
  %461 = call i32 @ff_h264_decode_seq_parameter_set(i32* %457, %struct.TYPE_52__* %458, %struct.TYPE_42__* %460, i32 1)
  br label %529

462:                                              ; preds = %158
  %463 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %464 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %463, i32 0, i32 5
  %465 = load %struct.TYPE_43__*, %struct.TYPE_43__** %464, align 8
  %466 = icmp ne %struct.TYPE_43__* %465, null
  br i1 %466, label %467, label %495

467:                                              ; preds = %462
  %468 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %469 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %468, i32 0, i32 5
  %470 = load %struct.TYPE_43__*, %struct.TYPE_43__** %469, align 8
  %471 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %470, i32 0, i32 2
  %472 = load i32 (%struct.TYPE_52__*, i32, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32)** %471, align 8
  %473 = icmp ne i32 (%struct.TYPE_52__*, i32, i32, i32)* %472, null
  br i1 %473, label %474, label %495

474:                                              ; preds = %467
  %475 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %476 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %475, i32 0, i32 5
  %477 = load %struct.TYPE_43__*, %struct.TYPE_43__** %476, align 8
  %478 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %477, i32 0, i32 2
  %479 = load i32 (%struct.TYPE_52__*, i32, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32)** %478, align 8
  %480 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %481 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %482 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %481, i32 0, i32 1
  %483 = load i32, i32* %482, align 8
  %484 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %485 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %484, i32 0, i32 6
  %486 = load i32, i32* %485, align 4
  %487 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %488 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %487, i32 0, i32 5
  %489 = load i32, i32* %488, align 8
  %490 = call i32 %479(%struct.TYPE_52__* %480, i32 %483, i32 %486, i32 %489)
  store i32 %490, i32* %12, align 4
  %491 = load i32, i32* %12, align 4
  %492 = icmp slt i32 %491, 0
  br i1 %492, label %493, label %494

493:                                              ; preds = %474
  br label %584

494:                                              ; preds = %474
  br label %495

495:                                              ; preds = %494, %467, %462
  %496 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %497 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %496, i32 0, i32 4
  %498 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %499 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %500 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %499, i32 0, i32 16
  %501 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %502 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %501, i32 0, i32 3
  %503 = load i32, i32* %502, align 8
  %504 = call i32 @ff_h264_decode_picture_parameter_set(i32* %497, %struct.TYPE_52__* %498, %struct.TYPE_42__* %500, i32 %503)
  store i32 %504, i32* %12, align 4
  %505 = load i32, i32* %12, align 4
  %506 = icmp slt i32 %505, 0
  br i1 %506, label %507, label %517

507:                                              ; preds = %495
  %508 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %509 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %508, i32 0, i32 17
  %510 = load %struct.TYPE_52__*, %struct.TYPE_52__** %509, align 8
  %511 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %510, i32 0, i32 3
  %512 = load i32, i32* %511, align 8
  %513 = load i32, i32* @AV_EF_EXPLODE, align 4
  %514 = and i32 %512, %513
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %517

516:                                              ; preds = %507
  br label %584

517:                                              ; preds = %507, %495
  br label %529

518:                                              ; preds = %158, %158, %158, %158, %158, %158
  br label %529

519:                                              ; preds = %158
  %520 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %521 = load i32, i32* @AV_LOG_DEBUG, align 4
  %522 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %523 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %522, i32 0, i32 1
  %524 = load i32, i32* %523, align 8
  %525 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %526 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %525, i32 0, i32 3
  %527 = load i32, i32* %526, align 8
  %528 = call i32 (%struct.TYPE_52__*, i32, i8*, ...) @av_log(%struct.TYPE_52__* %520, i32 %521, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %524, i32 %527)
  br label %529

529:                                              ; preds = %519, %518, %517, %455, %454, %433, %390, %335, %334, %205
  %530 = load i32, i32* %15, align 4
  %531 = icmp slt i32 %530, 0
  br i1 %531, label %532, label %538

532:                                              ; preds = %529
  %533 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %534 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %533, i32 0, i32 17
  %535 = load %struct.TYPE_52__*, %struct.TYPE_52__** %534, align 8
  %536 = load i32, i32* @AV_LOG_ERROR, align 4
  %537 = call i32 (%struct.TYPE_52__*, i32, i8*, ...) @av_log(%struct.TYPE_52__* %535, i32 %536, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %538

538:                                              ; preds = %532, %529
  br label %539

539:                                              ; preds = %538, %157
  %540 = load i32, i32* %11, align 4
  %541 = add nsw i32 %540, 1
  store i32 %541, i32* %11, align 4
  br label %127

542:                                              ; preds = %127
  %543 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %544 = call i32 @ff_h264_execute_decode_slices(%struct.TYPE_50__* %543)
  store i32 %544, i32* %12, align 4
  %545 = load i32, i32* %12, align 4
  %546 = icmp slt i32 %545, 0
  br i1 %546, label %547, label %557

547:                                              ; preds = %542
  %548 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %549 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %548, i32 0, i32 17
  %550 = load %struct.TYPE_52__*, %struct.TYPE_52__** %549, align 8
  %551 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %550, i32 0, i32 3
  %552 = load i32, i32* %551, align 8
  %553 = load i32, i32* @AV_EF_EXPLODE, align 4
  %554 = and i32 %552, %553
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %556, label %557

556:                                              ; preds = %547
  br label %584

557:                                              ; preds = %547, %542
  %558 = load i32, i32* %12, align 4
  %559 = icmp slt i32 %558, 0
  br i1 %559, label %568, label %560

560:                                              ; preds = %557
  %561 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %562 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %561, i32 0, i32 14
  %563 = load %struct.TYPE_49__*, %struct.TYPE_49__** %562, align 8
  %564 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %563, i32 0, i32 1
  %565 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %564, i32 0, i32 4
  %566 = load i64, i64* %565, align 8
  %567 = icmp ne i64 %566, 0
  br i1 %567, label %568, label %583

568:                                              ; preds = %560, %557
  %569 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %570 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %569, i32 0, i32 11
  %571 = load %struct.TYPE_39__*, %struct.TYPE_39__** %570, align 8
  %572 = icmp ne %struct.TYPE_39__* %571, null
  br i1 %572, label %573, label %583

573:                                              ; preds = %568
  %574 = load i32, i32* @FF_DECODE_ERROR_DECODE_SLICES, align 4
  %575 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %576 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %575, i32 0, i32 11
  %577 = load %struct.TYPE_39__*, %struct.TYPE_39__** %576, align 8
  %578 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %577, i32 0, i32 2
  %579 = load %struct.TYPE_48__*, %struct.TYPE_48__** %578, align 8
  %580 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %579, i32 0, i32 3
  %581 = load i32, i32* %580, align 8
  %582 = or i32 %581, %574
  store i32 %582, i32* %580, align 8
  br label %583

583:                                              ; preds = %573, %568, %560
  store i32 0, i32* %12, align 4
  br label %584

584:                                              ; preds = %583, %556, %516, %493, %425, %389, %332, %275, %180
  %585 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %586 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %585, i32 0, i32 11
  %587 = load %struct.TYPE_39__*, %struct.TYPE_39__** %586, align 8
  %588 = icmp ne %struct.TYPE_39__* %587, null
  br i1 %588, label %589, label %612

589:                                              ; preds = %584
  %590 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %591 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %590, i32 0, i32 12
  %592 = load i32, i32* %591, align 8
  %593 = icmp ne i32 %592, 0
  br i1 %593, label %612, label %594

594:                                              ; preds = %589
  %595 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %596 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %595, i32 0, i32 0
  %597 = load i32, i32* %596, align 8
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %599, label %612

599:                                              ; preds = %594
  %600 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %601 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %600, i32 0, i32 11
  %602 = load %struct.TYPE_39__*, %struct.TYPE_39__** %601, align 8
  %603 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %602, i32 0, i32 0
  %604 = load i32, i32* @INT_MAX, align 4
  %605 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %606 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %605, i32 0, i32 10
  %607 = load i64, i64* %606, align 8
  %608 = load i64, i64* @PICT_BOTTOM_FIELD, align 8
  %609 = icmp eq i64 %607, %608
  %610 = zext i1 %609 to i32
  %611 = call i32 @ff_thread_report_progress(i32* %603, i32 %604, i32 %610)
  br label %612

612:                                              ; preds = %599, %594, %589, %584
  %613 = load i32, i32* %12, align 4
  %614 = icmp slt i32 %613, 0
  br i1 %614, label %615, label %617

615:                                              ; preds = %612
  %616 = load i32, i32* %12, align 4
  br label %619

617:                                              ; preds = %612
  %618 = load i32, i32* %7, align 4
  br label %619

619:                                              ; preds = %617, %615
  %620 = phi i32 [ %616, %615 ], [ %618, %617 ]
  store i32 %620, i32* %4, align 4
  br label %621

621:                                              ; preds = %619, %124, %106
  %622 = load i32, i32* %4, align 4
  ret i32 %622
}

declare dso_local i32 @ff_h264_sei_uninit(%struct.TYPE_40__*) #1

declare dso_local i32 @AV_RB32(i32*) #1

declare dso_local i32 @ff_h2645_packet_split(%struct.TYPE_44__*, i32*, i32, %struct.TYPE_52__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_52__*, i32, i8*, ...) #1

declare dso_local i32 @get_last_needed_nal(%struct.TYPE_50__*) #1

declare dso_local i32 @idr(%struct.TYPE_50__*) #1

declare dso_local i32 @ff_h264_queue_decode_slice(%struct.TYPE_50__*, %struct.TYPE_51__*) #1

declare dso_local i32 @ff_thread_finish_setup(%struct.TYPE_52__*) #1

declare dso_local i32 @ff_h264_execute_decode_slices(%struct.TYPE_50__*) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_52__*, i8*) #1

declare dso_local i32 @ff_h264_sei_decode(%struct.TYPE_40__*, i32*, %struct.TYPE_42__*, %struct.TYPE_52__*) #1

declare dso_local i32 @debug_green_metadata(i32*, %struct.TYPE_52__*) #1

declare dso_local i32 @ff_h264_decode_seq_parameter_set(i32*, %struct.TYPE_52__*, %struct.TYPE_42__*, i32) #1

declare dso_local i32 @init_get_bits8(i32*, i32, i32) #1

declare dso_local i32 @ff_h264_decode_picture_parameter_set(i32*, %struct.TYPE_52__*, %struct.TYPE_42__*, i32) #1

declare dso_local i32 @ff_thread_report_progress(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
