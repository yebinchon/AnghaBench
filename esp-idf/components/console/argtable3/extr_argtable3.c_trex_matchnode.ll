; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_trex_matchnode.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_trex_matchnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, i32, i32*, i32, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32*, i32* }
%struct.TYPE_10__ = type { i32, i32, i32, i64 }

@TRex_True = common dso_local global i32 0, align 4
@TRex_False = common dso_local global i32 0, align 4
@TREX_ICASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*, %struct.TYPE_10__*, i32*, %struct.TYPE_10__*)* @trex_matchnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @trex_matchnode(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32* %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_10__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_10__*, align 8
  %21 = alloca %struct.TYPE_10__*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %9, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  switch i32 %28, label %541 [
    i32 132, label %29
    i32 129, label %214
    i32 133, label %280
    i32 130, label %280
    i32 128, label %405
    i32 138, label %470
    i32 134, label %479
    i32 135, label %488
    i32 131, label %492
    i32 136, label %492
    i32 137, label %528
  ]

29:                                               ; preds = %4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %11, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 16
  %34 = and i32 %33, 65535
  store i32 %34, i32* %12, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 65535
  store i32 %38, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %39 = load i32*, i32** %8, align 8
  store i32* %39, i32** %15, align 8
  %40 = load i32*, i32** %8, align 8
  store i32* %40, i32** %16, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, -1
  br i1 %44, label %45, label %54

45:                                               ; preds = %29
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i64 %52
  store %struct.TYPE_10__* %53, %struct.TYPE_10__** %11, align 8
  br label %56

54:                                               ; preds = %29
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %55, %struct.TYPE_10__** %11, align 8
  br label %56

56:                                               ; preds = %54, %45
  br label %57

57:                                               ; preds = %181, %56
  %58 = load i32, i32* %14, align 4
  %59 = icmp eq i32 %58, 65535
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp slt i32 %61, %62
  br label %64

64:                                               ; preds = %60, %57
  %65 = phi i1 [ true, %57 ], [ %63, %60 ]
  br i1 %65, label %66, label %182

66:                                               ; preds = %64
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i64 %73
  %75 = load i32*, i32** %15, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %77 = call i32* @trex_matchnode(%struct.TYPE_11__* %67, %struct.TYPE_10__* %74, i32* %75, %struct.TYPE_10__* %76)
  store i32* %77, i32** %15, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %66
  br label %182

80:                                               ; preds = %66
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %14, align 4
  %83 = load i32*, i32** %15, align 8
  store i32* %83, i32** %16, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %85 = icmp ne %struct.TYPE_10__* %84, null
  br i1 %85, label %86, label %174

86:                                               ; preds = %80
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 132
  br i1 %90, label %103, label %91

91:                                               ; preds = %86
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, 132
  br i1 %95, label %96, label %173

96:                                               ; preds = %91
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = ashr i32 %99, 16
  %101 = and i32 %100, 65535
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %173

103:                                              ; preds = %96, %86
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %18, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, -1
  br i1 %107, label %108, label %117

108:                                              ; preds = %103
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 4
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i64 %115
  store %struct.TYPE_10__* %116, %struct.TYPE_10__** %18, align 8
  br label %135

117:                                              ; preds = %103
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %119 = icmp ne %struct.TYPE_10__* %118, null
  br i1 %119, label %120, label %134

120:                                              ; preds = %117
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, -1
  br i1 %124, label %125, label %134

125:                                              ; preds = %120
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 4
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i64 %132
  store %struct.TYPE_10__* %133, %struct.TYPE_10__** %18, align 8
  br label %134

134:                                              ; preds = %125, %120, %117
  br label %135

135:                                              ; preds = %134, %108
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %138 = load i32*, i32** %15, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %140 = call i32* @trex_matchnode(%struct.TYPE_11__* %136, %struct.TYPE_10__* %137, i32* %138, %struct.TYPE_10__* %139)
  store i32* %140, i32** %17, align 8
  %141 = load i32*, i32** %17, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %172

143:                                              ; preds = %135
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %13, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %143
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %14, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  br label %182

152:                                              ; preds = %147, %143
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* %12, align 4
  %155 = icmp sge i32 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = load i32, i32* %13, align 4
  %158 = icmp eq i32 %157, 65535
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  br label %182

160:                                              ; preds = %156, %152
  %161 = load i32, i32* %14, align 4
  %162 = load i32, i32* %12, align 4
  %163 = icmp sge i32 %161, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %160
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* %13, align 4
  %167 = icmp sle i32 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  br label %182

169:                                              ; preds = %164, %160
  br label %170

170:                                              ; preds = %169
  br label %171

171:                                              ; preds = %170
  br label %172

172:                                              ; preds = %171, %135
  br label %173

173:                                              ; preds = %172, %96, %91
  br label %174

174:                                              ; preds = %173, %80
  %175 = load i32*, i32** %15, align 8
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = icmp uge i32* %175, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %174
  br label %182

181:                                              ; preds = %174
  br label %57

182:                                              ; preds = %180, %168, %159, %151, %79, %64
  %183 = load i32, i32* %12, align 4
  %184 = load i32, i32* %13, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %192

186:                                              ; preds = %182
  %187 = load i32, i32* %12, align 4
  %188 = load i32, i32* %14, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %186
  %191 = load i32*, i32** %16, align 8
  store i32* %191, i32** %5, align 8
  br label %579

192:                                              ; preds = %186, %182
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* %12, align 4
  %195 = icmp sge i32 %193, %194
  br i1 %195, label %196, label %201

196:                                              ; preds = %192
  %197 = load i32, i32* %13, align 4
  %198 = icmp eq i32 %197, 65535
  br i1 %198, label %199, label %201

199:                                              ; preds = %196
  %200 = load i32*, i32** %16, align 8
  store i32* %200, i32** %5, align 8
  br label %579

201:                                              ; preds = %196, %192
  %202 = load i32, i32* %14, align 4
  %203 = load i32, i32* %12, align 4
  %204 = icmp sge i32 %202, %203
  br i1 %204, label %205, label %211

205:                                              ; preds = %201
  %206 = load i32, i32* %14, align 4
  %207 = load i32, i32* %13, align 4
  %208 = icmp sle i32 %206, %207
  br i1 %208, label %209, label %211

209:                                              ; preds = %205
  %210 = load i32*, i32** %16, align 8
  store i32* %210, i32** %5, align 8
  br label %579

211:                                              ; preds = %205, %201
  br label %212

212:                                              ; preds = %211
  br label %213

213:                                              ; preds = %212
  store i32* null, i32** %5, align 8
  br label %579

214:                                              ; preds = %4
  %215 = load i32*, i32** %8, align 8
  store i32* %215, i32** %19, align 8
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 4
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %217, align 8
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 3
  %221 = load i64, i64* %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i64 %221
  store %struct.TYPE_10__* %222, %struct.TYPE_10__** %20, align 8
  br label %223

223:                                              ; preds = %245, %214
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %226 = load i32*, i32** %19, align 8
  %227 = call i32* @trex_matchnode(%struct.TYPE_11__* %224, %struct.TYPE_10__* %225, i32* %226, %struct.TYPE_10__* null)
  store i32* %227, i32** %19, align 8
  %228 = icmp ne i32* %227, null
  br i1 %228, label %229, label %246

229:                                              ; preds = %223
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = icmp ne i32 %232, -1
  br i1 %233, label %234, label %243

234:                                              ; preds = %229
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 4
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %236, align 8
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i64 %241
  store %struct.TYPE_10__* %242, %struct.TYPE_10__** %20, align 8
  br label %245

243:                                              ; preds = %229
  %244 = load i32*, i32** %19, align 8
  store i32* %244, i32** %5, align 8
  br label %579

245:                                              ; preds = %234
  br label %223

246:                                              ; preds = %223
  %247 = load i32*, i32** %8, align 8
  store i32* %247, i32** %19, align 8
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 4
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %249, align 8
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i64 %254
  store %struct.TYPE_10__* %255, %struct.TYPE_10__** %20, align 8
  br label %256

256:                                              ; preds = %278, %246
  %257 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %259 = load i32*, i32** %19, align 8
  %260 = call i32* @trex_matchnode(%struct.TYPE_11__* %257, %struct.TYPE_10__* %258, i32* %259, %struct.TYPE_10__* null)
  store i32* %260, i32** %19, align 8
  %261 = icmp ne i32* %260, null
  br i1 %261, label %262, label %279

262:                                              ; preds = %256
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = icmp ne i32 %265, -1
  br i1 %266, label %267, label %276

267:                                              ; preds = %262
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 4
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** %269, align 8
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i64 %274
  store %struct.TYPE_10__* %275, %struct.TYPE_10__** %20, align 8
  br label %278

276:                                              ; preds = %262
  %277 = load i32*, i32** %19, align 8
  store i32* %277, i32** %5, align 8
  br label %579

278:                                              ; preds = %267
  br label %256

279:                                              ; preds = %256
  store i32* null, i32** %5, align 8
  br label %579

280:                                              ; preds = %4, %4
  %281 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %281, i32 0, i32 4
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %282, align 8
  %284 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 3
  %286 = load i64, i64* %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i64 %286
  store %struct.TYPE_10__* %287, %struct.TYPE_10__** %21, align 8
  %288 = load i32*, i32** %8, align 8
  store i32* %288, i32** %22, align 8
  store i32 -1, i32* %23, align 4
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = icmp ne i32 %291, 130
  br i1 %292, label %293, label %317

293:                                              ; preds = %280
  %294 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 8
  %300 = icmp eq i32 %296, %299
  br i1 %300, label %301, label %317

301:                                              ; preds = %293
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  store i32 %304, i32* %23, align 4
  %305 = load i32*, i32** %22, align 8
  %306 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i32 0, i32 5
  %308 = load %struct.TYPE_9__*, %struct.TYPE_9__** %307, align 8
  %309 = load i32, i32* %23, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i32 0, i32 0
  store i32* %305, i32** %312, align 8
  %313 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %314, align 8
  br label %317

317:                                              ; preds = %301, %293, %280
  br label %318

318:                                              ; preds = %376, %317
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %24, align 8
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 8
  %322 = icmp ne i32 %321, -1
  br i1 %322, label %323, label %332

323:                                              ; preds = %318
  %324 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %324, i32 0, i32 4
  %326 = load %struct.TYPE_10__*, %struct.TYPE_10__** %325, align 8
  %327 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %328 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 8
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %326, i64 %330
  store %struct.TYPE_10__* %331, %struct.TYPE_10__** %24, align 8
  br label %334

332:                                              ; preds = %318
  %333 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %333, %struct.TYPE_10__** %24, align 8
  br label %334

334:                                              ; preds = %332, %323
  %335 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %336 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %337 = load i32*, i32** %22, align 8
  %338 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %339 = call i32* @trex_matchnode(%struct.TYPE_11__* %335, %struct.TYPE_10__* %336, i32* %337, %struct.TYPE_10__* %338)
  store i32* %339, i32** %22, align 8
  %340 = icmp ne i32* %339, null
  br i1 %340, label %360, label %341

341:                                              ; preds = %334
  %342 = load i32, i32* %23, align 4
  %343 = icmp ne i32 %342, -1
  br i1 %343, label %344, label %359

344:                                              ; preds = %341
  %345 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %346 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %345, i32 0, i32 5
  %347 = load %struct.TYPE_9__*, %struct.TYPE_9__** %346, align 8
  %348 = load i32, i32* %23, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %347, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %350, i32 0, i32 0
  store i32* null, i32** %351, align 8
  %352 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %353 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %352, i32 0, i32 5
  %354 = load %struct.TYPE_9__*, %struct.TYPE_9__** %353, align 8
  %355 = load i32, i32* %23, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %354, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %357, i32 0, i32 1
  store i32* null, i32** %358, align 8
  br label %359

359:                                              ; preds = %344, %341
  store i32* null, i32** %5, align 8
  br label %579

360:                                              ; preds = %334
  br label %361

361:                                              ; preds = %360
  %362 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %363 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 8
  %365 = icmp ne i32 %364, -1
  br i1 %365, label %366, label %376

366:                                              ; preds = %361
  %367 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %368 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %367, i32 0, i32 4
  %369 = load %struct.TYPE_10__*, %struct.TYPE_10__** %368, align 8
  %370 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %371 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 8
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %369, i64 %373
  store %struct.TYPE_10__* %374, %struct.TYPE_10__** %21, align 8
  %375 = icmp ne %struct.TYPE_10__* %374, null
  br label %376

376:                                              ; preds = %366, %361
  %377 = phi i1 [ false, %361 ], [ %375, %366 ]
  br i1 %377, label %318, label %378

378:                                              ; preds = %376
  %379 = load i32, i32* %23, align 4
  %380 = icmp ne i32 %379, -1
  br i1 %380, label %381, label %403

381:                                              ; preds = %378
  %382 = load i32*, i32** %22, align 8
  %383 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %384 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %383, i32 0, i32 5
  %385 = load %struct.TYPE_9__*, %struct.TYPE_9__** %384, align 8
  %386 = load i32, i32* %23, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %385, i64 %387
  %389 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %388, i32 0, i32 0
  %390 = load i32*, i32** %389, align 8
  %391 = ptrtoint i32* %382 to i64
  %392 = ptrtoint i32* %390 to i64
  %393 = sub i64 %391, %392
  %394 = sdiv exact i64 %393, 4
  %395 = inttoptr i64 %394 to i32*
  %396 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %397 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %396, i32 0, i32 5
  %398 = load %struct.TYPE_9__*, %struct.TYPE_9__** %397, align 8
  %399 = load i32, i32* %23, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %398, i64 %400
  %402 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %401, i32 0, i32 1
  store i32* %395, i32** %402, align 8
  br label %403

403:                                              ; preds = %381, %378
  %404 = load i32*, i32** %22, align 8
  store i32* %404, i32** %5, align 8
  br label %579

405:                                              ; preds = %4
  %406 = load i32*, i32** %8, align 8
  %407 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %408 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %407, i32 0, i32 2
  %409 = load i32*, i32** %408, align 8
  %410 = icmp eq i32* %406, %409
  br i1 %410, label %411, label %416

411:                                              ; preds = %405
  %412 = load i32*, i32** %8, align 8
  %413 = load i32, i32* %412, align 4
  %414 = call i32 @isspace(i32 %413) #3
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %450

416:                                              ; preds = %411, %405
  %417 = load i32*, i32** %8, align 8
  %418 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %419 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %418, i32 0, i32 0
  %420 = load i32*, i32** %419, align 8
  %421 = icmp eq i32* %417, %420
  br i1 %421, label %422, label %428

422:                                              ; preds = %416
  %423 = load i32*, i32** %8, align 8
  %424 = getelementptr inbounds i32, i32* %423, i64 -1
  %425 = load i32, i32* %424, align 4
  %426 = call i32 @isspace(i32 %425) #3
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %450

428:                                              ; preds = %422, %416
  %429 = load i32*, i32** %8, align 8
  %430 = load i32, i32* %429, align 4
  %431 = call i32 @isspace(i32 %430) #3
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %439, label %433

433:                                              ; preds = %428
  %434 = load i32*, i32** %8, align 8
  %435 = getelementptr inbounds i32, i32* %434, i64 1
  %436 = load i32, i32* %435, align 4
  %437 = call i32 @isspace(i32 %436) #3
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %450, label %439

439:                                              ; preds = %433, %428
  %440 = load i32*, i32** %8, align 8
  %441 = load i32, i32* %440, align 4
  %442 = call i32 @isspace(i32 %441) #3
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %460

444:                                              ; preds = %439
  %445 = load i32*, i32** %8, align 8
  %446 = getelementptr inbounds i32, i32* %445, i64 1
  %447 = load i32, i32* %446, align 4
  %448 = call i32 @isspace(i32 %447) #3
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %460, label %450

450:                                              ; preds = %444, %433, %422, %411
  %451 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %452 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %451, i32 0, i32 3
  %453 = load i64, i64* %452, align 8
  %454 = icmp eq i64 %453, 98
  br i1 %454, label %455, label %457

455:                                              ; preds = %450
  %456 = load i32*, i32** %8, align 8
  br label %458

457:                                              ; preds = %450
  br label %458

458:                                              ; preds = %457, %455
  %459 = phi i32* [ %456, %455 ], [ null, %457 ]
  store i32* %459, i32** %5, align 8
  br label %579

460:                                              ; preds = %444, %439
  %461 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %462 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %461, i32 0, i32 3
  %463 = load i64, i64* %462, align 8
  %464 = icmp eq i64 %463, 98
  br i1 %464, label %465, label %466

465:                                              ; preds = %460
  br label %468

466:                                              ; preds = %460
  %467 = load i32*, i32** %8, align 8
  br label %468

468:                                              ; preds = %466, %465
  %469 = phi i32* [ null, %465 ], [ %467, %466 ]
  store i32* %469, i32** %5, align 8
  br label %579

470:                                              ; preds = %4
  %471 = load i32*, i32** %8, align 8
  %472 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %473 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %472, i32 0, i32 2
  %474 = load i32*, i32** %473, align 8
  %475 = icmp eq i32* %471, %474
  br i1 %475, label %476, label %478

476:                                              ; preds = %470
  %477 = load i32*, i32** %8, align 8
  store i32* %477, i32** %5, align 8
  br label %579

478:                                              ; preds = %470
  store i32* null, i32** %5, align 8
  br label %579

479:                                              ; preds = %4
  %480 = load i32*, i32** %8, align 8
  %481 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %482 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %481, i32 0, i32 0
  %483 = load i32*, i32** %482, align 8
  %484 = icmp eq i32* %480, %483
  br i1 %484, label %485, label %487

485:                                              ; preds = %479
  %486 = load i32*, i32** %8, align 8
  store i32* %486, i32** %5, align 8
  br label %579

487:                                              ; preds = %479
  store i32* null, i32** %5, align 8
  br label %579

488:                                              ; preds = %4
  %489 = load i32*, i32** %8, align 8
  %490 = getelementptr inbounds i32, i32* %489, i32 1
  store i32* %490, i32** %8, align 8
  %491 = load i32*, i32** %8, align 8
  store i32* %491, i32** %5, align 8
  br label %579

492:                                              ; preds = %4, %4
  %493 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %494 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %495 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %494, i32 0, i32 4
  %496 = load %struct.TYPE_10__*, %struct.TYPE_10__** %495, align 8
  %497 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %498 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %497, i32 0, i32 3
  %499 = load i64, i64* %498, align 8
  %500 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %496, i64 %499
  %501 = load i32*, i32** %8, align 8
  %502 = load i32, i32* %501, align 4
  %503 = call i32 @trex_matchclass(%struct.TYPE_11__* %493, %struct.TYPE_10__* %500, i32 %502)
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %514

505:                                              ; preds = %492
  %506 = load i32, i32* %10, align 4
  %507 = icmp eq i32 %506, 136
  br i1 %507, label %508, label %511

508:                                              ; preds = %505
  %509 = load i32, i32* @TRex_True, align 4
  %510 = icmp ne i32 %509, 0
  br i1 %510, label %523, label %527

511:                                              ; preds = %505
  %512 = load i32, i32* @TRex_False, align 4
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %523, label %527

514:                                              ; preds = %492
  %515 = load i32, i32* %10, align 4
  %516 = icmp eq i32 %515, 131
  br i1 %516, label %517, label %520

517:                                              ; preds = %514
  %518 = load i32, i32* @TRex_True, align 4
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %523, label %527

520:                                              ; preds = %514
  %521 = load i32, i32* @TRex_False, align 4
  %522 = icmp ne i32 %521, 0
  br i1 %522, label %523, label %527

523:                                              ; preds = %520, %517, %511, %508
  %524 = load i32*, i32** %8, align 8
  %525 = getelementptr inbounds i32, i32* %524, i32 1
  store i32* %525, i32** %8, align 8
  %526 = load i32*, i32** %8, align 8
  store i32* %526, i32** %5, align 8
  br label %579

527:                                              ; preds = %520, %517, %511, %508
  store i32* null, i32** %5, align 8
  br label %579

528:                                              ; preds = %4
  %529 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %530 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %529, i32 0, i32 3
  %531 = load i64, i64* %530, align 8
  %532 = load i32*, i32** %8, align 8
  %533 = load i32, i32* %532, align 4
  %534 = call i32 @trex_matchcclass(i64 %531, i32 %533)
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %536, label %540

536:                                              ; preds = %528
  %537 = load i32*, i32** %8, align 8
  %538 = getelementptr inbounds i32, i32* %537, i32 1
  store i32* %538, i32** %8, align 8
  %539 = load i32*, i32** %8, align 8
  store i32* %539, i32** %5, align 8
  br label %579

540:                                              ; preds = %528
  store i32* null, i32** %5, align 8
  br label %579

541:                                              ; preds = %4
  %542 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %543 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %542, i32 0, i32 3
  %544 = load i32, i32* %543, align 8
  %545 = load i32, i32* @TREX_ICASE, align 4
  %546 = and i32 %544, %545
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %548, label %566

548:                                              ; preds = %541
  %549 = load i32*, i32** %8, align 8
  %550 = load i32, i32* %549, align 4
  %551 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %552 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %551, i32 0, i32 0
  %553 = load i32, i32* %552, align 8
  %554 = call i32 @tolower(i32 %553)
  %555 = icmp ne i32 %550, %554
  br i1 %555, label %556, label %565

556:                                              ; preds = %548
  %557 = load i32*, i32** %8, align 8
  %558 = load i32, i32* %557, align 4
  %559 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %560 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %559, i32 0, i32 0
  %561 = load i32, i32* %560, align 8
  %562 = call i32 @toupper(i32 %561)
  %563 = icmp ne i32 %558, %562
  br i1 %563, label %564, label %565

564:                                              ; preds = %556
  store i32* null, i32** %5, align 8
  br label %579

565:                                              ; preds = %556, %548
  br label %575

566:                                              ; preds = %541
  %567 = load i32*, i32** %8, align 8
  %568 = load i32, i32* %567, align 4
  %569 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %570 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %569, i32 0, i32 0
  %571 = load i32, i32* %570, align 8
  %572 = icmp ne i32 %568, %571
  br i1 %572, label %573, label %574

573:                                              ; preds = %566
  store i32* null, i32** %5, align 8
  br label %579

574:                                              ; preds = %566
  br label %575

575:                                              ; preds = %574, %565
  %576 = load i32*, i32** %8, align 8
  %577 = getelementptr inbounds i32, i32* %576, i32 1
  store i32* %577, i32** %8, align 8
  %578 = load i32*, i32** %8, align 8
  store i32* %578, i32** %5, align 8
  br label %579

579:                                              ; preds = %575, %573, %564, %540, %536, %527, %523, %488, %487, %485, %478, %476, %468, %458, %403, %359, %279, %276, %243, %213, %209, %199, %190
  %580 = load i32*, i32** %5, align 8
  ret i32* %580
}

; Function Attrs: nounwind readonly
declare dso_local i32 @isspace(i32) #1

declare dso_local i32 @trex_matchclass(%struct.TYPE_11__*, %struct.TYPE_10__*, i32) #2

declare dso_local i32 @trex_matchcclass(i64, i32) #2

declare dso_local i32 @tolower(i32) #2

declare dso_local i32 @toupper(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
