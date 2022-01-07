; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_vividas.c_viv_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_vividas.c_viv_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_21__**, %struct.TYPE_20__* }
%struct.TYPE_21__ = type { %struct.TYPE_16__*, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i64, i32, i64, i64, i32, %struct.TYPE_19__*, i64, %struct.TYPE_18__*, %struct.TYPE_17__*, i32* }
%struct.TYPE_19__ = type { i32, i64 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_22__ = type { i32, i32, i32*, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@MAX_AUDIO_SUBPACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, %struct.TYPE_22__*)* @viv_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viv_read_packet(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  store %struct.TYPE_20__* %19, %struct.TYPE_20__** %6, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 11
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @EIO, align 4
  %26 = call i32 @AVERROR(i32 %25)
  store i32 %26, i32* %3, align 4
  br label %430

27:                                               ; preds = %2
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 11
  %30 = load i32*, i32** %29, align 8
  %31 = call i64 @avio_feof(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %34, i32* %3, align 4
  br label %430

35:                                               ; preds = %27
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %158

43:                                               ; preds = %35
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 9
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %45, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 9
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %56, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %54, %64
  store i32 %65, i32* %11, align 4
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 11
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %7, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @av_get_packet(i32* %69, %struct.TYPE_22__* %70, i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %43
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  br label %430

77:                                               ; preds = %43
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 8
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 7
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %82, align 8
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %80, %89
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %90
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %92, align 4
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 0
  store i32 1, i32* %98, align 8
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %100, align 8
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %101, i64 %105
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %106, align 8
  store %struct.TYPE_21__* %107, %struct.TYPE_21__** %10, align 8
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @av_rescale(i32 %110, i32 %114, i32 %118)
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = sdiv i32 %119, %124
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 9
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %129, align 8
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = sdiv i32 %137, 2
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = sdiv i32 %138, %143
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, %144
  store i32 %148, i32* %146, align 8
  %149 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 8
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 8
  store i32 0, i32* %3, align 4
  br label %430

158:                                              ; preds = %35
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 4
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 5
  %164 = load i64, i64* %163, align 8
  %165 = icmp uge i64 %161, %164
  br i1 %165, label %166, label %189

166:                                              ; preds = %158
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = add i64 %169, 1
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 6
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = icmp uge i64 %170, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %166
  %177 = load i32, i32* @EIO, align 4
  %178 = call i32 @AVERROR(i32 %177)
  store i32 %178, i32* %3, align 4
  br label %430

179:                                              ; preds = %166
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %181, align 8
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %186 = call i32 @load_sb_block(%struct.TYPE_23__* %184, %struct.TYPE_20__* %185, i32 0)
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 4
  store i64 0, i64* %188, align 8
  br label %189

189:                                              ; preds = %179, %158
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 11
  %192 = load i32*, i32** %191, align 8
  store i32* %192, i32** %7, align 8
  %193 = load i32*, i32** %7, align 8
  %194 = icmp ne i32* %193, null
  br i1 %194, label %198, label %195

195:                                              ; preds = %189
  %196 = load i32, i32* @EIO, align 4
  %197 = call i32 @AVERROR(i32 %196)
  store i32 %197, i32* %3, align 4
  br label %430

198:                                              ; preds = %189
  %199 = load i32*, i32** %7, align 8
  %200 = call i64 @avio_tell(i32* %199)
  store i64 %200, i64* %8, align 8
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 10
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %202, align 8
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 4
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* %8, align 8
  %211 = add nsw i64 %210, %209
  store i64 %211, i64* %8, align 8
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 10
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %213, align 8
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 4
  %217 = load i64, i64* %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %353

222:                                              ; preds = %198
  %223 = load i32*, i32** %7, align 8
  %224 = call i32 @ffio_read_varlen(i32* %223)
  store i32 %224, i32* %12, align 4
  %225 = load i32*, i32** %7, align 8
  %226 = call i32 @ffio_read_varlen(i32* %225)
  %227 = load i32, i32* %12, align 4
  %228 = load i32, i32* @INT_MAX, align 4
  %229 = icmp sgt i32 %227, %228
  br i1 %229, label %230, label %232

230:                                              ; preds = %222
  %231 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %231, i32* %3, align 4
  br label %430

232:                                              ; preds = %222
  %233 = load i32*, i32** %7, align 8
  %234 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %235 = load i32, i32* %12, align 4
  %236 = call i32 @av_get_packet(i32* %233, %struct.TYPE_22__* %234, i32 %235)
  store i32 %236, i32* %9, align 4
  %237 = load i32, i32* %9, align 4
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %232
  %240 = load i32, i32* %9, align 4
  store i32 %240, i32* %3, align 4
  br label %430

241:                                              ; preds = %232
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 8
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %245, i32 0, i32 7
  %247 = load %struct.TYPE_19__*, %struct.TYPE_19__** %246, align 8
  %248 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i32 0, i32 2
  %250 = load i64, i64* %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %247, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = add nsw i64 %244, %253
  %255 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 4
  %258 = sext i32 %257 to i64
  %259 = add nsw i64 %258, %254
  %260 = trunc i64 %259 to i32
  store i32 %260, i32* %256, align 4
  %261 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %261, i32 0, i32 7
  %263 = load %struct.TYPE_19__*, %struct.TYPE_19__** %262, align 8
  %264 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %264, i32 0, i32 2
  %266 = load i64, i64* %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = sext i32 %269 to i64
  %271 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %271, i32 0, i32 4
  %273 = load i64, i64* %272, align 8
  %274 = add i64 %270, %273
  %275 = trunc i64 %274 to i32
  %276 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %276, i32 0, i32 1
  store i32 %275, i32* %277, align 4
  %278 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %278, i32 0, i32 2
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 0
  %282 = load i32, i32* %281, align 4
  %283 = and i32 %282, 128
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %241
  br label %288

286:                                              ; preds = %241
  %287 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  br label %288

288:                                              ; preds = %286, %285
  %289 = phi i32 [ 0, %285 ], [ %287, %286 ]
  %290 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 8
  %293 = or i32 %292, %289
  store i32 %293, i32* %291, align 8
  %294 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %294, i32 0, i32 0
  store i32 0, i32* %295, align 8
  store i32 0, i32* %13, align 4
  br label %296

296:                                              ; preds = %333, %288
  %297 = load i32, i32* %13, align 4
  %298 = load i32, i32* @MAX_AUDIO_SUBPACKETS, align 4
  %299 = sub nsw i32 %298, 1
  %300 = icmp slt i32 %297, %299
  br i1 %300, label %301, label %336

301:                                              ; preds = %296
  %302 = load i32*, i32** %7, align 8
  %303 = call i32 @ffio_read_varlen(i32* %302)
  store i32 %303, i32* %14, align 4
  %304 = load i32*, i32** %7, align 8
  %305 = call i32 @ffio_read_varlen(i32* %304)
  store i32 %305, i32* %15, align 4
  %306 = load i32, i32* %13, align 4
  %307 = icmp sgt i32 %306, 0
  br i1 %307, label %308, label %312

308:                                              ; preds = %301
  %309 = load i32, i32* %14, align 4
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %308
  br label %336

312:                                              ; preds = %308, %301
  %313 = load i32, i32* %13, align 4
  %314 = add nsw i32 %313, 1
  %315 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %315, i32 0, i32 1
  store i32 %314, i32* %316, align 4
  %317 = load i32, i32* %14, align 4
  %318 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %319 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %318, i32 0, i32 9
  %320 = load %struct.TYPE_18__*, %struct.TYPE_18__** %319, align 8
  %321 = load i32, i32* %13, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %320, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %323, i32 0, i32 0
  store i32 %317, i32* %324, align 4
  %325 = load i32, i32* %15, align 4
  %326 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %327 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %326, i32 0, i32 9
  %328 = load %struct.TYPE_18__*, %struct.TYPE_18__** %327, align 8
  %329 = load i32, i32* %13, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %328, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %331, i32 0, i32 1
  store i32 %325, i32* %332, align 4
  br label %333

333:                                              ; preds = %312
  %334 = load i32, i32* %13, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %13, align 4
  br label %296

336:                                              ; preds = %311, %296
  %337 = load i64, i64* %8, align 8
  %338 = load i32*, i32** %7, align 8
  %339 = call i64 @avio_tell(i32* %338)
  %340 = sub nsw i64 %337, %339
  %341 = trunc i64 %340 to i32
  %342 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %343 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %342, i32 0, i32 9
  %344 = load %struct.TYPE_18__*, %struct.TYPE_18__** %343, align 8
  %345 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %346 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %344, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %349, i32 0, i32 0
  store i32 %341, i32* %350, align 4
  %351 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %352 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %351, i32 0, i32 0
  store i32 0, i32* %352, align 8
  br label %425

353:                                              ; preds = %198
  %354 = load i32*, i32** %7, align 8
  %355 = call i32 @ffio_read_varlen(i32* %354)
  store i32 %355, i32* %16, align 4
  %356 = load i32, i32* %16, align 4
  %357 = load i32, i32* @INT_MAX, align 4
  %358 = icmp sgt i32 %356, %357
  br i1 %358, label %359, label %361

359:                                              ; preds = %353
  %360 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %360, i32* %3, align 4
  br label %430

361:                                              ; preds = %353
  %362 = load i32*, i32** %7, align 8
  %363 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %364 = load i32, i32* %16, align 4
  %365 = call i32 @av_get_packet(i32* %362, %struct.TYPE_22__* %363, i32 %364)
  store i32 %365, i32* %9, align 4
  %366 = load i32, i32* %9, align 4
  %367 = icmp slt i32 %366, 0
  br i1 %367, label %368, label %370

368:                                              ; preds = %361
  %369 = load i32, i32* %9, align 4
  store i32 %369, i32* %3, align 4
  br label %430

370:                                              ; preds = %361
  %371 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %372 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %371, i32 0, i32 8
  %373 = load i64, i64* %372, align 8
  %374 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %375 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %374, i32 0, i32 7
  %376 = load %struct.TYPE_19__*, %struct.TYPE_19__** %375, align 8
  %377 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %378 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %377, i32 0, i32 2
  %379 = load i64, i64* %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %376, i64 %379
  %381 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %380, i32 0, i32 1
  %382 = load i64, i64* %381, align 8
  %383 = add nsw i64 %373, %382
  %384 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %385 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %384, i32 0, i32 4
  %386 = load i32, i32* %385, align 4
  %387 = sext i32 %386 to i64
  %388 = add nsw i64 %387, %383
  %389 = trunc i64 %388 to i32
  store i32 %389, i32* %385, align 4
  %390 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %391 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %390, i32 0, i32 7
  %392 = load %struct.TYPE_19__*, %struct.TYPE_19__** %391, align 8
  %393 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %394 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %393, i32 0, i32 2
  %395 = load i64, i64* %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %392, i64 %395
  %397 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 8
  %399 = sext i32 %398 to i64
  %400 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %401 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %400, i32 0, i32 4
  %402 = load i64, i64* %401, align 8
  %403 = add i64 %399, %402
  %404 = trunc i64 %403 to i32
  %405 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %406 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %405, i32 0, i32 1
  store i32 %404, i32* %406, align 4
  %407 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %408 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %407, i32 0, i32 2
  %409 = load i32*, i32** %408, align 8
  %410 = getelementptr inbounds i32, i32* %409, i64 0
  %411 = load i32, i32* %410, align 4
  %412 = and i32 %411, 128
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %415

414:                                              ; preds = %370
  br label %417

415:                                              ; preds = %370
  %416 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  br label %417

417:                                              ; preds = %415, %414
  %418 = phi i32 [ 0, %414 ], [ %416, %415 ]
  %419 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %420 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %419, i32 0, i32 3
  %421 = load i32, i32* %420, align 8
  %422 = or i32 %421, %418
  store i32 %422, i32* %420, align 8
  %423 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %424 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %423, i32 0, i32 0
  store i32 0, i32* %424, align 8
  br label %425

425:                                              ; preds = %417, %336
  %426 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %427 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %426, i32 0, i32 4
  %428 = load i64, i64* %427, align 8
  %429 = add i64 %428, 1
  store i64 %429, i64* %427, align 8
  store i32 0, i32* %3, align 4
  br label %430

430:                                              ; preds = %425, %368, %359, %239, %230, %195, %176, %77, %75, %33, %24
  %431 = load i32, i32* %3, align 4
  ret i32 %431
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @avio_feof(i32*) #1

declare dso_local i32 @av_get_packet(i32*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @av_rescale(i32, i32, i32) #1

declare dso_local i32 @load_sb_block(%struct.TYPE_23__*, %struct.TYPE_20__*, i32) #1

declare dso_local i64 @avio_tell(i32*) #1

declare dso_local i32 @ffio_read_varlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
