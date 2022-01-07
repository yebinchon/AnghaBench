; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso2022_cn.h_iso2022_cn_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso2022_cn.h_iso2022_cn_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }

@SPLIT_STATE = common dso_local global i32 0, align 4
@RET_ILUNI = common dso_local global i32 0, align 4
@state1 = common dso_local global i64 0, align 8
@STATE_ASCII = common dso_local global i64 0, align 8
@RET_TOOSMALL = common dso_local global i32 0, align 4
@SI = common dso_local global i8 0, align 1
@STATE2_NONE = common dso_local global i64 0, align 8
@state2 = common dso_local global i64 0, align 8
@STATE3_NONE = common dso_local global i64 0, align 8
@state3 = common dso_local global i64 0, align 8
@COMBINE_STATE = common dso_local global i32 0, align 4
@STATE2_DESIGNATED_GB2312 = common dso_local global i64 0, align 8
@STATE_TWOBYTE = common dso_local global i64 0, align 8
@ESC = common dso_local global i8 0, align 1
@SO = common dso_local global i8 0, align 1
@STATE2_DESIGNATED_CNS11643_1 = common dso_local global i64 0, align 8
@STATE3_DESIGNATED_CNS11643_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i32, i32)* @iso2022_cn_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iso2022_cn_wctomb(%struct.TYPE_6__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [3 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %10, align 8
  %20 = load i32, i32* @SPLIT_STATE, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @ascii_wctomb(%struct.TYPE_6__* %21, i8* %22, i32 %23, i32 1)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @RET_ILUNI, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %80

28:                                               ; preds = %4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 (...) @abort() #3
  unreachable

33:                                               ; preds = %28
  %34 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp slt i32 %36, 128
  br i1 %37, label %38, label %79

38:                                               ; preds = %33
  %39 = load i64, i64* @state1, align 8
  %40 = load i64, i64* @STATE_ASCII, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 2
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %48, i32* %5, align 4
  br label %318

49:                                               ; preds = %38
  %50 = load i64, i64* @state1, align 8
  %51 = load i64, i64* @STATE_ASCII, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load i8, i8* @SI, align 1
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  store i8 %54, i8* %56, align 1
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  store i8* %58, i8** %7, align 8
  %59 = load i64, i64* @STATE_ASCII, align 8
  store i64 %59, i64* @state1, align 8
  br label %60

60:                                               ; preds = %53, %49
  %61 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  store i8 %62, i8* %64, align 1
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 10
  br i1 %66, label %70, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, 13
  br i1 %69, label %70, label %73

70:                                               ; preds = %67, %60
  %71 = load i64, i64* @STATE2_NONE, align 8
  store i64 %71, i64* @state2, align 8
  %72 = load i64, i64* @STATE3_NONE, align 8
  store i64 %72, i64* @state3, align 8
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i32, i32* @COMBINE_STATE, align 4
  %75 = load i8*, i8** %10, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %5, align 4
  br label %318

79:                                               ; preds = %33
  br label %80

80:                                               ; preds = %79, %4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %82 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @gb2312_wctomb(%struct.TYPE_6__* %81, i8* %82, i32 %83, i32 2)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @RET_ILUNI, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %164

88:                                               ; preds = %80
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 2
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = call i32 (...) @abort() #3
  unreachable

93:                                               ; preds = %88
  %94 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp slt i32 %96, 128
  br i1 %97, label %98, label %163

98:                                               ; preds = %93
  %99 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 1
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = icmp slt i32 %101, 128
  br i1 %102, label %103, label %163

103:                                              ; preds = %98
  %104 = load i64, i64* @state2, align 8
  %105 = load i64, i64* @STATE2_DESIGNATED_GB2312, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 0, i32 4
  %109 = load i64, i64* @state1, align 8
  %110 = load i64, i64* @STATE_TWOBYTE, align 8
  %111 = icmp eq i64 %109, %110
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i32 0, i32 1
  %114 = add nsw i32 %108, %113
  %115 = add nsw i32 %114, 2
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %14, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %103
  %120 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %120, i32* %5, align 4
  br label %318

121:                                              ; preds = %103
  %122 = load i64, i64* @state2, align 8
  %123 = load i64, i64* @STATE2_DESIGNATED_GB2312, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %138

125:                                              ; preds = %121
  %126 = load i8, i8* @ESC, align 1
  %127 = load i8*, i8** %7, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 0
  store i8 %126, i8* %128, align 1
  %129 = load i8*, i8** %7, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 1
  store i8 36, i8* %130, align 1
  %131 = load i8*, i8** %7, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 2
  store i8 41, i8* %132, align 1
  %133 = load i8*, i8** %7, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 3
  store i8 65, i8* %134, align 1
  %135 = load i8*, i8** %7, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 4
  store i8* %136, i8** %7, align 8
  %137 = load i64, i64* @STATE2_DESIGNATED_GB2312, align 8
  store i64 %137, i64* @state2, align 8
  br label %138

138:                                              ; preds = %125, %121
  %139 = load i64, i64* @state1, align 8
  %140 = load i64, i64* @STATE_TWOBYTE, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %138
  %143 = load i8, i8* @SO, align 1
  %144 = load i8*, i8** %7, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 0
  store i8 %143, i8* %145, align 1
  %146 = load i8*, i8** %7, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 1
  store i8* %147, i8** %7, align 8
  %148 = load i64, i64* @STATE_TWOBYTE, align 8
  store i64 %148, i64* @state1, align 8
  br label %149

149:                                              ; preds = %142, %138
  %150 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %151 = load i8, i8* %150, align 1
  %152 = load i8*, i8** %7, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 0
  store i8 %151, i8* %153, align 1
  %154 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 1
  %155 = load i8, i8* %154, align 1
  %156 = load i8*, i8** %7, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 1
  store i8 %155, i8* %157, align 1
  %158 = load i32, i32* @COMBINE_STATE, align 4
  %159 = load i8*, i8** %10, align 8
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  store i8* %159, i8** %161, align 8
  %162 = load i32, i32* %14, align 4
  store i32 %162, i32* %5, align 4
  br label %318

163:                                              ; preds = %98, %93
  br label %164

164:                                              ; preds = %163, %80
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %166 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %167 = load i32, i32* %8, align 4
  %168 = call i32 @cns11643_wctomb(%struct.TYPE_6__* %165, i8* %166, i32 %167, i32 3)
  store i32 %168, i32* %12, align 4
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* @RET_ILUNI, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %316

172:                                              ; preds = %164
  %173 = load i32, i32* %12, align 4
  %174 = icmp ne i32 %173, 3
  br i1 %174, label %175, label %177

175:                                              ; preds = %172
  %176 = call i32 (...) @abort() #3
  unreachable

177:                                              ; preds = %172
  %178 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %182, label %252

182:                                              ; preds = %177
  %183 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 1
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  %186 = icmp slt i32 %185, 128
  br i1 %186, label %187, label %252

187:                                              ; preds = %182
  %188 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 2
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  %191 = icmp slt i32 %190, 128
  br i1 %191, label %192, label %252

192:                                              ; preds = %187
  %193 = load i64, i64* @state2, align 8
  %194 = load i64, i64* @STATE2_DESIGNATED_CNS11643_1, align 8
  %195 = icmp eq i64 %193, %194
  %196 = zext i1 %195 to i64
  %197 = select i1 %195, i32 0, i32 4
  %198 = load i64, i64* @state1, align 8
  %199 = load i64, i64* @STATE_TWOBYTE, align 8
  %200 = icmp eq i64 %198, %199
  %201 = zext i1 %200 to i64
  %202 = select i1 %200, i32 0, i32 1
  %203 = add nsw i32 %197, %202
  %204 = add nsw i32 %203, 2
  store i32 %204, i32* %15, align 4
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* %15, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %192
  %209 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %209, i32* %5, align 4
  br label %318

210:                                              ; preds = %192
  %211 = load i64, i64* @state2, align 8
  %212 = load i64, i64* @STATE2_DESIGNATED_CNS11643_1, align 8
  %213 = icmp ne i64 %211, %212
  br i1 %213, label %214, label %227

214:                                              ; preds = %210
  %215 = load i8, i8* @ESC, align 1
  %216 = load i8*, i8** %7, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 0
  store i8 %215, i8* %217, align 1
  %218 = load i8*, i8** %7, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 1
  store i8 36, i8* %219, align 1
  %220 = load i8*, i8** %7, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 2
  store i8 41, i8* %221, align 1
  %222 = load i8*, i8** %7, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 3
  store i8 71, i8* %223, align 1
  %224 = load i8*, i8** %7, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 4
  store i8* %225, i8** %7, align 8
  %226 = load i64, i64* @STATE2_DESIGNATED_CNS11643_1, align 8
  store i64 %226, i64* @state2, align 8
  br label %227

227:                                              ; preds = %214, %210
  %228 = load i64, i64* @state1, align 8
  %229 = load i64, i64* @STATE_TWOBYTE, align 8
  %230 = icmp ne i64 %228, %229
  br i1 %230, label %231, label %238

231:                                              ; preds = %227
  %232 = load i8, i8* @SO, align 1
  %233 = load i8*, i8** %7, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 0
  store i8 %232, i8* %234, align 1
  %235 = load i8*, i8** %7, align 8
  %236 = getelementptr inbounds i8, i8* %235, i64 1
  store i8* %236, i8** %7, align 8
  %237 = load i64, i64* @STATE_TWOBYTE, align 8
  store i64 %237, i64* @state1, align 8
  br label %238

238:                                              ; preds = %231, %227
  %239 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 1
  %240 = load i8, i8* %239, align 1
  %241 = load i8*, i8** %7, align 8
  %242 = getelementptr inbounds i8, i8* %241, i64 0
  store i8 %240, i8* %242, align 1
  %243 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 2
  %244 = load i8, i8* %243, align 1
  %245 = load i8*, i8** %7, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 1
  store i8 %244, i8* %246, align 1
  %247 = load i32, i32* @COMBINE_STATE, align 4
  %248 = load i8*, i8** %10, align 8
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 0
  store i8* %248, i8** %250, align 8
  %251 = load i32, i32* %15, align 4
  store i32 %251, i32* %5, align 4
  br label %318

252:                                              ; preds = %187, %182, %177
  %253 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %254 = load i8, i8* %253, align 1
  %255 = zext i8 %254 to i32
  %256 = icmp eq i32 %255, 2
  br i1 %256, label %257, label %315

257:                                              ; preds = %252
  %258 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 1
  %259 = load i8, i8* %258, align 1
  %260 = zext i8 %259 to i32
  %261 = icmp slt i32 %260, 128
  br i1 %261, label %262, label %315

262:                                              ; preds = %257
  %263 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 2
  %264 = load i8, i8* %263, align 1
  %265 = zext i8 %264 to i32
  %266 = icmp slt i32 %265, 128
  br i1 %266, label %267, label %315

267:                                              ; preds = %262
  %268 = load i64, i64* @state3, align 8
  %269 = load i64, i64* @STATE3_DESIGNATED_CNS11643_2, align 8
  %270 = icmp eq i64 %268, %269
  %271 = zext i1 %270 to i64
  %272 = select i1 %270, i32 0, i32 4
  %273 = add nsw i32 %272, 4
  store i32 %273, i32* %16, align 4
  %274 = load i32, i32* %9, align 4
  %275 = load i32, i32* %16, align 4
  %276 = icmp slt i32 %274, %275
  br i1 %276, label %277, label %279

277:                                              ; preds = %267
  %278 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %278, i32* %5, align 4
  br label %318

279:                                              ; preds = %267
  %280 = load i64, i64* @state3, align 8
  %281 = load i64, i64* @STATE3_DESIGNATED_CNS11643_2, align 8
  %282 = icmp ne i64 %280, %281
  br i1 %282, label %283, label %296

283:                                              ; preds = %279
  %284 = load i8, i8* @ESC, align 1
  %285 = load i8*, i8** %7, align 8
  %286 = getelementptr inbounds i8, i8* %285, i64 0
  store i8 %284, i8* %286, align 1
  %287 = load i8*, i8** %7, align 8
  %288 = getelementptr inbounds i8, i8* %287, i64 1
  store i8 36, i8* %288, align 1
  %289 = load i8*, i8** %7, align 8
  %290 = getelementptr inbounds i8, i8* %289, i64 2
  store i8 42, i8* %290, align 1
  %291 = load i8*, i8** %7, align 8
  %292 = getelementptr inbounds i8, i8* %291, i64 3
  store i8 72, i8* %292, align 1
  %293 = load i8*, i8** %7, align 8
  %294 = getelementptr inbounds i8, i8* %293, i64 4
  store i8* %294, i8** %7, align 8
  %295 = load i64, i64* @STATE3_DESIGNATED_CNS11643_2, align 8
  store i64 %295, i64* @state3, align 8
  br label %296

296:                                              ; preds = %283, %279
  %297 = load i8, i8* @ESC, align 1
  %298 = load i8*, i8** %7, align 8
  %299 = getelementptr inbounds i8, i8* %298, i64 0
  store i8 %297, i8* %299, align 1
  %300 = load i8*, i8** %7, align 8
  %301 = getelementptr inbounds i8, i8* %300, i64 1
  store i8 78, i8* %301, align 1
  %302 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 1
  %303 = load i8, i8* %302, align 1
  %304 = load i8*, i8** %7, align 8
  %305 = getelementptr inbounds i8, i8* %304, i64 2
  store i8 %303, i8* %305, align 1
  %306 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 2
  %307 = load i8, i8* %306, align 1
  %308 = load i8*, i8** %7, align 8
  %309 = getelementptr inbounds i8, i8* %308, i64 3
  store i8 %307, i8* %309, align 1
  %310 = load i32, i32* @COMBINE_STATE, align 4
  %311 = load i8*, i8** %10, align 8
  %312 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 0
  store i8* %311, i8** %313, align 8
  %314 = load i32, i32* %16, align 4
  store i32 %314, i32* %5, align 4
  br label %318

315:                                              ; preds = %262, %257, %252
  br label %316

316:                                              ; preds = %315, %164
  %317 = load i32, i32* @RET_ILUNI, align 4
  store i32 %317, i32* %5, align 4
  br label %318

318:                                              ; preds = %316, %296, %277, %238, %208, %149, %119, %73, %47
  %319 = load i32, i32* %5, align 4
  ret i32 %319
}

declare dso_local i32 @ascii_wctomb(%struct.TYPE_6__*, i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @gb2312_wctomb(%struct.TYPE_6__*, i8*, i32, i32) #1

declare dso_local i32 @cns11643_wctomb(%struct.TYPE_6__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
