; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_gb18030ext.h_gb18030ext_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_gb18030ext.h_gb18030ext_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gb18030ext_page2e = common dso_local global i16* null, align 8
@gb18030ext_page2f = common dso_local global i16* null, align 8
@gb18030ext_page34 = common dso_local global i16* null, align 8
@gb18030ext_page36 = common dso_local global i16* null, align 8
@gb18030ext_page39 = common dso_local global i16* null, align 8
@gb18030ext_page43 = common dso_local global i16* null, align 8
@gb18030ext_page46 = common dso_local global i16* null, align 8
@gb18030ext_page47_1 = common dso_local global i16* null, align 8
@gb18030ext_page47_2 = common dso_local global i16* null, align 8
@gb18030ext_page49 = common dso_local global i16* null, align 8
@gb18030ext_page4c = common dso_local global i16* null, align 8
@gb18030ext_page4d = common dso_local global i16* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@RET_TOOSMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @gb18030ext_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb18030ext_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp sge i32 %11, 2
  br i1 %12, label %13, label %274

13:                                               ; preds = %4
  store i16 0, i16* %10, align 2
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, 505
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i16 -22337, i16* %10, align 2
  br label %255

17:                                               ; preds = %13
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 8364
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i16 -23837, i16* %10, align 2
  br label %254

21:                                               ; preds = %17
  %22 = load i32, i32* %8, align 4
  %23 = icmp sge i32 %22, 11904
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 11984
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i16*, i16** @gb18030ext_page2e, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 %29, 11904
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i16, i16* %28, i64 %31
  %33 = load i16, i16* %32, align 2
  store i16 %33, i16* %10, align 2
  br label %253

34:                                               ; preds = %24, %21
  %35 = load i32, i32* %8, align 4
  %36 = icmp sge i32 %35, 12272
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 12288
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i16*, i16** @gb18030ext_page2f, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 %42, 12272
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i16, i16* %41, i64 %44
  %46 = load i16, i16* %45, align 2
  store i16 %46, i16* %10, align 2
  br label %252

47:                                               ; preds = %37, %34
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 12350
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i16 -22135, i16* %10, align 2
  br label %251

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = icmp sge i32 %52, 13376
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 13432
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i16*, i16** @gb18030ext_page34, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sub nsw i32 %59, 13376
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i16, i16* %58, i64 %61
  %63 = load i16, i16* %62, align 2
  store i16 %63, i16* %10, align 2
  br label %250

64:                                               ; preds = %54, %51
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 13726
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i16 -422, i16* %10, align 2
  br label %249

68:                                               ; preds = %64
  %69 = load i32, i32* %8, align 4
  %70 = icmp sge i32 %69, 13832
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 13856
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i16*, i16** @gb18030ext_page36, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sub nsw i32 %76, 13832
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i16, i16* %75, i64 %78
  %80 = load i16, i16* %79, align 2
  store i16 %80, i16* %10, align 2
  br label %248

81:                                               ; preds = %71, %68
  %82 = load i32, i32* %8, align 4
  %83 = icmp eq i32 %82, 14616
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i16 -416, i16* %10, align 2
  br label %247

85:                                               ; preds = %81
  %86 = load i32, i32* %8, align 4
  %87 = icmp eq i32 %86, 14702
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i16 -417, i16* %10, align 2
  br label %246

89:                                               ; preds = %85
  %90 = load i32, i32* %8, align 4
  %91 = icmp sge i32 %90, 14792
  br i1 %91, label %92, label %102

92:                                               ; preds = %89
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %93, 14816
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load i16*, i16** @gb18030ext_page39, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sub nsw i32 %97, 14792
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i16, i16* %96, i64 %99
  %101 = load i16, i16* %100, align 2
  store i16 %101, i16* %10, align 2
  br label %245

102:                                              ; preds = %92, %89
  %103 = load i32, i32* %8, align 4
  %104 = icmp eq i32 %103, 14963
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i16 -412, i16* %10, align 2
  br label %244

106:                                              ; preds = %102
  %107 = load i32, i32* %8, align 4
  %108 = icmp eq i32 %107, 15182
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store i16 -408, i16* %10, align 2
  br label %243

110:                                              ; preds = %106
  %111 = load i32, i32* %8, align 4
  %112 = icmp eq i32 %111, 15470
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i16 -407, i16* %10, align 2
  br label %242

114:                                              ; preds = %110
  %115 = load i32, i32* %8, align 4
  %116 = icmp eq i32 %115, 15584
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i16 -406, i16* %10, align 2
  br label %241

118:                                              ; preds = %114
  %119 = load i32, i32* %8, align 4
  %120 = icmp eq i32 %119, 16470
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i16 -401, i16* %10, align 2
  br label %240

122:                                              ; preds = %118
  %123 = load i32, i32* %8, align 4
  %124 = icmp eq i32 %123, 16735
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  store i16 -400, i16* %10, align 2
  br label %239

126:                                              ; preds = %122
  %127 = load i32, i32* %8, align 4
  %128 = icmp eq i32 %127, 17207
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i16 -398, i16* %10, align 2
  br label %238

130:                                              ; preds = %126
  %131 = load i32, i32* %8, align 4
  %132 = icmp sge i32 %131, 17320
  br i1 %132, label %133, label %143

133:                                              ; preds = %130
  %134 = load i32, i32* %8, align 4
  %135 = icmp slt i32 %134, 17376
  br i1 %135, label %136, label %143

136:                                              ; preds = %133
  %137 = load i16*, i16** @gb18030ext_page43, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sub nsw i32 %138, 17320
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i16, i16* %137, i64 %140
  %142 = load i16, i16* %141, align 2
  store i16 %142, i16* %10, align 2
  br label %237

143:                                              ; preds = %133, %130
  %144 = load i32, i32* %8, align 4
  %145 = icmp eq i32 %144, 17622
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  store i16 -389, i16* %10, align 2
  br label %236

147:                                              ; preds = %143
  %148 = load i32, i32* %8, align 4
  %149 = icmp sge i32 %148, 17992
  br i1 %149, label %150, label %160

150:                                              ; preds = %147
  %151 = load i32, i32* %8, align 4
  %152 = icmp slt i32 %151, 18024
  br i1 %152, label %153, label %160

153:                                              ; preds = %150
  %154 = load i16*, i16** @gb18030ext_page46, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sub nsw i32 %155, 17992
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i16, i16* %154, i64 %157
  %159 = load i16, i16* %158, align 2
  store i16 %159, i16* %10, align 2
  br label %235

160:                                              ; preds = %150, %147
  %161 = load i32, i32* %8, align 4
  %162 = icmp sge i32 %161, 18208
  br i1 %162, label %163, label %173

163:                                              ; preds = %160
  %164 = load i32, i32* %8, align 4
  %165 = icmp slt i32 %164, 18224
  br i1 %165, label %166, label %173

166:                                              ; preds = %163
  %167 = load i16*, i16** @gb18030ext_page47_1, align 8
  %168 = load i32, i32* %8, align 4
  %169 = sub nsw i32 %168, 18208
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i16, i16* %167, i64 %170
  %172 = load i16, i16* %171, align 2
  store i16 %172, i16* %10, align 2
  br label %234

173:                                              ; preds = %163, %160
  %174 = load i32, i32* %8, align 4
  %175 = icmp sge i32 %174, 18296
  br i1 %175, label %176, label %186

176:                                              ; preds = %173
  %177 = load i32, i32* %8, align 4
  %178 = icmp slt i32 %177, 18320
  br i1 %178, label %179, label %186

179:                                              ; preds = %176
  %180 = load i16*, i16** @gb18030ext_page47_2, align 8
  %181 = load i32, i32* %8, align 4
  %182 = sub nsw i32 %181, 18296
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i16, i16* %180, i64 %183
  %185 = load i16, i16* %184, align 2
  store i16 %185, i16* %10, align 2
  br label %233

186:                                              ; preds = %176, %173
  %187 = load i32, i32* %8, align 4
  %188 = icmp sge i32 %187, 18752
  br i1 %188, label %189, label %199

189:                                              ; preds = %186
  %190 = load i32, i32* %8, align 4
  %191 = icmp slt i32 %190, 18872
  br i1 %191, label %192, label %199

192:                                              ; preds = %189
  %193 = load i16*, i16** @gb18030ext_page49, align 8
  %194 = load i32, i32* %8, align 4
  %195 = sub nsw i32 %194, 18752
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i16, i16* %193, i64 %196
  %198 = load i16, i16* %197, align 2
  store i16 %198, i16* %10, align 2
  br label %232

199:                                              ; preds = %189, %186
  %200 = load i32, i32* %8, align 4
  %201 = icmp sge i32 %200, 19568
  br i1 %201, label %202, label %212

202:                                              ; preds = %199
  %203 = load i32, i32* %8, align 4
  %204 = icmp slt i32 %203, 19624
  br i1 %204, label %205, label %212

205:                                              ; preds = %202
  %206 = load i16*, i16** @gb18030ext_page4c, align 8
  %207 = load i32, i32* %8, align 4
  %208 = sub nsw i32 %207, 19568
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i16, i16* %206, i64 %209
  %211 = load i16, i16* %210, align 2
  store i16 %211, i16* %10, align 2
  br label %231

212:                                              ; preds = %202, %199
  %213 = load i32, i32* %8, align 4
  %214 = icmp sge i32 %213, 19728
  br i1 %214, label %215, label %225

215:                                              ; preds = %212
  %216 = load i32, i32* %8, align 4
  %217 = icmp slt i32 %216, 19744
  br i1 %217, label %218, label %225

218:                                              ; preds = %215
  %219 = load i16*, i16** @gb18030ext_page4d, align 8
  %220 = load i32, i32* %8, align 4
  %221 = sub nsw i32 %220, 19728
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i16, i16* %219, i64 %222
  %224 = load i16, i16* %223, align 2
  store i16 %224, i16* %10, align 2
  br label %230

225:                                              ; preds = %215, %212
  %226 = load i32, i32* %8, align 4
  %227 = icmp eq i32 %226, 19886
  br i1 %227, label %228, label %229

228:                                              ; preds = %225
  store i16 -353, i16* %10, align 2
  br label %229

229:                                              ; preds = %228, %225
  br label %230

230:                                              ; preds = %229, %218
  br label %231

231:                                              ; preds = %230, %205
  br label %232

232:                                              ; preds = %231, %192
  br label %233

233:                                              ; preds = %232, %179
  br label %234

234:                                              ; preds = %233, %166
  br label %235

235:                                              ; preds = %234, %153
  br label %236

236:                                              ; preds = %235, %146
  br label %237

237:                                              ; preds = %236, %136
  br label %238

238:                                              ; preds = %237, %129
  br label %239

239:                                              ; preds = %238, %125
  br label %240

240:                                              ; preds = %239, %121
  br label %241

241:                                              ; preds = %240, %117
  br label %242

242:                                              ; preds = %241, %113
  br label %243

243:                                              ; preds = %242, %109
  br label %244

244:                                              ; preds = %243, %105
  br label %245

245:                                              ; preds = %244, %95
  br label %246

246:                                              ; preds = %245, %88
  br label %247

247:                                              ; preds = %246, %84
  br label %248

248:                                              ; preds = %247, %74
  br label %249

249:                                              ; preds = %248, %67
  br label %250

250:                                              ; preds = %249, %57
  br label %251

251:                                              ; preds = %250, %50
  br label %252

252:                                              ; preds = %251, %40
  br label %253

253:                                              ; preds = %252, %27
  br label %254

254:                                              ; preds = %253, %20
  br label %255

255:                                              ; preds = %254, %16
  %256 = load i16, i16* %10, align 2
  %257 = zext i16 %256 to i32
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %272

259:                                              ; preds = %255
  %260 = load i16, i16* %10, align 2
  %261 = zext i16 %260 to i32
  %262 = ashr i32 %261, 8
  %263 = trunc i32 %262 to i8
  %264 = load i8*, i8** %7, align 8
  %265 = getelementptr inbounds i8, i8* %264, i64 0
  store i8 %263, i8* %265, align 1
  %266 = load i16, i16* %10, align 2
  %267 = zext i16 %266 to i32
  %268 = and i32 %267, 255
  %269 = trunc i32 %268 to i8
  %270 = load i8*, i8** %7, align 8
  %271 = getelementptr inbounds i8, i8* %270, i64 1
  store i8 %269, i8* %271, align 1
  store i32 2, i32* %5, align 4
  br label %276

272:                                              ; preds = %255
  %273 = load i32, i32* @RET_ILUNI, align 4
  store i32 %273, i32* %5, align 4
  br label %276

274:                                              ; preds = %4
  %275 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %275, i32* %5, align 4
  br label %276

276:                                              ; preds = %274, %272, %259
  %277 = load i32, i32* %5, align 4
  ret i32 %277
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
