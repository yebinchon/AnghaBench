; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskaenc.c_mkv_write_cues.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskaenc.c_mkv_write_cues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_11__**, i32*, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32, i64, i64, i64, i32 }
%struct.TYPE_12__ = type { i32 }

@MATROSKA_ID_CUES = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_SUBTITLE = common dso_local global i64 0, align 8
@MATROSKA_ID_POINTENTRY = common dso_local global i32 0, align 4
@MATROSKA_ID_CUETIME = common dso_local global i32 0, align 4
@MATROSKA_ID_CUETRACKPOSITION = common dso_local global i32 0, align 4
@MAX_CUETRACKPOS_SIZE = common dso_local global i32 0, align 4
@MATROSKA_ID_CUETRACK = common dso_local global i32 0, align 4
@MATROSKA_ID_CUECLUSTERPOSITION = common dso_local global i32 0, align 4
@MATROSKA_ID_CUERELATIVEPOSITION = common dso_local global i32 0, align 4
@MATROSKA_ID_CUEDURATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_13__*, %struct.TYPE_12__*, i32)* @mkv_write_cues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mkv_write_cues(%struct.TYPE_15__* %0, %struct.TYPE_13__* %1, %struct.TYPE_12__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_14__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store i32 %3, i32* %9, align 4
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %10, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %12, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = call i32 @avio_tell(i32* %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32*, i32** %12, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* @MATROSKA_ID_CUES, align 4
  %35 = call i32 @start_ebml_master_crc32(i32* %32, i32** %11, i32* %33, i32 %34)
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %16, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %4
  %39 = load i32, i32* %16, align 4
  store i32 %39, i32* %5, align 4
  br label %290

40:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  br label %41

41:                                               ; preds = %282, %40
  %42 = load i32, i32* %14, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %285

47:                                               ; preds = %41
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i64 %52
  store %struct.TYPE_14__* %53, %struct.TYPE_14__** %19, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %20, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %15, align 4
  br label %57

57:                                               ; preds = %67, %47
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %15, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %15, align 4
  br label %57

70:                                               ; preds = %57
  store i32 0, i32* %15, align 4
  br label %71

71:                                               ; preds = %137, %70
  %72 = load i32, i32* %15, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sub nsw i32 %75, %76
  %78 = icmp slt i32 %72, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %71
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %81 = load i32, i32* %15, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %20, align 8
  %87 = icmp eq i64 %85, %86
  br label %88

88:                                               ; preds = %79, %71
  %89 = phi i1 [ false, %71 ], [ %87, %79 ]
  br i1 %89, label %90, label %140

90:                                               ; preds = %88
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %22, align 4
  %97 = load i32, i32* %22, align 4
  %98 = icmp sge i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %90
  %100 = load i32, i32* %22, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp slt i32 %100, %101
  br label %103

103:                                              ; preds = %99, %90
  %104 = phi i1 [ false, %90 ], [ %102, %99 ]
  %105 = zext i1 %104 to i32
  %106 = call i32 @av_assert0(i32 %105)
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %108 = load i32, i32* %22, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %129

114:                                              ; preds = %103
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %116, align 8
  %118 = load i32, i32* %22, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %117, i64 %119
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @AVMEDIA_TYPE_SUBTITLE, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %114
  br label %137

129:                                              ; preds = %114, %103
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %131 = load i32, i32* %22, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  store i32 1, i32* %134, align 4
  %135 = load i32, i32* %21, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %21, align 4
  br label %137

137:                                              ; preds = %129, %128
  %138 = load i32, i32* %15, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %15, align 4
  br label %71

140:                                              ; preds = %88
  %141 = load i32*, i32** %11, align 8
  %142 = load i32, i32* @MATROSKA_ID_POINTENTRY, align 4
  %143 = load i32, i32* %21, align 4
  %144 = call i32 @MAX_CUEPOINT_CONTENT_SIZE(i32 %143)
  %145 = call i32 @start_ebml_master(i32* %141, i32 %142, i32 %144)
  store i32 %145, i32* %17, align 4
  %146 = load i32*, i32** %11, align 8
  %147 = load i32, i32* @MATROSKA_ID_CUETIME, align 4
  %148 = load i64, i64* %20, align 8
  %149 = call i32 @put_ebml_uint(i32* %146, i32 %147, i64 %148)
  store i32 0, i32* %15, align 4
  br label %150

150:                                              ; preds = %160, %140
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* %9, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %163

154:                                              ; preds = %150
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %156 = load i32, i32* %15, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  store i32 0, i32* %159, align 4
  br label %160

160:                                              ; preds = %154
  %161 = load i32, i32* %15, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %15, align 4
  br label %150

163:                                              ; preds = %150
  store i32 0, i32* %15, align 4
  br label %164

164:                                              ; preds = %271, %163
  %165 = load i32, i32* %15, align 4
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %14, align 4
  %170 = sub nsw i32 %168, %169
  %171 = icmp slt i32 %165, %170
  br i1 %171, label %172, label %181

172:                                              ; preds = %164
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %174 = load i32, i32* %15, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* %20, align 8
  %180 = icmp eq i64 %178, %179
  br label %181

181:                                              ; preds = %172, %164
  %182 = phi i1 [ false, %164 ], [ %180, %172 ]
  br i1 %182, label %183, label %274

183:                                              ; preds = %181
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %185 = load i32, i32* %15, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  store i32 %189, i32* %23, align 4
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %191 = load i32, i32* %23, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %212

197:                                              ; preds = %183
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %199, align 8
  %201 = load i32, i32* %23, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %200, i64 %202
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @AVMEDIA_TYPE_SUBTITLE, align 8
  %210 = icmp ne i64 %208, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %197
  br label %271

212:                                              ; preds = %197, %183
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %214 = load i32, i32* %23, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 0
  store i32 1, i32* %217, align 4
  %218 = load i32*, i32** %11, align 8
  %219 = load i32, i32* @MATROSKA_ID_CUETRACKPOSITION, align 4
  %220 = load i32, i32* @MAX_CUETRACKPOS_SIZE, align 4
  %221 = call i32 @start_ebml_master(i32* %218, i32 %219, i32 %220)
  store i32 %221, i32* %18, align 4
  %222 = load i32*, i32** %11, align 8
  %223 = load i32, i32* @MATROSKA_ID_CUETRACK, align 4
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %225 = load i32, i32* %15, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = call i32 @put_ebml_uint(i32* %222, i32 %223, i64 %229)
  %231 = load i32*, i32** %11, align 8
  %232 = load i32, i32* @MATROSKA_ID_CUECLUSTERPOSITION, align 4
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %234 = load i32, i32* %15, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 3
  %238 = load i64, i64* %237, align 8
  %239 = call i32 @put_ebml_uint(i32* %231, i32 %232, i64 %238)
  %240 = load i32*, i32** %11, align 8
  %241 = load i32, i32* @MATROSKA_ID_CUERELATIVEPOSITION, align 4
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %243 = load i32, i32* %15, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 4
  %247 = load i64, i64* %246, align 8
  %248 = call i32 @put_ebml_uint(i32* %240, i32 %241, i64 %247)
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %250 = load i32, i32* %15, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 5
  %254 = load i32, i32* %253, align 8
  %255 = icmp ne i32 %254, -1
  br i1 %255, label %256, label %267

256:                                              ; preds = %212
  %257 = load i32*, i32** %11, align 8
  %258 = load i32, i32* @MATROSKA_ID_CUEDURATION, align 4
  %259 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %260 = load i32, i32* %15, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 5
  %264 = load i32, i32* %263, align 8
  %265 = sext i32 %264 to i64
  %266 = call i32 @put_ebml_uint(i32* %257, i32 %258, i64 %265)
  br label %267

267:                                              ; preds = %256, %212
  %268 = load i32*, i32** %11, align 8
  %269 = load i32, i32* %18, align 4
  %270 = call i32 @end_ebml_master(i32* %268, i32 %269)
  br label %271

271:                                              ; preds = %267, %211
  %272 = load i32, i32* %15, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %15, align 4
  br label %164

274:                                              ; preds = %181
  %275 = load i32, i32* %15, align 4
  %276 = sub nsw i32 %275, 1
  %277 = load i32, i32* %14, align 4
  %278 = add nsw i32 %277, %276
  store i32 %278, i32* %14, align 4
  %279 = load i32*, i32** %11, align 8
  %280 = load i32, i32* %17, align 4
  %281 = call i32 @end_ebml_master(i32* %279, i32 %280)
  br label %282

282:                                              ; preds = %274
  %283 = load i32, i32* %14, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %14, align 4
  br label %41

285:                                              ; preds = %41
  %286 = load i32*, i32** %12, align 8
  %287 = load i32*, i32** %10, align 8
  %288 = call i32 @end_ebml_master_crc32(i32* %286, i32** %11, i32* %287)
  %289 = load i32, i32* %13, align 4
  store i32 %289, i32* %5, align 4
  br label %290

290:                                              ; preds = %285, %38
  %291 = load i32, i32* %5, align 4
  ret i32 %291
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @start_ebml_master_crc32(i32*, i32**, i32*, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @start_ebml_master(i32*, i32, i32) #1

declare dso_local i32 @MAX_CUEPOINT_CONTENT_SIZE(i32) #1

declare dso_local i32 @put_ebml_uint(i32*, i32, i64) #1

declare dso_local i32 @end_ebml_master(i32*, i32) #1

declare dso_local i32 @end_ebml_master_crc32(i32*, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
