; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_utf7.h_utf7_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_utf7.h_utf7_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i8*, i32)* @utf7_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf7_mbtowc(%struct.TYPE_3__* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  %26 = and i32 %25, 3
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  br label %80

29:                                               ; preds = %4
  br label %30

30:                                               ; preds = %150, %29
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %32, 1
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %277

36:                                               ; preds = %30
  %37 = load i8*, i8** %8, align 8
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %12, align 1
  %39 = load i8, i8* %12, align 1
  %40 = call i64 @isxdirect(i8 zeroext %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load i8, i8* %12, align 1
  %44 = zext i8 %43 to i32
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %289

51:                                               ; preds = %36
  %52 = load i8, i8* %12, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %53, 43
  br i1 %54, label %55, label %79

55:                                               ; preds = %51
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 2
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %277

61:                                               ; preds = %55
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %65, 45
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load i32*, i32** %7, align 8
  store i32 43, i32* %68, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 2
  store i32 %73, i32* %5, align 4
  br label %289

74:                                               ; preds = %61
  %75 = load i8*, i8** %8, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %8, align 8
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  store i32 1, i32* %10, align 4
  br label %80

79:                                               ; preds = %51
  br label %283

80:                                               ; preds = %74, %28
  store i32 0, i32* %13, align 4
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %14, align 4
  store i32 2, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %82

82:                                               ; preds = %229, %80
  %83 = load i8*, i8** %8, align 8
  %84 = load i8, i8* %83, align 1
  store i8 %84, i8* %18, align 1
  %85 = load i8, i8* %18, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp sge i32 %86, 65
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = load i8, i8* %18, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp sle i32 %90, 90
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load i8, i8* %18, align 1
  %94 = zext i8 %93 to i32
  %95 = sub nsw i32 %94, 65
  store i32 %95, i32* %19, align 4
  br label %155

96:                                               ; preds = %88, %82
  %97 = load i8, i8* %18, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp sge i32 %98, 97
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = load i8, i8* %18, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp sle i32 %102, 122
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load i8, i8* %18, align 1
  %106 = zext i8 %105 to i32
  %107 = sub nsw i32 %106, 97
  %108 = add nsw i32 %107, 26
  store i32 %108, i32* %19, align 4
  br label %154

109:                                              ; preds = %100, %96
  %110 = load i8, i8* %18, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp sge i32 %111, 48
  br i1 %112, label %113, label %122

113:                                              ; preds = %109
  %114 = load i8, i8* %18, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp sle i32 %115, 57
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = load i8, i8* %18, align 1
  %119 = zext i8 %118 to i32
  %120 = sub nsw i32 %119, 48
  %121 = add nsw i32 %120, 52
  store i32 %121, i32* %19, align 4
  br label %153

122:                                              ; preds = %113, %109
  %123 = load i8, i8* %18, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp eq i32 %124, 43
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  store i32 62, i32* %19, align 4
  br label %152

127:                                              ; preds = %122
  %128 = load i8, i8* %18, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp eq i32 %129, 47
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  store i32 63, i32* %19, align 4
  br label %151

132:                                              ; preds = %127
  %133 = load i32, i32* %14, align 4
  %134 = and i32 %133, -4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  br label %283

137:                                              ; preds = %132
  %138 = load i32, i32* %17, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  br label %283

141:                                              ; preds = %137
  %142 = load i8, i8* %18, align 1
  %143 = zext i8 %142 to i32
  %144 = icmp eq i32 %143, 45
  br i1 %144, label %145, label %150

145:                                              ; preds = %141
  %146 = load i8*, i8** %8, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %8, align 8
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %11, align 4
  br label %150

150:                                              ; preds = %145, %141
  store i32 0, i32* %10, align 4
  br label %30

151:                                              ; preds = %131
  br label %152

152:                                              ; preds = %151, %126
  br label %153

153:                                              ; preds = %152, %117
  br label %154

154:                                              ; preds = %153, %104
  br label %155

155:                                              ; preds = %154, %92
  %156 = load i8*, i8** %8, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %8, align 8
  %158 = load i32, i32* %17, align 4
  %159 = add i32 %158, 1
  store i32 %159, i32* %17, align 4
  %160 = load i32, i32* %14, align 4
  %161 = and i32 %160, 3
  switch i32 %161, label %205 [
    i32 1, label %162
    i32 0, label %165
    i32 2, label %180
    i32 3, label %195
  ]

162:                                              ; preds = %155
  %163 = load i32, i32* %19, align 4
  %164 = shl i32 %163, 2
  store i32 %164, i32* %14, align 4
  br label %205

165:                                              ; preds = %155
  %166 = load i32, i32* %13, align 4
  %167 = shl i32 %166, 8
  %168 = load i32, i32* %14, align 4
  %169 = and i32 %168, -4
  %170 = or i32 %167, %169
  %171 = load i32, i32* %19, align 4
  %172 = lshr i32 %171, 4
  %173 = or i32 %170, %172
  store i32 %173, i32* %13, align 4
  %174 = load i32, i32* %16, align 4
  %175 = add i32 %174, 1
  store i32 %175, i32* %16, align 4
  %176 = load i32, i32* %19, align 4
  %177 = and i32 %176, 15
  %178 = shl i32 %177, 4
  %179 = or i32 %178, 2
  store i32 %179, i32* %14, align 4
  br label %205

180:                                              ; preds = %155
  %181 = load i32, i32* %13, align 4
  %182 = shl i32 %181, 8
  %183 = load i32, i32* %14, align 4
  %184 = and i32 %183, -4
  %185 = or i32 %182, %184
  %186 = load i32, i32* %19, align 4
  %187 = lshr i32 %186, 2
  %188 = or i32 %185, %187
  store i32 %188, i32* %13, align 4
  %189 = load i32, i32* %16, align 4
  %190 = add i32 %189, 1
  store i32 %190, i32* %16, align 4
  %191 = load i32, i32* %19, align 4
  %192 = and i32 %191, 3
  %193 = shl i32 %192, 6
  %194 = or i32 %193, 3
  store i32 %194, i32* %14, align 4
  br label %205

195:                                              ; preds = %155
  %196 = load i32, i32* %13, align 4
  %197 = shl i32 %196, 8
  %198 = load i32, i32* %14, align 4
  %199 = and i32 %198, -4
  %200 = or i32 %197, %199
  %201 = load i32, i32* %19, align 4
  %202 = or i32 %200, %201
  store i32 %202, i32* %13, align 4
  %203 = load i32, i32* %16, align 4
  %204 = add i32 %203, 1
  store i32 %204, i32* %16, align 4
  store i32 1, i32* %14, align 4
  br label %205

205:                                              ; preds = %155, %195, %180, %165, %162
  %206 = load i32, i32* %16, align 4
  %207 = load i32, i32* %15, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %221

209:                                              ; preds = %205
  %210 = load i32, i32* %15, align 4
  %211 = icmp eq i32 %210, 2
  br i1 %211, label %212, label %219

212:                                              ; preds = %209
  %213 = load i32, i32* %13, align 4
  %214 = icmp uge i32 %213, 55296
  br i1 %214, label %215, label %219

215:                                              ; preds = %212
  %216 = load i32, i32* %13, align 4
  %217 = icmp ult i32 %216, 56320
  br i1 %217, label %218, label %219

218:                                              ; preds = %215
  store i32 4, i32* %15, align 4
  br label %220

219:                                              ; preds = %215, %212, %209
  br label %230

220:                                              ; preds = %218
  br label %221

221:                                              ; preds = %220, %205
  %222 = load i32, i32* %9, align 4
  %223 = load i32, i32* %11, align 4
  %224 = load i32, i32* %17, align 4
  %225 = add i32 %223, %224
  %226 = add i32 %225, 1
  %227 = icmp ult i32 %222, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %221
  br label %277

229:                                              ; preds = %221
  br label %82

230:                                              ; preds = %219
  %231 = load i32, i32* %14, align 4
  %232 = and i32 %231, 3
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %230
  %235 = call i32 (...) @abort() #3
  unreachable

236:                                              ; preds = %230
  %237 = load i32, i32* %15, align 4
  %238 = icmp eq i32 %237, 4
  br i1 %238, label %239, label %267

239:                                              ; preds = %236
  %240 = load i32, i32* %13, align 4
  %241 = lshr i32 %240, 16
  store i32 %241, i32* %20, align 4
  %242 = load i32, i32* %13, align 4
  %243 = and i32 %242, 65535
  store i32 %243, i32* %21, align 4
  %244 = load i32, i32* %20, align 4
  %245 = icmp sge i32 %244, 55296
  br i1 %245, label %246, label %249

246:                                              ; preds = %239
  %247 = load i32, i32* %20, align 4
  %248 = icmp slt i32 %247, 56320
  br i1 %248, label %251, label %249

249:                                              ; preds = %246, %239
  %250 = call i32 (...) @abort() #3
  unreachable

251:                                              ; preds = %246
  %252 = load i32, i32* %21, align 4
  %253 = icmp sge i32 %252, 56320
  br i1 %253, label %254, label %257

254:                                              ; preds = %251
  %255 = load i32, i32* %21, align 4
  %256 = icmp slt i32 %255, 57344
  br i1 %256, label %258, label %257

257:                                              ; preds = %254, %251
  br label %283

258:                                              ; preds = %254
  %259 = load i32, i32* %20, align 4
  %260 = sub nsw i32 %259, 55296
  %261 = shl i32 %260, 10
  %262 = add nsw i32 65536, %261
  %263 = load i32, i32* %21, align 4
  %264 = sub nsw i32 %263, 56320
  %265 = add nsw i32 %262, %264
  %266 = load i32*, i32** %7, align 8
  store i32 %265, i32* %266, align 4
  br label %270

267:                                              ; preds = %236
  %268 = load i32, i32* %13, align 4
  %269 = load i32*, i32** %7, align 8
  store i32 %268, i32* %269, align 4
  br label %270

270:                                              ; preds = %267, %258
  %271 = load i32, i32* %14, align 4
  %272 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i32 0, i32 0
  store i32 %271, i32* %273, align 4
  %274 = load i32, i32* %11, align 4
  %275 = load i32, i32* %17, align 4
  %276 = add i32 %274, %275
  store i32 %276, i32* %5, align 4
  br label %289

277:                                              ; preds = %228, %60, %35
  %278 = load i32, i32* %10, align 4
  %279 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i32 0, i32 0
  store i32 %278, i32* %280, align 4
  %281 = load i32, i32* %11, align 4
  %282 = call i32 @RET_TOOFEW(i32 %281)
  store i32 %282, i32* %5, align 4
  br label %289

283:                                              ; preds = %257, %140, %136, %79
  %284 = load i32, i32* %10, align 4
  %285 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i32 0, i32 0
  store i32 %284, i32* %286, align 4
  %287 = load i32, i32* %11, align 4
  %288 = call i32 @RET_SHIFT_ILSEQ(i32 %287)
  store i32 %288, i32* %5, align 4
  br label %289

289:                                              ; preds = %283, %277, %270, %67, %42
  %290 = load i32, i32* %5, align 4
  ret i32 %290
}

declare dso_local i64 @isxdirect(i8 zeroext) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @RET_TOOFEW(i32) #1

declare dso_local i32 @RET_SHIFT_ILSEQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
