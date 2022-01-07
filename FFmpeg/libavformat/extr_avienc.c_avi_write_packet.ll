; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_avienc.c_avi_write_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_avienc.c_avi_write_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { %struct.TYPE_32__*, %struct.TYPE_29__** }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_31__*, %struct.TYPE_34__* }
%struct.TYPE_31__ = type { i32*, i32, i32, i32 }
%struct.TYPE_34__ = type { i64, i64, i64, i32, i32, i64 }
%struct.TYPE_30__ = type { i32, i64, i32 }

@AV_CODEC_ID_H264 = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AV_CODEC_ID_RAWVIDEO = common dso_local global i64 0, align 8
@AV_PIX_FMT_PAL8 = common dso_local global i64 0, align 8
@AVIO_SEEKABLE_NORMAL = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@AVISF_VIDEO_PALCHANGES = common dso_local global i32 0, align 4
@AVIIF_NO_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_33__*, %struct.TYPE_30__*)* @avi_write_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avi_write_packet(%struct.TYPE_33__* %0, %struct.TYPE_30__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_33__*, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_34__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_31__*, align 8
  %10 = alloca %struct.TYPE_32__*, align 8
  %11 = alloca %struct.TYPE_30__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [5 x i8], align 1
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %4, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %5, align 8
  %23 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %6, align 4
  %26 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %28, i64 %30
  %32 = load %struct.TYPE_29__*, %struct.TYPE_29__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_34__*, %struct.TYPE_34__** %33, align 8
  store %struct.TYPE_34__* %34, %struct.TYPE_34__** %7, align 8
  %35 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AV_CODEC_ID_H264, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %67

40:                                               ; preds = %2
  %41 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @MKTAG(i8 signext 72, i8 signext 50, i8 signext 54, i8 signext 52)
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %67

46:                                               ; preds = %40
  %47 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %46
  %52 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %53 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %55, i64 %57
  %59 = load %struct.TYPE_29__*, %struct.TYPE_29__** %58, align 8
  %60 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %61 = call i32 @ff_check_h264_startcode(%struct.TYPE_33__* %52, %struct.TYPE_29__* %59, %struct.TYPE_30__* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %51
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %368

66:                                               ; preds = %51
  br label %67

67:                                               ; preds = %66, %46, %40, %2
  %68 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @write_skip_frames(%struct.TYPE_33__* %68, i32 %69, i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %368

77:                                               ; preds = %67
  %78 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %77
  %83 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %84 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %85 = call i32 @avi_write_packet_internal(%struct.TYPE_33__* %83, %struct.TYPE_30__* %84)
  store i32 %85, i32* %3, align 4
  br label %368

86:                                               ; preds = %77
  %87 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %364

92:                                               ; preds = %86
  %93 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %95, i64 %97
  %99 = load %struct.TYPE_29__*, %struct.TYPE_29__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_31__*, %struct.TYPE_31__** %100, align 8
  store %struct.TYPE_31__* %101, %struct.TYPE_31__** %9, align 8
  %102 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_32__*, %struct.TYPE_32__** %103, align 8
  store %struct.TYPE_32__* %104, %struct.TYPE_32__** %10, align 8
  %105 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  store %struct.TYPE_30__* %105, %struct.TYPE_30__** %11, align 8
  %106 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @AV_CODEC_ID_RAWVIDEO, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %145

111:                                              ; preds = %92
  %112 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %145

116:                                              ; preds = %111
  %117 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 15
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  br label %126

125:                                              ; preds = %116
  br label %126

126:                                              ; preds = %125, %121
  %127 = phi i32 [ %124, %121 ], [ 16, %125 ]
  store i32 %127, i32* %13, align 4
  %128 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %13, align 4
  %132 = mul nsw i32 %130, %131
  %133 = add nsw i32 %132, 31
  %134 = ashr i32 %133, 5
  %135 = mul nsw i32 %134, 4
  store i32 %135, i32* %14, align 4
  %136 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %137 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %138 = load i32, i32* %14, align 4
  %139 = call i32 @ff_reshuffle_raw_rgb(%struct.TYPE_33__* %136, %struct.TYPE_30__** %5, %struct.TYPE_34__* %137, i32 %138)
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %126
  %143 = load i32, i32* %12, align 4
  store i32 %143, i32* %3, align 4
  br label %368

144:                                              ; preds = %126
  br label %146

145:                                              ; preds = %111, %92
  store i32 0, i32* %12, align 4
  br label %146

146:                                              ; preds = %145, %144
  %147 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %147, i32 0, i32 5
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @AV_PIX_FMT_PAL8, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %349

152:                                              ; preds = %146
  %153 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %154 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %155 = load i32, i32* %12, align 4
  %156 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = call i32 @ff_get_packet_palette(%struct.TYPE_33__* %153, %struct.TYPE_30__* %154, i32 %155, i32* %158)
  store i32 %159, i32* %8, align 4
  %160 = load i32, i32* %8, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %152
  br label %356

163:                                              ; preds = %152
  %164 = load i32, i32* %8, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %348

166:                                              ; preds = %163
  %167 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = shl i32 1, %169
  store i32 %170, i32* %15, align 4
  %171 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = icmp sge i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %166
  %176 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = icmp sle i32 %178, 8
  br label %180

180:                                              ; preds = %175, %166
  %181 = phi i1 [ false, %166 ], [ %179, %175 ]
  %182 = zext i1 %181 to i32
  %183 = call i32 @av_assert0(i32 %182)
  %184 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %239

190:                                              ; preds = %180
  %191 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %239

195:                                              ; preds = %190
  %196 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %197 = call i32 @avio_tell(%struct.TYPE_32__* %196)
  store i32 %197, i32* %18, align 4
  %198 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %199 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @SEEK_SET, align 4
  %203 = call i32 @avio_seek(%struct.TYPE_32__* %198, i32 %201, i32 %202)
  store i32 0, i32* %17, align 4
  br label %204

204:                                              ; preds = %220, %195
  %205 = load i32, i32* %17, align 4
  %206 = load i32, i32* %15, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %223

208:                                              ; preds = %204
  %209 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %17, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  store i32 %215, i32* %19, align 4
  %216 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %217 = load i32, i32* %19, align 4
  %218 = and i32 %217, 16777215
  %219 = call i32 @avio_wl32(%struct.TYPE_32__* %216, i32 %218)
  br label %220

220:                                              ; preds = %208
  %221 = load i32, i32* %17, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %17, align 4
  br label %204

223:                                              ; preds = %204
  %224 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %225 = load i32, i32* %18, align 4
  %226 = load i32, i32* @SEEK_SET, align 4
  %227 = call i32 @avio_seek(%struct.TYPE_32__* %224, i32 %225, i32 %226)
  %228 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %231, i32 0, i32 0
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %15, align 4
  %235 = mul nsw i32 %234, 4
  %236 = call i32 @memcpy(i32 %230, i32* %233, i32 %235)
  %237 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %238 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %237, i32 0, i32 1
  store i32 0, i32* %238, align 8
  br label %239

239:                                              ; preds = %223, %190, %180
  %240 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* %15, align 4
  %247 = mul nsw i32 %246, 4
  %248 = call i64 @memcmp(i32* %242, i32 %245, i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %347

250:                                              ; preds = %239
  %251 = getelementptr inbounds [5 x i8], [5 x i8]* %20, i64 0, i64 0
  %252 = load i32, i32* %6, align 4
  %253 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %253, i32 0, i32 2
  %255 = load i64, i64* %254, align 8
  %256 = call i32 @avi_stream2fourcc(i8* %251, i32 %252, i64 %255)
  %257 = getelementptr inbounds [5 x i8], [5 x i8]* %20, i64 0, i64 2
  store i8 112, i8* %257, align 1
  %258 = getelementptr inbounds [5 x i8], [5 x i8]* %20, i64 0, i64 3
  store i8 99, i8* %258, align 1
  %259 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %259, i32 0, i32 0
  %261 = load %struct.TYPE_32__*, %struct.TYPE_32__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %303

267:                                              ; preds = %250
  %268 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %269 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %290

272:                                              ; preds = %267
  %273 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %274 = call i32 @avio_tell(%struct.TYPE_32__* %273)
  store i32 %274, i32* %21, align 4
  %275 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %276 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %277 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @SEEK_SET, align 4
  %280 = call i32 @avio_seek(%struct.TYPE_32__* %275, i32 %278, i32 %279)
  %281 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %282 = load i32, i32* @AVISF_VIDEO_PALCHANGES, align 4
  %283 = call i32 @avio_wl32(%struct.TYPE_32__* %281, i32 %282)
  %284 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %285 = load i32, i32* %21, align 4
  %286 = load i32, i32* @SEEK_SET, align 4
  %287 = call i32 @avio_seek(%struct.TYPE_32__* %284, i32 %285, i32 %286)
  %288 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %289 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %288, i32 0, i32 2
  store i32 0, i32* %289, align 4
  br label %290

290:                                              ; preds = %272, %267
  %291 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %292 = load i32, i32* %6, align 4
  %293 = getelementptr inbounds [5 x i8], [5 x i8]* %20, i64 0, i64 0
  %294 = load i32, i32* @AVIIF_NO_TIME, align 4
  %295 = load i32, i32* %15, align 4
  %296 = mul nsw i32 %295, 4
  %297 = add nsw i32 %296, 4
  %298 = call i32 @avi_add_ientry(%struct.TYPE_33__* %291, i32 %292, i8* %293, i32 %294, i32 %297)
  store i32 %298, i32* %8, align 4
  %299 = load i32, i32* %8, align 4
  %300 = icmp slt i32 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %290
  br label %356

302:                                              ; preds = %290
  br label %303

303:                                              ; preds = %302, %250
  %304 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %305 = getelementptr inbounds [5 x i8], [5 x i8]* %20, i64 0, i64 0
  %306 = call i32 @ff_start_tag(%struct.TYPE_32__* %304, i8* %305)
  store i32 %306, i32* %16, align 4
  %307 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %308 = call i32 @avio_w8(%struct.TYPE_32__* %307, i32 0)
  %309 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %310 = load i32, i32* %15, align 4
  %311 = and i32 %310, 255
  %312 = call i32 @avio_w8(%struct.TYPE_32__* %309, i32 %311)
  %313 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %314 = call i32 @avio_wl16(%struct.TYPE_32__* %313, i32 0)
  store i32 0, i32* %17, align 4
  br label %315

315:                                              ; preds = %331, %303
  %316 = load i32, i32* %17, align 4
  %317 = load i32, i32* %15, align 4
  %318 = icmp slt i32 %316, %317
  br i1 %318, label %319, label %334

319:                                              ; preds = %315
  %320 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %321 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %320, i32 0, i32 0
  %322 = load i32*, i32** %321, align 8
  %323 = load i32, i32* %17, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %322, i64 %324
  %326 = load i32, i32* %325, align 4
  store i32 %326, i32* %22, align 4
  %327 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %328 = load i32, i32* %22, align 4
  %329 = shl i32 %328, 8
  %330 = call i32 @avio_wb32(%struct.TYPE_32__* %327, i32 %329)
  br label %331

331:                                              ; preds = %319
  %332 = load i32, i32* %17, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %17, align 4
  br label %315

334:                                              ; preds = %315
  %335 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %336 = load i32, i32* %16, align 4
  %337 = call i32 @ff_end_tag(%struct.TYPE_32__* %335, i32 %336)
  %338 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %339 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %338, i32 0, i32 3
  %340 = load i32, i32* %339, align 8
  %341 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %342 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %341, i32 0, i32 0
  %343 = load i32*, i32** %342, align 8
  %344 = load i32, i32* %15, align 4
  %345 = mul nsw i32 %344, 4
  %346 = call i32 @memcpy(i32 %340, i32* %343, i32 %345)
  br label %347

347:                                              ; preds = %334, %239
  br label %348

348:                                              ; preds = %347, %163
  br label %349

349:                                              ; preds = %348, %146
  %350 = load i32, i32* %12, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %363

352:                                              ; preds = %349
  %353 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %354 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %355 = call i32 @avi_write_packet_internal(%struct.TYPE_33__* %353, %struct.TYPE_30__* %354)
  store i32 %355, i32* %8, align 4
  br label %356

356:                                              ; preds = %352, %301, %162
  %357 = load i32, i32* %12, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %361

359:                                              ; preds = %356
  %360 = call i32 @av_packet_free(%struct.TYPE_30__** %5)
  br label %361

361:                                              ; preds = %359, %356
  %362 = load i32, i32* %8, align 4
  store i32 %362, i32* %3, align 4
  br label %368

363:                                              ; preds = %349
  br label %364

364:                                              ; preds = %363, %86
  %365 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %366 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %367 = call i32 @avi_write_packet_internal(%struct.TYPE_33__* %365, %struct.TYPE_30__* %366)
  store i32 %367, i32* %3, align 4
  br label %368

368:                                              ; preds = %364, %361, %142, %82, %75, %64
  %369 = load i32, i32* %3, align 4
  ret i32 %369
}

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @ff_check_h264_startcode(%struct.TYPE_33__*, %struct.TYPE_29__*, %struct.TYPE_30__*) #1

declare dso_local i32 @write_skip_frames(%struct.TYPE_33__*, i32, i32) #1

declare dso_local i32 @avi_write_packet_internal(%struct.TYPE_33__*, %struct.TYPE_30__*) #1

declare dso_local i32 @ff_reshuffle_raw_rgb(%struct.TYPE_33__*, %struct.TYPE_30__**, %struct.TYPE_34__*, i32) #1

declare dso_local i32 @ff_get_packet_palette(%struct.TYPE_33__*, %struct.TYPE_30__*, i32, i32*) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @avio_tell(%struct.TYPE_32__*) #1

declare dso_local i32 @avio_seek(%struct.TYPE_32__*, i32, i32) #1

declare dso_local i32 @avio_wl32(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @avi_stream2fourcc(i8*, i32, i64) #1

declare dso_local i32 @avi_add_ientry(%struct.TYPE_33__*, i32, i8*, i32, i32) #1

declare dso_local i32 @ff_start_tag(%struct.TYPE_32__*, i8*) #1

declare dso_local i32 @avio_w8(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @avio_wl16(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @avio_wb32(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @ff_end_tag(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @av_packet_free(%struct.TYPE_30__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
