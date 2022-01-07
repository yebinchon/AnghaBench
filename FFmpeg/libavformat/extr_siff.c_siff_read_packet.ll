; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_siff.c_siff_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_siff.c_siff_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@VB_HAS_GMC = common dso_local global i32 0, align 4
@VB_HAS_AUDIO = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)* @siff_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siff_read_packet(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %6, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 9
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %253

17:                                               ; preds = %2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %26, i32* %3, align 4
  br label %280

27:                                               ; preds = %17
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %101

32:                                               ; preds = %27
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @avio_rl32(i32 %35)
  %37 = getelementptr i8, i8* %36, i64 -4
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @avio_rl16(i32 %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @VB_HAS_GMC, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 4, i32 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %32
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @avio_read(i32 %64, i32 %67, i32 %70)
  br label %72

72:                                               ; preds = %61, %32
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @VB_HAS_AUDIO, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i8* @avio_rl32(i32 %82)
  br label %85

84:                                               ; preds = %72
  br label %85

85:                                               ; preds = %84, %79
  %86 = phi i8* [ %83, %79 ], [ null, %84 ]
  %87 = ptrtoint i8* %86 to i32
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 7
  store i32 %87, i32* %89, align 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @VB_HAS_AUDIO, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  br label %101

101:                                              ; preds = %85, %27
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %203, label %106

106:                                              ; preds = %101
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = zext i32 %109 to i64
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 7
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 2, %114
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %115, %119
  %121 = icmp slt i64 %110, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %106
  %123 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %123, i32* %3, align 4
  br label %280

124:                                              ; preds = %106
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 4
  %131 = sub i32 %127, %130
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = sub i32 %131, %134
  %136 = sub i32 %135, 2
  store i32 %136, i32* %7, align 4
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @ffio_limit(i32 %139, i32 %140)
  store i32 %141, i32* %7, align 4
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %143 = load i32, i32* %7, align 4
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = add i32 %143, %146
  %148 = add i32 %147, 2
  %149 = call i64 @av_new_packet(%struct.TYPE_10__* %142, i32 %148)
  %150 = icmp slt i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %124
  %152 = load i32, i32* @ENOMEM, align 4
  %153 = call i32 @AVERROR(i32 %152)
  store i32 %153, i32* %3, align 4
  br label %280

154:                                              ; preds = %124
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @AV_WL16(i32 %157, i32 %160)
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %154
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 2
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 6
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @memcpy(i32 %170, i32 %173, i32 %176)
  br label %178

178:                                              ; preds = %166, %154
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, 2
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %185, %188
  %190 = load i32, i32* %7, align 4
  %191 = call i32 @avio_read(i32 %181, i32 %189, i32 %190)
  %192 = load i32, i32* %7, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %198

194:                                              ; preds = %178
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %196 = call i32 @av_packet_unref(%struct.TYPE_10__* %195)
  %197 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %197, i32* %3, align 4
  br label %280

198:                                              ; preds = %178
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 1
  store i32 0, i32* %200, align 4
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 2
  store i32 -1, i32* %202, align 8
  br label %226

203:                                              ; preds = %101
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 7
  %210 = load i32, i32* %209, align 4
  %211 = sub nsw i32 %210, 4
  %212 = call i32 @av_get_packet(i32 %206, %struct.TYPE_10__* %207, i32 %211)
  store i32 %212, i32* %8, align 4
  %213 = load i32, i32* %8, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %203
  %216 = load i32, i32* @EIO, align 4
  %217 = call i32 @AVERROR(i32 %216)
  store i32 %217, i32* %3, align 4
  br label %280

218:                                              ; preds = %203
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 1
  store i32 1, i32* %220, align 4
  %221 = load i32, i32* %8, align 4
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 2
  store i32 %221, i32* %223, align 4
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 2
  store i32 0, i32* %225, align 8
  br label %226

226:                                              ; preds = %218, %198
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %226
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %242

236:                                              ; preds = %231, %226
  %237 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 4
  %241 = or i32 %240, %237
  store i32 %241, i32* %239, align 4
  br label %242

242:                                              ; preds = %236, %231
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = icmp eq i32 %245, -1
  br i1 %246, label %247, label %252

247:                                              ; preds = %242
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = add nsw i64 %250, 1
  store i64 %251, i64* %249, align 8
  br label %252

252:                                              ; preds = %247, %242
  br label %276

253:                                              ; preds = %2
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 8
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @av_get_packet(i32 %256, %struct.TYPE_10__* %257, i32 %260)
  store i32 %261, i32* %9, align 4
  %262 = load i32, i32* %9, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %266, label %264

264:                                              ; preds = %253
  %265 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %265, i32* %3, align 4
  br label %280

266:                                              ; preds = %253
  %267 = load i32, i32* %9, align 4
  %268 = icmp sle i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %266
  %270 = load i32, i32* @EIO, align 4
  %271 = call i32 @AVERROR(i32 %270)
  store i32 %271, i32* %3, align 4
  br label %280

272:                                              ; preds = %266
  %273 = load i32, i32* %9, align 4
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 2
  store i32 %273, i32* %275, align 4
  br label %276

276:                                              ; preds = %272, %252
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  store i32 %279, i32* %3, align 4
  br label %280

280:                                              ; preds = %276, %269, %264, %215, %194, %151, %122, %25
  %281 = load i32, i32* %3, align 4
  ret i32 %281
}

declare dso_local i8* @avio_rl32(i32) #1

declare dso_local i32 @avio_rl16(i32) #1

declare dso_local i32 @avio_read(i32, i32, i32) #1

declare dso_local i32 @ffio_limit(i32, i32) #1

declare dso_local i64 @av_new_packet(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @AV_WL16(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_10__*) #1

declare dso_local i32 @av_get_packet(i32, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
