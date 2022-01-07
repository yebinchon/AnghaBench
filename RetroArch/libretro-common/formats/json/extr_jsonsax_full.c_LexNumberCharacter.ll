; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/json/extr_jsonsax_full.c_LexNumberCharacter.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/json/extr_jsonsax_full.c_LexNumberCharacter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LEXER_ERROR = common dso_local global i32 0, align 4
@EOF_CODEPOINT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8)* @LexNumberCharacter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LexNumberCharacter(i32 %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8 %1, i8* %4, align 1
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %283 [
    i32 128, label %6
    i32 134, label %30
    i32 135, label %48
    i32 136, label %48
    i32 133, label %87
    i32 129, label %115
    i32 132, label %151
    i32 139, label %187
    i32 130, label %199
    i32 138, label %229
    i32 137, label %251
    i32 131, label %263
  ]

6:                                                ; preds = %2
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 45
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i32 134, i32* %3, align 4
  br label %29

11:                                               ; preds = %6
  %12 = load i8, i8* %4, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 48
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 135, i32* %3, align 4
  br label %28

16:                                               ; preds = %11
  %17 = load i8, i8* %4, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp sge i32 %18, 49
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i8, i8* %4, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp sle i32 %22, 57
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 132, i32* %3, align 4
  br label %27

25:                                               ; preds = %20, %16
  %26 = load i32, i32* @LEXER_ERROR, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %25, %24
  br label %28

28:                                               ; preds = %27, %15
  br label %29

29:                                               ; preds = %28, %10
  br label %283

30:                                               ; preds = %2
  %31 = load i8, i8* %4, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 48
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 136, i32* %3, align 4
  br label %47

35:                                               ; preds = %30
  %36 = load i8, i8* %4, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp sge i32 %37, 49
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i8, i8* %4, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp sle i32 %41, 57
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 132, i32* %3, align 4
  br label %46

44:                                               ; preds = %39, %35
  %45 = load i32, i32* @LEXER_ERROR, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %43
  br label %47

47:                                               ; preds = %46, %34
  br label %283

48:                                               ; preds = %2, %2
  %49 = load i8, i8* %4, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 46
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 139, i32* %3, align 4
  br label %86

53:                                               ; preds = %48
  %54 = load i8, i8* %4, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 101
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i8, i8* %4, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 69
  br i1 %60, label %61, label %62

61:                                               ; preds = %57, %53
  store i32 138, i32* %3, align 4
  br label %85

62:                                               ; preds = %57
  %63 = load i8, i8* %4, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 120
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i8, i8* %4, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 88
  br i1 %69, label %70, label %74

70:                                               ; preds = %66, %62
  %71 = load i32, i32* %3, align 4
  %72 = icmp eq i32 %71, 135
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 133, i32* %3, align 4
  br label %84

74:                                               ; preds = %70, %66
  %75 = load i8, i8* %4, align 1
  %76 = sext i8 %75 to i32
  %77 = load i8, i8* @EOF_CODEPOINT, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 128, i32* %3, align 4
  br label %83

81:                                               ; preds = %74
  %82 = load i32, i32* @LEXER_ERROR, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %80
  br label %84

84:                                               ; preds = %83, %73
  br label %85

85:                                               ; preds = %84, %61
  br label %86

86:                                               ; preds = %85, %52
  br label %283

87:                                               ; preds = %2
  %88 = load i8, i8* %4, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp sge i32 %89, 48
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i8, i8* %4, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp sle i32 %93, 57
  br i1 %94, label %111, label %95

95:                                               ; preds = %91, %87
  %96 = load i8, i8* %4, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp sge i32 %97, 65
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i8, i8* %4, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp sle i32 %101, 70
  br i1 %102, label %111, label %103

103:                                              ; preds = %99, %95
  %104 = load i8, i8* %4, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp sge i32 %105, 97
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load i8, i8* %4, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp sle i32 %109, 102
  br i1 %110, label %111, label %112

111:                                              ; preds = %107, %99, %91
  store i32 129, i32* %3, align 4
  br label %114

112:                                              ; preds = %107, %103
  %113 = load i32, i32* @LEXER_ERROR, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %112, %111
  br label %283

115:                                              ; preds = %2
  %116 = load i8, i8* %4, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp sge i32 %117, 48
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load i8, i8* %4, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp sle i32 %121, 57
  br i1 %122, label %139, label %123

123:                                              ; preds = %119, %115
  %124 = load i8, i8* %4, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp sge i32 %125, 65
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load i8, i8* %4, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp sle i32 %129, 70
  br i1 %130, label %139, label %131

131:                                              ; preds = %127, %123
  %132 = load i8, i8* %4, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp sge i32 %133, 97
  br i1 %134, label %135, label %140

135:                                              ; preds = %131
  %136 = load i8, i8* %4, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp sle i32 %137, 102
  br i1 %138, label %139, label %140

139:                                              ; preds = %135, %127, %119
  br label %150

140:                                              ; preds = %135, %131
  %141 = load i8, i8* %4, align 1
  %142 = sext i8 %141 to i32
  %143 = load i8, i8* @EOF_CODEPOINT, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %142, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  store i32 128, i32* %3, align 4
  br label %149

147:                                              ; preds = %140
  %148 = load i32, i32* @LEXER_ERROR, align 4
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %147, %146
  br label %150

150:                                              ; preds = %149, %139
  br label %283

151:                                              ; preds = %2
  %152 = load i8, i8* %4, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp sge i32 %153, 48
  br i1 %154, label %155, label %160

155:                                              ; preds = %151
  %156 = load i8, i8* %4, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp sle i32 %157, 57
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  br label %186

160:                                              ; preds = %155, %151
  %161 = load i8, i8* %4, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 46
  br i1 %163, label %164, label %165

164:                                              ; preds = %160
  store i32 139, i32* %3, align 4
  br label %185

165:                                              ; preds = %160
  %166 = load i8, i8* %4, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 101
  br i1 %168, label %173, label %169

169:                                              ; preds = %165
  %170 = load i8, i8* %4, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp eq i32 %171, 69
  br i1 %172, label %173, label %174

173:                                              ; preds = %169, %165
  store i32 138, i32* %3, align 4
  br label %184

174:                                              ; preds = %169
  %175 = load i8, i8* %4, align 1
  %176 = sext i8 %175 to i32
  %177 = load i8, i8* @EOF_CODEPOINT, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %176, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %174
  store i32 128, i32* %3, align 4
  br label %183

181:                                              ; preds = %174
  %182 = load i32, i32* @LEXER_ERROR, align 4
  store i32 %182, i32* %3, align 4
  br label %183

183:                                              ; preds = %181, %180
  br label %184

184:                                              ; preds = %183, %173
  br label %185

185:                                              ; preds = %184, %164
  br label %186

186:                                              ; preds = %185, %159
  br label %283

187:                                              ; preds = %2
  %188 = load i8, i8* %4, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp sge i32 %189, 48
  br i1 %190, label %191, label %196

191:                                              ; preds = %187
  %192 = load i8, i8* %4, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp sle i32 %193, 57
  br i1 %194, label %195, label %196

195:                                              ; preds = %191
  store i32 130, i32* %3, align 4
  br label %198

196:                                              ; preds = %191, %187
  %197 = load i32, i32* @LEXER_ERROR, align 4
  store i32 %197, i32* %3, align 4
  br label %198

198:                                              ; preds = %196, %195
  br label %283

199:                                              ; preds = %2
  %200 = load i8, i8* %4, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp sge i32 %201, 48
  br i1 %202, label %203, label %208

203:                                              ; preds = %199
  %204 = load i8, i8* %4, align 1
  %205 = sext i8 %204 to i32
  %206 = icmp sle i32 %205, 57
  br i1 %206, label %207, label %208

207:                                              ; preds = %203
  br label %228

208:                                              ; preds = %203, %199
  %209 = load i8, i8* %4, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp eq i32 %210, 101
  br i1 %211, label %216, label %212

212:                                              ; preds = %208
  %213 = load i8, i8* %4, align 1
  %214 = sext i8 %213 to i32
  %215 = icmp eq i32 %214, 69
  br i1 %215, label %216, label %217

216:                                              ; preds = %212, %208
  store i32 138, i32* %3, align 4
  br label %227

217:                                              ; preds = %212
  %218 = load i8, i8* %4, align 1
  %219 = sext i8 %218 to i32
  %220 = load i8, i8* @EOF_CODEPOINT, align 1
  %221 = sext i8 %220 to i32
  %222 = icmp eq i32 %219, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %217
  store i32 128, i32* %3, align 4
  br label %226

224:                                              ; preds = %217
  %225 = load i32, i32* @LEXER_ERROR, align 4
  store i32 %225, i32* %3, align 4
  br label %226

226:                                              ; preds = %224, %223
  br label %227

227:                                              ; preds = %226, %216
  br label %228

228:                                              ; preds = %227, %207
  br label %283

229:                                              ; preds = %2
  %230 = load i8, i8* %4, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp eq i32 %231, 43
  br i1 %232, label %237, label %233

233:                                              ; preds = %229
  %234 = load i8, i8* %4, align 1
  %235 = sext i8 %234 to i32
  %236 = icmp eq i32 %235, 45
  br i1 %236, label %237, label %238

237:                                              ; preds = %233, %229
  store i32 137, i32* %3, align 4
  br label %250

238:                                              ; preds = %233
  %239 = load i8, i8* %4, align 1
  %240 = sext i8 %239 to i32
  %241 = icmp sge i32 %240, 48
  br i1 %241, label %242, label %247

242:                                              ; preds = %238
  %243 = load i8, i8* %4, align 1
  %244 = sext i8 %243 to i32
  %245 = icmp sle i32 %244, 57
  br i1 %245, label %246, label %247

246:                                              ; preds = %242
  store i32 131, i32* %3, align 4
  br label %249

247:                                              ; preds = %242, %238
  %248 = load i32, i32* @LEXER_ERROR, align 4
  store i32 %248, i32* %3, align 4
  br label %249

249:                                              ; preds = %247, %246
  br label %250

250:                                              ; preds = %249, %237
  br label %283

251:                                              ; preds = %2
  %252 = load i8, i8* %4, align 1
  %253 = sext i8 %252 to i32
  %254 = icmp sge i32 %253, 48
  br i1 %254, label %255, label %260

255:                                              ; preds = %251
  %256 = load i8, i8* %4, align 1
  %257 = sext i8 %256 to i32
  %258 = icmp sle i32 %257, 57
  br i1 %258, label %259, label %260

259:                                              ; preds = %255
  store i32 131, i32* %3, align 4
  br label %262

260:                                              ; preds = %255, %251
  %261 = load i32, i32* @LEXER_ERROR, align 4
  store i32 %261, i32* %3, align 4
  br label %262

262:                                              ; preds = %260, %259
  br label %283

263:                                              ; preds = %2
  %264 = load i8, i8* %4, align 1
  %265 = sext i8 %264 to i32
  %266 = icmp sge i32 %265, 48
  br i1 %266, label %267, label %272

267:                                              ; preds = %263
  %268 = load i8, i8* %4, align 1
  %269 = sext i8 %268 to i32
  %270 = icmp sle i32 %269, 57
  br i1 %270, label %271, label %272

271:                                              ; preds = %267
  br label %282

272:                                              ; preds = %267, %263
  %273 = load i8, i8* %4, align 1
  %274 = sext i8 %273 to i32
  %275 = load i8, i8* @EOF_CODEPOINT, align 1
  %276 = sext i8 %275 to i32
  %277 = icmp eq i32 %274, %276
  br i1 %277, label %278, label %279

278:                                              ; preds = %272
  store i32 128, i32* %3, align 4
  br label %281

279:                                              ; preds = %272
  %280 = load i32, i32* @LEXER_ERROR, align 4
  store i32 %280, i32* %3, align 4
  br label %281

281:                                              ; preds = %279, %278
  br label %282

282:                                              ; preds = %281, %271
  br label %283

283:                                              ; preds = %2, %282, %262, %250, %228, %198, %186, %150, %114, %86, %47, %29
  %284 = load i32, i32* %3, align 4
  ret i32 %284
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
