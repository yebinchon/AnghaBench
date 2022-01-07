; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_gui.c_GUI_DrawMenu.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_gui.c_GUI_DrawMenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 (...)*, %struct.TYPE_9__**, %struct.TYPE_11__**, %struct.TYPE_9__*, %struct.TYPE_11__*, i32, %struct.TYPE_10__*, i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i64 }

@BLACK = common dso_local global i64 0, align 8
@bg_color = common dso_local global i32 0, align 4
@IMAGE_VISIBLE = common dso_local global i32 0, align 4
@IMAGE_REPEAT = common dso_local global i32 0, align 4
@WHITE = common dso_local global i64 0, align 8
@BUTTON_VISIBLE = common dso_local global i32 0, align 4
@BUTTON_SELECTED = common dso_local global i32 0, align 4
@DARK_GREY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GUI_DrawMenu(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 11
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load i64, i64* @BLACK, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 @gxClearScreen(i32 %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 11
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @gxDrawScreenshot(i64 %17)
  br label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @bg_color, align 4
  %21 = call i32 @gxClearScreen(i32 %20)
  br label %22

22:                                               ; preds = %19, %11
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %91, %22
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %94

29:                                               ; preds = %23
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 10
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i64 %34
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %6, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IMAGE_VISIBLE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %90

42:                                               ; preds = %29
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @IMAGE_REPEAT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %42
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @gxDrawTextureRepeat(i64 %52, i32 %55, i32 %58, i32 %61, i32 %64, i32 %67)
  br label %89

69:                                               ; preds = %42
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @gxDrawTexture(i64 %72, i32 %75, i32 %78, i32 %81, i32 %84, i32 %87)
  br label %89

89:                                               ; preds = %69, %49
  br label %90

90:                                               ; preds = %89, %29
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %3, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %3, align 4
  br label %23

94:                                               ; preds = %23
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 9
  %97 = load i32, i32* %96, align 8
  %98 = load i64, i64* @WHITE, align 8
  %99 = trunc i64 %98 to i32
  %100 = call i32 @FONT_write(i32 %97, i32 22, i32 10, i32 56, i32 640, i32 %99)
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %370, %94
  %102 = load i32, i32* %3, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %373

107:                                              ; preds = %101
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %109, align 8
  %111 = load i32, i32* %3, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i64 %112
  store %struct.TYPE_11__* %113, %struct.TYPE_11__** %5, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @BUTTON_VISIBLE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %369

120:                                              ; preds = %107
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 7
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = icmp ne %struct.TYPE_9__* %123, null
  br i1 %124, label %125, label %136

125:                                              ; preds = %120
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 7
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %3, align 4
  %133 = add nsw i32 %131, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i64 %134
  br label %137

136:                                              ; preds = %120
  br label %137

137:                                              ; preds = %136, %125
  %138 = phi %struct.TYPE_9__* [ %135, %125 ], [ null, %136 ]
  store %struct.TYPE_9__* %138, %struct.TYPE_9__** %4, align 8
  %139 = load i32, i32* %3, align 4
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %139, %142
  br i1 %143, label %151, label %144

144:                                              ; preds = %137
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @BUTTON_SELECTED, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %265

151:                                              ; preds = %144, %137
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 5
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = icmp ne %struct.TYPE_7__* %154, null
  br i1 %155, label %156, label %181

156:                                              ; preds = %151
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 5
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i64*, i64** %160, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 1
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = sub nsw i32 %166, 4
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = sub nsw i32 %170, 4
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, 8
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, 8
  %180 = call i32 @gxDrawTexture(i64 %163, i32 %167, i32 %171, i32 %175, i32 %179, i32 255)
  br label %181

181:                                              ; preds = %156, %151
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %183 = icmp ne %struct.TYPE_9__* %182, null
  br i1 %183, label %184, label %264

184:                                              ; preds = %181
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 5
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %234

189:                                              ; preds = %184
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 5
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = sub nsw i32 %195, 4
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = sub nsw i32 %199, 4
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = add nsw i32 %203, 8
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %207, 8
  %209 = call i32 @gxDrawTexture(i64 %192, i32 %196, i32 %200, i32 %204, i32 %208, i32 255)
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 7
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %215, 4
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = sub nsw i32 %219, 4
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = sub nsw i32 %226, 36
  %228 = sdiv i32 %227, 2
  %229 = add nsw i32 %223, %228
  %230 = add nsw i32 %229, 18
  %231 = load i64, i64* @DARK_GREY, align 8
  %232 = trunc i64 %231 to i32
  %233 = call i32 @FONT_writeCenter(i32 %212, i32 18, i32 %216, i32 %220, i32 %230, i32 %232)
  br label %263

234:                                              ; preds = %184
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 7
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = sub nsw i32 %240, 4
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = add nsw i32 %244, %247
  %249 = add nsw i32 %248, 4
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 8
  %256 = sub nsw i32 %255, 18
  %257 = sdiv i32 %256, 2
  %258 = add nsw i32 %252, %257
  %259 = add nsw i32 %258, 18
  %260 = load i64, i64* @DARK_GREY, align 8
  %261 = trunc i64 %260 to i32
  %262 = call i32 @FONT_writeCenter(i32 %237, i32 18, i32 %241, i32 %249, i32 %259, i32 %261)
  br label %263

263:                                              ; preds = %234, %189
  br label %264

264:                                              ; preds = %263, %181
  br label %368

265:                                              ; preds = %144
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 5
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %267, align 8
  %269 = icmp ne %struct.TYPE_7__* %268, null
  br i1 %269, label %270, label %291

270:                                              ; preds = %265
  %271 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 5
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 0
  %275 = load i64*, i64** %274, align 8
  %276 = getelementptr inbounds i64, i64* %275, i64 0
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 4
  %289 = load i32, i32* %288, align 8
  %290 = call i32 @gxDrawTexture(i64 %277, i32 %280, i32 %283, i32 %286, i32 %289, i32 255)
  br label %291

291:                                              ; preds = %270, %265
  %292 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %293 = icmp ne %struct.TYPE_9__* %292, null
  br i1 %293, label %294, label %367

294:                                              ; preds = %291
  %295 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 5
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %339

299:                                              ; preds = %294
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 5
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %312, i32 0, i32 3
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @gxDrawTexture(i64 %302, i32 %305, i32 %308, i32 %311, i32 %314, i32 255)
  %316 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %316, i32 0, i32 7
  %318 = load i32, i32* %317, align 8
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = add nsw i32 %321, 8
  %323 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 8
  %329 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %329, i32 0, i32 4
  %331 = load i32, i32* %330, align 8
  %332 = sub nsw i32 %331, 32
  %333 = sdiv i32 %332, 2
  %334 = add nsw i32 %328, %333
  %335 = add nsw i32 %334, 16
  %336 = load i64, i64* @DARK_GREY, align 8
  %337 = trunc i64 %336 to i32
  %338 = call i32 @FONT_writeCenter(i32 %318, i32 16, i32 %322, i32 %325, i32 %335, i32 %337)
  br label %366

339:                                              ; preds = %294
  %340 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %341 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %340, i32 0, i32 7
  %342 = load i32, i32* %341, align 8
  %343 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 8
  %352 = add nsw i32 %348, %351
  %353 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %354 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 8
  %356 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %356, i32 0, i32 4
  %358 = load i32, i32* %357, align 8
  %359 = sub nsw i32 %358, 16
  %360 = sdiv i32 %359, 2
  %361 = add nsw i32 %355, %360
  %362 = add nsw i32 %361, 16
  %363 = load i64, i64* @DARK_GREY, align 8
  %364 = trunc i64 %363 to i32
  %365 = call i32 @FONT_writeCenter(i32 %342, i32 16, i32 %345, i32 %352, i32 %362, i32 %364)
  br label %366

366:                                              ; preds = %339, %299
  br label %367

367:                                              ; preds = %366, %291
  br label %368

368:                                              ; preds = %367, %264
  br label %369

369:                                              ; preds = %368, %107
  br label %370

370:                                              ; preds = %369
  %371 = load i32, i32* %3, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %3, align 4
  br label %101

373:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %374

374:                                              ; preds = %453, %373
  %375 = load i32, i32* %3, align 4
  %376 = icmp slt i32 %375, 2
  br i1 %376, label %377, label %456

377:                                              ; preds = %374
  %378 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %379 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %378, i32 0, i32 6
  %380 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %379, align 8
  %381 = load i32, i32* %3, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %380, i64 %382
  %384 = load %struct.TYPE_11__*, %struct.TYPE_11__** %383, align 8
  store %struct.TYPE_11__* %384, %struct.TYPE_11__** %5, align 8
  %385 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %386 = icmp ne %struct.TYPE_11__* %385, null
  br i1 %386, label %387, label %452

387:                                              ; preds = %377
  %388 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %389 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = load i32, i32* @BUTTON_VISIBLE, align 4
  %392 = and i32 %390, %391
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %451

394:                                              ; preds = %387
  %395 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %396 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %395, i32 0, i32 3
  %397 = load i32, i32* %396, align 4
  %398 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %399 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = load i32, i32* %3, align 4
  %402 = add nsw i32 %400, %401
  %403 = icmp eq i32 %397, %402
  br i1 %403, label %404, label %429

404:                                              ; preds = %394
  %405 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %406 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %405, i32 0, i32 5
  %407 = load %struct.TYPE_7__*, %struct.TYPE_7__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %407, i32 0, i32 0
  %409 = load i64*, i64** %408, align 8
  %410 = getelementptr inbounds i64, i64* %409, i64 1
  %411 = load i64, i64* %410, align 8
  %412 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %413 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %412, i32 0, i32 1
  %414 = load i32, i32* %413, align 4
  %415 = sub nsw i32 %414, 2
  %416 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %417 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %416, i32 0, i32 2
  %418 = load i32, i32* %417, align 8
  %419 = sub nsw i32 %418, 2
  %420 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %421 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %420, i32 0, i32 3
  %422 = load i32, i32* %421, align 4
  %423 = add nsw i32 %422, 4
  %424 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %425 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %424, i32 0, i32 4
  %426 = load i32, i32* %425, align 8
  %427 = add nsw i32 %426, 4
  %428 = call i32 @gxDrawTexture(i64 %411, i32 %415, i32 %419, i32 %423, i32 %427, i32 255)
  br label %450

429:                                              ; preds = %394
  %430 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %431 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %430, i32 0, i32 5
  %432 = load %struct.TYPE_7__*, %struct.TYPE_7__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %432, i32 0, i32 0
  %434 = load i64*, i64** %433, align 8
  %435 = getelementptr inbounds i64, i64* %434, i64 0
  %436 = load i64, i64* %435, align 8
  %437 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %438 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 4
  %440 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %441 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %440, i32 0, i32 2
  %442 = load i32, i32* %441, align 8
  %443 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %444 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %443, i32 0, i32 3
  %445 = load i32, i32* %444, align 4
  %446 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %447 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %446, i32 0, i32 4
  %448 = load i32, i32* %447, align 8
  %449 = call i32 @gxDrawTexture(i64 %436, i32 %439, i32 %442, i32 %445, i32 %448, i32 255)
  br label %450

450:                                              ; preds = %429, %404
  br label %451

451:                                              ; preds = %450, %387
  br label %452

452:                                              ; preds = %451, %377
  br label %453

453:                                              ; preds = %452
  %454 = load i32, i32* %3, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %3, align 4
  br label %374

456:                                              ; preds = %374
  %457 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %458 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %457, i32 0, i32 5
  %459 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %458, align 8
  %460 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %459, i64 0
  %461 = load %struct.TYPE_9__*, %struct.TYPE_9__** %460, align 8
  store %struct.TYPE_9__* %461, %struct.TYPE_9__** %4, align 8
  %462 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %463 = icmp ne %struct.TYPE_9__* %462, null
  br i1 %463, label %464, label %517

464:                                              ; preds = %456
  %465 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %466 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %465, i32 0, i32 6
  %467 = load i64, i64* %466, align 8
  %468 = icmp ne i64 %467, 0
  br i1 %468, label %469, label %516

469:                                              ; preds = %464
  %470 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %471 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %470, i32 0, i32 4
  %472 = load i32, i32* %471, align 8
  %473 = call i64 @strlen(i32 %472)
  %474 = icmp ne i64 %473, 0
  br i1 %474, label %475, label %516

475:                                              ; preds = %469
  %476 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %477 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %476, i32 0, i32 5
  %478 = load i64, i64* %477, align 8
  %479 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %480 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 8
  %482 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %483 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %482, i32 0, i32 1
  %484 = load i32, i32* %483, align 4
  %485 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %486 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %485, i32 0, i32 2
  %487 = load i32, i32* %486, align 8
  %488 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %489 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %488, i32 0, i32 3
  %490 = load i32, i32* %489, align 4
  %491 = call i32 @gxDrawTexture(i64 %478, i32 %481, i32 %484, i32 %487, i32 %490, i32 255)
  %492 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %493 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %492, i32 0, i32 4
  %494 = load i32, i32* %493, align 8
  %495 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %496 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %495, i32 0, i32 0
  %497 = load i32, i32* %496, align 8
  %498 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %499 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %498, i32 0, i32 2
  %500 = load i32, i32* %499, align 8
  %501 = add nsw i32 %497, %500
  %502 = add nsw i32 %501, 6
  %503 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %504 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %503, i32 0, i32 1
  %505 = load i32, i32* %504, align 4
  %506 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %507 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %506, i32 0, i32 3
  %508 = load i32, i32* %507, align 4
  %509 = sub nsw i32 %508, 16
  %510 = sdiv i32 %509, 2
  %511 = add nsw i32 %505, %510
  %512 = add nsw i32 %511, 16
  %513 = load i64, i64* @WHITE, align 8
  %514 = trunc i64 %513 to i32
  %515 = call i32 @FONT_write(i32 %494, i32 16, i32 %502, i32 %512, i32 640, i32 %514)
  br label %516

516:                                              ; preds = %475, %469, %464
  br label %517

517:                                              ; preds = %516, %456
  %518 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %519 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %518, i32 0, i32 5
  %520 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %519, align 8
  %521 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %520, i64 1
  %522 = load %struct.TYPE_9__*, %struct.TYPE_9__** %521, align 8
  store %struct.TYPE_9__* %522, %struct.TYPE_9__** %4, align 8
  %523 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %524 = icmp ne %struct.TYPE_9__* %523, null
  br i1 %524, label %525, label %574

525:                                              ; preds = %517
  %526 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %527 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %526, i32 0, i32 6
  %528 = load i64, i64* %527, align 8
  %529 = icmp ne i64 %528, 0
  br i1 %529, label %530, label %573

530:                                              ; preds = %525
  %531 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %532 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %531, i32 0, i32 4
  %533 = load i32, i32* %532, align 8
  %534 = call i64 @strlen(i32 %533)
  %535 = icmp ne i64 %534, 0
  br i1 %535, label %536, label %573

536:                                              ; preds = %530
  %537 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %538 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %537, i32 0, i32 5
  %539 = load i64, i64* %538, align 8
  %540 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %541 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %540, i32 0, i32 0
  %542 = load i32, i32* %541, align 8
  %543 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %544 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %543, i32 0, i32 1
  %545 = load i32, i32* %544, align 4
  %546 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %547 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %546, i32 0, i32 2
  %548 = load i32, i32* %547, align 8
  %549 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %550 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %549, i32 0, i32 3
  %551 = load i32, i32* %550, align 4
  %552 = call i32 @gxDrawTexture(i64 %539, i32 %542, i32 %545, i32 %548, i32 %551, i32 255)
  %553 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %554 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %553, i32 0, i32 4
  %555 = load i32, i32* %554, align 8
  %556 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %557 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %556, i32 0, i32 0
  %558 = load i32, i32* %557, align 8
  %559 = sub nsw i32 %558, 6
  %560 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %561 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %560, i32 0, i32 1
  %562 = load i32, i32* %561, align 4
  %563 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %564 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %563, i32 0, i32 3
  %565 = load i32, i32* %564, align 4
  %566 = sub nsw i32 %565, 16
  %567 = sdiv i32 %566, 2
  %568 = add nsw i32 %562, %567
  %569 = add nsw i32 %568, 16
  %570 = load i64, i64* @WHITE, align 8
  %571 = trunc i64 %570 to i32
  %572 = call i32 @FONT_alignRight(i32 %555, i32 16, i32 %559, i32 %569, i32 %571)
  br label %573

573:                                              ; preds = %536, %530, %525
  br label %574

574:                                              ; preds = %573, %517
  %575 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %576 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %575, i32 0, i32 4
  %577 = load i32 (...)*, i32 (...)** %576, align 8
  %578 = icmp ne i32 (...)* %577, null
  br i1 %578, label %579, label %584

579:                                              ; preds = %574
  %580 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %581 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %580, i32 0, i32 4
  %582 = load i32 (...)*, i32 (...)** %581, align 8
  %583 = call i32 (...) %582()
  br label %584

584:                                              ; preds = %579, %574
  ret void
}

declare dso_local i32 @gxClearScreen(i32) #1

declare dso_local i32 @gxDrawScreenshot(i64) #1

declare dso_local i32 @gxDrawTextureRepeat(i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gxDrawTexture(i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FONT_write(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FONT_writeCenter(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @FONT_alignRight(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
