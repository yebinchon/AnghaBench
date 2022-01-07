; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_get_h264_codec_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_get_h264_codec_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32, i64, i64, i32, i32 }

@AV_FIELD_PROGRESSIVE = common dso_local global i64 0, align 8
@AV_PIX_FMT_YUV420P10 = common dso_local global i64 0, align 8
@AV_PIX_FMT_YUV422P10 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*)* @mov_get_h264_codec_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_get_h264_codec_tag(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AV_FIELD_PROGRESSIVE, align 8
  %20 = icmp sgt i64 %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %6, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %7, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @defined_frame_rate(i32* %25, i32* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %2
  %31 = call i32 @MKTAG(i8 signext 97, i8 signext 118, i8 signext 99, i8 signext 105)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %30, %2
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AV_PIX_FMT_YUV420P10, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %138

40:                                               ; preds = %32
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 960
  br i1 %46, label %47, label %88

47:                                               ; preds = %40
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 720
  br i1 %53, label %54, label %88

54:                                               ; preds = %47
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %87, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, 24
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 @MKTAG(i8 signext 97, i8 signext 105, i8 signext 53, i8 signext 112)
  store i32 %61, i32* %5, align 4
  br label %86

62:                                               ; preds = %57
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %63, 25
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call i32 @MKTAG(i8 signext 97, i8 signext 105, i8 signext 53, i8 signext 113)
  store i32 %66, i32* %5, align 4
  br label %85

67:                                               ; preds = %62
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, 30
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32 @MKTAG(i8 signext 97, i8 signext 105, i8 signext 53, i8 signext 112)
  store i32 %71, i32* %5, align 4
  br label %84

72:                                               ; preds = %67
  %73 = load i32, i32* %8, align 4
  %74 = icmp eq i32 %73, 50
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = call i32 @MKTAG(i8 signext 97, i8 signext 105, i8 signext 53, i8 signext 113)
  store i32 %76, i32* %5, align 4
  br label %83

77:                                               ; preds = %72
  %78 = load i32, i32* %8, align 4
  %79 = icmp eq i32 %78, 60
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call i32 @MKTAG(i8 signext 97, i8 signext 105, i8 signext 53, i8 signext 112)
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %80, %77
  br label %83

83:                                               ; preds = %82, %75
  br label %84

84:                                               ; preds = %83, %70
  br label %85

85:                                               ; preds = %84, %65
  br label %86

86:                                               ; preds = %85, %60
  br label %87

87:                                               ; preds = %86, %54
  br label %137

88:                                               ; preds = %47, %40
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 1440
  br i1 %94, label %95, label %136

95:                                               ; preds = %88
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 1080
  br i1 %101, label %102, label %136

102:                                              ; preds = %95
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %123, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %8, align 4
  %107 = icmp eq i32 %106, 24
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = call i32 @MKTAG(i8 signext 97, i8 signext 105, i8 signext 53, i8 signext 51)
  store i32 %109, i32* %5, align 4
  br label %122

110:                                              ; preds = %105
  %111 = load i32, i32* %8, align 4
  %112 = icmp eq i32 %111, 25
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = call i32 @MKTAG(i8 signext 97, i8 signext 105, i8 signext 53, i8 signext 50)
  store i32 %114, i32* %5, align 4
  br label %121

115:                                              ; preds = %110
  %116 = load i32, i32* %8, align 4
  %117 = icmp eq i32 %116, 30
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = call i32 @MKTAG(i8 signext 97, i8 signext 105, i8 signext 53, i8 signext 51)
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %118, %115
  br label %121

121:                                              ; preds = %120, %113
  br label %122

122:                                              ; preds = %121, %108
  br label %135

123:                                              ; preds = %102
  %124 = load i32, i32* %8, align 4
  %125 = icmp eq i32 %124, 50
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = call i32 @MKTAG(i8 signext 97, i8 signext 105, i8 signext 53, i8 signext 53)
  store i32 %127, i32* %5, align 4
  br label %134

128:                                              ; preds = %123
  %129 = load i32, i32* %8, align 4
  %130 = icmp eq i32 %129, 60
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = call i32 @MKTAG(i8 signext 97, i8 signext 105, i8 signext 53, i8 signext 54)
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %131, %128
  br label %134

134:                                              ; preds = %133, %126
  br label %135

135:                                              ; preds = %134, %122
  br label %136

136:                                              ; preds = %135, %95, %88
  br label %137

137:                                              ; preds = %136, %87
  br label %296

138:                                              ; preds = %32
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @AV_PIX_FMT_YUV422P10, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %295

146:                                              ; preds = %138
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = icmp eq i32 %151, 1280
  br i1 %152, label %153, label %194

153:                                              ; preds = %146
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 720
  br i1 %159, label %160, label %194

160:                                              ; preds = %153
  %161 = load i32, i32* %6, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %193, label %163

163:                                              ; preds = %160
  %164 = load i32, i32* %8, align 4
  %165 = icmp eq i32 %164, 24
  br i1 %165, label %166, label %168

166:                                              ; preds = %163
  %167 = call i32 @MKTAG(i8 signext 97, i8 signext 105, i8 signext 49, i8 signext 112)
  store i32 %167, i32* %5, align 4
  br label %192

168:                                              ; preds = %163
  %169 = load i32, i32* %8, align 4
  %170 = icmp eq i32 %169, 25
  br i1 %170, label %171, label %173

171:                                              ; preds = %168
  %172 = call i32 @MKTAG(i8 signext 97, i8 signext 105, i8 signext 49, i8 signext 113)
  store i32 %172, i32* %5, align 4
  br label %191

173:                                              ; preds = %168
  %174 = load i32, i32* %8, align 4
  %175 = icmp eq i32 %174, 30
  br i1 %175, label %176, label %178

176:                                              ; preds = %173
  %177 = call i32 @MKTAG(i8 signext 97, i8 signext 105, i8 signext 49, i8 signext 112)
  store i32 %177, i32* %5, align 4
  br label %190

178:                                              ; preds = %173
  %179 = load i32, i32* %8, align 4
  %180 = icmp eq i32 %179, 50
  br i1 %180, label %181, label %183

181:                                              ; preds = %178
  %182 = call i32 @MKTAG(i8 signext 97, i8 signext 105, i8 signext 49, i8 signext 113)
  store i32 %182, i32* %5, align 4
  br label %189

183:                                              ; preds = %178
  %184 = load i32, i32* %8, align 4
  %185 = icmp eq i32 %184, 60
  br i1 %185, label %186, label %188

186:                                              ; preds = %183
  %187 = call i32 @MKTAG(i8 signext 97, i8 signext 105, i8 signext 49, i8 signext 112)
  store i32 %187, i32* %5, align 4
  br label %188

188:                                              ; preds = %186, %183
  br label %189

189:                                              ; preds = %188, %181
  br label %190

190:                                              ; preds = %189, %176
  br label %191

191:                                              ; preds = %190, %171
  br label %192

192:                                              ; preds = %191, %166
  br label %193

193:                                              ; preds = %192, %160
  br label %294

194:                                              ; preds = %153, %146
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = icmp eq i32 %199, 1920
  br i1 %200, label %201, label %248

201:                                              ; preds = %194
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %206, 1080
  br i1 %207, label %208, label %248

208:                                              ; preds = %201
  %209 = load i32, i32* %6, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %229, label %211

211:                                              ; preds = %208
  %212 = load i32, i32* %8, align 4
  %213 = icmp eq i32 %212, 24
  br i1 %213, label %214, label %216

214:                                              ; preds = %211
  %215 = call i32 @MKTAG(i8 signext 97, i8 signext 105, i8 signext 49, i8 signext 51)
  store i32 %215, i32* %5, align 4
  br label %228

216:                                              ; preds = %211
  %217 = load i32, i32* %8, align 4
  %218 = icmp eq i32 %217, 25
  br i1 %218, label %219, label %221

219:                                              ; preds = %216
  %220 = call i32 @MKTAG(i8 signext 97, i8 signext 105, i8 signext 49, i8 signext 50)
  store i32 %220, i32* %5, align 4
  br label %227

221:                                              ; preds = %216
  %222 = load i32, i32* %8, align 4
  %223 = icmp eq i32 %222, 30
  br i1 %223, label %224, label %226

224:                                              ; preds = %221
  %225 = call i32 @MKTAG(i8 signext 97, i8 signext 105, i8 signext 49, i8 signext 51)
  store i32 %225, i32* %5, align 4
  br label %226

226:                                              ; preds = %224, %221
  br label %227

227:                                              ; preds = %226, %219
  br label %228

228:                                              ; preds = %227, %214
  br label %247

229:                                              ; preds = %208
  %230 = load i32, i32* %8, align 4
  %231 = icmp eq i32 %230, 25
  br i1 %231, label %232, label %234

232:                                              ; preds = %229
  %233 = call i32 @MKTAG(i8 signext 97, i8 signext 105, i8 signext 49, i8 signext 53)
  store i32 %233, i32* %5, align 4
  br label %246

234:                                              ; preds = %229
  %235 = load i32, i32* %8, align 4
  %236 = icmp eq i32 %235, 50
  br i1 %236, label %237, label %239

237:                                              ; preds = %234
  %238 = call i32 @MKTAG(i8 signext 97, i8 signext 105, i8 signext 49, i8 signext 53)
  store i32 %238, i32* %5, align 4
  br label %245

239:                                              ; preds = %234
  %240 = load i32, i32* %8, align 4
  %241 = icmp eq i32 %240, 60
  br i1 %241, label %242, label %244

242:                                              ; preds = %239
  %243 = call i32 @MKTAG(i8 signext 97, i8 signext 105, i8 signext 49, i8 signext 54)
  store i32 %243, i32* %5, align 4
  br label %244

244:                                              ; preds = %242, %239
  br label %245

245:                                              ; preds = %244, %237
  br label %246

246:                                              ; preds = %245, %232
  br label %247

247:                                              ; preds = %246, %228
  br label %293

248:                                              ; preds = %201, %194
  %249 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 8
  %254 = icmp eq i32 %253, 4096
  br i1 %254, label %255, label %262

255:                                              ; preds = %248
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_4__*, %struct.TYPE_4__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 4
  %260 = load i32, i32* %259, align 4
  %261 = icmp eq i32 %260, 2160
  br i1 %261, label %290, label %262

262:                                              ; preds = %255, %248
  %263 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 0
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 8
  %268 = icmp eq i32 %267, 3840
  br i1 %268, label %269, label %276

269:                                              ; preds = %262
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 0
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 4
  %274 = load i32, i32* %273, align 4
  %275 = icmp eq i32 %274, 2160
  br i1 %275, label %290, label %276

276:                                              ; preds = %269, %262
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i32 0, i32 0
  %279 = load %struct.TYPE_4__*, %struct.TYPE_4__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 8
  %282 = icmp eq i32 %281, 2048
  br i1 %282, label %283, label %292

283:                                              ; preds = %276
  %284 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i32 0, i32 0
  %286 = load %struct.TYPE_4__*, %struct.TYPE_4__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 4
  %288 = load i32, i32* %287, align 4
  %289 = icmp eq i32 %288, 1080
  br i1 %289, label %290, label %292

290:                                              ; preds = %283, %269, %255
  %291 = call i32 @MKTAG(i8 signext 97, i8 signext 105, i8 signext 118, i8 signext 120)
  store i32 %291, i32* %5, align 4
  br label %292

292:                                              ; preds = %290, %283, %276
  br label %293

293:                                              ; preds = %292, %247
  br label %294

294:                                              ; preds = %293, %193
  br label %295

295:                                              ; preds = %294, %138
  br label %296

296:                                              ; preds = %295, %137
  %297 = load i32, i32* %5, align 4
  ret i32 %297
}

declare dso_local i32 @defined_frame_rate(i32*, i32*) #1

declare dso_local i32 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
