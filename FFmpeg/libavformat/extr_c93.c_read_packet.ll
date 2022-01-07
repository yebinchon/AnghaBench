; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_c93.c_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_c93.c_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_18__*, i32* }
%struct.TYPE_18__ = type { i64, i32, i64, i32*, %struct.TYPE_16__*, %struct.TYPE_19__* }
%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i64, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"invalid palette size %u\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@C93_HAS_PALETTE = common dso_local global i32 0, align 4
@C93_FIRST_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_20__*)* @read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_packet(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  store %struct.TYPE_18__* %17, %struct.TYPE_18__** %7, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 5
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i64 %23
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %8, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %89

29:                                               ; preds = %2
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 1
  store i32 0, i32* %35, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @avio_rl16(i32* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp sgt i32 %38, 42
  br i1 %39, label %40, label %88

40:                                               ; preds = %29
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %44 = icmp ne %struct.TYPE_16__* %43, null
  br i1 %44, label %65, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %47 = call %struct.TYPE_16__* @avformat_new_stream(%struct.TYPE_21__* %46, i32* null)
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 4
  store %struct.TYPE_16__* %47, %struct.TYPE_16__** %49, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = icmp ne %struct.TYPE_16__* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %45
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = call i32 @AVERROR(i32 %55)
  store i32 %56, i32* %3, align 4
  br label %274

57:                                               ; preds = %45
  %58 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 4
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  store i32 %58, i32* %64, align 4
  br label %65

65:                                               ; preds = %57, %40
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @avio_skip(i32* %66, i32 26)
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 4
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sub nsw i32 %73, 26
  %75 = call i32 @ff_voc_get_packet(%struct.TYPE_21__* %68, %struct.TYPE_20__* %69, %struct.TYPE_16__* %72, i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %65
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %3, align 4
  br label %274

87:                                               ; preds = %65
  br label %88

88:                                               ; preds = %87, %29
  br label %89

89:                                               ; preds = %88, %2
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp uge i64 %92, %95
  br i1 %96, label %97, label %119

97:                                               ; preds = %89
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp uge i64 %100, 511
  br i1 %101, label %108, label %102

102:                                              ; preds = %97
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i64 1
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %102, %97
  %109 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %109, i32* %3, align 4
  br label %274

110:                                              ; preds = %102
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 1
  store %struct.TYPE_19__* %112, %struct.TYPE_19__** %8, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %114, align 8
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 2
  store i64 0, i64* %118, align 8
  br label %119

119:                                              ; preds = %110, %89
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %148

124:                                              ; preds = %119
  %125 = load i32*, i32** %6, align 8
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = mul nsw i32 %128, 2048
  %130 = load i32, i32* @SEEK_SET, align 4
  %131 = call i32 @avio_seek(i32* %125, i32 %129, i32 %130)
  store i32 0, i32* %11, align 4
  br label %132

132:                                              ; preds = %144, %124
  %133 = load i32, i32* %11, align 4
  %134 = icmp slt i32 %133, 32
  br i1 %134, label %135, label %147

135:                                              ; preds = %132
  %136 = load i32*, i32** %6, align 8
  %137 = call i32 @avio_rl32(i32* %136)
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 3
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %137, i32* %143, align 4
  br label %144

144:                                              ; preds = %135
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %11, align 4
  br label %132

147:                                              ; preds = %132
  br label %148

148:                                              ; preds = %147, %119
  %149 = load i32*, i32** %6, align 8
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = mul nsw i32 %152, 2048
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 3
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %153, %161
  %163 = load i32, i32* @SEEK_SET, align 4
  %164 = call i32 @avio_seek(i32* %149, i32 %162, i32 %163)
  %165 = load i32*, i32** %6, align 8
  %166 = call i32 @avio_rl16(i32* %165)
  store i32 %166, i32* %9, align 4
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %168, 768
  %170 = add nsw i32 %169, 1
  %171 = call i32 @av_new_packet(%struct.TYPE_20__* %167, i32 %170)
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* %10, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %148
  %175 = load i32, i32* %10, align 4
  store i32 %175, i32* %3, align 4
  br label %274

176:                                              ; preds = %148
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  store i32 0, i32* %180, align 4
  %181 = load i32, i32* %9, align 4
  %182 = add nsw i32 %181, 1
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 4
  %185 = load i32*, i32** %6, align 8
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 1
  %190 = load i32, i32* %9, align 4
  %191 = call i32 @avio_read(i32* %185, i32* %189, i32 %190)
  store i32 %191, i32* %10, align 4
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* %9, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %176
  %196 = load i32, i32* @EIO, align 4
  %197 = call i32 @AVERROR(i32 %196)
  store i32 %197, i32* %10, align 4
  br label %270

198:                                              ; preds = %176
  %199 = load i32*, i32** %6, align 8
  %200 = call i32 @avio_rl16(i32* %199)
  store i32 %200, i32* %9, align 4
  %201 = load i32, i32* %9, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %242

203:                                              ; preds = %198
  %204 = load i32, i32* %9, align 4
  %205 = icmp ne i32 %204, 768
  br i1 %205, label %206, label %212

206:                                              ; preds = %203
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %208 = load i32, i32* @AV_LOG_ERROR, align 4
  %209 = load i32, i32* %9, align 4
  %210 = call i32 @av_log(%struct.TYPE_21__* %207, i32 %208, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %209)
  %211 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %211, i32* %10, align 4
  br label %270

212:                                              ; preds = %203
  %213 = load i32, i32* @C93_HAS_PALETTE, align 4
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 2
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 0
  %218 = load i32, i32* %217, align 4
  %219 = or i32 %218, %213
  store i32 %219, i32* %217, align 4
  %220 = load i32*, i32** %6, align 8
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 2
  %223 = load i32*, i32** %222, align 8
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %223, i64 %227
  %229 = load i32, i32* %9, align 4
  %230 = call i32 @avio_read(i32* %220, i32* %228, i32 %229)
  store i32 %230, i32* %10, align 4
  %231 = load i32, i32* %10, align 4
  %232 = load i32, i32* %9, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %237

234:                                              ; preds = %212
  %235 = load i32, i32* @EIO, align 4
  %236 = call i32 @AVERROR(i32 %235)
  store i32 %236, i32* %10, align 4
  br label %270

237:                                              ; preds = %212
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = add nsw i32 %240, 768
  store i32 %241, i32* %239, align 4
  br label %242

242:                                              ; preds = %237, %198
  %243 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %243, i32 0, i32 0
  store i32 0, i32* %244, align 8
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 1
  store i32 1, i32* %246, align 8
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %251, label %269

251:                                              ; preds = %242
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 2
  %254 = load i64, i64* %253, align 8
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %269

256:                                              ; preds = %251
  %257 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %258 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 8
  %261 = or i32 %260, %257
  store i32 %261, i32* %259, align 8
  %262 = load i32, i32* @C93_FIRST_FRAME, align 4
  %263 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %263, i32 0, i32 2
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 0
  %267 = load i32, i32* %266, align 4
  %268 = or i32 %267, %262
  store i32 %268, i32* %266, align 4
  br label %269

269:                                              ; preds = %256, %251, %242
  store i32 0, i32* %3, align 4
  br label %274

270:                                              ; preds = %234, %206, %195
  %271 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %272 = call i32 @av_packet_unref(%struct.TYPE_20__* %271)
  %273 = load i32, i32* %10, align 4
  store i32 %273, i32* %3, align 4
  br label %274

274:                                              ; preds = %270, %269, %174, %108, %78, %54
  %275 = load i32, i32* %3, align 4
  ret i32 %275
}

declare dso_local i32 @avio_rl16(i32*) #1

declare dso_local %struct.TYPE_16__* @avformat_new_stream(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i32 @ff_voc_get_packet(%struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @avio_seek(i32*, i32, i32) #1

declare dso_local i32 @avio_rl32(i32*) #1

declare dso_local i32 @av_new_packet(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @avio_read(i32*, i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_21__*, i32, i8*, i32) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
