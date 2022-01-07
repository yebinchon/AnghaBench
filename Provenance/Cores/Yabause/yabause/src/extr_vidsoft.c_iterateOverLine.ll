; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_iterateOverLine.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_iterateOverLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i8*, i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)*, i32*, i32*, i32*, i32*)* @iterateOverLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iterateOverLine(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)* %6, i32* %7, i32* %8, i32* %9, i32* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32 %0, i32* %13, align 4
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i8* %5, i8** %18, align 8
  store i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)* %6, i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)** %19, align 8
  store i32* %7, i32** %20, align 8
  store i32* %8, i32** %21, align 8
  store i32* %9, i32** %22, align 8
  store i32* %10, i32** %23, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %13, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %28, align 4
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* %14, align 4
  %35 = sub nsw i32 %33, %34
  store i32 %35, i32* %29, align 4
  %36 = load i32, i32* %28, align 4
  %37 = icmp sge i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 -1
  store i32 %39, i32* %26, align 4
  %40 = load i32, i32* %29, align 4
  %41 = icmp sge i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 -1
  store i32 %43, i32* %27, align 4
  %44 = load i32, i32* %28, align 4
  %45 = call i32 @abs(i32 %44) #2
  %46 = icmp sgt i32 %45, 999
  br i1 %46, label %51, label %47

47:                                               ; preds = %11
  %48 = load i32, i32* %29, align 4
  %49 = call i32 @abs(i32 %48) #2
  %50 = icmp sgt i32 %49, 999
  br i1 %50, label %51, label %53

51:                                               ; preds = %47, %11
  %52 = load i32, i32* @INT_MAX, align 4
  store i32 %52, i32* %12, align 4
  br label %305

53:                                               ; preds = %47
  %54 = load i32, i32* %28, align 4
  %55 = call i32 @abs(i32 %54) #2
  %56 = load i32, i32* %29, align 4
  %57 = call i32 @abs(i32 %56) #2
  %58 = icmp sgt i32 %55, %57
  br i1 %58, label %59, label %181

59:                                               ; preds = %53
  %60 = load i32, i32* %26, align 4
  %61 = load i32, i32* %27, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* %28, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %28, align 4
  br label %66

66:                                               ; preds = %63, %59
  br label %67

67:                                               ; preds = %158, %66
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %164

71:                                               ; preds = %67
  %72 = load i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)*, i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)** %19, align 8
  %73 = icmp ne i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)* %72, null
  br i1 %73, label %74, label %89

74:                                               ; preds = %71
  %75 = load i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)*, i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)** %19, align 8
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %24, align 4
  %79 = load i8*, i8** %18, align 8
  %80 = load i32*, i32** %20, align 8
  %81 = load i32*, i32** %21, align 8
  %82 = load i32*, i32** %22, align 8
  %83 = load i32*, i32** %23, align 8
  %84 = call i32 %75(i32 %76, i32 %77, i32 %78, i8* %79, i32* %80, i32* %81, i32* %82, i32* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %74
  %87 = load i32, i32* %24, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %305

89:                                               ; preds = %74, %71
  %90 = load i32, i32* %29, align 4
  %91 = load i32, i32* %25, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %25, align 4
  %93 = load i32, i32* %25, align 4
  %94 = call i32 @abs(i32 %93) #2
  %95 = load i32, i32* %28, align 4
  %96 = call i32 @abs(i32 %95) #2
  %97 = icmp sge i32 %94, %96
  br i1 %97, label %98, label %157

98:                                               ; preds = %89
  %99 = load i32, i32* %28, align 4
  %100 = load i32, i32* %25, align 4
  %101 = sub nsw i32 %100, %99
  store i32 %101, i32* %25, align 4
  %102 = load i32, i32* %27, align 4
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %17, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %156

107:                                              ; preds = %98
  %108 = load i32, i32* %24, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %24, align 4
  %110 = load i32, i32* %26, align 4
  %111 = load i32, i32* %27, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %136

113:                                              ; preds = %107
  %114 = load i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)*, i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)** %19, align 8
  %115 = icmp ne i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)* %114, null
  br i1 %115, label %116, label %135

116:                                              ; preds = %113
  %117 = load i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)*, i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)** %19, align 8
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %26, align 4
  %120 = add nsw i32 %118, %119
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %27, align 4
  %123 = sub nsw i32 %121, %122
  %124 = load i32, i32* %24, align 4
  %125 = load i8*, i8** %18, align 8
  %126 = load i32*, i32** %20, align 8
  %127 = load i32*, i32** %21, align 8
  %128 = load i32*, i32** %22, align 8
  %129 = load i32*, i32** %23, align 8
  %130 = call i32 %117(i32 %120, i32 %123, i32 %124, i8* %125, i32* %126, i32* %127, i32* %128, i32* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %116
  %133 = load i32, i32* %24, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %12, align 4
  br label %305

135:                                              ; preds = %116, %113
  br label %155

136:                                              ; preds = %107
  %137 = load i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)*, i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)** %19, align 8
  %138 = icmp ne i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)* %137, null
  br i1 %138, label %139, label %154

139:                                              ; preds = %136
  %140 = load i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)*, i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)** %19, align 8
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* %24, align 4
  %144 = load i8*, i8** %18, align 8
  %145 = load i32*, i32** %20, align 8
  %146 = load i32*, i32** %21, align 8
  %147 = load i32*, i32** %22, align 8
  %148 = load i32*, i32** %23, align 8
  %149 = call i32 %140(i32 %141, i32 %142, i32 %143, i8* %144, i32* %145, i32* %146, i32* %147, i32* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %139
  %152 = load i32, i32* %24, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %12, align 4
  br label %305

154:                                              ; preds = %139, %136
  br label %155

155:                                              ; preds = %154, %135
  br label %156

156:                                              ; preds = %155, %98
  br label %157

157:                                              ; preds = %156, %89
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %26, align 4
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %160, %159
  store i32 %161, i32* %13, align 4
  %162 = load i32, i32* %24, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %24, align 4
  br label %67

164:                                              ; preds = %67
  %165 = load i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)*, i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)** %19, align 8
  %166 = icmp ne i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)* %165, null
  br i1 %166, label %167, label %178

167:                                              ; preds = %164
  %168 = load i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)*, i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)** %19, align 8
  %169 = load i32, i32* %15, align 4
  %170 = load i32, i32* %16, align 4
  %171 = load i32, i32* %24, align 4
  %172 = load i8*, i8** %18, align 8
  %173 = load i32*, i32** %20, align 8
  %174 = load i32*, i32** %21, align 8
  %175 = load i32*, i32** %22, align 8
  %176 = load i32*, i32** %23, align 8
  %177 = call i32 %168(i32 %169, i32 %170, i32 %171, i8* %172, i32* %173, i32* %174, i32* %175, i32* %176)
  br label %178

178:                                              ; preds = %167, %164
  %179 = load i32, i32* %24, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %24, align 4
  br label %303

181:                                              ; preds = %53
  %182 = load i32, i32* %26, align 4
  %183 = load i32, i32* %27, align 4
  %184 = icmp ne i32 %182, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = load i32, i32* %29, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %29, align 4
  br label %188

188:                                              ; preds = %185, %181
  br label %189

189:                                              ; preds = %280, %188
  %190 = load i32, i32* %14, align 4
  %191 = load i32, i32* %16, align 4
  %192 = icmp ne i32 %190, %191
  br i1 %192, label %193, label %286

193:                                              ; preds = %189
  %194 = load i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)*, i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)** %19, align 8
  %195 = icmp ne i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)* %194, null
  br i1 %195, label %196, label %211

196:                                              ; preds = %193
  %197 = load i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)*, i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)** %19, align 8
  %198 = load i32, i32* %13, align 4
  %199 = load i32, i32* %14, align 4
  %200 = load i32, i32* %24, align 4
  %201 = load i8*, i8** %18, align 8
  %202 = load i32*, i32** %20, align 8
  %203 = load i32*, i32** %21, align 8
  %204 = load i32*, i32** %22, align 8
  %205 = load i32*, i32** %23, align 8
  %206 = call i32 %197(i32 %198, i32 %199, i32 %200, i8* %201, i32* %202, i32* %203, i32* %204, i32* %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %196
  %209 = load i32, i32* %24, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %12, align 4
  br label %305

211:                                              ; preds = %196, %193
  %212 = load i32, i32* %28, align 4
  %213 = load i32, i32* %25, align 4
  %214 = add nsw i32 %213, %212
  store i32 %214, i32* %25, align 4
  %215 = load i32, i32* %25, align 4
  %216 = call i32 @abs(i32 %215) #2
  %217 = load i32, i32* %29, align 4
  %218 = call i32 @abs(i32 %217) #2
  %219 = icmp sge i32 %216, %218
  br i1 %219, label %220, label %279

220:                                              ; preds = %211
  %221 = load i32, i32* %29, align 4
  %222 = load i32, i32* %25, align 4
  %223 = sub nsw i32 %222, %221
  store i32 %223, i32* %25, align 4
  %224 = load i32, i32* %26, align 4
  %225 = load i32, i32* %13, align 4
  %226 = add nsw i32 %225, %224
  store i32 %226, i32* %13, align 4
  %227 = load i32, i32* %17, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %278

229:                                              ; preds = %220
  %230 = load i32, i32* %24, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %24, align 4
  %232 = load i32, i32* %27, align 4
  %233 = load i32, i32* %26, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %254

235:                                              ; preds = %229
  %236 = load i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)*, i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)** %19, align 8
  %237 = icmp ne i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)* %236, null
  br i1 %237, label %238, label %253

238:                                              ; preds = %235
  %239 = load i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)*, i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)** %19, align 8
  %240 = load i32, i32* %13, align 4
  %241 = load i32, i32* %14, align 4
  %242 = load i32, i32* %24, align 4
  %243 = load i8*, i8** %18, align 8
  %244 = load i32*, i32** %20, align 8
  %245 = load i32*, i32** %21, align 8
  %246 = load i32*, i32** %22, align 8
  %247 = load i32*, i32** %23, align 8
  %248 = call i32 %239(i32 %240, i32 %241, i32 %242, i8* %243, i32* %244, i32* %245, i32* %246, i32* %247)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %238
  %251 = load i32, i32* %24, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %12, align 4
  br label %305

253:                                              ; preds = %238, %235
  br label %277

254:                                              ; preds = %229
  %255 = load i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)*, i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)** %19, align 8
  %256 = icmp ne i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)* %255, null
  br i1 %256, label %257, label %276

257:                                              ; preds = %254
  %258 = load i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)*, i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)** %19, align 8
  %259 = load i32, i32* %13, align 4
  %260 = load i32, i32* %26, align 4
  %261 = sub nsw i32 %259, %260
  %262 = load i32, i32* %14, align 4
  %263 = load i32, i32* %27, align 4
  %264 = add nsw i32 %262, %263
  %265 = load i32, i32* %24, align 4
  %266 = load i8*, i8** %18, align 8
  %267 = load i32*, i32** %20, align 8
  %268 = load i32*, i32** %21, align 8
  %269 = load i32*, i32** %22, align 8
  %270 = load i32*, i32** %23, align 8
  %271 = call i32 %258(i32 %261, i32 %264, i32 %265, i8* %266, i32* %267, i32* %268, i32* %269, i32* %270)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %257
  %274 = load i32, i32* %24, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %12, align 4
  br label %305

276:                                              ; preds = %257, %254
  br label %277

277:                                              ; preds = %276, %253
  br label %278

278:                                              ; preds = %277, %220
  br label %279

279:                                              ; preds = %278, %211
  br label %280

280:                                              ; preds = %279
  %281 = load i32, i32* %27, align 4
  %282 = load i32, i32* %14, align 4
  %283 = add nsw i32 %282, %281
  store i32 %283, i32* %14, align 4
  %284 = load i32, i32* %24, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %24, align 4
  br label %189

286:                                              ; preds = %189
  %287 = load i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)*, i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)** %19, align 8
  %288 = icmp ne i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)* %287, null
  br i1 %288, label %289, label %300

289:                                              ; preds = %286
  %290 = load i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)*, i32 (i32, i32, i32, i8*, i32*, i32*, i32*, i32*)** %19, align 8
  %291 = load i32, i32* %15, align 4
  %292 = load i32, i32* %16, align 4
  %293 = load i32, i32* %24, align 4
  %294 = load i8*, i8** %18, align 8
  %295 = load i32*, i32** %20, align 8
  %296 = load i32*, i32** %21, align 8
  %297 = load i32*, i32** %22, align 8
  %298 = load i32*, i32** %23, align 8
  %299 = call i32 %290(i32 %291, i32 %292, i32 %293, i8* %294, i32* %295, i32* %296, i32* %297, i32* %298)
  br label %300

300:                                              ; preds = %289, %286
  %301 = load i32, i32* %24, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %24, align 4
  br label %303

303:                                              ; preds = %300, %178
  %304 = load i32, i32* %24, align 4
  store i32 %304, i32* %12, align 4
  br label %305

305:                                              ; preds = %303, %273, %250, %208, %151, %132, %86, %51
  %306 = load i32, i32* %12, align 4
  ret i32 %306
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
