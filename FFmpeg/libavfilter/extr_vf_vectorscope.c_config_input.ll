; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vectorscope.c_config_input.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vectorscope.c_config_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i8*, i8*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32*, i32, i8**, i8**, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@AV_PIX_FMT_FLAG_RGB = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"low threshold should be less than high threshold\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GRAY = common dso_local global i64 0, align 8
@vectorscope8 = common dso_local global i32 0, align 4
@vectorscope16 = common dso_local global i32 0, align 4
@none_graticule = common dso_local global i32 0, align 4
@green_graticule = common dso_local global i32 0, align 4
@color_graticule = common dso_local global i32 0, align 4
@green_graticule16 = common dso_local global i32 0, align 4
@color_graticule16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @config_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_input(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.TYPE_11__* @av_pix_fmt_desc_get(i32 %9)
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %4, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %5, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %6, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @AV_PIX_FMT_FLAG_RGB, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 1, %32
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %38, 256
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 1
  %57 = mul nsw i32 %52, %56
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 1
  %67 = mul nsw i32 %62, %66
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = icmp sgt i32 %72, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %1
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %79 = load i32, i32* @AV_LOG_ERROR, align 4
  %80 = call i32 @av_log(%struct.TYPE_13__* %78, i32 %79, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = call i32 @AVERROR(i32 %81)
  store i32 %82, i32* %2, align 4
  br label %356

83:                                               ; preds = %1
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 8
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @GRAY, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 9
  store i32 0, i32* %96, align 8
  br label %169

97:                                               ; preds = %89, %83
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 10
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 11
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 2
  br i1 %106, label %117, label %107

107:                                              ; preds = %102, %97
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 10
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %112, label %120

112:                                              ; preds = %107
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 11
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %120

117:                                              ; preds = %112, %102
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 9
  store i32 0, i32* %119, align 8
  br label %168

120:                                              ; preds = %112, %107
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 10
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 11
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 2
  br i1 %129, label %140, label %130

130:                                              ; preds = %125, %120
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 10
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 2
  br i1 %134, label %135, label %143

135:                                              ; preds = %130
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 11
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135, %125
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 9
  store i32 1, i32* %142, align 8
  br label %167

143:                                              ; preds = %135, %130
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 10
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 11
  %151 = load i32, i32* %150, align 8
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %163, label %153

153:                                              ; preds = %148, %143
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 10
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %158, label %166

158:                                              ; preds = %153
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 11
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %158, %148
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 9
  store i32 2, i32* %165, align 8
  br label %166

166:                                              ; preds = %163, %158, %153
  br label %167

167:                                              ; preds = %166, %140
  br label %168

168:                                              ; preds = %167, %117
  br label %169

169:                                              ; preds = %168, %94
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %172, 256
  br i1 %173, label %174, label %178

174:                                              ; preds = %169
  %175 = load i32, i32* @vectorscope8, align 4
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 20
  store i32 %175, i32* %177, align 4
  br label %182

178:                                              ; preds = %169
  %179 = load i32, i32* @vectorscope16, align 4
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 20
  store i32 %179, i32* %181, align 4
  br label %182

182:                                              ; preds = %178, %174
  %183 = load i32, i32* @none_graticule, align 4
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 19
  store i32 %183, i32* %185, align 8
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %215

190:                                              ; preds = %182
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = icmp eq i32 %193, 256
  br i1 %194, label %195, label %215

195:                                              ; preds = %190
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 12
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %200, label %204

200:                                              ; preds = %195
  %201 = load i32, i32* @green_graticule, align 4
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 19
  store i32 %201, i32* %203, align 8
  br label %214

204:                                              ; preds = %195
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 12
  %207 = load i32, i32* %206, align 4
  %208 = icmp eq i32 %207, 2
  br i1 %208, label %209, label %213

209:                                              ; preds = %204
  %210 = load i32, i32* @color_graticule, align 4
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 19
  store i32 %210, i32* %212, align 8
  br label %213

213:                                              ; preds = %209, %204
  br label %214

214:                                              ; preds = %213, %200
  br label %241

215:                                              ; preds = %190, %182
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %240

220:                                              ; preds = %215
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 12
  %223 = load i32, i32* %222, align 4
  %224 = icmp eq i32 %223, 1
  br i1 %224, label %225, label %229

225:                                              ; preds = %220
  %226 = load i32, i32* @green_graticule16, align 4
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 19
  store i32 %226, i32* %228, align 8
  br label %239

229:                                              ; preds = %220
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 12
  %232 = load i32, i32* %231, align 4
  %233 = icmp eq i32 %232, 2
  br i1 %233, label %234, label %238

234:                                              ; preds = %229
  %235 = load i32, i32* @color_graticule16, align 4
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 19
  store i32 %235, i32* %237, align 8
  br label %238

238:                                              ; preds = %234, %229
  br label %239

239:                                              ; preds = %238, %225
  br label %240

240:                                              ; preds = %239, %215
  br label %241

241:                                              ; preds = %240, %214
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 14
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = sub nsw i32 %247, 1
  %249 = mul nsw i32 %244, %248
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 13
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 3
  store i32 %249, i32* %253, align 4
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  switch i32 %256, label %270 [
    i32 129, label %257
    i32 130, label %257
    i32 128, label %257
    i32 132, label %257
    i32 131, label %257
  ]

257:                                              ; preds = %241, %241, %241, %241, %241
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 13
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 0
  store i32 0, i32* %261, align 4
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 13
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 1
  store i32 0, i32* %265, align 4
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 13
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 2
  store i32 0, i32* %269, align 4
  br label %293

270:                                              ; preds = %241
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 13
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 0
  store i32 0, i32* %274, align 4
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = sdiv i32 %277, 2
  %279 = sub nsw i32 %278, 1
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 13
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 1
  store i32 %279, i32* %283, align 4
  %284 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = sdiv i32 %286, 2
  %288 = sub nsw i32 %287, 1
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 13
  %291 = load i32*, i32** %290, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 2
  store i32 %288, i32* %292, align 4
  br label %293

293:                                              ; preds = %270, %257
  %294 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i32 0, i32 18
  store i32 %296, i32* %298, align 4
  %299 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 17
  store i32 %301, i32* %303, align 8
  %304 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i32 0, i32 2
  %306 = load i8*, i8** %305, align 8
  %307 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  %310 = call i8* @AV_CEIL_RSHIFT(i8* %306, i32 %309)
  %311 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 16
  %313 = load i8**, i8*** %312, align 8
  %314 = getelementptr inbounds i8*, i8** %313, i64 2
  store i8* %310, i8** %314, align 8
  %315 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i32 0, i32 16
  %317 = load i8**, i8*** %316, align 8
  %318 = getelementptr inbounds i8*, i8** %317, i64 1
  store i8* %310, i8** %318, align 8
  %319 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %319, i32 0, i32 2
  %321 = load i8*, i8** %320, align 8
  %322 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 16
  %324 = load i8**, i8*** %323, align 8
  %325 = getelementptr inbounds i8*, i8** %324, i64 3
  store i8* %321, i8** %325, align 8
  %326 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %326, i32 0, i32 16
  %328 = load i8**, i8*** %327, align 8
  %329 = getelementptr inbounds i8*, i8** %328, i64 0
  store i8* %321, i8** %329, align 8
  %330 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %330, i32 0, i32 1
  %332 = load i8*, i8** %331, align 8
  %333 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = call i8* @AV_CEIL_RSHIFT(i8* %332, i32 %335)
  %337 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %338 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %337, i32 0, i32 15
  %339 = load i8**, i8*** %338, align 8
  %340 = getelementptr inbounds i8*, i8** %339, i64 2
  store i8* %336, i8** %340, align 8
  %341 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %342 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %341, i32 0, i32 15
  %343 = load i8**, i8*** %342, align 8
  %344 = getelementptr inbounds i8*, i8** %343, i64 1
  store i8* %336, i8** %344, align 8
  %345 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %346 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %345, i32 0, i32 1
  %347 = load i8*, i8** %346, align 8
  %348 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %349 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %348, i32 0, i32 15
  %350 = load i8**, i8*** %349, align 8
  %351 = getelementptr inbounds i8*, i8** %350, i64 3
  store i8* %347, i8** %351, align 8
  %352 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %353 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %352, i32 0, i32 15
  %354 = load i8**, i8*** %353, align 8
  %355 = getelementptr inbounds i8*, i8** %354, i64 0
  store i8* %347, i8** %355, align 8
  store i32 0, i32* %2, align 4
  br label %356

356:                                              ; preds = %293, %77
  %357 = load i32, i32* %2, align 4
  ret i32 %357
}

declare dso_local %struct.TYPE_11__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @AV_CEIL_RSHIFT(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
