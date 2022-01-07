; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libvorbisenc.c_libvorbis_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libvorbisenc.c_libvorbis_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, %struct.TYPE_22__, i32, i32, i32, i32, %struct.TYPE_23__ }
%struct.TYPE_22__ = type { i32, %struct.TYPE_24__*, i32, i64 }
%struct.TYPE_24__ = type { i32, i64 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_25__* }
%struct.TYPE_28__ = type { i32, i32* }

@ff_vorbis_encoding_channel_layout_offsets = common dso_local global i32** null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"error in vorbis_analysis_wrote()\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"packet buffer is too small\0A\00", align 1
@AVERROR_BUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"error getting available packets\0A\00", align 1
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_29__*, %struct.TYPE_27__*, %struct.TYPE_28__*, i32*)* @libvorbis_encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libvorbis_encode_frame(%struct.TYPE_29__* %0, %struct.TYPE_27__* %1, %struct.TYPE_28__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_25__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %6, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %7, align 8
  store %struct.TYPE_28__* %2, %struct.TYPE_28__** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  store %struct.TYPE_26__* %21, %struct.TYPE_26__** %10, align 8
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %23 = icmp ne %struct.TYPE_28__* %22, null
  br i1 %23, label %24, label %99

24:                                               ; preds = %4
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %14, align 4
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %17, align 4
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 4
  %34 = load i32, i32* %14, align 4
  %35 = call float** @vorbis_analysis_buffer(i32* %33, i32 %34)
  store float** %35, float*** %15, align 8
  store i32 0, i32* %16, align 4
  br label %36

36:                                               ; preds = %75, %24
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %17, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %78

40:                                               ; preds = %36
  %41 = load i32, i32* %17, align 4
  %42 = icmp sgt i32 %41, 8
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* %16, align 4
  br label %56

45:                                               ; preds = %40
  %46 = load i32**, i32*** @ff_vorbis_encoding_channel_layout_offsets, align 8
  %47 = load i32, i32* %17, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %46, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %16, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  br label %56

56:                                               ; preds = %45, %43
  %57 = phi i32 [ %44, %43 ], [ %55, %45 ]
  store i32 %57, i32* %18, align 4
  %58 = load float**, float*** %15, align 8
  %59 = load i32, i32* %16, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float*, float** %58, i64 %60
  %62 = load float*, float** %61, align 8
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %18, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = trunc i64 %72 to i32
  %74 = call i32 @memcpy(float* %62, i32 %69, i32 %73)
  br label %75

75:                                               ; preds = %56
  %76 = load i32, i32* %16, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %16, align 4
  br label %36

78:                                               ; preds = %36
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 4
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @vorbis_analysis_wrote(i32* %80, i32 %81)
  store i32 %82, i32* %12, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %86 = load i32, i32* @AV_LOG_ERROR, align 4
  %87 = call i32 @av_log(%struct.TYPE_29__* %85, i32 %86, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @vorbis_error_to_averror(i32 %88)
  store i32 %89, i32* %5, align 4
  br label %313

90:                                               ; preds = %78
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %94 = call i32 @ff_af_queue_add(%struct.TYPE_22__* %92, %struct.TYPE_28__* %93)
  store i32 %94, i32* %12, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %5, align 4
  br label %313

98:                                               ; preds = %90
  br label %125

99:                                               ; preds = %4
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %122, label %104

104:                                              ; preds = %99
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %104
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 4
  %113 = call i32 @vorbis_analysis_wrote(i32* %112, i32 0)
  store i32 %113, i32* %12, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %117 = load i32, i32* @AV_LOG_ERROR, align 4
  %118 = call i32 @av_log(%struct.TYPE_29__* %116, i32 %117, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @vorbis_error_to_averror(i32 %119)
  store i32 %120, i32* %5, align 4
  br label %313

121:                                              ; preds = %110
  br label %122

122:                                              ; preds = %121, %104, %99
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i32 0, i32 0
  store i32 1, i32* %124, align 8
  br label %125

125:                                              ; preds = %122, %98
  br label %126

126:                                              ; preds = %187, %125
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 4
  %129 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %129, i32 0, i32 5
  %131 = call i32 @vorbis_analysis_blockout(i32* %128, i32* %130)
  store i32 %131, i32* %12, align 4
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %188

133:                                              ; preds = %126
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 5
  %136 = call i32 @vorbis_analysis(i32* %135, i32* null)
  store i32 %136, i32* %12, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %188

139:                                              ; preds = %133
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 5
  %142 = call i32 @vorbis_bitrate_addblock(i32* %141)
  store i32 %142, i32* %12, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  br label %188

145:                                              ; preds = %139
  br label %146

146:                                              ; preds = %167, %145
  %147 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %147, i32 0, i32 4
  %149 = call i32 @vorbis_bitrate_flushpacket(i32* %148, %struct.TYPE_25__* %11)
  store i32 %149, i32* %12, align 4
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %151, label %180

151:                                              ; preds = %146
  %152 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @av_fifo_space(i32 %154)
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = add i64 16, %159
  %161 = icmp ult i64 %156, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %151
  %163 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %164 = load i32, i32* @AV_LOG_ERROR, align 4
  %165 = call i32 @av_log(%struct.TYPE_29__* %163, i32 %164, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %166 = load i32, i32* @AVERROR_BUG, align 4
  store i32 %166, i32* %5, align 4
  br label %313

167:                                              ; preds = %151
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @av_fifo_generic_write(i32 %170, %struct.TYPE_25__* %11, i32 16, i32* null)
  %172 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 2
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @av_fifo_generic_write(i32 %174, %struct.TYPE_25__* %176, i32 %178, i32* null)
  br label %146

180:                                              ; preds = %146
  %181 = load i32, i32* %12, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %180
  %184 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %185 = load i32, i32* @AV_LOG_ERROR, align 4
  %186 = call i32 @av_log(%struct.TYPE_29__* %184, i32 %185, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %188

187:                                              ; preds = %180
  br label %126

188:                                              ; preds = %183, %144, %138, %126
  %189 = load i32, i32* %12, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %188
  %192 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %193 = load i32, i32* @AV_LOG_ERROR, align 4
  %194 = call i32 @av_log(%struct.TYPE_29__* %192, i32 %193, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %195 = load i32, i32* %12, align 4
  %196 = call i32 @vorbis_error_to_averror(i32 %195)
  store i32 %196, i32* %5, align 4
  br label %313

197:                                              ; preds = %188
  %198 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @av_fifo_size(i32 %200)
  %202 = sext i32 %201 to i64
  %203 = icmp ult i64 %202, 16
  br i1 %203, label %204, label %205

204:                                              ; preds = %197
  store i32 0, i32* %5, align 4
  br label %313

205:                                              ; preds = %197
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @av_fifo_generic_read(i32 %208, %struct.TYPE_25__* %11, i32 16, i32* null)
  %210 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %211 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @ff_alloc_packet2(%struct.TYPE_29__* %210, %struct.TYPE_27__* %211, i32 %213, i32 0)
  store i32 %214, i32* %12, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %205
  %217 = load i32, i32* %12, align 4
  store i32 %217, i32* %5, align 4
  br label %313

218:                                              ; preds = %205
  %219 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %222, i32 0, i32 3
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @av_fifo_generic_read(i32 %221, %struct.TYPE_25__* %224, i32 %226, i32* null)
  %228 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @ff_samples_to_time_base(%struct.TYPE_29__* %228, i32 %230)
  %232 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %232, i32 0, i32 1
  store i32 %231, i32* %233, align 4
  %234 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %237, i32 0, i32 3
  %239 = load %struct.TYPE_25__*, %struct.TYPE_25__** %238, align 8
  %240 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @av_vorbis_parse_frame(i32 %236, %struct.TYPE_25__* %239, i32 %242)
  store i32 %243, i32* %13, align 4
  %244 = load i32, i32* %13, align 4
  %245 = icmp sgt i32 %244, 0
  br i1 %245, label %246, label %311

246:                                              ; preds = %218
  %247 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %302, label %251

251:                                              ; preds = %246
  %252 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_24__*, %struct.TYPE_24__** %254, align 8
  %256 = icmp ne %struct.TYPE_24__* %255, null
  br i1 %256, label %257, label %302

257:                                              ; preds = %251
  %258 = load i32, i32* %13, align 4
  %259 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %259, i32 0, i32 0
  store i32 %258, i32* %260, align 8
  %261 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = icmp ne i32 %264, 0
  %266 = xor i1 %265, true
  %267 = zext i1 %266 to i32
  %268 = call i32 @av_assert0(i32 %267)
  %269 = load i32, i32* %13, align 4
  %270 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %271, i32 0, i32 1
  %273 = load %struct.TYPE_24__*, %struct.TYPE_24__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = add nsw i32 %275, %269
  store i32 %276, i32* %274, align 8
  %277 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %278 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %278, i32 0, i32 1
  %280 = load %struct.TYPE_24__*, %struct.TYPE_24__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %284 = icmp ne i64 %282, %283
  br i1 %284, label %285, label %295

285:                                              ; preds = %257
  %286 = load i32, i32* %13, align 4
  %287 = sext i32 %286 to i64
  %288 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %289 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %289, i32 0, i32 1
  %291 = load %struct.TYPE_24__*, %struct.TYPE_24__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = sub nsw i64 %293, %287
  store i64 %294, i64* %292, align 8
  br label %295

295:                                              ; preds = %285, %257
  %296 = load i32, i32* %13, align 4
  %297 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %298 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = add nsw i32 %300, %296
  store i32 %301, i32* %299, align 8
  br label %302

302:                                              ; preds = %295, %251, %246
  %303 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %304 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %303, i32 0, i32 1
  %305 = load i32, i32* %13, align 4
  %306 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %306, i32 0, i32 1
  %308 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %308, i32 0, i32 0
  %310 = call i32 @ff_af_queue_remove(%struct.TYPE_22__* %304, i32 %305, i32* %307, i32* %309)
  br label %311

311:                                              ; preds = %302, %218
  %312 = load i32*, i32** %9, align 8
  store i32 1, i32* %312, align 4
  store i32 0, i32* %5, align 4
  br label %313

313:                                              ; preds = %311, %216, %204, %191, %162, %115, %96, %84
  %314 = load i32, i32* %5, align 4
  ret i32 %314
}

declare dso_local float** @vorbis_analysis_buffer(i32*, i32) #1

declare dso_local i32 @memcpy(float*, i32, i32) #1

declare dso_local i32 @vorbis_analysis_wrote(i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_29__*, i32, i8*) #1

declare dso_local i32 @vorbis_error_to_averror(i32) #1

declare dso_local i32 @ff_af_queue_add(%struct.TYPE_22__*, %struct.TYPE_28__*) #1

declare dso_local i32 @vorbis_analysis_blockout(i32*, i32*) #1

declare dso_local i32 @vorbis_analysis(i32*, i32*) #1

declare dso_local i32 @vorbis_bitrate_addblock(i32*) #1

declare dso_local i32 @vorbis_bitrate_flushpacket(i32*, %struct.TYPE_25__*) #1

declare dso_local i32 @av_fifo_space(i32) #1

declare dso_local i32 @av_fifo_generic_write(i32, %struct.TYPE_25__*, i32, i32*) #1

declare dso_local i32 @av_fifo_size(i32) #1

declare dso_local i32 @av_fifo_generic_read(i32, %struct.TYPE_25__*, i32, i32*) #1

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_29__*, %struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @ff_samples_to_time_base(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @av_vorbis_parse_frame(i32, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @ff_af_queue_remove(%struct.TYPE_22__*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
