; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_gif.c_gif_write_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_gif.c_gif_write_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i64, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@GIF_TRAILER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GIF_EXTENSION_INTRODUCER = common dso_local global i32 0, align 4
@GIF_APP_EXT_LABEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"NETSCAPE2.0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*)* @gif_write_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gif_write_packet(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %6, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %7, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %8, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %24 = icmp ne %struct.TYPE_15__* %23, null
  br i1 %24, label %42, label %25

25:                                               ; preds = %2
  %26 = call %struct.TYPE_15__* (...) @av_packet_alloc()
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 2
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %28, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %32 = icmp ne %struct.TYPE_15__* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = call i32 @AVERROR(i32 %34)
  store i32 %35, i32* %3, align 4
  br label %329

36:                                               ; preds = %25
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %41 = call i32 @av_packet_ref(%struct.TYPE_15__* %39, %struct.TYPE_15__* %40)
  store i32 %41, i32* %3, align 4
  br label %329

42:                                               ; preds = %2
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @avio_tell(i32* %43)
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %42
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %54, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @GIF_TRAILER, align 4
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %51, %42
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %256, label %72

72:                                               ; preds = %67
  store i32 13, i32* %10, align 4
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %75, 13
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* @EINVAL, align 4
  %79 = call i32 @AVERROR(i32 %78)
  store i32 %79, i32* %3, align 4
  br label %329

80:                                               ; preds = %72
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 10
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 128
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %80
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 10
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 7
  %95 = add nsw i32 %94, 1
  %96 = shl i32 1, %95
  %97 = mul nsw i32 3, %96
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %88, %80
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 2
  %106 = icmp slt i32 %103, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load i32, i32* @EINVAL, align 4
  %109 = call i32 @AVERROR(i32 %108)
  store i32 %109, i32* %3, align 4
  br label %329

110:                                              ; preds = %100
  %111 = load i32*, i32** %7, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = bitcast i32* %114 to i8*
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @avio_write(i32* %111, i8* %115, i32 %116)
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @GIF_EXTENSION_INTRODUCER, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %140

127:                                              ; preds = %110
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 255
  br i1 %136, label %137, label %140

137:                                              ; preds = %127
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, 19
  store i32 %139, i32* %10, align 4
  br label %140

140:                                              ; preds = %137, %127, %110
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = icmp sle i32 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = load i32, i32* @EINVAL, align 4
  %148 = call i32 @AVERROR(i32 %147)
  store i32 %148, i32* %3, align 4
  br label %329

149:                                              ; preds = %140
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp sge i64 %152, 0
  br i1 %153, label %154, label %177

154:                                              ; preds = %149
  %155 = load i32*, i32** %7, align 8
  %156 = load i32, i32* @GIF_EXTENSION_INTRODUCER, align 4
  %157 = call i32 @avio_w8(i32* %155, i32 %156)
  %158 = load i32*, i32** %7, align 8
  %159 = load i32, i32* @GIF_APP_EXT_LABEL, align 4
  %160 = call i32 @avio_w8(i32* %158, i32 %159)
  %161 = load i32*, i32** %7, align 8
  %162 = call i32 @avio_w8(i32* %161, i32 11)
  %163 = load i32*, i32** %7, align 8
  %164 = call i32 @avio_write(i32* %163, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 11)
  %165 = load i32*, i32** %7, align 8
  %166 = call i32 @avio_w8(i32* %165, i32 3)
  %167 = load i32*, i32** %7, align 8
  %168 = call i32 @avio_w8(i32* %167, i32 1)
  %169 = load i32*, i32** %7, align 8
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = trunc i64 %172 to i32
  %174 = call i32 @avio_wl16(i32* %169, i32 %173)
  %175 = load i32*, i32** %7, align 8
  %176 = call i32 @avio_w8(i32* %175, i32 0)
  br label %177

177:                                              ; preds = %154, %149
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %10, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* %10, align 4
  %189 = sub nsw i32 %187, %188
  %190 = call i32 @gif_parse_packet(%struct.TYPE_16__* %178, i32* %184, i32 %189)
  store i32 %190, i32* %9, align 4
  %191 = load i32, i32* %9, align 4
  %192 = icmp sgt i32 %191, 0
  br i1 %192, label %193, label %240

193:                                              ; preds = %177
  %194 = load i32, i32* %9, align 4
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* %10, align 4
  %199 = sub nsw i32 %197, %198
  %200 = sub nsw i32 %199, 2
  %201 = icmp slt i32 %194, %200
  br i1 %201, label %202, label %240

202:                                              ; preds = %193
  %203 = load i32*, i32** %7, align 8
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %10, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = bitcast i32* %209 to i8*
  %211 = load i32, i32* %9, align 4
  %212 = call i32 @avio_write(i32* %203, i8* %210, i32 %211)
  %213 = load i32*, i32** %7, align 8
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %217 = call i32 @gif_get_delay(%struct.TYPE_14__* %214, %struct.TYPE_15__* %215, %struct.TYPE_15__* %216)
  %218 = call i32 @avio_wl16(i32* %213, i32 %217)
  %219 = load i32*, i32** %7, align 8
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %10, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %9, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = getelementptr inbounds i32, i32* %228, i64 2
  %230 = bitcast i32* %229 to i8*
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* %10, align 4
  %235 = sub nsw i32 %233, %234
  %236 = load i32, i32* %9, align 4
  %237 = sub nsw i32 %235, %236
  %238 = sub nsw i32 %237, 2
  %239 = call i32 @avio_write(i32* %219, i8* %230, i32 %238)
  br label %255

240:                                              ; preds = %193, %177
  %241 = load i32*, i32** %7, align 8
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 1
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %10, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = bitcast i32* %247 to i8*
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* %10, align 4
  %253 = sub nsw i32 %251, %252
  %254 = call i32 @avio_write(i32* %241, i8* %248, i32 %253)
  br label %255

255:                                              ; preds = %240, %202
  br label %315

256:                                              ; preds = %67
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 1
  %260 = load i32*, i32** %259, align 8
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @gif_parse_packet(%struct.TYPE_16__* %257, i32* %260, i32 %263)
  store i32 %264, i32* %11, align 4
  %265 = load i32, i32* %11, align 4
  %266 = icmp sgt i32 %265, 0
  br i1 %266, label %267, label %304

267:                                              ; preds = %256
  %268 = load i32, i32* %11, align 4
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = sub nsw i32 %271, 2
  %273 = icmp slt i32 %268, %272
  br i1 %273, label %274, label %304

274:                                              ; preds = %267
  %275 = load i32*, i32** %7, align 8
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 1
  %278 = load i32*, i32** %277, align 8
  %279 = bitcast i32* %278 to i8*
  %280 = load i32, i32* %11, align 4
  %281 = call i32 @avio_write(i32* %275, i8* %279, i32 %280)
  %282 = load i32*, i32** %7, align 8
  %283 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %284 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %285 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %286 = call i32 @gif_get_delay(%struct.TYPE_14__* %283, %struct.TYPE_15__* %284, %struct.TYPE_15__* %285)
  %287 = call i32 @avio_wl16(i32* %282, i32 %286)
  %288 = load i32*, i32** %7, align 8
  %289 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i32 0, i32 1
  %291 = load i32*, i32** %290, align 8
  %292 = load i32, i32* %11, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = getelementptr inbounds i32, i32* %294, i64 2
  %296 = bitcast i32* %295 to i8*
  %297 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* %11, align 4
  %301 = sub nsw i32 %299, %300
  %302 = sub nsw i32 %301, 2
  %303 = call i32 @avio_write(i32* %288, i8* %296, i32 %302)
  br label %314

304:                                              ; preds = %267, %256
  %305 = load i32*, i32** %7, align 8
  %306 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %307 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %306, i32 0, i32 1
  %308 = load i32*, i32** %307, align 8
  %309 = bitcast i32* %308 to i8*
  %310 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %311 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = call i32 @avio_write(i32* %305, i8* %309, i32 %312)
  br label %314

314:                                              ; preds = %304, %274
  br label %315

315:                                              ; preds = %314, %255
  %316 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %316, i32 0, i32 2
  %318 = load %struct.TYPE_15__*, %struct.TYPE_15__** %317, align 8
  %319 = call i32 @av_packet_unref(%struct.TYPE_15__* %318)
  %320 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %321 = icmp ne %struct.TYPE_15__* %320, null
  br i1 %321, label %322, label %328

322:                                              ; preds = %315
  %323 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %323, i32 0, i32 2
  %325 = load %struct.TYPE_15__*, %struct.TYPE_15__** %324, align 8
  %326 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %327 = call i32 @av_packet_ref(%struct.TYPE_15__* %325, %struct.TYPE_15__* %326)
  store i32 %327, i32* %3, align 4
  br label %329

328:                                              ; preds = %315
  store i32 0, i32* %3, align 4
  br label %329

329:                                              ; preds = %328, %322, %146, %107, %77, %36, %33
  %330 = load i32, i32* %3, align 4
  ret i32 %330
}

declare dso_local %struct.TYPE_15__* @av_packet_alloc(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_packet_ref(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @avio_write(i32*, i8*, i32) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @avio_wl16(i32*, i32) #1

declare dso_local i32 @gif_parse_packet(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @gif_get_delay(%struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
