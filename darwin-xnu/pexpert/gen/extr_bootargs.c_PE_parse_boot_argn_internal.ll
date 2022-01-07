; ModuleID = '/home/carl/AnghaBench/darwin-xnu/pexpert/gen/extr_bootargs.c_PE_parse_boot_argn_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/pexpert/gen/extr_bootargs.c_PE_parse_boot_argn_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i32, i64)* @PE_parse_boot_argn_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @PE_parse_boot_argn_internal(i8* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %14, align 8
  %18 = call i8* (...) @PE_boot_args()
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i64, i64* @FALSE, align 8
  store i64 %24, i64* %5, align 8
  br label %270

25:                                               ; preds = %4
  %26 = load i64, i64* @FALSE, align 8
  store i64 %26, i64* %16, align 8
  br label %27

27:                                               ; preds = %39, %25
  %28 = load i8*, i8** %10, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i8*, i8** %10, align 8
  %34 = load i8, i8* %33, align 1
  %35 = call i64 @isargsep(i8 signext %34)
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi i1 [ false, %27 ], [ %36, %32 ]
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %10, align 8
  br label %27

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %267, %42
  %44 = load i8*, i8** %10, align 8
  %45 = load i8, i8* %44, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %47, label %268

47:                                               ; preds = %43
  %48 = load i8*, i8** %10, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 45
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i64, i64* @TRUE, align 8
  store i64 %53, i64* %15, align 8
  br label %56

54:                                               ; preds = %47
  %55 = load i64, i64* @FALSE, align 8
  store i64 %55, i64* %15, align 8
  br label %56

56:                                               ; preds = %54, %52
  %57 = load i8*, i8** %10, align 8
  store i8* %57, i8** %11, align 8
  br label %58

58:                                               ; preds = %70, %56
  %59 = load i8*, i8** %11, align 8
  %60 = load i8, i8* %59, align 1
  %61 = call i64 @isargsep(i8 signext %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load i8*, i8** %11, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 61
  br label %68

68:                                               ; preds = %63, %58
  %69 = phi i1 [ false, %58 ], [ %67, %63 ]
  br i1 %69, label %70, label %73

70:                                               ; preds = %68
  %71 = load i8*, i8** %11, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %11, align 8
  br label %58

73:                                               ; preds = %68
  %74 = load i8*, i8** %11, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 61
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i64, i64* %15, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  br label %241

82:                                               ; preds = %78, %73
  %83 = load i8*, i8** %11, align 8
  %84 = load i8, i8* %83, align 1
  store i8 %84, i8* %12, align 1
  %85 = load i8*, i8** %11, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  store i64 %89, i64* %13, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = load i64, i64* %13, align 8
  %93 = call i64 @strncmp(i8* %90, i8* %91, i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %82
  %96 = load i64, i64* %13, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = call i64 @strlen(i8* %97)
  %99 = icmp ne i64 %96, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %95, %82
  br label %241

101:                                              ; preds = %95
  %102 = load i64, i64* %15, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %123

104:                                              ; preds = %101
  %105 = load i64, i64* %9, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %122, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %8, align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load i8*, i8** %7, align 8
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @argnumcpy(i64 1, i8* %111, i32 %112)
  %114 = load i64, i64* @TRUE, align 8
  store i64 %114, i64* %16, align 8
  br label %121

115:                                              ; preds = %107
  %116 = load i32, i32* %8, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = load i64, i64* @TRUE, align 8
  store i64 %119, i64* %16, align 8
  br label %120

120:                                              ; preds = %118, %115
  br label %121

121:                                              ; preds = %120, %110
  br label %122

122:                                              ; preds = %121, %104
  br label %268

123:                                              ; preds = %101
  br label %124

124:                                              ; preds = %136, %123
  %125 = load i8*, i8** %11, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load i8*, i8** %11, align 8
  %131 = load i8, i8* %130, align 1
  %132 = call i64 @isargsep(i8 signext %131)
  %133 = icmp ne i64 %132, 0
  br label %134

134:                                              ; preds = %129, %124
  %135 = phi i1 [ false, %124 ], [ %133, %129 ]
  br i1 %135, label %136, label %139

136:                                              ; preds = %134
  %137 = load i8*, i8** %11, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %11, align 8
  br label %124

139:                                              ; preds = %134
  %140 = load i8*, i8** %11, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 61
  br i1 %143, label %144, label %151

144:                                              ; preds = %139
  %145 = load i8, i8* %12, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp ne i32 %146, 61
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = load i8*, i8** %11, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  store i8* %150, i8** %10, align 8
  br label %241

151:                                              ; preds = %144, %139
  %152 = load i8*, i8** %6, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 95, %154
  br i1 %155, label %156, label %181

156:                                              ; preds = %151
  %157 = load i32, i32* %8, align 4
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %174

159:                                              ; preds = %156
  %160 = load i32, i32* %8, align 4
  %161 = icmp sgt i32 17, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %159
  br label %165

163:                                              ; preds = %159
  %164 = load i32, i32* %8, align 4
  br label %165

165:                                              ; preds = %163, %162
  %166 = phi i32 [ 17, %162 ], [ %164, %163 ]
  store i32 %166, i32* %17, align 4
  %167 = load i8*, i8** %11, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %11, align 8
  %169 = load i8*, i8** %7, align 8
  %170 = load i32, i32* %17, align 4
  %171 = sub nsw i32 %170, 1
  %172 = call i32 @argstrcpy2(i8* %168, i8* %169, i32 %171)
  %173 = load i64, i64* @TRUE, align 8
  store i64 %173, i64* %16, align 8
  br label %180

174:                                              ; preds = %156
  %175 = load i32, i32* %8, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %174
  %178 = load i64, i64* @TRUE, align 8
  store i64 %178, i64* %16, align 8
  br label %179

179:                                              ; preds = %177, %174
  br label %180

180:                                              ; preds = %179, %165
  br label %268

181:                                              ; preds = %151
  %182 = load i64, i64* %9, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %181
  %185 = load i8*, i8** %11, align 8
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp eq i32 %187, 61
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  br label %194

190:                                              ; preds = %184, %181
  %191 = load i8*, i8** %11, align 8
  %192 = load i64, i64* @FALSE, align 8
  %193 = call i32 @getval(i8* %191, i64* %14, i64 (i8)* @isargsep, i64 %192)
  br label %194

194:                                              ; preds = %190, %189
  %195 = phi i32 [ 128, %189 ], [ %193, %190 ]
  switch i32 %195, label %240 [
    i32 129, label %196
    i32 128, label %212
  ]

196:                                              ; preds = %194
  %197 = load i32, i32* %8, align 4
  %198 = icmp sgt i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %196
  %200 = load i64, i64* %14, align 8
  %201 = load i8*, i8** %7, align 8
  %202 = load i32, i32* %8, align 4
  %203 = call i32 @argnumcpy(i64 %200, i8* %201, i32 %202)
  %204 = load i64, i64* @TRUE, align 8
  store i64 %204, i64* %16, align 8
  br label %211

205:                                              ; preds = %196
  %206 = load i32, i32* %8, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %205
  %209 = load i64, i64* @TRUE, align 8
  store i64 %209, i64* %16, align 8
  br label %210

210:                                              ; preds = %208, %205
  br label %211

211:                                              ; preds = %210, %199
  br label %240

212:                                              ; preds = %194
  %213 = load i32, i32* %8, align 4
  %214 = icmp sgt i32 %213, 0
  br i1 %214, label %215, label %223

215:                                              ; preds = %212
  %216 = load i8*, i8** %11, align 8
  %217 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %217, i8** %11, align 8
  %218 = load i8*, i8** %7, align 8
  %219 = load i32, i32* %8, align 4
  %220 = sub nsw i32 %219, 1
  %221 = call i32 @argstrcpy2(i8* %217, i8* %218, i32 %220)
  %222 = load i64, i64* @TRUE, align 8
  store i64 %222, i64* %16, align 8
  br label %239

223:                                              ; preds = %212
  %224 = load i32, i32* %8, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %223
  %227 = load i64, i64* @TRUE, align 8
  store i64 %227, i64* %16, align 8
  br label %238

228:                                              ; preds = %223
  %229 = load i32, i32* %8, align 4
  %230 = icmp eq i32 %229, -1
  br i1 %230, label %231, label %237

231:                                              ; preds = %228
  %232 = load i8*, i8** %11, align 8
  %233 = getelementptr inbounds i8, i8* %232, i32 1
  store i8* %233, i8** %11, align 8
  %234 = load i8*, i8** %7, align 8
  %235 = call i32 @argstrcpy(i8* %233, i8* %234)
  %236 = load i64, i64* @TRUE, align 8
  store i64 %236, i64* %16, align 8
  br label %237

237:                                              ; preds = %231, %228
  br label %238

238:                                              ; preds = %237, %226
  br label %239

239:                                              ; preds = %238, %215
  br label %240

240:                                              ; preds = %194, %239, %211
  br label %241

241:                                              ; preds = %240, %148, %100, %81
  br label %242

242:                                              ; preds = %248, %241
  %243 = load i8*, i8** %10, align 8
  %244 = load i8, i8* %243, align 1
  %245 = call i64 @isargsep(i8 signext %244)
  %246 = icmp ne i64 %245, 0
  %247 = xor i1 %246, true
  br i1 %247, label %248, label %251

248:                                              ; preds = %242
  %249 = load i8*, i8** %10, align 8
  %250 = getelementptr inbounds i8, i8* %249, i32 1
  store i8* %250, i8** %10, align 8
  br label %242

251:                                              ; preds = %242
  br label %252

252:                                              ; preds = %264, %251
  %253 = load i8*, i8** %10, align 8
  %254 = load i8, i8* %253, align 1
  %255 = sext i8 %254 to i32
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %262

257:                                              ; preds = %252
  %258 = load i8*, i8** %10, align 8
  %259 = load i8, i8* %258, align 1
  %260 = call i64 @isargsep(i8 signext %259)
  %261 = icmp ne i64 %260, 0
  br label %262

262:                                              ; preds = %257, %252
  %263 = phi i1 [ false, %252 ], [ %261, %257 ]
  br i1 %263, label %264, label %267

264:                                              ; preds = %262
  %265 = load i8*, i8** %10, align 8
  %266 = getelementptr inbounds i8, i8* %265, i32 1
  store i8* %266, i8** %10, align 8
  br label %252

267:                                              ; preds = %262
  br label %43

268:                                              ; preds = %180, %122, %43
  %269 = load i64, i64* %16, align 8
  store i64 %269, i64* %5, align 8
  br label %270

270:                                              ; preds = %268, %23
  %271 = load i64, i64* %5, align 8
  ret i64 %271
}

declare dso_local i8* @PE_boot_args(...) #1

declare dso_local i64 @isargsep(i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @argnumcpy(i64, i8*, i32) #1

declare dso_local i32 @argstrcpy2(i8*, i8*, i32) #1

declare dso_local i32 @getval(i8*, i64*, i64 (i8)*, i64) #1

declare dso_local i32 @argstrcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
