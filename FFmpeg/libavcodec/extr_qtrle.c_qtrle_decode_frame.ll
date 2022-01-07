; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qtrle.c_qtrle_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qtrle.c_qtrle_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__*, i32*, %struct.TYPE_22__*, i32 }
%struct.TYPE_19__ = type { i32*, i32, i32** }
%struct.TYPE_21__ = type { i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unsupported colorspace: %d bits/sample?\0A\00", align 1
@AV_PKT_DATA_PALETTE = common dso_local global i32 0, align 4
@AVPALETTE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Palette size %d is wrong\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i8*, i32*, %struct.TYPE_21__*)* @qtrle_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtrle_decode_frame(%struct.TYPE_22__* %0, i8* %1, i32* %2, %struct.TYPE_21__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %9, align 8
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  store %struct.TYPE_20__* %23, %struct.TYPE_20__** %10, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @bytestream2_init(i32* %25, i32 %28, i32 %31)
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %35, 8
  br i1 %36, label %37, label %38

37:                                               ; preds = %4
  store i32 1, i32* %16, align 4
  br label %214

38:                                               ; preds = %4
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 3
  %41 = call i32 @bytestream2_get_be32(i32* %40)
  %42 = and i32 %41, 1073741823
  store i32 %42, i32* %18, align 4
  %43 = load i32, i32* %18, align 4
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %43, %46
  %48 = load i32, i32* %18, align 4
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = mul nsw i32 %48, %52
  %54 = sdiv i32 %53, 100
  %55 = icmp sgt i32 %47, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %38
  %57 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %57, i32* %5, align 4
  br label %253

58:                                               ; preds = %38
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 3
  %61 = call i32 @bytestream2_get_be16(i32* %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = and i32 %62, 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %95

65:                                               ; preds = %58
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %68, 14
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 1, i32* %16, align 4
  br label %214

71:                                               ; preds = %65
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 3
  %74 = call i32 @bytestream2_get_be16(i32* %73)
  store i32 %74, i32* %12, align 4
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 3
  %77 = call i32 @bytestream2_skip(i32* %76, i32 2)
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 3
  %80 = call i32 @bytestream2_get_be16(i32* %79)
  store i32 %80, i32* %13, align 4
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 3
  %83 = call i32 @bytestream2_skip(i32* %82, i32 2)
  %84 = load i32, i32* %13, align 4
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sub nsw i32 %89, %90
  %92 = icmp sgt i32 %84, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %71
  store i32 1, i32* %16, align 4
  br label %214

94:                                               ; preds = %71
  br label %101

95:                                               ; preds = %58
  store i32 0, i32* %12, align 4
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %13, align 4
  br label %101

101:                                              ; preds = %95, %94
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %104, align 8
  %106 = call i32 @ff_reget_buffer(%struct.TYPE_22__* %102, %struct.TYPE_19__* %105, i32 0)
  store i32 %106, i32* %17, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = load i32, i32* %17, align 4
  store i32 %109, i32* %5, align 4
  br label %253

110:                                              ; preds = %101
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %12, align 4
  %119 = mul nsw i32 %117, %118
  store i32 %119, i32* %14, align 4
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  switch i32 %122, label %158 [
    i32 1, label %123
    i32 33, label %123
    i32 2, label %128
    i32 34, label %128
    i32 4, label %133
    i32 36, label %133
    i32 8, label %138
    i32 40, label %138
    i32 16, label %143
    i32 24, label %148
    i32 32, label %153
  ]

123:                                              ; preds = %110, %110
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @qtrle_decode_1bpp(%struct.TYPE_20__* %124, i32 %125, i32 %126)
  store i32 1, i32* %15, align 4
  br label %167

128:                                              ; preds = %110, %110
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @qtrle_decode_2n4bpp(%struct.TYPE_20__* %129, i32 %130, i32 %131, i32 2)
  store i32 1, i32* %15, align 4
  br label %167

133:                                              ; preds = %110, %110
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* %13, align 4
  %137 = call i32 @qtrle_decode_2n4bpp(%struct.TYPE_20__* %134, i32 %135, i32 %136, i32 4)
  store i32 1, i32* %15, align 4
  br label %167

138:                                              ; preds = %110, %110
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* %13, align 4
  %142 = call i32 @qtrle_decode_8bpp(%struct.TYPE_20__* %139, i32 %140, i32 %141)
  store i32 1, i32* %15, align 4
  br label %167

143:                                              ; preds = %110
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* %13, align 4
  %147 = call i32 @qtrle_decode_16bpp(%struct.TYPE_20__* %144, i32 %145, i32 %146)
  br label %167

148:                                              ; preds = %110
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* %13, align 4
  %152 = call i32 @qtrle_decode_24bpp(%struct.TYPE_20__* %149, i32 %150, i32 %151)
  br label %167

153:                                              ; preds = %110
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* %13, align 4
  %157 = call i32 @qtrle_decode_32bpp(%struct.TYPE_20__* %154, i32 %155, i32 %156)
  br label %167

158:                                              ; preds = %110
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %160, align 8
  %162 = load i32, i32* @AV_LOG_ERROR, align 4
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @av_log(%struct.TYPE_22__* %161, i32 %162, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %165)
  br label %167

167:                                              ; preds = %158, %153, %148, %143, %138, %133, %128, %123
  %168 = load i32, i32* %15, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %213

170:                                              ; preds = %167
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %172 = load i32, i32* @AV_PKT_DATA_PALETTE, align 4
  %173 = call i32* @av_packet_get_side_data(%struct.TYPE_21__* %171, i32 %172, i32* %19)
  store i32* %173, i32** %20, align 8
  %174 = load i32*, i32** %20, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %191

176:                                              ; preds = %170
  %177 = load i32, i32* %19, align 4
  %178 = load i32, i32* @AVPALETTE_SIZE, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %191

180:                                              ; preds = %176
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 1
  store i32 1, i32* %184, align 8
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = load i32*, i32** %20, align 8
  %189 = load i32, i32* @AVPALETTE_SIZE, align 4
  %190 = call i32 @memcpy(i32* %187, i32* %188, i32 %189)
  br label %200

191:                                              ; preds = %176, %170
  %192 = load i32*, i32** %20, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %199

194:                                              ; preds = %191
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %196 = load i32, i32* @AV_LOG_ERROR, align 4
  %197 = load i32, i32* %19, align 4
  %198 = call i32 @av_log(%struct.TYPE_22__* %195, i32 %196, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %197)
  br label %199

199:                                              ; preds = %194, %191
  br label %200

200:                                              ; preds = %199, %180
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 2
  %205 = load i32**, i32*** %204, align 8
  %206 = getelementptr inbounds i32*, i32** %205, i64 1
  %207 = load i32*, i32** %206, align 8
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* @AVPALETTE_SIZE, align 4
  %212 = call i32 @memcpy(i32* %207, i32* %210, i32 %211)
  br label %213

213:                                              ; preds = %200, %167
  br label %214

214:                                              ; preds = %213, %93, %70, %37
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 2
  %219 = load i32**, i32*** %218, align 8
  %220 = getelementptr inbounds i32*, i32** %219, i64 0
  %221 = load i32*, i32** %220, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %225, label %223

223:                                              ; preds = %214
  %224 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %224, i32* %5, align 4
  br label %253

225:                                              ; preds = %214
  %226 = load i32, i32* %16, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %239

228:                                              ; preds = %225
  %229 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %231, align 8
  %233 = call i32 @ff_decode_frame_props(%struct.TYPE_22__* %229, %struct.TYPE_19__* %232)
  store i32 %233, i32* %17, align 4
  %234 = load i32, i32* %17, align 4
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %228
  %237 = load i32, i32* %17, align 4
  store i32 %237, i32* %5, align 4
  br label %253

238:                                              ; preds = %228
  br label %239

239:                                              ; preds = %238, %225
  %240 = load i8*, i8** %7, align 8
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_19__*, %struct.TYPE_19__** %242, align 8
  %244 = call i32 @av_frame_ref(i8* %240, %struct.TYPE_19__* %243)
  store i32 %244, i32* %17, align 4
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %239
  %247 = load i32, i32* %17, align 4
  store i32 %247, i32* %5, align 4
  br label %253

248:                                              ; preds = %239
  %249 = load i32*, i32** %8, align 8
  store i32 1, i32* %249, align 4
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  store i32 %252, i32* %5, align 4
  br label %253

253:                                              ; preds = %248, %246, %236, %223, %108, %56
  %254 = load i32, i32* %5, align 4
  ret i32 %254
}

declare dso_local i32 @bytestream2_init(i32*, i32, i32) #1

declare dso_local i32 @bytestream2_get_be32(i32*) #1

declare dso_local i32 @bytestream2_get_be16(i32*) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @ff_reget_buffer(%struct.TYPE_22__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @qtrle_decode_1bpp(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @qtrle_decode_2n4bpp(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32 @qtrle_decode_8bpp(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @qtrle_decode_16bpp(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @qtrle_decode_24bpp(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @qtrle_decode_32bpp(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_22__*, i32, i8*, i32) #1

declare dso_local i32* @av_packet_get_side_data(%struct.TYPE_21__*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ff_decode_frame_props(%struct.TYPE_22__*, %struct.TYPE_19__*) #1

declare dso_local i32 @av_frame_ref(i8*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
