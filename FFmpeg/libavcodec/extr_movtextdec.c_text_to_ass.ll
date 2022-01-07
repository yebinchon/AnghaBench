; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_movtextdec.c_text_to_ass.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_movtextdec.c_text_to_ass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__**, %struct.TYPE_11__**, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_10__ = type { i32 }

@TWRP_BOX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"{\\q1}\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"{\\q2}\00", align 1
@STYL_BOX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"{\\r}\00", align 1
@STYLE_FLAG_BOLD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"{\\b1}\00", align 1
@STYLE_FLAG_ITALIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"{\\i1}\00", align 1
@STYLE_FLAG_UNDERLINE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"{\\u1}\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"{\\fs%d}\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"{\\fn%s}\00", align 1
@HLIT_BOX = common dso_local global i32 0, align 4
@HCLR_BOX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"{\\2c&H%02x%02x%02x&}\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"{\\1c&H000000&}{\\2c&HFFFFFF&}\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"{\\2c&H000000&}\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"{\\1c&HFFFFFF&}{\\2c&H000000&}\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [32 x i8] c"invalid UTF-8 byte in subtitle\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"\\N\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, %struct.TYPE_16__*)* @text_to_ass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @text_to_ass(i32* %0, i8* %1, i8* %2, %struct.TYPE_16__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %8, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ult i8* %17, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @TWRP_BOX, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %20
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 7
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 (i32*, i8*, ...) @av_bprintf(i32* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %39

36:                                               ; preds = %27
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 (i32*, i8*, ...) @av_bprintf(i32* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %33
  br label %40

40:                                               ; preds = %39, %20, %4
  br label %41

41:                                               ; preds = %329, %40
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = icmp ult i8* %42, %43
  br i1 %44, label %45, label %332

45:                                               ; preds = %41
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @STYL_BOX, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %227

52:                                               ; preds = %45
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %86, %52
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %89

59:                                               ; preds = %53
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 6
  %62 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %62, i64 %64
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %59
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 6
  %74 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %74, i64 %76
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %71, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %70
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 (i32*, i8*, ...) @av_bprintf(i32* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %70, %59
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %53

89:                                               ; preds = %53
  store i32 0, i32* %10, align 4
  br label %90

90:                                               ; preds = %223, %89
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %226

96:                                               ; preds = %90
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 6
  %99 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %99, i64 %101
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %222

107:                                              ; preds = %96
  %108 = load i32, i32* %12, align 4
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 6
  %111 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %111, i64 %113
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %108, %117
  br i1 %118, label %119, label %222

119:                                              ; preds = %107
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 6
  %122 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %122, i64 %124
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @STYLE_FLAG_BOLD, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %119
  %133 = load i32*, i32** %5, align 8
  %134 = call i32 (i32*, i8*, ...) @av_bprintf(i32* %133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %135

135:                                              ; preds = %132, %119
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 6
  %138 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %138, i64 %140
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @STYLE_FLAG_ITALIC, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %135
  %149 = load i32*, i32** %5, align 8
  %150 = call i32 (i32*, i8*, ...) @av_bprintf(i32* %149, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %151

151:                                              ; preds = %148, %135
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 6
  %154 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %153, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %154, i64 %156
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @STYLE_FLAG_UNDERLINE, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %151
  %165 = load i32*, i32** %5, align 8
  %166 = call i32 (i32*, i8*, ...) @av_bprintf(i32* %165, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %167

167:                                              ; preds = %164, %151
  %168 = load i32*, i32** %5, align 8
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 6
  %171 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %170, align 8
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %171, i64 %173
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = call i32 (i32*, i8*, ...) @av_bprintf(i32* %168, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %177)
  store i32 0, i32* %11, align 4
  br label %179

179:                                              ; preds = %218, %167
  %180 = load i32, i32* %11, align 4
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = icmp slt i32 %180, %183
  br i1 %184, label %185, label %221

185:                                              ; preds = %179
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 6
  %188 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %187, align 8
  %189 = load i32, i32* %10, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %188, i64 %190
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 5
  %197 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %196, align 8
  %198 = load i32, i32* %11, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %197, i64 %199
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp eq i64 %194, %203
  br i1 %204, label %205, label %217

205:                                              ; preds = %185
  %206 = load i32*, i32** %5, align 8
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 5
  %209 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %208, align 8
  %210 = load i32, i32* %11, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %209, i64 %211
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = call i32 (i32*, i8*, ...) @av_bprintf(i32* %206, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %215)
  br label %217

217:                                              ; preds = %205, %185
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %11, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %11, align 4
  br label %179

221:                                              ; preds = %179
  br label %222

222:                                              ; preds = %221, %107, %96
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %10, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %10, align 4
  br label %90

226:                                              ; preds = %90
  br label %227

227:                                              ; preds = %226, %45
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @HLIT_BOX, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %295

234:                                              ; preds = %227
  %235 = load i32, i32* %12, align 4
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 3
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = icmp eq i32 %235, %239
  br i1 %240, label %241, label %273

241:                                              ; preds = %234
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @HCLR_BOX, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %269

248:                                              ; preds = %241
  %249 = load i32*, i32** %5, align 8
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 4
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 2
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i32 0, i32 4
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 0
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 1
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 4
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 0
  %267 = load i32, i32* %266, align 4
  %268 = call i32 (i32*, i8*, ...) @av_bprintf(i32* %249, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %255, i32 %261, i32 %267)
  br label %272

269:                                              ; preds = %241
  %270 = load i32*, i32** %5, align 8
  %271 = call i32 (i32*, i8*, ...) @av_bprintf(i32* %270, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  br label %272

272:                                              ; preds = %269, %248
  br label %273

273:                                              ; preds = %272, %234
  %274 = load i32, i32* %12, align 4
  %275 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %276 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %275, i32 0, i32 3
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = icmp eq i32 %274, %278
  br i1 %279, label %280, label %294

280:                                              ; preds = %273
  %281 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @HCLR_BOX, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %280
  %288 = load i32*, i32** %5, align 8
  %289 = call i32 (i32*, i8*, ...) @av_bprintf(i32* %288, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  br label %293

290:                                              ; preds = %280
  %291 = load i32*, i32** %5, align 8
  %292 = call i32 (i32*, i8*, ...) @av_bprintf(i32* %291, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  br label %293

293:                                              ; preds = %290, %287
  br label %294

294:                                              ; preds = %293, %273
  br label %295

295:                                              ; preds = %294, %227
  %296 = load i8*, i8** %6, align 8
  %297 = load i8*, i8** %7, align 8
  %298 = call i32 @get_utf8_length_at(i8* %296, i8* %297)
  store i32 %298, i32* %13, align 4
  %299 = load i32, i32* %13, align 4
  %300 = icmp slt i32 %299, 1
  br i1 %300, label %301, label %305

301:                                              ; preds = %295
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %303 = load i32, i32* @AV_LOG_ERROR, align 4
  %304 = call i32 @av_log(%struct.TYPE_16__* %302, i32 %303, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %305

305:                                              ; preds = %301, %295
  store i32 0, i32* %10, align 4
  br label %306

306:                                              ; preds = %326, %305
  %307 = load i32, i32* %10, align 4
  %308 = load i32, i32* %13, align 4
  %309 = icmp slt i32 %307, %308
  br i1 %309, label %310, label %329

310:                                              ; preds = %306
  %311 = load i8*, i8** %6, align 8
  %312 = load i8, i8* %311, align 1
  %313 = sext i8 %312 to i32
  switch i32 %313, label %318 [
    i32 13, label %314
    i32 10, label %315
  ]

314:                                              ; preds = %310
  br label %323

315:                                              ; preds = %310
  %316 = load i32*, i32** %5, align 8
  %317 = call i32 (i32*, i8*, ...) @av_bprintf(i32* %316, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  br label %323

318:                                              ; preds = %310
  %319 = load i32*, i32** %5, align 8
  %320 = load i8*, i8** %6, align 8
  %321 = load i8, i8* %320, align 1
  %322 = call i32 @av_bprint_chars(i32* %319, i8 signext %321, i32 1)
  br label %323

323:                                              ; preds = %318, %315, %314
  %324 = load i8*, i8** %6, align 8
  %325 = getelementptr inbounds i8, i8* %324, i32 1
  store i8* %325, i8** %6, align 8
  br label %326

326:                                              ; preds = %323
  %327 = load i32, i32* %10, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %10, align 4
  br label %306

329:                                              ; preds = %306
  %330 = load i32, i32* %12, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %12, align 4
  br label %41

332:                                              ; preds = %41
  ret i32 0
}

declare dso_local i32 @av_bprintf(i32*, i8*, ...) #1

declare dso_local i32 @get_utf8_length_at(i8*, i8*) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @av_bprint_chars(i32*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
