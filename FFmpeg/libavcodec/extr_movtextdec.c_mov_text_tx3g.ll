; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_movtextdec.c_mov_text_tx3g.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_movtextdec.c_mov_text_tx3g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_16__**, %struct.TYPE_11__, %struct.TYPE_15__*, i64 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i8*, i32, i8*, i32 }
%struct.TYPE_15__ = type { i8*, i8* }
%struct.TYPE_12__ = type { i32 }

@BOX_SIZE_INITIAL = common dso_local global i32 0, align 4
@TOP_LEFT = common dso_local global i32 0, align 4
@MIDDLE_LEFT = common dso_local global i32 0, align 4
@BOTTOM_LEFT = common dso_local global i32 0, align 4
@TOP_CENTER = common dso_local global i32 0, align 4
@MIDDLE_CENTER = common dso_local global i32 0, align 4
@BOTTOM_CENTER = common dso_local global i32 0, align 4
@TOP_RIGHT = common dso_local global i32 0, align 4
@MIDDLE_RIGHT = common dso_local global i32 0, align 4
@BOTTOM_RIGHT = common dso_local global i32 0, align 4
@STYLE_FLAG_BOLD = common dso_local global i32 0, align 4
@STYLE_FLAG_ITALIC = common dso_local global i32 0, align 4
@STYLE_FLAG_UNDERLINE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_13__*)* @mov_text_tx3g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_text_tx3g(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %6, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 4
  store i64 0, i64* %18, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load i32, i32* @BOX_SIZE_INITIAL, align 4
  store i32 %21, i32* %8, align 4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %343

28:                                               ; preds = %2
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  store i32* %30, i32** %6, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %6, align 8
  %33 = load i32, i32* %31, align 4
  store i32 %33, i32* %11, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %6, align 8
  %36 = load i32, i32* %34, align 4
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %28
  %40 = load i32, i32* %10, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* @TOP_LEFT, align 4
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 7
  store i32 %43, i32* %46, align 8
  br label %47

47:                                               ; preds = %42, %39
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* @MIDDLE_LEFT, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 7
  store i32 %51, i32* %54, align 8
  br label %55

55:                                               ; preds = %50, %47
  %56 = load i32, i32* %10, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i32, i32* @BOTTOM_LEFT, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 7
  store i32 %59, i32* %62, align 8
  br label %63

63:                                               ; preds = %58, %55
  br label %64

64:                                               ; preds = %63, %28
  %65 = load i32, i32* %11, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %92

67:                                               ; preds = %64
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i32, i32* @TOP_CENTER, align 4
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 7
  store i32 %71, i32* %74, align 8
  br label %75

75:                                               ; preds = %70, %67
  %76 = load i32, i32* %10, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load i32, i32* @MIDDLE_CENTER, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 7
  store i32 %79, i32* %82, align 8
  br label %83

83:                                               ; preds = %78, %75
  %84 = load i32, i32* %10, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i32, i32* @BOTTOM_CENTER, align 4
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 7
  store i32 %87, i32* %90, align 8
  br label %91

91:                                               ; preds = %86, %83
  br label %92

92:                                               ; preds = %91, %64
  %93 = load i32, i32* %11, align 4
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %120

95:                                               ; preds = %92
  %96 = load i32, i32* %10, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load i32, i32* @TOP_RIGHT, align 4
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 7
  store i32 %99, i32* %102, align 8
  br label %103

103:                                              ; preds = %98, %95
  %104 = load i32, i32* %10, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i32, i32* @MIDDLE_RIGHT, align 4
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 7
  store i32 %107, i32* %110, align 8
  br label %111

111:                                              ; preds = %106, %103
  %112 = load i32, i32* %10, align 4
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load i32, i32* @BOTTOM_RIGHT, align 4
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 7
  store i32 %115, i32* %118, align 8
  br label %119

119:                                              ; preds = %114, %111
  br label %120

120:                                              ; preds = %119, %92
  %121 = load i32*, i32** %6, align 8
  %122 = call i8* @AV_RB24(i32* %121)
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 6
  store i8* %122, i8** %125, align 8
  %126 = load i32*, i32** %6, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 4
  store i32* %127, i32** %6, align 8
  %128 = load i32*, i32** %6, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 8
  store i32* %129, i32** %6, align 8
  %130 = load i32*, i32** %6, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 4
  store i32* %131, i32** %6, align 8
  %132 = load i32*, i32** %6, align 8
  %133 = call i8* @AV_RB16(i32* %132)
  %134 = ptrtoint i8* %133 to i32
  store i32 %134, i32* %12, align 4
  %135 = load i32*, i32** %6, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 2
  store i32* %136, i32** %6, align 8
  %137 = load i32*, i32** %6, align 8
  %138 = getelementptr inbounds i32, i32* %137, i32 1
  store i32* %138, i32** %6, align 8
  %139 = load i32, i32* %137, align 4
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  store i32 %139, i32* %140, align 4
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @STYLE_FLAG_BOLD, align 4
  %144 = and i32 %142, %143
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  store i32 %144, i32* %147, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @STYLE_FLAG_ITALIC, align 4
  %151 = and i32 %149, %150
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 1
  store i32 %151, i32* %154, align 4
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @STYLE_FLAG_UNDERLINE, align 4
  %158 = and i32 %156, %157
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 2
  store i32 %158, i32* %161, align 8
  %162 = load i32*, i32** %6, align 8
  %163 = getelementptr inbounds i32, i32* %162, i32 1
  store i32* %163, i32** %6, align 8
  %164 = load i32, i32* %162, align 4
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 5
  store i32 %164, i32* %167, align 8
  %168 = load i32*, i32** %6, align 8
  %169 = call i8* @AV_RB24(i32* %168)
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 4
  store i8* %169, i8** %172, align 8
  %173 = load i32*, i32** %6, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 4
  store i32* %174, i32** %6, align 8
  %175 = load i32*, i32** %6, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 4
  store i32* %176, i32** %6, align 8
  %177 = load i32*, i32** %6, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 4
  store i32* %178, i32** %6, align 8
  %179 = load i32*, i32** %6, align 8
  %180 = call i8* @AV_RB16(i32* %179)
  %181 = ptrtoint i8* %180 to i32
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load i32*, i32** %6, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 2
  store i32* %185, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %186

186:                                              ; preds = %303, %120
  %187 = load i32, i32* %7, align 4
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp slt i32 %187, %190
  br i1 %191, label %192, label %306

192:                                              ; preds = %186
  %193 = load i32, i32* %8, align 4
  %194 = add nsw i32 %193, 3
  store i32 %194, i32* %8, align 4
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* %8, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %205

200:                                              ; preds = %192
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %202 = call i32 @mov_text_cleanup_ftab(%struct.TYPE_13__* %201)
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 0
  store i32 0, i32* %204, align 8
  store i32 -1, i32* %3, align 4
  br label %343

205:                                              ; preds = %192
  %206 = call %struct.TYPE_15__* @av_mallocz(i32 16)
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 3
  store %struct.TYPE_15__* %206, %struct.TYPE_15__** %208, align 8
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 3
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %210, align 8
  %212 = icmp ne %struct.TYPE_15__* %211, null
  br i1 %212, label %218, label %213

213:                                              ; preds = %205
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %215 = call i32 @mov_text_cleanup_ftab(%struct.TYPE_13__* %214)
  %216 = load i32, i32* @ENOMEM, align 4
  %217 = call i32 @AVERROR(i32 %216)
  store i32 %217, i32* %3, align 4
  br label %343

218:                                              ; preds = %205
  %219 = load i32*, i32** %6, align 8
  %220 = call i8* @AV_RB16(i32* %219)
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 3
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 1
  store i8* %220, i8** %224, align 8
  %225 = load i32*, i32** %6, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 2
  store i32* %226, i32** %6, align 8
  %227 = load i32*, i32** %6, align 8
  %228 = getelementptr inbounds i32, i32* %227, i32 1
  store i32* %228, i32** %6, align 8
  %229 = load i32, i32* %227, align 4
  store i32 %229, i32* %9, align 4
  %230 = load i32, i32* %8, align 4
  %231 = load i32, i32* %9, align 4
  %232 = add nsw i32 %230, %231
  store i32 %232, i32* %8, align 4
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* %8, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %238, label %243

238:                                              ; preds = %218
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %240 = call i32 @mov_text_cleanup_ftab(%struct.TYPE_13__* %239)
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 0
  store i32 0, i32* %242, align 8
  store i32 -1, i32* %3, align 4
  br label %343

243:                                              ; preds = %218
  %244 = load i32, i32* %9, align 4
  %245 = add nsw i32 %244, 1
  %246 = call i8* @av_malloc(i32 %245)
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 3
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 0
  store i8* %246, i8** %250, align 8
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 3
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 0
  %255 = load i8*, i8** %254, align 8
  %256 = icmp ne i8* %255, null
  br i1 %256, label %262, label %257

257:                                              ; preds = %243
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %259 = call i32 @mov_text_cleanup_ftab(%struct.TYPE_13__* %258)
  %260 = load i32, i32* @ENOMEM, align 4
  %261 = call i32 @AVERROR(i32 %260)
  store i32 %261, i32* %3, align 4
  br label %343

262:                                              ; preds = %243
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 3
  %265 = load %struct.TYPE_15__*, %struct.TYPE_15__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 0
  %267 = load i8*, i8** %266, align 8
  %268 = load i32*, i32** %6, align 8
  %269 = load i32, i32* %9, align 4
  %270 = call i32 @memcpy(i8* %267, i32* %268, i32 %269)
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 3
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 0
  %275 = load i8*, i8** %274, align 8
  %276 = load i32, i32* %9, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8, i8* %275, i64 %277
  store i8 0, i8* %278, align 1
  %279 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 1
  %281 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 4
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 0, i32 3
  %285 = load %struct.TYPE_15__*, %struct.TYPE_15__** %284, align 8
  %286 = call i32 @av_dynarray_add(%struct.TYPE_16__*** %280, i64* %282, %struct.TYPE_15__* %285)
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i32 0, i32 1
  %289 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %288, align 8
  %290 = icmp ne %struct.TYPE_16__** %289, null
  br i1 %290, label %296, label %291

291:                                              ; preds = %262
  %292 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %293 = call i32 @mov_text_cleanup_ftab(%struct.TYPE_13__* %292)
  %294 = load i32, i32* @ENOMEM, align 4
  %295 = call i32 @AVERROR(i32 %294)
  store i32 %295, i32* %3, align 4
  br label %343

296:                                              ; preds = %262
  %297 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i32 0, i32 3
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %298, align 8
  %299 = load i32*, i32** %6, align 8
  %300 = load i32, i32* %9, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  store i32* %302, i32** %6, align 8
  br label %303

303:                                              ; preds = %296
  %304 = load i32, i32* %7, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %7, align 4
  br label %186

306:                                              ; preds = %186
  store i32 0, i32* %7, align 4
  br label %307

307:                                              ; preds = %339, %306
  %308 = load i32, i32* %7, align 4
  %309 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = icmp slt i32 %308, %311
  br i1 %312, label %313, label %342

313:                                              ; preds = %307
  %314 = load i32, i32* %12, align 4
  %315 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %315, i32 0, i32 1
  %317 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %316, align 8
  %318 = load i32, i32* %7, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %317, i64 %319
  %321 = load %struct.TYPE_16__*, %struct.TYPE_16__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = icmp eq i32 %314, %323
  br i1 %324, label %325, label %338

325:                                              ; preds = %313
  %326 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %326, i32 0, i32 1
  %328 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %327, align 8
  %329 = load i32, i32* %7, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %328, i64 %330
  %332 = load %struct.TYPE_16__*, %struct.TYPE_16__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %335, i32 0, i32 2
  %337 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %336, i32 0, i32 3
  store i32 %334, i32* %337, align 4
  br label %338

338:                                              ; preds = %325, %313
  br label %339

339:                                              ; preds = %338
  %340 = load i32, i32* %7, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %7, align 4
  br label %307

342:                                              ; preds = %307
  store i32 0, i32* %3, align 4
  br label %343

343:                                              ; preds = %342, %291, %257, %238, %213, %200, %27
  %344 = load i32, i32* %3, align 4
  ret i32 %344
}

declare dso_local i8* @AV_RB24(i32*) #1

declare dso_local i8* @AV_RB16(i32*) #1

declare dso_local i32 @mov_text_cleanup_ftab(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_15__* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @av_malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @av_dynarray_add(%struct.TYPE_16__***, i64*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
