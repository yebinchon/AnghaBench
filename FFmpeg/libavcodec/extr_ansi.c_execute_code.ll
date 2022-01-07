; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ansi.c_execute_code.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ansi.c_execute_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32*, i32, i32, i32, i64, i64, i32, i32, %struct.TYPE_13__*, i8* }
%struct.TYPE_13__ = type { i32, i32*, i32*, i32 }

@FONT_WIDTH = common dso_local global i32 0, align 4
@DEFAULT_SCREEN_MODE = common dso_local global i32 0, align 4
@avpriv_cga_font = common dso_local global i8* null, align 8
@avpriv_vga16_font = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Unsupported screen mode\00", align 1
@AV_GET_BUFFER_FLAG_REF = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@DEFAULT_BG_COLOR = common dso_local global i64 0, align 8
@MAX_NB_ARGS = common dso_local global i32 0, align 4
@DEFAULT_FG_COLOR = common dso_local global i64 0, align 8
@ansi_to_cga = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Unsupported rendition parameter\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Unknown escape code\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32)* @execute_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @execute_code(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %6, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %769 [
    i32 65, label %24
    i32 66, label %53
    i32 67, label %88
    i32 68, label %117
    i32 72, label %142
    i32 102, label %142
    i32 104, label %197
    i32 108, label %197
    i32 74, label %335
    i32 75, label %447
    i32 109, label %479
    i32 110, label %730
    i32 82, label %730
    i32 115, label %731
    i32 117, label %742
  ]

24:                                               ; preds = %2
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %24
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 %37, %40
  br label %46

42:                                               ; preds = %24
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  br label %46

46:                                               ; preds = %42, %32
  %47 = phi i32 [ %41, %32 ], [ %45, %42 ]
  %48 = sub nsw i32 %27, %47
  %49 = call i8* @FFMAX(i32 %48, i32 0)
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  br label %772

53:                                               ; preds = %2
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %53
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = mul nsw i32 %66, %69
  br label %75

71:                                               ; preds = %53
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  br label %75

75:                                               ; preds = %71, %61
  %76 = phi i32 [ %70, %61 ], [ %74, %71 ]
  %77 = add nsw i32 %56, %76
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = sub nsw i32 %80, %83
  %85 = call i32 @FFMIN(i32 %77, i32 %84)
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  br label %772

88:                                               ; preds = %2
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %88
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @FONT_WIDTH, align 4
  %103 = mul nsw i32 %101, %102
  br label %106

104:                                              ; preds = %88
  %105 = load i32, i32* @FONT_WIDTH, align 4
  br label %106

106:                                              ; preds = %104, %96
  %107 = phi i32 [ %103, %96 ], [ %105, %104 ]
  %108 = add nsw i32 %91, %107
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @FONT_WIDTH, align 4
  %113 = sub nsw i32 %111, %112
  %114 = call i32 @FFMIN(i32 %108, i32 %113)
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 4
  store i32 %114, i32* %116, align 4
  br label %772

117:                                              ; preds = %2
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %117
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @FONT_WIDTH, align 4
  %132 = mul nsw i32 %130, %131
  br label %135

133:                                              ; preds = %117
  %134 = load i32, i32* @FONT_WIDTH, align 4
  br label %135

135:                                              ; preds = %133, %125
  %136 = phi i32 [ %132, %125 ], [ %134, %133 ]
  %137 = sub nsw i32 %120, %136
  %138 = call i8* @FFMAX(i32 %137, i32 0)
  %139 = ptrtoint i8* %138 to i32
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 4
  store i32 %139, i32* %141, align 4
  br label %772

142:                                              ; preds = %2, %2
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %166

147:                                              ; preds = %142
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = sub nsw i32 %152, 1
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = mul nsw i32 %153, %156
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = sub nsw i32 %160, %163
  %165 = call i8* @av_clip(i32 %157, i32 0, i32 %164)
  br label %167

166:                                              ; preds = %142
  br label %167

167:                                              ; preds = %166, %147
  %168 = phi i8* [ %165, %147 ], [ null, %166 ]
  %169 = ptrtoint i8* %168 to i32
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp sgt i32 %174, 1
  br i1 %175, label %176, label %191

176:                                              ; preds = %167
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  %181 = load i32, i32* %180, align 4
  %182 = sub nsw i32 %181, 1
  %183 = load i32, i32* @FONT_WIDTH, align 4
  %184 = mul nsw i32 %182, %183
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @FONT_WIDTH, align 4
  %189 = sub nsw i32 %187, %188
  %190 = call i8* @av_clip(i32 %184, i32 0, i32 %189)
  br label %192

191:                                              ; preds = %167
  br label %192

192:                                              ; preds = %191, %176
  %193 = phi i8* [ %190, %176 ], [ null, %191 ]
  %194 = ptrtoint i8* %193 to i32
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 4
  store i32 %194, i32* %196, align 4
  br label %772

197:                                              ; preds = %2, %2
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = icmp slt i32 %200, 2
  br i1 %201, label %202, label %208

202:                                              ; preds = %197
  %203 = load i32, i32* @DEFAULT_SCREEN_MODE, align 4
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 2
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 0
  store i32 %203, i32* %207, align 4
  br label %208

208:                                              ; preds = %202, %197
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 2
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 0
  %213 = load i32, i32* %212, align 4
  switch i32 %213, label %245 [
    i32 0, label %214
    i32 1, label %214
    i32 4, label %214
    i32 5, label %214
    i32 13, label %214
    i32 19, label %214
    i32 2, label %220
    i32 3, label %220
    i32 6, label %226
    i32 14, label %226
    i32 7, label %232
    i32 15, label %233
    i32 16, label %233
    i32 17, label %239
    i32 18, label %239
  ]

214:                                              ; preds = %208, %208, %208, %208, %208, %208
  %215 = load i8*, i8** @avpriv_cga_font, align 8
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 11
  store i8* %215, i8** %217, align 8
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 3
  store i32 8, i32* %219, align 8
  store i32 320, i32* %9, align 4
  store i32 200, i32* %10, align 4
  br label %248

220:                                              ; preds = %208, %208
  %221 = load i8*, i8** @avpriv_vga16_font, align 8
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 11
  store i8* %221, i8** %223, align 8
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 3
  store i32 16, i32* %225, align 8
  store i32 640, i32* %9, align 4
  store i32 400, i32* %10, align 4
  br label %248

226:                                              ; preds = %208, %208
  %227 = load i8*, i8** @avpriv_cga_font, align 8
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 11
  store i8* %227, i8** %229, align 8
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 3
  store i32 8, i32* %231, align 8
  store i32 640, i32* %9, align 4
  store i32 200, i32* %10, align 4
  br label %248

232:                                              ; preds = %208
  br label %248

233:                                              ; preds = %208, %208
  %234 = load i8*, i8** @avpriv_cga_font, align 8
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 11
  store i8* %234, i8** %236, align 8
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 3
  store i32 8, i32* %238, align 8
  store i32 640, i32* %9, align 4
  store i32 344, i32* %10, align 4
  br label %248

239:                                              ; preds = %208, %208
  %240 = load i8*, i8** @avpriv_cga_font, align 8
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 11
  store i8* %240, i8** %242, align 8
  %243 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 3
  store i32 8, i32* %244, align 8
  store i32 640, i32* %9, align 4
  store i32 960, i32* %10, align 4
  br label %248

245:                                              ; preds = %208
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %247 = call i32 @avpriv_request_sample(%struct.TYPE_12__* %246, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %248

248:                                              ; preds = %245, %239, %233, %232, %226, %220, %214
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* %9, align 4
  %253 = load i32, i32* @FONT_WIDTH, align 4
  %254 = sub nsw i32 %252, %253
  %255 = call i8* @av_clip(i32 %251, i32 0, i32 %254)
  %256 = ptrtoint i8* %255 to i32
  %257 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 4
  store i32 %256, i32* %258, align 4
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* %10, align 4
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 8
  %266 = sub nsw i32 %262, %265
  %267 = call i8* @av_clip(i32 %261, i32 0, i32 %266)
  %268 = ptrtoint i8* %267 to i32
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 0
  store i32 %268, i32* %270, align 8
  %271 = load i32, i32* %9, align 4
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = icmp ne i32 %271, %274
  br i1 %275, label %282, label %276

276:                                              ; preds = %248
  %277 = load i32, i32* %10, align 4
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = icmp ne i32 %277, %280
  br i1 %281, label %282, label %327

282:                                              ; preds = %276, %248
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 10
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %284, align 8
  %286 = call i32 @av_frame_unref(%struct.TYPE_13__* %285)
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %288 = load i32, i32* %9, align 4
  %289 = load i32, i32* %10, align 4
  %290 = call i32 @ff_set_dimensions(%struct.TYPE_12__* %287, i32 %288, i32 %289)
  store i32 %290, i32* %7, align 4
  %291 = load i32, i32* %7, align 4
  %292 = icmp slt i32 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %282
  %294 = load i32, i32* %7, align 4
  store i32 %294, i32* %3, align 4
  br label %799

295:                                              ; preds = %282
  %296 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 10
  %299 = load %struct.TYPE_13__*, %struct.TYPE_13__** %298, align 8
  %300 = load i32, i32* @AV_GET_BUFFER_FLAG_REF, align 4
  %301 = call i32 @ff_get_buffer(%struct.TYPE_12__* %296, %struct.TYPE_13__* %299, i32 %300)
  store i32 %301, i32* %7, align 4
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %303, label %305

303:                                              ; preds = %295
  %304 = load i32, i32* %7, align 4
  store i32 %304, i32* %3, align 4
  br label %799

305:                                              ; preds = %295
  %306 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %307 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %307, i32 0, i32 10
  %309 = load %struct.TYPE_13__*, %struct.TYPE_13__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %309, i32 0, i32 3
  store i32 %306, i32* %310, align 8
  %311 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %311, i32 0, i32 10
  %313 = load %struct.TYPE_13__*, %struct.TYPE_13__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 0
  store i32 1, i32* %314, align 8
  %315 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 10
  %317 = load %struct.TYPE_13__*, %struct.TYPE_13__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %317, i32 0, i32 1
  %319 = load i32*, i32** %318, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 1
  %321 = load i32, i32* %320, align 4
  %322 = sext i32 %321 to i64
  %323 = inttoptr i64 %322 to i32*
  %324 = call i32 @set_palette(i32* %323)
  %325 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %326 = call i32 @erase_screen(%struct.TYPE_12__* %325)
  br label %334

327:                                              ; preds = %276
  %328 = load i32, i32* %5, align 4
  %329 = icmp eq i32 %328, 108
  br i1 %329, label %330, label %333

330:                                              ; preds = %327
  %331 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %332 = call i32 @erase_screen(%struct.TYPE_12__* %331)
  br label %333

333:                                              ; preds = %330, %327
  br label %334

334:                                              ; preds = %333, %305
  br label %772

335:                                              ; preds = %2
  %336 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %337 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %336, i32 0, i32 2
  %338 = load i32*, i32** %337, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 0
  %340 = load i32, i32* %339, align 4
  switch i32 %340, label %446 [
    i32 0, label %341
    i32 1, label %411
    i32 2, label %443
  ]

341:                                              ; preds = %335
  %342 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %343 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %343, i32 0, i32 4
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %349, i32 0, i32 4
  %351 = load i32, i32* %350, align 4
  %352 = sub nsw i32 %348, %351
  %353 = call i32 @erase_line(%struct.TYPE_12__* %342, i32 %345, i32 %352)
  %354 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %355 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %361 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %360, i32 0, i32 3
  %362 = load i32, i32* %361, align 8
  %363 = sub nsw i32 %359, %362
  %364 = icmp slt i32 %356, %363
  br i1 %364, label %365, label %410

365:                                              ; preds = %341
  %366 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %367 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %366, i32 0, i32 10
  %368 = load %struct.TYPE_13__*, %struct.TYPE_13__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %368, i32 0, i32 1
  %370 = load i32*, i32** %369, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 0
  %372 = load i32, i32* %371, align 4
  %373 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %374 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %376, i32 0, i32 3
  %378 = load i32, i32* %377, align 8
  %379 = add nsw i32 %375, %378
  %380 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %381 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %380, i32 0, i32 10
  %382 = load %struct.TYPE_13__*, %struct.TYPE_13__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %382, i32 0, i32 2
  %384 = load i32*, i32** %383, align 8
  %385 = getelementptr inbounds i32, i32* %384, i64 0
  %386 = load i32, i32* %385, align 4
  %387 = mul nsw i32 %379, %386
  %388 = add nsw i32 %372, %387
  %389 = load i64, i64* @DEFAULT_BG_COLOR, align 8
  %390 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %391 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %394 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = sub nsw i32 %392, %395
  %397 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %398 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %397, i32 0, i32 3
  %399 = load i32, i32* %398, align 8
  %400 = sub nsw i32 %396, %399
  %401 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %402 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %401, i32 0, i32 10
  %403 = load %struct.TYPE_13__*, %struct.TYPE_13__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %403, i32 0, i32 2
  %405 = load i32*, i32** %404, align 8
  %406 = getelementptr inbounds i32, i32* %405, i64 0
  %407 = load i32, i32* %406, align 4
  %408 = mul nsw i32 %400, %407
  %409 = call i32 @memset(i32 %388, i64 %389, i32 %408)
  br label %410

410:                                              ; preds = %365, %341
  br label %446

411:                                              ; preds = %335
  %412 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %413 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %414 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %413, i32 0, i32 4
  %415 = load i32, i32* %414, align 4
  %416 = call i32 @erase_line(%struct.TYPE_12__* %412, i32 0, i32 %415)
  %417 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %418 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 8
  %420 = icmp sgt i32 %419, 0
  br i1 %420, label %421, label %442

421:                                              ; preds = %411
  %422 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %423 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %422, i32 0, i32 10
  %424 = load %struct.TYPE_13__*, %struct.TYPE_13__** %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %424, i32 0, i32 1
  %426 = load i32*, i32** %425, align 8
  %427 = getelementptr inbounds i32, i32* %426, i64 0
  %428 = load i32, i32* %427, align 4
  %429 = load i64, i64* @DEFAULT_BG_COLOR, align 8
  %430 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %431 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 8
  %433 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %434 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %433, i32 0, i32 10
  %435 = load %struct.TYPE_13__*, %struct.TYPE_13__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %435, i32 0, i32 2
  %437 = load i32*, i32** %436, align 8
  %438 = getelementptr inbounds i32, i32* %437, i64 0
  %439 = load i32, i32* %438, align 4
  %440 = mul nsw i32 %432, %439
  %441 = call i32 @memset(i32 %428, i64 %429, i32 %440)
  br label %442

442:                                              ; preds = %421, %411
  br label %446

443:                                              ; preds = %335
  %444 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %445 = call i32 @erase_screen(%struct.TYPE_12__* %444)
  br label %446

446:                                              ; preds = %443, %335, %442, %410
  br label %772

447:                                              ; preds = %2
  %448 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %449 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %448, i32 0, i32 2
  %450 = load i32*, i32** %449, align 8
  %451 = getelementptr inbounds i32, i32* %450, i64 0
  %452 = load i32, i32* %451, align 4
  switch i32 %452, label %478 [
    i32 0, label %453
    i32 1, label %466
    i32 2, label %472
  ]

453:                                              ; preds = %447
  %454 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %455 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %456 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %455, i32 0, i32 4
  %457 = load i32, i32* %456, align 4
  %458 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %459 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 8
  %461 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %462 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %461, i32 0, i32 4
  %463 = load i32, i32* %462, align 4
  %464 = sub nsw i32 %460, %463
  %465 = call i32 @erase_line(%struct.TYPE_12__* %454, i32 %457, i32 %464)
  br label %478

466:                                              ; preds = %447
  %467 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %468 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %469 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %468, i32 0, i32 4
  %470 = load i32, i32* %469, align 4
  %471 = call i32 @erase_line(%struct.TYPE_12__* %467, i32 0, i32 %470)
  br label %478

472:                                              ; preds = %447
  %473 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %474 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %475 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 8
  %477 = call i32 @erase_line(%struct.TYPE_12__* %473, i32 0, i32 %476)
  br label %478

478:                                              ; preds = %472, %447, %466, %453
  br label %772

479:                                              ; preds = %2
  %480 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %481 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %480, i32 0, i32 1
  %482 = load i32, i32* %481, align 4
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %484, label %491

484:                                              ; preds = %479
  %485 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %486 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %485, i32 0, i32 1
  store i32 1, i32* %486, align 4
  %487 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %488 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %487, i32 0, i32 2
  %489 = load i32*, i32** %488, align 8
  %490 = getelementptr inbounds i32, i32* %489, i64 0
  store i32 0, i32* %490, align 4
  br label %491

491:                                              ; preds = %484, %479
  store i32 0, i32* %8, align 4
  br label %492

492:                                              ; preds = %726, %491
  %493 = load i32, i32* %8, align 4
  %494 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %495 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %494, i32 0, i32 1
  %496 = load i32, i32* %495, align 4
  %497 = load i32, i32* @MAX_NB_ARGS, align 4
  %498 = call i32 @FFMIN(i32 %496, i32 %497)
  %499 = icmp slt i32 %493, %498
  br i1 %499, label %500, label %729

500:                                              ; preds = %492
  %501 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %502 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %501, i32 0, i32 2
  %503 = load i32*, i32** %502, align 8
  %504 = load i32, i32* %8, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds i32, i32* %503, i64 %505
  %507 = load i32, i32* %506, align 4
  store i32 %507, i32* %11, align 4
  %508 = load i32, i32* %11, align 4
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %510, label %519

510:                                              ; preds = %500
  %511 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %512 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %511, i32 0, i32 5
  store i32 0, i32* %512, align 8
  %513 = load i64, i64* @DEFAULT_FG_COLOR, align 8
  %514 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %515 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %514, i32 0, i32 6
  store i64 %513, i64* %515, align 8
  %516 = load i64, i64* @DEFAULT_BG_COLOR, align 8
  %517 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %518 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %517, i32 0, i32 7
  store i64 %516, i64* %518, align 8
  br label %725

519:                                              ; preds = %500
  %520 = load i32, i32* %11, align 4
  %521 = icmp eq i32 %520, 1
  br i1 %521, label %537, label %522

522:                                              ; preds = %519
  %523 = load i32, i32* %11, align 4
  %524 = icmp eq i32 %523, 2
  br i1 %524, label %537, label %525

525:                                              ; preds = %522
  %526 = load i32, i32* %11, align 4
  %527 = icmp eq i32 %526, 4
  br i1 %527, label %537, label %528

528:                                              ; preds = %525
  %529 = load i32, i32* %11, align 4
  %530 = icmp eq i32 %529, 5
  br i1 %530, label %537, label %531

531:                                              ; preds = %528
  %532 = load i32, i32* %11, align 4
  %533 = icmp eq i32 %532, 7
  br i1 %533, label %537, label %534

534:                                              ; preds = %531
  %535 = load i32, i32* %11, align 4
  %536 = icmp eq i32 %535, 8
  br i1 %536, label %537, label %545

537:                                              ; preds = %534, %531, %528, %525, %522, %519
  %538 = load i32, i32* %11, align 4
  %539 = sub nsw i32 %538, 1
  %540 = shl i32 1, %539
  %541 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %542 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %541, i32 0, i32 5
  %543 = load i32, i32* %542, align 8
  %544 = or i32 %543, %540
  store i32 %544, i32* %542, align 8
  br label %724

545:                                              ; preds = %534
  %546 = load i32, i32* %11, align 4
  %547 = icmp sge i32 %546, 30
  br i1 %547, label %548, label %561

548:                                              ; preds = %545
  %549 = load i32, i32* %11, align 4
  %550 = icmp sle i32 %549, 37
  br i1 %550, label %551, label %561

551:                                              ; preds = %548
  %552 = load i32*, i32** @ansi_to_cga, align 8
  %553 = load i32, i32* %11, align 4
  %554 = sub nsw i32 %553, 30
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds i32, i32* %552, i64 %555
  %557 = load i32, i32* %556, align 4
  %558 = sext i32 %557 to i64
  %559 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %560 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %559, i32 0, i32 6
  store i64 %558, i64* %560, align 8
  br label %723

561:                                              ; preds = %548, %545
  %562 = load i32, i32* %11, align 4
  %563 = icmp eq i32 %562, 38
  br i1 %563, label %564, label %619

564:                                              ; preds = %561
  %565 = load i32, i32* %8, align 4
  %566 = add nsw i32 %565, 2
  %567 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %568 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %567, i32 0, i32 1
  %569 = load i32, i32* %568, align 4
  %570 = load i32, i32* @MAX_NB_ARGS, align 4
  %571 = call i32 @FFMIN(i32 %569, i32 %570)
  %572 = icmp slt i32 %566, %571
  br i1 %572, label %573, label %619

573:                                              ; preds = %564
  %574 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %575 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %574, i32 0, i32 2
  %576 = load i32*, i32** %575, align 8
  %577 = load i32, i32* %8, align 4
  %578 = add nsw i32 %577, 1
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds i32, i32* %576, i64 %579
  %581 = load i32, i32* %580, align 4
  %582 = icmp eq i32 %581, 5
  br i1 %582, label %583, label %619

583:                                              ; preds = %573
  %584 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %585 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %584, i32 0, i32 2
  %586 = load i32*, i32** %585, align 8
  %587 = load i32, i32* %8, align 4
  %588 = add nsw i32 %587, 2
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds i32, i32* %586, i64 %589
  %591 = load i32, i32* %590, align 4
  %592 = icmp slt i32 %591, 256
  br i1 %592, label %593, label %619

593:                                              ; preds = %583
  %594 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %595 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %594, i32 0, i32 2
  %596 = load i32*, i32** %595, align 8
  %597 = load i32, i32* %8, align 4
  %598 = add nsw i32 %597, 2
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds i32, i32* %596, i64 %599
  %601 = load i32, i32* %600, align 4
  store i32 %601, i32* %12, align 4
  %602 = load i32, i32* %12, align 4
  %603 = icmp slt i32 %602, 16
  br i1 %603, label %604, label %610

604:                                              ; preds = %593
  %605 = load i32*, i32** @ansi_to_cga, align 8
  %606 = load i32, i32* %12, align 4
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds i32, i32* %605, i64 %607
  %609 = load i32, i32* %608, align 4
  br label %612

610:                                              ; preds = %593
  %611 = load i32, i32* %12, align 4
  br label %612

612:                                              ; preds = %610, %604
  %613 = phi i32 [ %609, %604 ], [ %611, %610 ]
  %614 = sext i32 %613 to i64
  %615 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %616 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %615, i32 0, i32 6
  store i64 %614, i64* %616, align 8
  %617 = load i32, i32* %8, align 4
  %618 = add nsw i32 %617, 2
  store i32 %618, i32* %8, align 4
  br label %722

619:                                              ; preds = %583, %573, %564, %561
  %620 = load i32, i32* %11, align 4
  %621 = icmp eq i32 %620, 39
  br i1 %621, label %622, label %630

622:                                              ; preds = %619
  %623 = load i32*, i32** @ansi_to_cga, align 8
  %624 = load i64, i64* @DEFAULT_FG_COLOR, align 8
  %625 = getelementptr inbounds i32, i32* %623, i64 %624
  %626 = load i32, i32* %625, align 4
  %627 = sext i32 %626 to i64
  %628 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %629 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %628, i32 0, i32 6
  store i64 %627, i64* %629, align 8
  br label %721

630:                                              ; preds = %619
  %631 = load i32, i32* %11, align 4
  %632 = icmp sge i32 %631, 40
  br i1 %632, label %633, label %646

633:                                              ; preds = %630
  %634 = load i32, i32* %11, align 4
  %635 = icmp sle i32 %634, 47
  br i1 %635, label %636, label %646

636:                                              ; preds = %633
  %637 = load i32*, i32** @ansi_to_cga, align 8
  %638 = load i32, i32* %11, align 4
  %639 = sub nsw i32 %638, 40
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds i32, i32* %637, i64 %640
  %642 = load i32, i32* %641, align 4
  %643 = sext i32 %642 to i64
  %644 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %645 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %644, i32 0, i32 7
  store i64 %643, i64* %645, align 8
  br label %720

646:                                              ; preds = %633, %630
  %647 = load i32, i32* %11, align 4
  %648 = icmp eq i32 %647, 48
  br i1 %648, label %649, label %704

649:                                              ; preds = %646
  %650 = load i32, i32* %8, align 4
  %651 = add nsw i32 %650, 2
  %652 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %653 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %652, i32 0, i32 1
  %654 = load i32, i32* %653, align 4
  %655 = load i32, i32* @MAX_NB_ARGS, align 4
  %656 = call i32 @FFMIN(i32 %654, i32 %655)
  %657 = icmp slt i32 %651, %656
  br i1 %657, label %658, label %704

658:                                              ; preds = %649
  %659 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %660 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %659, i32 0, i32 2
  %661 = load i32*, i32** %660, align 8
  %662 = load i32, i32* %8, align 4
  %663 = add nsw i32 %662, 1
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds i32, i32* %661, i64 %664
  %666 = load i32, i32* %665, align 4
  %667 = icmp eq i32 %666, 5
  br i1 %667, label %668, label %704

668:                                              ; preds = %658
  %669 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %670 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %669, i32 0, i32 2
  %671 = load i32*, i32** %670, align 8
  %672 = load i32, i32* %8, align 4
  %673 = add nsw i32 %672, 2
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds i32, i32* %671, i64 %674
  %676 = load i32, i32* %675, align 4
  %677 = icmp slt i32 %676, 256
  br i1 %677, label %678, label %704

678:                                              ; preds = %668
  %679 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %680 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %679, i32 0, i32 2
  %681 = load i32*, i32** %680, align 8
  %682 = load i32, i32* %8, align 4
  %683 = add nsw i32 %682, 2
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds i32, i32* %681, i64 %684
  %686 = load i32, i32* %685, align 4
  store i32 %686, i32* %13, align 4
  %687 = load i32, i32* %13, align 4
  %688 = icmp slt i32 %687, 16
  br i1 %688, label %689, label %695

689:                                              ; preds = %678
  %690 = load i32*, i32** @ansi_to_cga, align 8
  %691 = load i32, i32* %13, align 4
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds i32, i32* %690, i64 %692
  %694 = load i32, i32* %693, align 4
  br label %697

695:                                              ; preds = %678
  %696 = load i32, i32* %13, align 4
  br label %697

697:                                              ; preds = %695, %689
  %698 = phi i32 [ %694, %689 ], [ %696, %695 ]
  %699 = sext i32 %698 to i64
  %700 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %701 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %700, i32 0, i32 7
  store i64 %699, i64* %701, align 8
  %702 = load i32, i32* %8, align 4
  %703 = add nsw i32 %702, 2
  store i32 %703, i32* %8, align 4
  br label %719

704:                                              ; preds = %668, %658, %649, %646
  %705 = load i32, i32* %11, align 4
  %706 = icmp eq i32 %705, 49
  br i1 %706, label %707, label %715

707:                                              ; preds = %704
  %708 = load i32*, i32** @ansi_to_cga, align 8
  %709 = load i64, i64* @DEFAULT_BG_COLOR, align 8
  %710 = getelementptr inbounds i32, i32* %708, i64 %709
  %711 = load i32, i32* %710, align 4
  %712 = sext i32 %711 to i64
  %713 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %714 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %713, i32 0, i32 6
  store i64 %712, i64* %714, align 8
  br label %718

715:                                              ; preds = %704
  %716 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %717 = call i32 @avpriv_request_sample(%struct.TYPE_12__* %716, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %718

718:                                              ; preds = %715, %707
  br label %719

719:                                              ; preds = %718, %697
  br label %720

720:                                              ; preds = %719, %636
  br label %721

721:                                              ; preds = %720, %622
  br label %722

722:                                              ; preds = %721, %612
  br label %723

723:                                              ; preds = %722, %551
  br label %724

724:                                              ; preds = %723, %537
  br label %725

725:                                              ; preds = %724, %510
  br label %726

726:                                              ; preds = %725
  %727 = load i32, i32* %8, align 4
  %728 = add nsw i32 %727, 1
  store i32 %728, i32* %8, align 4
  br label %492

729:                                              ; preds = %492
  br label %772

730:                                              ; preds = %2, %2
  br label %772

731:                                              ; preds = %2
  %732 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %733 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %732, i32 0, i32 4
  %734 = load i32, i32* %733, align 4
  %735 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %736 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %735, i32 0, i32 8
  store i32 %734, i32* %736, align 8
  %737 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %738 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %737, i32 0, i32 0
  %739 = load i32, i32* %738, align 8
  %740 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %741 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %740, i32 0, i32 9
  store i32 %739, i32* %741, align 4
  br label %772

742:                                              ; preds = %2
  %743 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %744 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %743, i32 0, i32 8
  %745 = load i32, i32* %744, align 8
  %746 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %747 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %746, i32 0, i32 0
  %748 = load i32, i32* %747, align 8
  %749 = load i32, i32* @FONT_WIDTH, align 4
  %750 = sub nsw i32 %748, %749
  %751 = call i8* @av_clip(i32 %745, i32 0, i32 %750)
  %752 = ptrtoint i8* %751 to i32
  %753 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %754 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %753, i32 0, i32 4
  store i32 %752, i32* %754, align 4
  %755 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %756 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %755, i32 0, i32 9
  %757 = load i32, i32* %756, align 4
  %758 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %759 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %758, i32 0, i32 1
  %760 = load i32, i32* %759, align 4
  %761 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %762 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %761, i32 0, i32 3
  %763 = load i32, i32* %762, align 8
  %764 = sub nsw i32 %760, %763
  %765 = call i8* @av_clip(i32 %757, i32 0, i32 %764)
  %766 = ptrtoint i8* %765 to i32
  %767 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %768 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %767, i32 0, i32 0
  store i32 %766, i32* %768, align 8
  br label %772

769:                                              ; preds = %2
  %770 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %771 = call i32 @avpriv_request_sample(%struct.TYPE_12__* %770, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %772

772:                                              ; preds = %769, %742, %731, %730, %729, %478, %446, %334, %192, %135, %106, %75, %46
  %773 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %774 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %773, i32 0, i32 4
  %775 = load i32, i32* %774, align 4
  %776 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %777 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %776, i32 0, i32 0
  %778 = load i32, i32* %777, align 8
  %779 = load i32, i32* @FONT_WIDTH, align 4
  %780 = sub nsw i32 %778, %779
  %781 = call i8* @av_clip(i32 %775, i32 0, i32 %780)
  %782 = ptrtoint i8* %781 to i32
  %783 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %784 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %783, i32 0, i32 4
  store i32 %782, i32* %784, align 4
  %785 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %786 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %785, i32 0, i32 0
  %787 = load i32, i32* %786, align 8
  %788 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %789 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %788, i32 0, i32 1
  %790 = load i32, i32* %789, align 4
  %791 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %792 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %791, i32 0, i32 3
  %793 = load i32, i32* %792, align 8
  %794 = sub nsw i32 %790, %793
  %795 = call i8* @av_clip(i32 %787, i32 0, i32 %794)
  %796 = ptrtoint i8* %795 to i32
  %797 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %798 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %797, i32 0, i32 0
  store i32 %796, i32* %798, align 8
  store i32 0, i32* %3, align 4
  br label %799

799:                                              ; preds = %772, %303, %293
  %800 = load i32, i32* %3, align 4
  ret i32 %800
}

declare dso_local i8* @FFMAX(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i8* @av_clip(i32, i32, i32) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @av_frame_unref(%struct.TYPE_13__*) #1

declare dso_local i32 @ff_set_dimensions(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_12__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @set_palette(i32*) #1

declare dso_local i32 @erase_screen(%struct.TYPE_12__*) #1

declare dso_local i32 @erase_line(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @memset(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
