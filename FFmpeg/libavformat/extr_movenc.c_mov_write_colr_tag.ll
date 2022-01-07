; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_colr_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_colr_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i64 }

@AVCOL_PRI_UNSPECIFIED = common dso_local global i32 0, align 4
@AVCOL_TRC_UNSPECIFIED = common dso_local global i32 0, align 4
@AVCOL_SPC_UNSPECIFIED = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"color primaries unspecified, assuming bt709\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"color primaries unspecified, assuming bt470bg\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"color primaries unspecified, assuming smpte170\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"color primaries unspecified, unable to assume anything\0A\00", align 1
@MODE_MOV = common dso_local global i64 0, align 8
@MODE_MP4 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"colr\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"nclx\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"nclc\00", align 1
@AVCOL_RANGE_JPEG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*)* @mov_write_colr_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_colr_tag(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @avio_tell(i32* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @AVCOL_PRI_UNSPECIFIED, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %140

16:                                               ; preds = %2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @AVCOL_TRC_UNSPECIFIED, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %140

24:                                               ; preds = %16
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @AVCOL_SPC_UNSPECIFIED, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %140

32:                                               ; preds = %24
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = icmp sge i32 %37, 1920
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = icmp sge i32 %44, 1080
  br i1 %45, label %60, label %46

46:                                               ; preds = %39, %32
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 1280
  br i1 %52, label %53, label %67

53:                                               ; preds = %46
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 720
  br i1 %59, label %60, label %67

60:                                               ; preds = %53, %39
  %61 = load i32, i32* @AV_LOG_WARNING, align 4
  %62 = call i32 @av_log(i32* null, i32 %61, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32 143, i32* %66, align 8
  br label %115

67:                                               ; preds = %53, %46
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 720
  br i1 %73, label %74, label %86

74:                                               ; preds = %67
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 576
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load i32, i32* @AV_LOG_WARNING, align 4
  %81 = call i32 @av_log(i32* null, i32 %80, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i32 144, i32* %85, align 8
  br label %114

86:                                               ; preds = %74, %67
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 720
  br i1 %92, label %93, label %110

93:                                               ; preds = %86
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 486
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 480
  br i1 %102, label %103, label %110

103:                                              ; preds = %98, %93
  %104 = load i32, i32* @AV_LOG_WARNING, align 4
  %105 = call i32 @av_log(i32* null, i32 %104, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i32 142, i32* %109, align 8
  br label %113

110:                                              ; preds = %98, %86
  %111 = load i32, i32* @AV_LOG_WARNING, align 4
  %112 = call i32 @av_log(i32* null, i32 %111, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  br label %113

113:                                              ; preds = %110, %103
  br label %114

114:                                              ; preds = %113, %79
  br label %115

115:                                              ; preds = %114, %60
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  switch i32 %120, label %139 [
    i32 143, label %121
    i32 142, label %130
    i32 144, label %130
  ]

121:                                              ; preds = %115
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  store i32 132, i32* %125, align 4
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  store i32 136, i32* %129, align 8
  br label %139

130:                                              ; preds = %115, %115
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  store i32 132, i32* %134, align 4
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 2
  store i32 135, i32* %138, align 8
  br label %139

139:                                              ; preds = %115, %130, %121
  br label %140

140:                                              ; preds = %139, %24, %16, %2
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @MODE_MOV, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %152, label %146

146:                                              ; preds = %140
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @MODE_MP4, align 8
  %151 = icmp eq i64 %149, %150
  br label %152

152:                                              ; preds = %146, %140
  %153 = phi i1 [ true, %140 ], [ %151, %146 ]
  %154 = zext i1 %153 to i32
  %155 = call i32 @av_assert0(i32 %154)
  %156 = load i32*, i32** %3, align 8
  %157 = call i32 @avio_wb32(i32* %156, i32 0)
  %158 = load i32*, i32** %3, align 8
  %159 = call i32 @ffio_wfourcc(i32* %158, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @MODE_MP4, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %152
  %166 = load i32*, i32** %3, align 8
  %167 = call i32 @ffio_wfourcc(i32* %166, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %171

168:                                              ; preds = %152
  %169 = load i32*, i32** %3, align 8
  %170 = call i32 @ffio_wfourcc(i32* %169, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %171

171:                                              ; preds = %168, %165
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  switch i32 %176, label %195 [
    i32 143, label %177
    i32 144, label %180
    i32 142, label %183
    i32 141, label %183
    i32 145, label %186
    i32 140, label %189
    i32 139, label %192
  ]

177:                                              ; preds = %171
  %178 = load i32*, i32** %3, align 8
  %179 = call i32 @avio_wb16(i32* %178, i32 1)
  br label %198

180:                                              ; preds = %171
  %181 = load i32*, i32** %3, align 8
  %182 = call i32 @avio_wb16(i32* %181, i32 5)
  br label %198

183:                                              ; preds = %171, %171
  %184 = load i32*, i32** %3, align 8
  %185 = call i32 @avio_wb16(i32* %184, i32 6)
  br label %198

186:                                              ; preds = %171
  %187 = load i32*, i32** %3, align 8
  %188 = call i32 @avio_wb16(i32* %187, i32 9)
  br label %198

189:                                              ; preds = %171
  %190 = load i32*, i32** %3, align 8
  %191 = call i32 @avio_wb16(i32* %190, i32 11)
  br label %198

192:                                              ; preds = %171
  %193 = load i32*, i32** %3, align 8
  %194 = call i32 @avio_wb16(i32* %193, i32 12)
  br label %198

195:                                              ; preds = %171
  %196 = load i32*, i32** %3, align 8
  %197 = call i32 @avio_wb16(i32* %196, i32 2)
  br label %198

198:                                              ; preds = %195, %192, %189, %186, %183, %180, %177
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 2
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  switch i32 %203, label %222 [
    i32 132, label %204
    i32 131, label %207
    i32 130, label %210
    i32 128, label %213
    i32 129, label %216
    i32 133, label %219
  ]

204:                                              ; preds = %198
  %205 = load i32*, i32** %3, align 8
  %206 = call i32 @avio_wb16(i32* %205, i32 1)
  br label %225

207:                                              ; preds = %198
  %208 = load i32*, i32** %3, align 8
  %209 = call i32 @avio_wb16(i32* %208, i32 1)
  br label %225

210:                                              ; preds = %198
  %211 = load i32*, i32** %3, align 8
  %212 = call i32 @avio_wb16(i32* %211, i32 7)
  br label %225

213:                                              ; preds = %198
  %214 = load i32*, i32** %3, align 8
  %215 = call i32 @avio_wb16(i32* %214, i32 16)
  br label %225

216:                                              ; preds = %198
  %217 = load i32*, i32** %3, align 8
  %218 = call i32 @avio_wb16(i32* %217, i32 17)
  br label %225

219:                                              ; preds = %198
  %220 = load i32*, i32** %3, align 8
  %221 = call i32 @avio_wb16(i32* %220, i32 18)
  br label %225

222:                                              ; preds = %198
  %223 = load i32*, i32** %3, align 8
  %224 = call i32 @avio_wb16(i32* %223, i32 2)
  br label %225

225:                                              ; preds = %222, %219, %216, %213, %210, %207, %204
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 2
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  switch i32 %230, label %243 [
    i32 136, label %231
    i32 137, label %234
    i32 135, label %234
    i32 134, label %237
    i32 138, label %240
  ]

231:                                              ; preds = %225
  %232 = load i32*, i32** %3, align 8
  %233 = call i32 @avio_wb16(i32* %232, i32 1)
  br label %246

234:                                              ; preds = %225, %225
  %235 = load i32*, i32** %3, align 8
  %236 = call i32 @avio_wb16(i32* %235, i32 6)
  br label %246

237:                                              ; preds = %225
  %238 = load i32*, i32** %3, align 8
  %239 = call i32 @avio_wb16(i32* %238, i32 7)
  br label %246

240:                                              ; preds = %225
  %241 = load i32*, i32** %3, align 8
  %242 = call i32 @avio_wb16(i32* %241, i32 9)
  br label %246

243:                                              ; preds = %225
  %244 = load i32*, i32** %3, align 8
  %245 = call i32 @avio_wb16(i32* %244, i32 2)
  br label %246

246:                                              ; preds = %243, %240, %237, %234, %231
  %247 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @MODE_MP4, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %265

252:                                              ; preds = %246
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 2
  %255 = load %struct.TYPE_4__*, %struct.TYPE_4__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 5
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @AVCOL_RANGE_JPEG, align 8
  %259 = icmp eq i64 %257, %258
  %260 = zext i1 %259 to i32
  store i32 %260, i32* %6, align 4
  %261 = load i32*, i32** %3, align 8
  %262 = load i32, i32* %6, align 4
  %263 = shl i32 %262, 7
  %264 = call i32 @avio_w8(i32* %261, i32 %263)
  br label %265

265:                                              ; preds = %252, %246
  %266 = load i32*, i32** %3, align 8
  %267 = load i32, i32* %5, align 4
  %268 = call i32 @update_size(i32* %266, i32 %267)
  ret i32 %268
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @avio_wb16(i32*, i32) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @update_size(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
