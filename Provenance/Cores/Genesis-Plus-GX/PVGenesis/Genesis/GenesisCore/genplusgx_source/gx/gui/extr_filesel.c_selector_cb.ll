; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_filesel.c_selector_cb.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_filesel.c_selector_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@Browser_dir_png = common dso_local global i32 0, align 4
@Overlay_bar_png = common dso_local global i32 0, align 4
@BG_COLOR_1 = common dso_local global i64 0, align 8
@BG_COLOR_2 = common dso_local global i64 0, align 8
@offset = common dso_local global i32 0, align 4
@maxfiles = common dso_local global i32 0, align 4
@selection = common dso_local global i32 0, align 4
@string_offset = common dso_local global i32 0, align 4
@SCROLL_SPEED = common dso_local global i32 0, align 4
@filelist = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@WHITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @selector_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @selector_cb() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = load i32, i32* @MAXPATHLEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %2, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %3, align 8
  store i32 108, i32* %4, align 4
  %11 = load i32, i32* @Browser_dir_png, align 4
  %12 = call i8* @gxTextureOpenPNG(i32 %11, i32 0)
  %13 = bitcast i8* %12 to %struct.TYPE_6__*
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 4
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  store i32 26, i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 26, %27
  %29 = sdiv i32 %28, 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @Overlay_bar_png, align 4
  %32 = call i8* @gxTextureOpenPNG(i32 %31, i32 0)
  %33 = bitcast i8* %32 to %struct.TYPE_6__*
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 4
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  store i32 16, i32* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 26, %47
  %49 = sdiv i32 %48, 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  store i32 %49, i32* %50, align 4
  %51 = load i64, i64* @BG_COLOR_1, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @gxDrawRectangle(i32 15, i32 108, i32 358, i32 26, i32 127, i32 %52)
  %54 = load i64, i64* @BG_COLOR_2, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 @gxDrawRectangle(i32 15, i32 134, i32 358, i32 26, i32 127, i32 %55)
  %57 = load i64, i64* @BG_COLOR_1, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @gxDrawRectangle(i32 15, i32 160, i32 358, i32 26, i32 127, i32 %58)
  %60 = load i64, i64* @BG_COLOR_2, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @gxDrawRectangle(i32 15, i32 186, i32 358, i32 26, i32 127, i32 %61)
  %63 = load i64, i64* @BG_COLOR_1, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @gxDrawRectangle(i32 15, i32 212, i32 358, i32 26, i32 127, i32 %64)
  %66 = load i64, i64* @BG_COLOR_2, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 @gxDrawRectangle(i32 15, i32 238, i32 358, i32 26, i32 127, i32 %67)
  %69 = load i64, i64* @BG_COLOR_1, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @gxDrawRectangle(i32 15, i32 264, i32 358, i32 26, i32 127, i32 %70)
  %72 = load i64, i64* @BG_COLOR_2, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @gxDrawRectangle(i32 15, i32 290, i32 358, i32 26, i32 127, i32 %73)
  %75 = load i64, i64* @BG_COLOR_1, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i32 @gxDrawRectangle(i32 15, i32 316, i32 358, i32 26, i32 127, i32 %76)
  %78 = load i64, i64* @BG_COLOR_2, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @gxDrawRectangle(i32 15, i32 342, i32 358, i32 26, i32 127, i32 %79)
  %81 = load i32, i32* @offset, align 4
  store i32 %81, i32* %1, align 4
  br label %82

82:                                               ; preds = %284, %0
  %83 = load i32, i32* %1, align 4
  %84 = load i32, i32* @offset, align 4
  %85 = add nsw i32 %84, 10
  %86 = icmp slt i32 %83, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load i32, i32* %1, align 4
  %89 = load i32, i32* @maxfiles, align 4
  %90 = icmp slt i32 %88, %89
  br label %91

91:                                               ; preds = %87, %82
  %92 = phi i1 [ false, %82 ], [ %90, %87 ]
  br i1 %92, label %93, label %287

93:                                               ; preds = %91
  %94 = load i32, i32* %1, align 4
  %95 = load i32, i32* @selection, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %218

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %102, %104
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @gxDrawTexture(%struct.TYPE_6__* %99, i32 %101, i32 %105, i32 %107, i32 %109, i32 255)
  %111 = load i32, i32* @string_offset, align 4
  %112 = load i32, i32* @SCROLL_SPEED, align 4
  %113 = sdiv i32 %111, %112
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** @filelist, align 8
  %115 = load i32, i32* %1, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @strlen(i8* %119)
  %121 = icmp sge i32 %113, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %97
  store i32 0, i32* @string_offset, align 4
  br label %123

123:                                              ; preds = %122, %97
  %124 = load i32, i32* @string_offset, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %149

126:                                              ; preds = %123
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** @filelist, align 8
  %128 = load i32, i32* %1, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = load i32, i32* @string_offset, align 4
  %134 = load i32, i32* @SCROLL_SPEED, align 4
  %135 = sdiv i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %132, i64 %136
  %138 = call i32 @sprintf(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %137)
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** @filelist, align 8
  %140 = load i32, i32* %1, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = load i32, i32* @string_offset, align 4
  %146 = load i32, i32* @SCROLL_SPEED, align 4
  %147 = sdiv i32 %145, %146
  %148 = call i32 @strncat(i8* %10, i8* %144, i32 %147)
  br label %157

149:                                              ; preds = %123
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** @filelist, align 8
  %151 = load i32, i32* %1, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @strcpy(i8* %10, i8* %155)
  br label %157

157:                                              ; preds = %149, %126
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** @filelist, align 8
  %159 = load i32, i32* %1, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %201

165:                                              ; preds = %157
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 4
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %4, align 4
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %170, %172
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @gxDrawTexture(%struct.TYPE_6__* %167, i32 %169, i32 %173, i32 %175, i32 %177, i32 255)
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = add nsw i32 %180, %182
  %184 = add nsw i32 %183, 6
  %185 = load i32, i32* %4, align 4
  %186 = add nsw i32 %185, 22
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = sub nsw i32 %188, %190
  %192 = sub nsw i32 %191, 26
  %193 = load i64, i64* @WHITE, align 8
  %194 = trunc i64 %193 to i32
  %195 = call i64 @FONT_write(i8* %10, i32 18, i32 %184, i32 %186, i32 %192, i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %165
  %198 = load i32, i32* @string_offset, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* @string_offset, align 4
  br label %200

200:                                              ; preds = %197, %165
  br label %217

201:                                              ; preds = %157
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* %4, align 4
  %205 = add nsw i32 %204, 22
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = sub nsw i32 %207, 20
  %209 = load i64, i64* @WHITE, align 8
  %210 = trunc i64 %209 to i32
  %211 = call i64 @FONT_write(i8* %10, i32 18, i32 %203, i32 %205, i32 %208, i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %201
  %214 = load i32, i32* @string_offset, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* @string_offset, align 4
  br label %216

216:                                              ; preds = %213, %201
  br label %217

217:                                              ; preds = %216, %200
  br label %281

218:                                              ; preds = %93
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** @filelist, align 8
  %220 = load i32, i32* %1, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %263

226:                                              ; preds = %218
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 4
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* %4, align 4
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = add nsw i32 %231, %233
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @gxDrawTexture(%struct.TYPE_6__* %228, i32 %230, i32 %234, i32 %236, i32 %238, i32 255)
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** @filelist, align 8
  %241 = load i32, i32* %1, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 0
  %245 = load i8*, i8** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = add nsw i32 %247, %249
  %251 = add nsw i32 %250, 6
  %252 = load i32, i32* %4, align 4
  %253 = add nsw i32 %252, 22
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = sub nsw i32 %255, %257
  %259 = sub nsw i32 %258, 26
  %260 = load i64, i64* @WHITE, align 8
  %261 = trunc i64 %260 to i32
  %262 = call i64 @FONT_write(i8* %245, i32 18, i32 %251, i32 %253, i32 %259, i32 %261)
  br label %280

263:                                              ; preds = %218
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** @filelist, align 8
  %265 = load i32, i32* %1, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 0
  %269 = load i8*, i8** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* %4, align 4
  %273 = add nsw i32 %272, 22
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = sub nsw i32 %275, 20
  %277 = load i64, i64* @WHITE, align 8
  %278 = trunc i64 %277 to i32
  %279 = call i64 @FONT_write(i8* %269, i32 18, i32 %271, i32 %273, i32 %276, i32 %278)
  br label %280

280:                                              ; preds = %263, %226
  br label %281

281:                                              ; preds = %280, %217
  %282 = load i32, i32* %4, align 4
  %283 = add nsw i32 %282, 26
  store i32 %283, i32* %4, align 4
  br label %284

284:                                              ; preds = %281
  %285 = load i32, i32* %1, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %1, align 4
  br label %82

287:                                              ; preds = %91
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 4
  %289 = call i32 @gxTextureClose(%struct.TYPE_6__** %288)
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 4
  %291 = call i32 @gxTextureClose(%struct.TYPE_6__** %290)
  %292 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %292)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @gxTextureOpenPNG(i32, i32) #2

declare dso_local i32 @gxDrawRectangle(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @gxDrawTexture(%struct.TYPE_6__*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i32 @strncat(i8*, i8*, i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i64 @FONT_write(i8*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @gxTextureClose(%struct.TYPE_6__**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
