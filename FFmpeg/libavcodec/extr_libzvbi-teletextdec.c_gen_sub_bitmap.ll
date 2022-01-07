; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libzvbi-teletextdec.c_gen_sub_bitmap.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libzvbi-teletextdec.c_gen_sub_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, i32 }
%struct.TYPE_17__ = type { i32*, i32, i32, i32, i32, i8**, i64, i32 }
%struct.TYPE_14__ = type { i32, i32, i32*, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }

@BITMAP_CHAR_WIDTH = common dso_local global i32 0, align 4
@BITMAP_CHAR_HEIGHT = common dso_local global i32 0, align 4
@VBI_TRANSPARENT_SPACE = common dso_local global i64 0, align 8
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"dropping empty page %3x\0A\00", align 1
@SUBTITLE_NONE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VBI_PIXFMT_PAL8 = common dso_local global i32 0, align 4
@VBI_NB_COLORS = common dso_local global i32 0, align 4
@AVPALETTE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"palette %0x\0A\00", align 1
@VBI_TRANSPARENT_BLACK = common dso_local global i64 0, align 8
@SUBTITLE_BITMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_14__*, i32)* @gen_sub_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_sub_bitmap(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, %struct.TYPE_14__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @BITMAP_CHAR_WIDTH, align 4
  %23 = mul nsw i32 %21, %22
  store i32 %23, i32* %10, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %9, align 4
  %28 = sub nsw i32 %26, %27
  %29 = load i32, i32* @BITMAP_CHAR_HEIGHT, align 4
  %30 = mul nsw i32 %28, %29
  store i32 %30, i32* %11, align 4
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %34, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i64 %39
  store %struct.TYPE_15__* %40, %struct.TYPE_15__** %13, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = mul nsw i32 %46, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i64 %51
  store %struct.TYPE_15__* %52, %struct.TYPE_15__** %14, align 8
  br label %53

53:                                               ; preds = %65, %4
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %56 = icmp ult %struct.TYPE_15__* %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @VBI_TRANSPARENT_SPACE, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %68

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 1
  store %struct.TYPE_15__* %67, %struct.TYPE_15__** %13, align 8
  br label %53

68:                                               ; preds = %63, %53
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %71 = icmp uge %struct.TYPE_15__* %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %74 = load i32, i32* @AV_LOG_DEBUG, align 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @av_log(%struct.TYPE_16__* %73, i32 %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @SUBTITLE_NONE, align 4
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  store i32 0, i32* %5, align 4
  br label %304

82:                                               ; preds = %68
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %11, align 4
  %85 = mul nsw i32 %83, %84
  %86 = call i8* @av_mallocz(i32 %85)
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 5
  %89 = load i8**, i8*** %88, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 0
  store i8* %86, i8** %90, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 %91, i32* %95, align 4
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 5
  %98 = load i8**, i8*** %97, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 0
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %82
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = call i32 @AVERROR(i32 %103)
  store i32 %104, i32* %5, align 4
  br label %304

105:                                              ; preds = %82
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %107 = load i32, i32* @VBI_PIXFMT_PAL8, align 4
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 5
  %110 = load i8**, i8*** %109, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 0
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %9, align 4
  %126 = sub nsw i32 %124, %125
  %127 = call i32 @vbi_draw_vt_page_region(%struct.TYPE_14__* %106, i32 %107, i8* %112, i32 %117, i32 0, i32 %118, i32 %121, i32 %126, i32 1, i32 1)
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @fix_transparency(%struct.TYPE_16__* %128, %struct.TYPE_17__* %129, %struct.TYPE_14__* %130, i32 %131, i32 %132, i32 %133)
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 7
  store i32 %137, i32* %139, align 8
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* @BITMAP_CHAR_HEIGHT, align 4
  %145 = mul nsw i32 %143, %144
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %142, %146
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 6
  store i64 %147, i64* %149, align 8
  %150 = load i32, i32* %10, align 4
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 8
  %153 = load i32, i32* %11, align 4
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 4
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %105
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp slt i32 %163, 255
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load i32, i32* @VBI_NB_COLORS, align 4
  %167 = mul nsw i32 2, %166
  br label %170

168:                                              ; preds = %160, %105
  %169 = load i32, i32* @VBI_NB_COLORS, align 4
  br label %170

170:                                              ; preds = %168, %165
  %171 = phi i32 [ %167, %165 ], [ %169, %168 ]
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 3
  store i32 %171, i32* %173, align 8
  %174 = load i32, i32* @AVPALETTE_SIZE, align 4
  %175 = call i8* @av_mallocz(i32 %174)
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 5
  %178 = load i8**, i8*** %177, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i64 1
  store i8* %175, i8** %179, align 8
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 5
  %182 = load i8**, i8*** %181, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 1
  %184 = load i8*, i8** %183, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %194, label %186

186:                                              ; preds = %170
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 5
  %189 = load i8**, i8*** %188, align 8
  %190 = getelementptr inbounds i8*, i8** %189, i64 0
  %191 = call i32 @av_freep(i8** %190)
  %192 = load i32, i32* @ENOMEM, align 4
  %193 = call i32 @AVERROR(i32 %192)
  store i32 %193, i32* %5, align 4
  br label %304

194:                                              ; preds = %170
  store i32 0, i32* %12, align 4
  br label %195

195:                                              ; preds = %276, %194
  %196 = load i32, i32* %12, align 4
  %197 = load i32, i32* @VBI_NB_COLORS, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %279

199:                                              ; preds = %195
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 2
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %12, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @VBI_R(i32 %206)
  store i32 %207, i32* %15, align 4
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 2
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %12, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @VBI_G(i32 %214)
  store i32 %215, i32* %16, align 4
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 2
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %12, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @VBI_B(i32 %222)
  store i32 %223, i32* %17, align 4
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 2
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %12, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @VBI_A(i32 %230)
  store i32 %231, i32* %18, align 4
  %232 = load i32, i32* %15, align 4
  %233 = load i32, i32* %16, align 4
  %234 = load i32, i32* %17, align 4
  %235 = load i32, i32* %18, align 4
  %236 = call i32 @RGBA(i32 %232, i32 %233, i32 %234, i32 %235)
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 5
  %239 = load i8**, i8*** %238, align 8
  %240 = getelementptr inbounds i8*, i8** %239, i64 1
  %241 = load i8*, i8** %240, align 8
  %242 = bitcast i8* %241 to i32*
  %243 = load i32, i32* %12, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  store i32 %236, i32* %245, align 4
  %246 = load i32, i32* %15, align 4
  %247 = load i32, i32* %16, align 4
  %248 = load i32, i32* %17, align 4
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @RGBA(i32 %246, i32 %247, i32 %248, i32 %251)
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 5
  %255 = load i8**, i8*** %254, align 8
  %256 = getelementptr inbounds i8*, i8** %255, i64 1
  %257 = load i8*, i8** %256, align 8
  %258 = bitcast i8* %257 to i32*
  %259 = load i32, i32* %12, align 4
  %260 = load i32, i32* @VBI_NB_COLORS, align 4
  %261 = add nsw i32 %259, %260
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %258, i64 %262
  store i32 %252, i32* %263, align 4
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %265 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 5
  %267 = load i8**, i8*** %266, align 8
  %268 = getelementptr inbounds i8*, i8** %267, i64 1
  %269 = load i8*, i8** %268, align 8
  %270 = bitcast i8* %269 to i32*
  %271 = load i32, i32* %12, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @ff_dlog(%struct.TYPE_16__* %264, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %274)
  br label %276

276:                                              ; preds = %199
  %277 = load i32, i32* %12, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %12, align 4
  br label %195

279:                                              ; preds = %195
  %280 = call i32 @RGBA(i32 0, i32 0, i32 0, i32 0)
  %281 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %281, i32 0, i32 5
  %283 = load i8**, i8*** %282, align 8
  %284 = getelementptr inbounds i8*, i8** %283, i64 1
  %285 = load i8*, i8** %284, align 8
  %286 = bitcast i8* %285 to i32*
  %287 = load i64, i64* @VBI_TRANSPARENT_BLACK, align 8
  %288 = getelementptr inbounds i32, i32* %286, i64 %287
  store i32 %280, i32* %288, align 4
  %289 = call i32 @RGBA(i32 0, i32 0, i32 0, i32 0)
  %290 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %290, i32 0, i32 5
  %292 = load i8**, i8*** %291, align 8
  %293 = getelementptr inbounds i8*, i8** %292, i64 1
  %294 = load i8*, i8** %293, align 8
  %295 = bitcast i8* %294 to i32*
  %296 = load i64, i64* @VBI_TRANSPARENT_BLACK, align 8
  %297 = load i32, i32* @VBI_NB_COLORS, align 4
  %298 = sext i32 %297 to i64
  %299 = add i64 %296, %298
  %300 = getelementptr inbounds i32, i32* %295, i64 %299
  store i32 %289, i32* %300, align 4
  %301 = load i32, i32* @SUBTITLE_BITMAP, align 4
  %302 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %302, i32 0, i32 4
  store i32 %301, i32* %303, align 4
  store i32 0, i32* %5, align 4
  br label %304

304:                                              ; preds = %279, %186, %102, %72
  %305 = load i32, i32* %5, align 4
  ret i32 %305
}

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*, i32) #1

declare dso_local i8* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @vbi_draw_vt_page_region(%struct.TYPE_14__*, i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fix_transparency(%struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @av_freep(i8**) #1

declare dso_local i32 @VBI_R(i32) #1

declare dso_local i32 @VBI_G(i32) #1

declare dso_local i32 @VBI_B(i32) #1

declare dso_local i32 @VBI_A(i32) #1

declare dso_local i32 @RGBA(i32, i32, i32, i32) #1

declare dso_local i32 @ff_dlog(%struct.TYPE_16__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
