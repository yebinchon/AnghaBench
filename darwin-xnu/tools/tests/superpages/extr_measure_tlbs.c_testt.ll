; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/superpages/extr_measure_tlbs.c_testt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/superpages/extr_measure_tlbs.c_testt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@testt.sum = internal global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_FLAGS_ANYWHERE = common dso_local global i32 0, align 4
@VM_FLAGS_SUPERPAGE_SIZE_2MB = common dso_local global i32 0, align 4
@VM_FLAGS_SUPERPAGE_NONE = common dso_local global i32 0, align 4
@RUNS0 = common dso_local global i32 0, align 4
@RUNS1 = common dso_local global i32 0, align 4
@RUNS2 = common dso_local global i32 0, align 4
@NODE_ACCESSES = common dso_local global i32 0, align 4
@NODE_SIZE = common dso_local global i32 0, align 4
@PRIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @testt(i64 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %16, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sdiv i32 %22, 4
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* %17, align 4
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = mul nsw i32 %24, %25
  %27 = call i32 @SUPERPAGE_ROUND_UP(i32 %26)
  store i32 %27, i32* %18, align 4
  %28 = call i32 (...) @mach_task_self()
  %29 = load i32, i32* %18, align 4
  %30 = load i32, i32* @VM_FLAGS_ANYWHERE, align 4
  %31 = load i64, i64* %6, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* @VM_FLAGS_SUPERPAGE_SIZE_2MB, align 4
  br label %37

35:                                               ; preds = %4
  %36 = load i32, i32* @VM_FLAGS_SUPERPAGE_NONE, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = or i32 %30, %38
  %40 = call i32 @mach_vm_allocate(i32 %28, i64* %16, i32 %29, i32 %39)
  store i32 %40, i32* %19, align 4
  %41 = load i64, i64* %16, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %288

44:                                               ; preds = %37
  %45 = load i64, i64* %16, align 8
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %10, align 8
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %62, %44
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %17, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %47
  %52 = load i8*, i8** %10, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = mul i32 %53, %54
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %52, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = load i32, i32* @testt.sum, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* @testt.sum, align 4
  br label %62

62:                                               ; preds = %51
  %63 = load i32, i32* %12, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %47

65:                                               ; preds = %47
  %66 = call i32 (...) @clock()
  store i32 %66, i32* %20, align 4
  %67 = load i32, i32* %7, align 4
  switch i32 %67, label %275 [
    i32 0, label %68
    i32 1, label %129
    i32 2, label %194
  ]

68:                                               ; preds = %65
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %99

71:                                               ; preds = %68
  store i32 0, i32* %11, align 4
  br label %72

72:                                               ; preds = %95, %71
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @RUNS0, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %76, label %98

76:                                               ; preds = %72
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %91, %76
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %17, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %77
  %82 = load i32, i32* %11, align 4
  %83 = and i32 %82, 255
  %84 = trunc i32 %83 to i8
  %85 = load i8*, i8** %10, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @PAGE_SIZE, align 4
  %88 = mul i32 %86, %87
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %85, i64 %89
  store i8 %84, i8* %90, align 1
  br label %91

91:                                               ; preds = %81
  %92 = load i32, i32* %12, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %77

94:                                               ; preds = %77
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %11, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %11, align 4
  br label %72

98:                                               ; preds = %72
  br label %128

99:                                               ; preds = %68
  store i32 0, i32* %11, align 4
  br label %100

100:                                              ; preds = %124, %99
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* @RUNS0, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %104, label %127

104:                                              ; preds = %100
  store i32 0, i32* %12, align 4
  br label %105

105:                                              ; preds = %120, %104
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %17, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %105
  %110 = load i8*, i8** %10, align 8
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* @PAGE_SIZE, align 4
  %113 = mul i32 %111, %112
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %110, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = load i32, i32* @testt.sum, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* @testt.sum, align 4
  br label %120

120:                                              ; preds = %109
  %121 = load i32, i32* %12, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %12, align 4
  br label %105

123:                                              ; preds = %105
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %11, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %11, align 4
  br label %100

127:                                              ; preds = %100
  br label %128

128:                                              ; preds = %127, %98
  br label %275

129:                                              ; preds = %65
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %162

132:                                              ; preds = %129
  store i32 0, i32* %11, align 4
  br label %133

133:                                              ; preds = %158, %132
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* @RUNS1, align 4
  %136 = load i32, i32* @PAGE_SIZE, align 4
  %137 = sdiv i32 %135, %136
  %138 = icmp ult i32 %134, %137
  br i1 %138, label %139, label %161

139:                                              ; preds = %133
  store i32 0, i32* %14, align 4
  br label %140

140:                                              ; preds = %154, %139
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* %17, align 4
  %143 = load i32, i32* @PAGE_SIZE, align 4
  %144 = mul nsw i32 %142, %143
  %145 = icmp ult i32 %141, %144
  br i1 %145, label %146, label %157

146:                                              ; preds = %140
  %147 = load i32, i32* %11, align 4
  %148 = and i32 %147, 255
  %149 = trunc i32 %148 to i8
  %150 = load i8*, i8** %10, align 8
  %151 = load i32, i32* %14, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  store i8 %149, i8* %153, align 1
  br label %154

154:                                              ; preds = %146
  %155 = load i32, i32* %14, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %14, align 4
  br label %140

157:                                              ; preds = %140
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %11, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %133

161:                                              ; preds = %133
  br label %193

162:                                              ; preds = %129
  store i32 0, i32* %11, align 4
  br label %163

163:                                              ; preds = %189, %162
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* @RUNS1, align 4
  %166 = load i32, i32* @PAGE_SIZE, align 4
  %167 = sdiv i32 %165, %166
  %168 = icmp ult i32 %164, %167
  br i1 %168, label %169, label %192

169:                                              ; preds = %163
  store i32 0, i32* %14, align 4
  br label %170

170:                                              ; preds = %185, %169
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* %17, align 4
  %173 = load i32, i32* @PAGE_SIZE, align 4
  %174 = mul nsw i32 %172, %173
  %175 = icmp ult i32 %171, %174
  br i1 %175, label %176, label %188

176:                                              ; preds = %170
  %177 = load i8*, i8** %10, align 8
  %178 = load i32, i32* %14, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = load i32, i32* @testt.sum, align 4
  %184 = add nsw i32 %183, %182
  store i32 %184, i32* @testt.sum, align 4
  br label %185

185:                                              ; preds = %176
  %186 = load i32, i32* %14, align 4
  %187 = add i32 %186, 1
  store i32 %187, i32* %14, align 4
  br label %170

188:                                              ; preds = %170
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %11, align 4
  %191 = add i32 %190, 1
  store i32 %191, i32* %11, align 4
  br label %163

192:                                              ; preds = %163
  br label %193

193:                                              ; preds = %192, %161
  br label %275

194:                                              ; preds = %65
  store i32 0, i32* %12, align 4
  %195 = load i32, i32* %8, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %235

197:                                              ; preds = %194
  store i32 0, i32* %11, align 4
  br label %198

198:                                              ; preds = %231, %197
  %199 = load i32, i32* %11, align 4
  %200 = load i32, i32* @RUNS2, align 4
  %201 = load i32, i32* %17, align 4
  %202 = mul nsw i32 %200, %201
  %203 = icmp ult i32 %199, %202
  br i1 %203, label %204, label %234

204:                                              ; preds = %198
  %205 = load i32, i32* %12, align 4
  %206 = add i32 %205, 15485863
  store i32 %206, i32* %12, align 4
  %207 = load i32, i32* %12, align 4
  %208 = load i32, i32* %17, align 4
  %209 = load i32, i32* @PAGE_SIZE, align 4
  %210 = mul nsw i32 %208, %209
  %211 = sdiv i32 %210, 128
  %212 = urem i32 %207, %211
  store i32 %212, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %213

213:                                              ; preds = %227, %204
  %214 = load i32, i32* %14, align 4
  %215 = icmp ult i32 %214, 16
  br i1 %215, label %216, label %230

216:                                              ; preds = %213
  %217 = load i32, i32* %11, align 4
  %218 = and i32 %217, 255
  %219 = trunc i32 %218 to i8
  %220 = load i8*, i8** %10, align 8
  %221 = load i32, i32* %13, align 4
  %222 = mul i32 %221, 128
  %223 = load i32, i32* %14, align 4
  %224 = add i32 %222, %223
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds i8, i8* %220, i64 %225
  store i8 %219, i8* %226, align 1
  br label %227

227:                                              ; preds = %216
  %228 = load i32, i32* %14, align 4
  %229 = add i32 %228, 1
  store i32 %229, i32* %14, align 4
  br label %213

230:                                              ; preds = %213
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %11, align 4
  %233 = add i32 %232, 1
  store i32 %233, i32* %11, align 4
  br label %198

234:                                              ; preds = %198
  br label %274

235:                                              ; preds = %194
  store i32 0, i32* %11, align 4
  br label %236

236:                                              ; preds = %270, %235
  %237 = load i32, i32* %11, align 4
  %238 = load i32, i32* @RUNS2, align 4
  %239 = load i32, i32* %17, align 4
  %240 = mul nsw i32 %238, %239
  %241 = icmp ult i32 %237, %240
  br i1 %241, label %242, label %273

242:                                              ; preds = %236
  %243 = load i32, i32* %12, align 4
  %244 = add i32 %243, 15485863
  store i32 %244, i32* %12, align 4
  %245 = load i32, i32* %12, align 4
  %246 = load i32, i32* %17, align 4
  %247 = load i32, i32* @PAGE_SIZE, align 4
  %248 = mul nsw i32 %246, %247
  %249 = sdiv i32 %248, 128
  %250 = urem i32 %245, %249
  store i32 %250, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %251

251:                                              ; preds = %266, %242
  %252 = load i32, i32* %14, align 4
  %253 = icmp ult i32 %252, 16
  br i1 %253, label %254, label %269

254:                                              ; preds = %251
  %255 = load i8*, i8** %10, align 8
  %256 = load i32, i32* %13, align 4
  %257 = mul i32 %256, 128
  %258 = load i32, i32* %14, align 4
  %259 = add i32 %257, %258
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds i8, i8* %255, i64 %260
  %262 = load i8, i8* %261, align 1
  %263 = sext i8 %262 to i32
  %264 = load i32, i32* @testt.sum, align 4
  %265 = add nsw i32 %264, %263
  store i32 %265, i32* @testt.sum, align 4
  br label %266

266:                                              ; preds = %254
  %267 = load i32, i32* %14, align 4
  %268 = add i32 %267, 1
  store i32 %268, i32* %14, align 4
  br label %251

269:                                              ; preds = %251
  br label %270

270:                                              ; preds = %269
  %271 = load i32, i32* %11, align 4
  %272 = add i32 %271, 1
  store i32 %272, i32* %11, align 4
  br label %236

273:                                              ; preds = %236
  br label %274

274:                                              ; preds = %273, %234
  br label %275

275:                                              ; preds = %65, %274, %193, %128
  %276 = call i32 (...) @clock()
  store i32 %276, i32* %21, align 4
  %277 = call i32 (...) @mach_task_self()
  %278 = load i64, i64* %16, align 8
  %279 = load i32, i32* %18, align 4
  %280 = call i32 @mach_vm_deallocate(i32 %277, i64 %278, i32 %279)
  %281 = load i32, i32* %21, align 4
  %282 = load i32, i32* %20, align 4
  %283 = sub i32 %281, %282
  store i32 %283, i32* %15, align 4
  %284 = load i32, i32* %17, align 4
  %285 = load i32, i32* %15, align 4
  %286 = udiv i32 %285, %284
  store i32 %286, i32* %15, align 4
  %287 = load i32, i32* %15, align 4
  store i32 %287, i32* %5, align 4
  br label %288

288:                                              ; preds = %275, %43
  %289 = load i32, i32* %5, align 4
  ret i32 %289
}

declare dso_local i32 @SUPERPAGE_ROUND_UP(i32) #1

declare dso_local i32 @mach_vm_allocate(i32, i64*, i32, i32) #1

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i32 @clock(...) #1

declare dso_local i32 @mach_vm_deallocate(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
