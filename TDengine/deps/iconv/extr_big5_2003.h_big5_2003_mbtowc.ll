; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_big5_2003.h_big5_2003_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_big5_2003.h_big5_2003_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@big5_2003_2uni_pagea1 = common dso_local global i16* null, align 8
@RET_ILSEQ = common dso_local global i32 0, align 4
@big5_2003_2uni_pagef9 = common dso_local global i32* null, align 8
@big5_2003_2uni_pagec6 = common dso_local global i16* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i32)* @big5_2003_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @big5_2003_mbtowc(i32 %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i16, align 2
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %10, align 1
  %19 = load i8, i8* %10, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp slt i32 %20, 128
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @ascii_mbtowc(i32 %23, i32* %24, i8* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  br label %275

28:                                               ; preds = %4
  %29 = load i8, i8* %10, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp sge i32 %30, 129
  br i1 %31, label %32, label %273

32:                                               ; preds = %28
  %33 = load i8, i8* %10, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp slt i32 %34, 255
  br i1 %35, label %36, label %273

36:                                               ; preds = %32
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 2
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 @RET_TOOFEW(i32 0)
  store i32 %40, i32* %5, align 4
  br label %275

41:                                               ; preds = %36
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  store i8 %44, i8* %11, align 1
  %45 = load i8, i8* %11, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp sge i32 %46, 64
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i8, i8* %11, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp slt i32 %50, 127
  br i1 %51, label %60, label %52

52:                                               ; preds = %48, %41
  %53 = load i8, i8* %11, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp sge i32 %54, 161
  br i1 %55, label %56, label %272

56:                                               ; preds = %52
  %57 = load i8, i8* %11, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp slt i32 %58, 255
  br i1 %59, label %60, label %272

60:                                               ; preds = %56, %48
  %61 = load i8, i8* %10, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp sge i32 %62, 161
  br i1 %63, label %64, label %250

64:                                               ; preds = %60
  %65 = load i8, i8* %10, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp slt i32 %66, 163
  br i1 %67, label %68, label %95

68:                                               ; preds = %64
  %69 = load i8, i8* %10, align 1
  %70 = zext i8 %69 to i32
  %71 = sub nsw i32 %70, 161
  %72 = mul nsw i32 157, %71
  %73 = load i8, i8* %11, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8, i8* %11, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp sge i32 %76, 161
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 98, i32 64
  %80 = sub nsw i32 %74, %79
  %81 = add nsw i32 %72, %80
  store i32 %81, i32* %12, align 4
  %82 = load i16*, i16** @big5_2003_2uni_pagea1, align 8
  %83 = load i32, i32* %12, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i16, i16* %82, i64 %84
  %86 = load i16, i16* %85, align 2
  store i16 %86, i16* %13, align 2
  %87 = load i16, i16* %13, align 2
  %88 = zext i16 %87 to i32
  %89 = icmp ne i32 %88, 65533
  br i1 %89, label %90, label %94

90:                                               ; preds = %68
  %91 = load i16, i16* %13, align 2
  %92 = zext i16 %91 to i32
  %93 = load i32*, i32** %7, align 8
  store i32 %92, i32* %93, align 4
  store i32 2, i32* %5, align 4
  br label %275

94:                                               ; preds = %68
  br label %95

95:                                               ; preds = %94, %64
  %96 = load i8, i8* %10, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp eq i32 %97, 198
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i8, i8* %11, align 1
  %101 = zext i8 %100 to i32
  %102 = icmp sge i32 %101, 161
  br i1 %102, label %201, label %103

103:                                              ; preds = %99, %95
  %104 = load i8, i8* %10, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp eq i32 %105, 199
  br i1 %106, label %201, label %107

107:                                              ; preds = %103
  %108 = load i8, i8* %10, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp eq i32 %109, 194
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i8, i8* %11, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp eq i32 %113, 85
  br i1 %114, label %198, label %115

115:                                              ; preds = %111, %107
  %116 = load i32, i32* %6, align 4
  %117 = load i32*, i32** %7, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = call i32 @big5_mbtowc(i32 %116, i32* %117, i8* %118, i32 2)
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* @RET_ILSEQ, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %115
  %124 = load i32, i32* %14, align 4
  store i32 %124, i32* %5, align 4
  br label %275

125:                                              ; preds = %115
  %126 = load i8, i8* %10, align 1
  %127 = zext i8 %126 to i32
  %128 = icmp eq i32 %127, 163
  br i1 %128, label %129, label %157

129:                                              ; preds = %125
  %130 = load i8, i8* %11, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp sge i32 %131, 192
  br i1 %132, label %133, label %156

133:                                              ; preds = %129
  %134 = load i8, i8* %11, align 1
  %135 = zext i8 %134 to i32
  %136 = icmp sle i32 %135, 225
  br i1 %136, label %137, label %156

137:                                              ; preds = %133
  %138 = load i8, i8* %11, align 1
  %139 = zext i8 %138 to i32
  %140 = icmp eq i32 %139, 225
  br i1 %140, label %141, label %142

141:                                              ; preds = %137
  br label %153

142:                                              ; preds = %137
  %143 = load i8, i8* %11, align 1
  %144 = zext i8 %143 to i32
  %145 = icmp eq i32 %144, 224
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  br label %151

147:                                              ; preds = %142
  %148 = load i8, i8* %11, align 1
  %149 = zext i8 %148 to i32
  %150 = add nsw i32 9024, %149
  br label %151

151:                                              ; preds = %147, %146
  %152 = phi i32 [ 9249, %146 ], [ %150, %147 ]
  br label %153

153:                                              ; preds = %151, %141
  %154 = phi i32 [ 8364, %141 ], [ %152, %151 ]
  %155 = load i32*, i32** %7, align 8
  store i32 %154, i32* %155, align 4
  store i32 2, i32* %5, align 4
  br label %275

156:                                              ; preds = %133, %129
  br label %197

157:                                              ; preds = %125
  %158 = load i8, i8* %10, align 1
  %159 = zext i8 %158 to i32
  %160 = icmp eq i32 %159, 249
  br i1 %160, label %161, label %175

161:                                              ; preds = %157
  %162 = load i8, i8* %11, align 1
  %163 = zext i8 %162 to i32
  %164 = icmp sge i32 %163, 214
  br i1 %164, label %165, label %174

165:                                              ; preds = %161
  %166 = load i32*, i32** @big5_2003_2uni_pagef9, align 8
  %167 = load i8, i8* %11, align 1
  %168 = zext i8 %167 to i32
  %169 = sub nsw i32 %168, 214
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %166, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i32*, i32** %7, align 8
  store i32 %172, i32* %173, align 4
  store i32 2, i32* %5, align 4
  br label %275

174:                                              ; preds = %161
  br label %196

175:                                              ; preds = %157
  %176 = load i8, i8* %10, align 1
  %177 = zext i8 %176 to i32
  %178 = icmp sge i32 %177, 250
  br i1 %178, label %179, label %195

179:                                              ; preds = %175
  %180 = load i8, i8* %10, align 1
  %181 = zext i8 %180 to i32
  %182 = sub nsw i32 %181, 250
  %183 = mul nsw i32 157, %182
  %184 = add nsw i32 57344, %183
  %185 = load i8, i8* %11, align 1
  %186 = zext i8 %185 to i32
  %187 = load i8, i8* %11, align 1
  %188 = zext i8 %187 to i32
  %189 = icmp sge i32 %188, 161
  %190 = zext i1 %189 to i64
  %191 = select i1 %189, i32 98, i32 64
  %192 = sub nsw i32 %186, %191
  %193 = add nsw i32 %184, %192
  %194 = load i32*, i32** %7, align 8
  store i32 %193, i32* %194, align 4
  store i32 2, i32* %5, align 4
  br label %275

195:                                              ; preds = %175
  br label %196

196:                                              ; preds = %195, %174
  br label %197

197:                                              ; preds = %196, %156
  br label %200

198:                                              ; preds = %111
  %199 = load i32*, i32** %7, align 8
  store i32 24414, i32* %199, align 4
  store i32 2, i32* %5, align 4
  br label %275

200:                                              ; preds = %197
  br label %249

201:                                              ; preds = %103, %99
  %202 = load i8, i8* %10, align 1
  %203 = zext i8 %202 to i32
  %204 = sub nsw i32 %203, 198
  %205 = mul nsw i32 157, %204
  %206 = load i8, i8* %11, align 1
  %207 = zext i8 %206 to i32
  %208 = load i8, i8* %11, align 1
  %209 = zext i8 %208 to i32
  %210 = icmp sge i32 %209, 161
  %211 = zext i1 %210 to i64
  %212 = select i1 %210, i32 98, i32 64
  %213 = sub nsw i32 %207, %212
  %214 = add nsw i32 %205, %213
  store i32 %214, i32* %15, align 4
  %215 = load i32, i32* %15, align 4
  %216 = icmp ult i32 %215, 133
  br i1 %216, label %217, label %232

217:                                              ; preds = %201
  %218 = load i16*, i16** @big5_2003_2uni_pagec6, align 8
  %219 = load i32, i32* %15, align 4
  %220 = sub i32 %219, 63
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds i16, i16* %218, i64 %221
  %223 = load i16, i16* %222, align 2
  store i16 %223, i16* %16, align 2
  %224 = load i16, i16* %16, align 2
  %225 = zext i16 %224 to i32
  %226 = icmp ne i32 %225, 65533
  br i1 %226, label %227, label %231

227:                                              ; preds = %217
  %228 = load i16, i16* %16, align 2
  %229 = zext i16 %228 to i32
  %230 = load i32*, i32** %7, align 8
  store i32 %229, i32* %230, align 4
  store i32 2, i32* %5, align 4
  br label %275

231:                                              ; preds = %217
  br label %248

232:                                              ; preds = %201
  %233 = load i32, i32* %15, align 4
  %234 = icmp ult i32 %233, 216
  br i1 %234, label %235, label %239

235:                                              ; preds = %232
  %236 = load i32, i32* %15, align 4
  %237 = add i32 12220, %236
  %238 = load i32*, i32** %7, align 8
  store i32 %237, i32* %238, align 4
  store i32 2, i32* %5, align 4
  br label %275

239:                                              ; preds = %232
  %240 = load i32, i32* %15, align 4
  %241 = icmp ult i32 %240, 302
  br i1 %241, label %242, label %246

242:                                              ; preds = %239
  %243 = load i32, i32* %15, align 4
  %244 = add i32 12233, %243
  %245 = load i32*, i32** %7, align 8
  store i32 %244, i32* %245, align 4
  store i32 2, i32* %5, align 4
  br label %275

246:                                              ; preds = %239
  br label %247

247:                                              ; preds = %246
  br label %248

248:                                              ; preds = %247, %231
  br label %249

249:                                              ; preds = %248, %200
  br label %271

250:                                              ; preds = %60
  %251 = load i8, i8* %10, align 1
  %252 = zext i8 %251 to i32
  %253 = icmp sge i32 %252, 142
  %254 = zext i1 %253 to i64
  %255 = select i1 %253, i32 56088, i32 61112
  %256 = load i8, i8* %10, align 1
  %257 = zext i8 %256 to i32
  %258 = sub nsw i32 %257, 129
  %259 = mul nsw i32 157, %258
  %260 = add nsw i32 %255, %259
  %261 = load i8, i8* %11, align 1
  %262 = zext i8 %261 to i32
  %263 = load i8, i8* %11, align 1
  %264 = zext i8 %263 to i32
  %265 = icmp sge i32 %264, 161
  %266 = zext i1 %265 to i64
  %267 = select i1 %265, i32 98, i32 64
  %268 = sub nsw i32 %262, %267
  %269 = add nsw i32 %260, %268
  %270 = load i32*, i32** %7, align 8
  store i32 %269, i32* %270, align 4
  store i32 2, i32* %5, align 4
  br label %275

271:                                              ; preds = %249
  br label %272

272:                                              ; preds = %271, %56, %52
  br label %273

273:                                              ; preds = %272, %32, %28
  %274 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %274, i32* %5, align 4
  br label %275

275:                                              ; preds = %273, %250, %242, %235, %227, %198, %179, %165, %153, %123, %90, %39, %22
  %276 = load i32, i32* %5, align 4
  ret i32 %276
}

declare dso_local i32 @ascii_mbtowc(i32, i32*, i8*, i32) #1

declare dso_local i32 @RET_TOOFEW(i32) #1

declare dso_local i32 @big5_mbtowc(i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
