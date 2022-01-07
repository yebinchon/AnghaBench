; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_utils.c_sws_setColorspaceDetails.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_utils.c_sws_setColorspaceDetails.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SwsContext = type { i32, i32, i32, i32, i32, i32*, i32*, i32, i64, i32, i32, i32, i32, i32, %struct.SwsContext**, i32, i32, i32, i32, i32, i32, i8*, i8* }

@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"YUV color matrix differs for YUV->YUV, using intermediate RGB to convert\0A\00", align 1
@AV_PIX_FMT_BGRA64 = common dso_local global i32 0, align 4
@AV_PIX_FMT_BGR48 = common dso_local global i32 0, align 4
@AV_PIX_FMT_BGRA = common dso_local global i32 0, align 4
@AV_PIX_FMT_BGR24 = common dso_local global i32 0, align 4
@ARCH_PPC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sws_setColorspaceDetails(%struct.SwsContext* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.SwsContext*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.SwsContext* %0, %struct.SwsContext** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %20, align 4
  %29 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %30 = call i32 @handle_formats(%struct.SwsContext* %29)
  %31 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %32 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %31, i32 0, i32 13
  %33 = load i32, i32* %32, align 8
  %34 = call i32* @av_pix_fmt_desc_get(i32 %33)
  store i32* %34, i32** %18, align 8
  %35 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %36 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %35, i32 0, i32 18
  %37 = load i32, i32* %36, align 4
  %38 = call i32* @av_pix_fmt_desc_get(i32 %37)
  store i32* %38, i32** %19, align 8
  %39 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %40 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %39, i32 0, i32 13
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @isYUV(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %8
  %45 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %46 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %45, i32 0, i32 13
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @isGray(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  store i32 0, i32* %14, align 4
  br label %51

51:                                               ; preds = %50, %44, %8
  %52 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %53 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %52, i32 0, i32 18
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @isYUV(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %51
  %58 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %59 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %58, i32 0, i32 18
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @isGray(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  store i32 0, i32* %12, align 4
  br label %64

64:                                               ; preds = %63, %57, %51
  %65 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %66 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %108, label %70

70:                                               ; preds = %64
  %71 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %72 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %108, label %76

76:                                               ; preds = %70
  %77 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %78 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %108, label %82

82:                                               ; preds = %76
  %83 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %84 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %16, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %108, label %88

88:                                               ; preds = %82
  %89 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %90 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %17, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %108, label %94

94:                                               ; preds = %88
  %95 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %96 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %95, i32 0, i32 5
  %97 = load i32*, i32** %96, align 8
  %98 = load i32*, i32** %11, align 8
  %99 = call i64 @memcmp(i32* %97, i32* %98, i32 16)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %94
  %102 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %103 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %102, i32 0, i32 6
  %104 = load i32*, i32** %103, align 8
  %105 = load i32*, i32** %13, align 8
  %106 = call i64 @memcmp(i32* %104, i32* %105, i32 16)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %101, %94, %88, %82, %76, %70, %64
  store i32 1, i32* %20, align 4
  br label %109

109:                                              ; preds = %108, %101
  %110 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %111 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %110, i32 0, i32 5
  %112 = load i32*, i32** %111, align 8
  %113 = load i32*, i32** %11, align 8
  %114 = call i32 @memmove(i32* %112, i32* %113, i32 16)
  %115 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %116 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %115, i32 0, i32 6
  %117 = load i32*, i32** %116, align 8
  %118 = load i32*, i32** %13, align 8
  %119 = call i32 @memmove(i32* %117, i32* %118, i32 16)
  %120 = load i32, i32* %15, align 4
  %121 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %122 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* %16, align 4
  %124 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %125 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* %17, align 4
  %127 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %128 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 8
  %129 = load i32, i32* %12, align 4
  %130 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %131 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load i32, i32* %14, align 4
  %133 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %134 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* %20, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %109
  %138 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %139 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %138, i32 0, i32 7
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %140, 8
  br i1 %141, label %148, label %142

142:                                              ; preds = %137
  %143 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %144 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %143, i32 0, i32 18
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @isYUV(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %142, %137
  %149 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %150 = call i32 @ff_sws_init_range_convert(%struct.SwsContext* %149)
  br label %151

151:                                              ; preds = %148, %142, %109
  %152 = load i32*, i32** %18, align 8
  %153 = call i8* @av_get_bits_per_pixel(i32* %152)
  %154 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %155 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %154, i32 0, i32 22
  store i8* %153, i8** %155, align 8
  %156 = load i32*, i32** %19, align 8
  %157 = call i8* @av_get_bits_per_pixel(i32* %156)
  %158 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %159 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %158, i32 0, i32 21
  store i8* %157, i8** %159, align 8
  %160 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %161 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %160, i32 0, i32 14
  %162 = load %struct.SwsContext**, %struct.SwsContext*** %161, align 8
  %163 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %164 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %163, i32 0, i32 8
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds %struct.SwsContext*, %struct.SwsContext** %162, i64 %165
  %167 = load %struct.SwsContext*, %struct.SwsContext** %166, align 8
  %168 = icmp ne %struct.SwsContext* %167, null
  br i1 %168, label %169, label %186

169:                                              ; preds = %151
  %170 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %171 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %170, i32 0, i32 14
  %172 = load %struct.SwsContext**, %struct.SwsContext*** %171, align 8
  %173 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %174 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %173, i32 0, i32 8
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds %struct.SwsContext*, %struct.SwsContext** %172, i64 %175
  %177 = load %struct.SwsContext*, %struct.SwsContext** %176, align 8
  %178 = load i32*, i32** %11, align 8
  %179 = load i32, i32* %12, align 4
  %180 = load i32*, i32** %13, align 8
  %181 = load i32, i32* %14, align 4
  %182 = load i32, i32* %15, align 4
  %183 = load i32, i32* %16, align 4
  %184 = load i32, i32* %17, align 4
  %185 = call i32 @sws_setColorspaceDetails(%struct.SwsContext* %177, i32* %178, i32 %179, i32* %180, i32 %181, i32 %182, i32 %183, i32 %184)
  store i32 %185, i32* %9, align 4
  br label %474

186:                                              ; preds = %151
  %187 = load i32, i32* %20, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %186
  store i32 0, i32* %9, align 4
  br label %474

190:                                              ; preds = %186
  %191 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %192 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %191, i32 0, i32 13
  %193 = load i32, i32* %192, align 8
  %194 = call i64 @isYUV(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %202, label %196

196:                                              ; preds = %190
  %197 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %198 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %197, i32 0, i32 13
  %199 = load i32, i32* %198, align 8
  %200 = call i64 @isGray(i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %439

202:                                              ; preds = %196, %190
  %203 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %204 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %203, i32 0, i32 18
  %205 = load i32, i32* %204, align 4
  %206 = call i64 @isYUV(i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %214, label %208

208:                                              ; preds = %202
  %209 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %210 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %209, i32 0, i32 18
  %211 = load i32, i32* %210, align 4
  %212 = call i64 @isGray(i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %439

214:                                              ; preds = %208, %202
  %215 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %216 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %215, i32 0, i32 14
  %217 = load %struct.SwsContext**, %struct.SwsContext*** %216, align 8
  %218 = getelementptr inbounds %struct.SwsContext*, %struct.SwsContext** %217, i64 0
  %219 = load %struct.SwsContext*, %struct.SwsContext** %218, align 8
  %220 = icmp ne %struct.SwsContext* %219, null
  br i1 %220, label %438, label %221

221:                                              ; preds = %214
  %222 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %223 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %222, i32 0, i32 6
  %224 = load i32*, i32** %223, align 8
  %225 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %226 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %225, i32 0, i32 5
  %227 = load i32*, i32** %226, align 8
  %228 = call i64 @memcmp(i32* %224, i32* %227, i32 16)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %438

230:                                              ; preds = %221
  %231 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %232 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %231, i32 0, i32 9
  %233 = load i32, i32* %232, align 8
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %438

235:                                              ; preds = %230
  %236 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %237 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %236, i32 0, i32 10
  %238 = load i32, i32* %237, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %438

240:                                              ; preds = %235
  %241 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %242 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %241, i32 0, i32 11
  %243 = load i32, i32* %242, align 8
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %438

245:                                              ; preds = %240
  %246 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %247 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %246, i32 0, i32 12
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %438

250:                                              ; preds = %245
  %251 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %252 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %251, i32 0, i32 9
  %253 = load i32, i32* %252, align 8
  store i32 %253, i32* %24, align 4
  %254 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %255 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %254, i32 0, i32 10
  %256 = load i32, i32* %255, align 4
  store i32 %256, i32* %25, align 4
  %257 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %258 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %257, i32 0, i32 11
  %259 = load i32, i32* %258, align 8
  store i32 %259, i32* %26, align 4
  %260 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %261 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %260, i32 0, i32 12
  %262 = load i32, i32* %261, align 4
  store i32 %262, i32* %27, align 4
  %263 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %264 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %265 = call i32 @av_log(%struct.SwsContext* %263, i32 %264, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  %266 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %267 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %266, i32 0, i32 13
  %268 = load i32, i32* %267, align 8
  %269 = call i64 @isNBPS(i32 %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %277, label %271

271:                                              ; preds = %250
  %272 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %273 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %272, i32 0, i32 13
  %274 = load i32, i32* %273, align 8
  %275 = call i64 @is16BPS(i32 %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %294

277:                                              ; preds = %271, %250
  %278 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %279 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %278, i32 0, i32 18
  %280 = load i32, i32* %279, align 4
  %281 = call i64 @isALPHA(i32 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %291

283:                                              ; preds = %277
  %284 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %285 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %284, i32 0, i32 13
  %286 = load i32, i32* %285, align 8
  %287 = call i64 @isALPHA(i32 %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %283
  %290 = load i32, i32* @AV_PIX_FMT_BGRA64, align 4
  store i32 %290, i32* %21, align 4
  br label %293

291:                                              ; preds = %283, %277
  %292 = load i32, i32* @AV_PIX_FMT_BGR48, align 4
  store i32 %292, i32* %21, align 4
  br label %293

293:                                              ; preds = %291, %289
  br label %311

294:                                              ; preds = %271
  %295 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %296 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %295, i32 0, i32 18
  %297 = load i32, i32* %296, align 4
  %298 = call i64 @isALPHA(i32 %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %308

300:                                              ; preds = %294
  %301 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %302 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %301, i32 0, i32 13
  %303 = load i32, i32* %302, align 8
  %304 = call i64 @isALPHA(i32 %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %300
  %307 = load i32, i32* @AV_PIX_FMT_BGRA, align 4
  store i32 %307, i32* %21, align 4
  br label %310

308:                                              ; preds = %300, %294
  %309 = load i32, i32* @AV_PIX_FMT_BGR24, align 4
  store i32 %309, i32* %21, align 4
  br label %310

310:                                              ; preds = %308, %306
  br label %311

311:                                              ; preds = %310, %293
  %312 = load i32, i32* %24, align 4
  %313 = load i32, i32* %25, align 4
  %314 = mul nsw i32 %312, %313
  %315 = load i32, i32* %26, align 4
  %316 = load i32, i32* %27, align 4
  %317 = mul nsw i32 %315, %316
  %318 = icmp sgt i32 %314, %317
  br i1 %318, label %319, label %322

319:                                              ; preds = %311
  %320 = load i32, i32* %26, align 4
  store i32 %320, i32* %22, align 4
  %321 = load i32, i32* %27, align 4
  store i32 %321, i32* %23, align 4
  br label %325

322:                                              ; preds = %311
  %323 = load i32, i32* %24, align 4
  store i32 %323, i32* %22, align 4
  %324 = load i32, i32* %25, align 4
  store i32 %324, i32* %23, align 4
  br label %325

325:                                              ; preds = %322, %319
  %326 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %327 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %326, i32 0, i32 20
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %330 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %329, i32 0, i32 19
  %331 = load i32, i32* %330, align 8
  %332 = load i32, i32* %22, align 4
  %333 = load i32, i32* %23, align 4
  %334 = load i32, i32* %21, align 4
  %335 = call i32 @av_image_alloc(i32 %328, i32 %331, i32 %332, i32 %333, i32 %334, i32 64)
  store i32 %335, i32* %28, align 4
  %336 = load i32, i32* %28, align 4
  %337 = icmp slt i32 %336, 0
  br i1 %337, label %338, label %340

338:                                              ; preds = %325
  %339 = load i32, i32* %28, align 4
  store i32 %339, i32* %9, align 4
  br label %474

340:                                              ; preds = %325
  %341 = load i32, i32* %24, align 4
  %342 = load i32, i32* %25, align 4
  %343 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %344 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %343, i32 0, i32 18
  %345 = load i32, i32* %344, align 4
  %346 = load i32, i32* %22, align 4
  %347 = load i32, i32* %23, align 4
  %348 = load i32, i32* %21, align 4
  %349 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %350 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %349, i32 0, i32 16
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %353 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %352, i32 0, i32 15
  %354 = load i32, i32* %353, align 8
  %355 = call %struct.SwsContext* @sws_alloc_set_opts(i32 %341, i32 %342, i32 %345, i32 %346, i32 %347, i32 %348, i32 %351, i32 %354)
  %356 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %357 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %356, i32 0, i32 14
  %358 = load %struct.SwsContext**, %struct.SwsContext*** %357, align 8
  %359 = getelementptr inbounds %struct.SwsContext*, %struct.SwsContext** %358, i64 0
  store %struct.SwsContext* %355, %struct.SwsContext** %359, align 8
  %360 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %361 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %360, i32 0, i32 14
  %362 = load %struct.SwsContext**, %struct.SwsContext*** %361, align 8
  %363 = getelementptr inbounds %struct.SwsContext*, %struct.SwsContext** %362, i64 0
  %364 = load %struct.SwsContext*, %struct.SwsContext** %363, align 8
  %365 = icmp ne %struct.SwsContext* %364, null
  br i1 %365, label %367, label %366

366:                                              ; preds = %340
  store i32 -1, i32* %9, align 4
  br label %474

367:                                              ; preds = %340
  %368 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %369 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %368, i32 0, i32 17
  %370 = load i32, i32* %369, align 8
  %371 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %372 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %371, i32 0, i32 14
  %373 = load %struct.SwsContext**, %struct.SwsContext*** %372, align 8
  %374 = getelementptr inbounds %struct.SwsContext*, %struct.SwsContext** %373, i64 0
  %375 = load %struct.SwsContext*, %struct.SwsContext** %374, align 8
  %376 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %375, i32 0, i32 17
  store i32 %370, i32* %376, align 8
  %377 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %378 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %377, i32 0, i32 14
  %379 = load %struct.SwsContext**, %struct.SwsContext*** %378, align 8
  %380 = getelementptr inbounds %struct.SwsContext*, %struct.SwsContext** %379, i64 0
  %381 = load %struct.SwsContext*, %struct.SwsContext** %380, align 8
  %382 = call i32 @sws_init_context(%struct.SwsContext* %381, i32* null, i32* null)
  store i32 %382, i32* %28, align 4
  %383 = load i32, i32* %28, align 4
  %384 = icmp slt i32 %383, 0
  br i1 %384, label %385, label %387

385:                                              ; preds = %367
  %386 = load i32, i32* %28, align 4
  store i32 %386, i32* %9, align 4
  br label %474

387:                                              ; preds = %367
  %388 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %389 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %388, i32 0, i32 14
  %390 = load %struct.SwsContext**, %struct.SwsContext*** %389, align 8
  %391 = getelementptr inbounds %struct.SwsContext*, %struct.SwsContext** %390, i64 0
  %392 = load %struct.SwsContext*, %struct.SwsContext** %391, align 8
  %393 = load i32*, i32** %11, align 8
  %394 = load i32, i32* %12, align 4
  %395 = load i32*, i32** %13, align 8
  %396 = load i32, i32* %14, align 4
  %397 = load i32, i32* %15, align 4
  %398 = load i32, i32* %16, align 4
  %399 = load i32, i32* %17, align 4
  %400 = call i32 @sws_setColorspaceDetails(%struct.SwsContext* %392, i32* %393, i32 %394, i32* %395, i32 %396, i32 %397, i32 %398, i32 %399)
  %401 = load i32, i32* %22, align 4
  %402 = load i32, i32* %23, align 4
  %403 = load i32, i32* %21, align 4
  %404 = load i32, i32* %26, align 4
  %405 = load i32, i32* %27, align 4
  %406 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %407 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %406, i32 0, i32 13
  %408 = load i32, i32* %407, align 8
  %409 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %410 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %409, i32 0, i32 16
  %411 = load i32, i32* %410, align 4
  %412 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %413 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %412, i32 0, i32 15
  %414 = load i32, i32* %413, align 8
  %415 = call %struct.SwsContext* @sws_getContext(i32 %401, i32 %402, i32 %403, i32 %404, i32 %405, i32 %408, i32 %411, i32* null, i32* null, i32 %414)
  %416 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %417 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %416, i32 0, i32 14
  %418 = load %struct.SwsContext**, %struct.SwsContext*** %417, align 8
  %419 = getelementptr inbounds %struct.SwsContext*, %struct.SwsContext** %418, i64 1
  store %struct.SwsContext* %415, %struct.SwsContext** %419, align 8
  %420 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %421 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %420, i32 0, i32 14
  %422 = load %struct.SwsContext**, %struct.SwsContext*** %421, align 8
  %423 = getelementptr inbounds %struct.SwsContext*, %struct.SwsContext** %422, i64 1
  %424 = load %struct.SwsContext*, %struct.SwsContext** %423, align 8
  %425 = icmp ne %struct.SwsContext* %424, null
  br i1 %425, label %427, label %426

426:                                              ; preds = %387
  store i32 -1, i32* %9, align 4
  br label %474

427:                                              ; preds = %387
  %428 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %429 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %428, i32 0, i32 14
  %430 = load %struct.SwsContext**, %struct.SwsContext*** %429, align 8
  %431 = getelementptr inbounds %struct.SwsContext*, %struct.SwsContext** %430, i64 1
  %432 = load %struct.SwsContext*, %struct.SwsContext** %431, align 8
  %433 = load i32*, i32** %11, align 8
  %434 = load i32, i32* %12, align 4
  %435 = load i32*, i32** %13, align 8
  %436 = load i32, i32* %14, align 4
  %437 = call i32 @sws_setColorspaceDetails(%struct.SwsContext* %432, i32* %433, i32 %434, i32* %435, i32 %436, i32 0, i32 65536, i32 65536)
  store i32 0, i32* %9, align 4
  br label %474

438:                                              ; preds = %245, %240, %235, %230, %221, %214
  store i32 -1, i32* %9, align 4
  br label %474

439:                                              ; preds = %208, %196
  %440 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %441 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %440, i32 0, i32 13
  %442 = load i32, i32* %441, align 8
  %443 = call i64 @isYUV(i32 %442)
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %469, label %445

445:                                              ; preds = %439
  %446 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %447 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %446, i32 0, i32 13
  %448 = load i32, i32* %447, align 8
  %449 = call i64 @isGray(i32 %448)
  %450 = icmp ne i64 %449, 0
  br i1 %450, label %469, label %451

451:                                              ; preds = %445
  %452 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %453 = load i32*, i32** %11, align 8
  %454 = load i32, i32* %12, align 4
  %455 = load i32, i32* %15, align 4
  %456 = load i32, i32* %16, align 4
  %457 = load i32, i32* %17, align 4
  %458 = call i32 @ff_yuv2rgb_c_init_tables(%struct.SwsContext* %452, i32* %453, i32 %454, i32 %455, i32 %456, i32 %457)
  %459 = load i64, i64* @ARCH_PPC, align 8
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %468

461:                                              ; preds = %451
  %462 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %463 = load i32*, i32** %11, align 8
  %464 = load i32, i32* %15, align 4
  %465 = load i32, i32* %16, align 4
  %466 = load i32, i32* %17, align 4
  %467 = call i32 @ff_yuv2rgb_init_tables_ppc(%struct.SwsContext* %462, i32* %463, i32 %464, i32 %465, i32 %466)
  br label %468

468:                                              ; preds = %461, %451
  br label %469

469:                                              ; preds = %468, %445, %439
  %470 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %471 = load i32*, i32** %13, align 8
  %472 = load i32, i32* %14, align 4
  %473 = call i32 @fill_rgb2yuv_table(%struct.SwsContext* %470, i32* %471, i32 %472)
  store i32 0, i32* %9, align 4
  br label %474

474:                                              ; preds = %469, %438, %427, %426, %385, %366, %338, %189, %169
  %475 = load i32, i32* %9, align 4
  ret i32 %475
}

declare dso_local i32 @handle_formats(%struct.SwsContext*) #1

declare dso_local i32* @av_pix_fmt_desc_get(i32) #1

declare dso_local i64 @isYUV(i32) #1

declare dso_local i64 @isGray(i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @ff_sws_init_range_convert(%struct.SwsContext*) #1

declare dso_local i8* @av_get_bits_per_pixel(i32*) #1

declare dso_local i32 @av_log(%struct.SwsContext*, i32, i8*) #1

declare dso_local i64 @isNBPS(i32) #1

declare dso_local i64 @is16BPS(i32) #1

declare dso_local i64 @isALPHA(i32) #1

declare dso_local i32 @av_image_alloc(i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.SwsContext* @sws_alloc_set_opts(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sws_init_context(%struct.SwsContext*, i32*, i32*) #1

declare dso_local %struct.SwsContext* @sws_getContext(i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @ff_yuv2rgb_c_init_tables(%struct.SwsContext*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ff_yuv2rgb_init_tables_ppc(%struct.SwsContext*, i32*, i32, i32, i32) #1

declare dso_local i32 @fill_rgb2yuv_table(%struct.SwsContext*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
