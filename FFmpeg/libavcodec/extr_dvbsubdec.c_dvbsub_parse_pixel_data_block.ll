; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvbsubdec.c_dvbsub_parse_pixel_data_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvbsubdec.c_dvbsub_parse_pixel_data_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32*, i32, i32, i32, i32, i64 }

@__const.dvbsub_parse_pixel_data_block.map2to4 = private unnamed_addr constant [4 x i32] [i32 0, i32 7, i32 8, i32 15], align 16
@__const.dvbsub_parse_pixel_data_block.map2to8 = private unnamed_addr constant [4 x i32] [i32 0, i32 119, i32 136, i32 255], align 16
@__const.dvbsub_parse_pixel_data_block.map4to8 = private unnamed_addr constant [16 x i32] [i32 0, i32 17, i32 34, i32 51, i32 68, i32 85, i32 102, i32 119, i32 136, i32 153, i32 170, i32 187, i32 204, i32 221, i32 238, i32 255], align 16
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Invalid object location! %d-%d %d-%d %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"4-bit pixel string in %d-bit region!\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"8-bit pixel string in %d-bit region!\0A\00", align 1
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Unknown/unsupported pixel block 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_13__*, i32*, i32, i32, i32)* @dvbsub_parse_pixel_data_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dvbsub_parse_pixel_data_block(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [4 x i32], align 16
  %21 = alloca [4 x i32], align 16
  %22 = alloca [16 x i32], align 16
  %23 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %13, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.TYPE_12__* @get_region(i32* %27, i32 %30)
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %14, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32* %35, i32** %15, align 8
  %36 = bitcast [4 x i32]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %36, i8* align 16 bitcast ([4 x i32]* @__const.dvbsub_parse_pixel_data_block.map2to4 to i8*), i64 16, i1 false)
  %37 = bitcast [4 x i32]* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %37, i8* align 16 bitcast ([4 x i32]* @__const.dvbsub_parse_pixel_data_block.map2to8 to i8*), i64 16, i1 false)
  %38 = bitcast [16 x i32]* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %38, i8* align 16 bitcast ([16 x i32]* @__const.dvbsub_parse_pixel_data_block.map4to8 to i8*), i64 64, i1 false)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %40 = icmp ne %struct.TYPE_12__* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %6
  br label %280

42:                                               ; preds = %6
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %16, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  store i32 1, i32* %47, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %17, align 4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %18, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %18, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %18, align 4
  br label %57

57:                                               ; preds = %276, %42
  %58 = load i32*, i32** %9, align 8
  %59 = load i32*, i32** %15, align 8
  %60 = icmp ult i32* %58, %59
  br i1 %60, label %61, label %277

61:                                               ; preds = %57
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 240
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i32, i32* %17, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp sge i32 %66, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %65, %61
  %72 = load i32, i32* %18, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = icmp sge i32 %72, %75
  br i1 %76, label %77, label %91

77:                                               ; preds = %71, %65
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %79 = load i32, i32* @AV_LOG_ERROR, align 4
  %80 = load i32, i32* %17, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %18, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (%struct.TYPE_14__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_14__* %78, i32 %79, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %83, i32 %84, i32 %87, i32 %89)
  br label %280

91:                                               ; preds = %71
  %92 = load i32*, i32** %9, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %9, align 8
  %94 = load i32, i32* %92, align 4
  switch i32 %94, label %269 [
    i32 16, label %95
    i32 17, label %135
    i32 18, label %179
    i32 32, label %214
    i32 33, label %233
    i32 34, label %248
    i32 240, label %263
  ]

95:                                               ; preds = %91
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 8
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  store i32* %101, i32** %23, align 8
  br label %111

102:                                              ; preds = %95
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 4
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  store i32* %108, i32** %23, align 8
  br label %110

109:                                              ; preds = %102
  store i32* null, i32** %23, align 8
  br label %110

110:                                              ; preds = %109, %107
  br label %111

111:                                              ; preds = %110, %100
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %113 = load i32*, i32** %16, align 8
  %114 = load i32, i32* %18, align 4
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = mul nsw i32 %114, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %113, i64 %119
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %15, align 8
  %125 = load i32*, i32** %9, align 8
  %126 = ptrtoint i32* %124 to i64
  %127 = ptrtoint i32* %125 to i64
  %128 = sub i64 %126, %127
  %129 = sdiv exact i64 %128, 4
  %130 = trunc i64 %129 to i32
  %131 = load i32, i32* %12, align 4
  %132 = load i32*, i32** %23, align 8
  %133 = load i32, i32* %17, align 4
  %134 = call i32 @dvbsub_read_2bit_string(%struct.TYPE_14__* %112, i32* %120, i32 %123, i32** %9, i32 %130, i32 %131, i32* %132, i32 %133)
  store i32 %134, i32* %17, align 4
  br label %276

135:                                              ; preds = %91
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = icmp slt i32 %138, 4
  br i1 %139, label %140, label %147

140:                                              ; preds = %135
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %142 = load i32, i32* @AV_LOG_ERROR, align 4
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (%struct.TYPE_14__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_14__* %141, i32 %142, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %145)
  br label %280

147:                                              ; preds = %135
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 8
  br i1 %151, label %152, label %154

152:                                              ; preds = %147
  %153 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  store i32* %153, i32** %23, align 8
  br label %155

154:                                              ; preds = %147
  store i32* null, i32** %23, align 8
  br label %155

155:                                              ; preds = %154, %152
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %157 = load i32*, i32** %16, align 8
  %158 = load i32, i32* %18, align 4
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = mul nsw i32 %158, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %157, i64 %163
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** %15, align 8
  %169 = load i32*, i32** %9, align 8
  %170 = ptrtoint i32* %168 to i64
  %171 = ptrtoint i32* %169 to i64
  %172 = sub i64 %170, %171
  %173 = sdiv exact i64 %172, 4
  %174 = trunc i64 %173 to i32
  %175 = load i32, i32* %12, align 4
  %176 = load i32*, i32** %23, align 8
  %177 = load i32, i32* %17, align 4
  %178 = call i32 @dvbsub_read_4bit_string(%struct.TYPE_14__* %156, i32* %164, i32 %167, i32** %9, i32 %174, i32 %175, i32* %176, i32 %177)
  store i32 %178, i32* %17, align 4
  br label %276

179:                                              ; preds = %91
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 4
  %183 = icmp slt i32 %182, 8
  br i1 %183, label %184, label %191

184:                                              ; preds = %179
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %186 = load i32, i32* @AV_LOG_ERROR, align 4
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 4
  %190 = call i32 (%struct.TYPE_14__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_14__* %185, i32 %186, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %189)
  br label %280

191:                                              ; preds = %179
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %193 = load i32*, i32** %16, align 8
  %194 = load i32, i32* %18, align 4
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = mul nsw i32 %194, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %193, i64 %199
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load i32*, i32** %15, align 8
  %205 = load i32*, i32** %9, align 8
  %206 = ptrtoint i32* %204 to i64
  %207 = ptrtoint i32* %205 to i64
  %208 = sub i64 %206, %207
  %209 = sdiv exact i64 %208, 4
  %210 = trunc i64 %209 to i32
  %211 = load i32, i32* %12, align 4
  %212 = load i32, i32* %17, align 4
  %213 = call i32 @dvbsub_read_8bit_string(%struct.TYPE_14__* %192, i32* %200, i32 %203, i32** %9, i32 %210, i32 %211, i32* null, i32 %212)
  store i32 %213, i32* %17, align 4
  br label %276

214:                                              ; preds = %91
  %215 = load i32*, i32** %9, align 8
  %216 = load i32, i32* %215, align 4
  %217 = ashr i32 %216, 4
  %218 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  store i32 %217, i32* %218, align 16
  %219 = load i32*, i32** %9, align 8
  %220 = getelementptr inbounds i32, i32* %219, i32 1
  store i32* %220, i32** %9, align 8
  %221 = load i32, i32* %219, align 4
  %222 = and i32 %221, 15
  %223 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 1
  store i32 %222, i32* %223, align 4
  %224 = load i32*, i32** %9, align 8
  %225 = load i32, i32* %224, align 4
  %226 = ashr i32 %225, 4
  %227 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 2
  store i32 %226, i32* %227, align 8
  %228 = load i32*, i32** %9, align 8
  %229 = getelementptr inbounds i32, i32* %228, i32 1
  store i32* %229, i32** %9, align 8
  %230 = load i32, i32* %228, align 4
  %231 = and i32 %230, 15
  %232 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 3
  store i32 %231, i32* %232, align 4
  br label %276

233:                                              ; preds = %91
  store i32 0, i32* %19, align 4
  br label %234

234:                                              ; preds = %244, %233
  %235 = load i32, i32* %19, align 4
  %236 = icmp slt i32 %235, 4
  br i1 %236, label %237, label %247

237:                                              ; preds = %234
  %238 = load i32*, i32** %9, align 8
  %239 = getelementptr inbounds i32, i32* %238, i32 1
  store i32* %239, i32** %9, align 8
  %240 = load i32, i32* %238, align 4
  %241 = load i32, i32* %19, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 %242
  store i32 %240, i32* %243, align 4
  br label %244

244:                                              ; preds = %237
  %245 = load i32, i32* %19, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %19, align 4
  br label %234

247:                                              ; preds = %234
  br label %276

248:                                              ; preds = %91
  store i32 0, i32* %19, align 4
  br label %249

249:                                              ; preds = %259, %248
  %250 = load i32, i32* %19, align 4
  %251 = icmp slt i32 %250, 16
  br i1 %251, label %252, label %262

252:                                              ; preds = %249
  %253 = load i32*, i32** %9, align 8
  %254 = getelementptr inbounds i32, i32* %253, i32 1
  store i32* %254, i32** %9, align 8
  %255 = load i32, i32* %253, align 4
  %256 = load i32, i32* %19, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 %257
  store i32 %255, i32* %258, align 4
  br label %259

259:                                              ; preds = %252
  %260 = load i32, i32* %19, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %19, align 4
  br label %249

262:                                              ; preds = %249
  br label %276

263:                                              ; preds = %91
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  store i32 %266, i32* %17, align 4
  %267 = load i32, i32* %18, align 4
  %268 = add nsw i32 %267, 2
  store i32 %268, i32* %18, align 4
  br label %276

269:                                              ; preds = %91
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %271 = load i32, i32* @AV_LOG_INFO, align 4
  %272 = load i32*, i32** %9, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 -1
  %274 = load i32, i32* %273, align 4
  %275 = call i32 (%struct.TYPE_14__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_14__* %270, i32 %271, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %274)
  br label %276

276:                                              ; preds = %269, %263, %262, %247, %214, %191, %155, %111
  br label %57

277:                                              ; preds = %57
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 5
  store i64 0, i64* %279, align 8
  br label %280

280:                                              ; preds = %277, %184, %140, %77, %41
  ret void
}

declare dso_local %struct.TYPE_12__* @get_region(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*, i32, ...) #1

declare dso_local i32 @dvbsub_read_2bit_string(%struct.TYPE_14__*, i32*, i32, i32**, i32, i32, i32*, i32) #1

declare dso_local i32 @dvbsub_read_4bit_string(%struct.TYPE_14__*, i32*, i32, i32**, i32, i32, i32*, i32) #1

declare dso_local i32 @dvbsub_read_8bit_string(%struct.TYPE_14__*, i32*, i32, i32**, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
