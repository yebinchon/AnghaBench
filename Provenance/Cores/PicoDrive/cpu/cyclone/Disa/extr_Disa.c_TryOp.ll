; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_TryOp.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_TryOp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @TryOp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TryOp(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 61696
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @DisaArithImm(i32 %7)
  br label %9

9:                                                ; preds = %6, %1
  %10 = load i32, i32* %2, align 4
  %11 = and i32 %10, 62911
  %12 = icmp eq i32 %11, 60
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @DisaArithSr(i32 %14)
  br label %16

16:                                               ; preds = %13, %9
  %17 = load i32, i32* %2, align 4
  %18 = and i32 %17, 61696
  %19 = icmp eq i32 %18, 256
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @DisaBtstReg(i32 %21)
  br label %23

23:                                               ; preds = %20, %16
  %24 = load i32, i32* %2, align 4
  %25 = and i32 %24, 61752
  %26 = icmp eq i32 %25, 264
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @DisaMovep(i32 %28)
  br label %30

30:                                               ; preds = %27, %23
  %31 = load i32, i32* %2, align 4
  %32 = and i32 %31, 65280
  %33 = icmp eq i32 %32, 2048
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @DisaBtstImm(i32 %35)
  br label %37

37:                                               ; preds = %34, %30
  %38 = load i32, i32* %2, align 4
  %39 = and i32 %38, 49152
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @DisaMove(i32 %42)
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i32, i32* %2, align 4
  %46 = and i32 %45, 63744
  %47 = icmp eq i32 %46, 16384
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @DisaNeg(i32 %49)
  br label %51

51:                                               ; preds = %48, %44
  %52 = load i32, i32* %2, align 4
  %53 = and i32 %52, 61760
  %54 = icmp eq i32 %53, 16640
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @OpChk(i32 %56)
  br label %58

58:                                               ; preds = %55, %51
  %59 = load i32, i32* %2, align 4
  %60 = and i32 %59, 61888
  %61 = icmp eq i32 %60, 16832
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @DisaLea(i32 %63)
  br label %65

65:                                               ; preds = %62, %58
  %66 = load i32, i32* %2, align 4
  %67 = and i32 %66, 63936
  %68 = icmp eq i32 %67, 16576
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* %2, align 4
  %71 = call i32 @DisaMoveSr(i32 %70)
  br label %72

72:                                               ; preds = %69, %65
  %73 = load i32, i32* %2, align 4
  %74 = and i32 %73, 65472
  %75 = icmp eq i32 %74, 18432
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* %2, align 4
  %78 = call i32 @DisaNbcd(i32 %77)
  br label %79

79:                                               ; preds = %76, %72
  %80 = load i32, i32* %2, align 4
  %81 = and i32 %80, 65528
  %82 = icmp eq i32 %81, 18496
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32, i32* %2, align 4
  %85 = call i32 @DisaSwap(i32 %84)
  br label %86

86:                                               ; preds = %83, %79
  %87 = load i32, i32* %2, align 4
  %88 = and i32 %87, 65472
  %89 = icmp eq i32 %88, 18496
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i32, i32* %2, align 4
  %92 = call i32 @DisaPea(i32 %91)
  br label %93

93:                                               ; preds = %90, %86
  %94 = load i32, i32* %2, align 4
  %95 = and i32 %94, 65464
  %96 = icmp eq i32 %95, 18560
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i32, i32* %2, align 4
  %99 = call i32 @DisaExt(i32 %98)
  br label %100

100:                                              ; preds = %97, %93
  %101 = load i32, i32* %2, align 4
  %102 = and i32 %101, 64384
  %103 = icmp eq i32 %102, 18560
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i32, i32* %2, align 4
  %106 = call i32 @DisaMovem(i32 %105)
  br label %107

107:                                              ; preds = %104, %100
  %108 = load i32, i32* %2, align 4
  %109 = and i32 %108, 65280
  %110 = icmp eq i32 %109, 18944
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load i32, i32* %2, align 4
  %113 = call i32 @DisaTst(i32 %112)
  br label %114

114:                                              ; preds = %111, %107
  %115 = load i32, i32* %2, align 4
  %116 = and i32 %115, 65472
  %117 = icmp eq i32 %116, 19136
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i32, i32* %2, align 4
  %120 = call i32 @DisaTas(i32 %119)
  br label %121

121:                                              ; preds = %118, %114
  %122 = load i32, i32* %2, align 4
  %123 = and i32 %122, 65520
  %124 = icmp eq i32 %123, 20032
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load i32, i32* %2, align 4
  %127 = call i32 @DisaTrap(i32 %126)
  br label %128

128:                                              ; preds = %125, %121
  %129 = load i32, i32* %2, align 4
  %130 = and i32 %129, 65528
  %131 = icmp eq i32 %130, 20048
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load i32, i32* %2, align 4
  %134 = call i32 @DisaLink(i32 %133)
  br label %135

135:                                              ; preds = %132, %128
  %136 = load i32, i32* %2, align 4
  %137 = and i32 %136, 65528
  %138 = icmp eq i32 %137, 20056
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load i32, i32* %2, align 4
  %141 = call i32 @DisaUnlk(i32 %140)
  br label %142

142:                                              ; preds = %139, %135
  %143 = load i32, i32* %2, align 4
  %144 = and i32 %143, 65520
  %145 = icmp eq i32 %144, 20064
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load i32, i32* %2, align 4
  %148 = call i32 @DisaMoveUsp(i32 %147)
  br label %149

149:                                              ; preds = %146, %142
  %150 = load i32, i32* %2, align 4
  %151 = and i32 %150, 65528
  %152 = icmp eq i32 %151, 20080
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  %154 = load i32, i32* %2, align 4
  %155 = call i32 @Disa4E70(i32 %154)
  br label %156

156:                                              ; preds = %153, %149
  %157 = load i32, i32* %2, align 4
  %158 = and i32 %157, 65408
  %159 = icmp eq i32 %158, 20096
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = load i32, i32* %2, align 4
  %162 = call i32 @DisaJsr(i32 %161)
  br label %163

163:                                              ; preds = %160, %156
  %164 = load i32, i32* %2, align 4
  %165 = and i32 %164, 61440
  %166 = icmp eq i32 %165, 20480
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = load i32, i32* %2, align 4
  %169 = call i32 @DisaAddq(i32 %168)
  br label %170

170:                                              ; preds = %167, %163
  %171 = load i32, i32* %2, align 4
  %172 = and i32 %171, 61632
  %173 = icmp eq i32 %172, 20672
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  %175 = load i32, i32* %2, align 4
  %176 = call i32 @DisaSet(i32 %175)
  br label %177

177:                                              ; preds = %174, %170
  %178 = load i32, i32* %2, align 4
  %179 = and i32 %178, 61688
  %180 = icmp eq i32 %179, 20680
  br i1 %180, label %181, label %184

181:                                              ; preds = %177
  %182 = load i32, i32* %2, align 4
  %183 = call i32 @DisaDbra(i32 %182)
  br label %184

184:                                              ; preds = %181, %177
  %185 = load i32, i32* %2, align 4
  %186 = and i32 %185, 61440
  %187 = icmp eq i32 %186, 24576
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  %189 = load i32, i32* %2, align 4
  %190 = call i32 @DisaBranch(i32 %189)
  br label %191

191:                                              ; preds = %188, %184
  %192 = load i32, i32* %2, align 4
  %193 = and i32 %192, 40960
  %194 = icmp eq i32 %193, 32768
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = load i32, i32* %2, align 4
  %197 = call i32 @DisaArithReg(i32 %196)
  br label %198

198:                                              ; preds = %195, %191
  %199 = load i32, i32* %2, align 4
  %200 = and i32 %199, 45552
  %201 = icmp eq i32 %200, 33024
  br i1 %201, label %202, label %205

202:                                              ; preds = %198
  %203 = load i32, i32* %2, align 4
  %204 = call i32 @DisaAbcd(i32 %203)
  br label %205

205:                                              ; preds = %202, %198
  %206 = load i32, i32* %2, align 4
  %207 = and i32 %206, 45360
  %208 = icmp eq i32 %207, 37120
  br i1 %208, label %209, label %212

209:                                              ; preds = %205
  %210 = load i32, i32* %2, align 4
  %211 = call i32 @DisaAddx(i32 %210)
  br label %212

212:                                              ; preds = %209, %205
  %213 = load i32, i32* %2, align 4
  %214 = and i32 %213, 45248
  %215 = icmp eq i32 %214, 32960
  br i1 %215, label %216, label %219

216:                                              ; preds = %212
  %217 = load i32, i32* %2, align 4
  %218 = call i32 @DisaMul(i32 %217)
  br label %219

219:                                              ; preds = %216, %212
  %220 = load i32, i32* %2, align 4
  %221 = and i32 %220, 61696
  %222 = icmp eq i32 %221, 28672
  br i1 %222, label %223, label %226

223:                                              ; preds = %219
  %224 = load i32, i32* %2, align 4
  %225 = call i32 @DisaMoveq(i32 %224)
  br label %226

226:                                              ; preds = %223, %219
  %227 = load i32, i32* %2, align 4
  %228 = and i32 %227, 37056
  %229 = icmp eq i32 %228, 37056
  br i1 %229, label %230, label %233

230:                                              ; preds = %226
  %231 = load i32, i32* %2, align 4
  %232 = call i32 @DisaAritha(i32 %231)
  br label %233

233:                                              ; preds = %230, %226
  %234 = load i32, i32* %2, align 4
  %235 = and i32 %234, 61440
  %236 = icmp eq i32 %235, 45056
  br i1 %236, label %237, label %240

237:                                              ; preds = %233
  %238 = load i32, i32* %2, align 4
  %239 = call i32 @DisaCmpEor(i32 %238)
  br label %240

240:                                              ; preds = %237, %233
  %241 = load i32, i32* %2, align 4
  %242 = and i32 %241, 61752
  %243 = icmp eq i32 %242, 45320
  br i1 %243, label %244, label %247

244:                                              ; preds = %240
  %245 = load i32, i32* %2, align 4
  %246 = call i32 @DisaCmpm(i32 %245)
  br label %247

247:                                              ; preds = %244, %240
  %248 = load i32, i32* %2, align 4
  %249 = and i32 %248, 61744
  %250 = icmp eq i32 %249, 49408
  br i1 %250, label %251, label %254

251:                                              ; preds = %247
  %252 = load i32, i32* %2, align 4
  %253 = call i32 @DisaExg(i32 %252)
  br label %254

254:                                              ; preds = %251, %247
  %255 = load i32, i32* %2, align 4
  %256 = and i32 %255, 61440
  %257 = icmp eq i32 %256, 57344
  br i1 %257, label %258, label %261

258:                                              ; preds = %254
  %259 = load i32, i32* %2, align 4
  %260 = call i32 @DisaAsr(i32 %259)
  br label %261

261:                                              ; preds = %258, %254
  %262 = load i32, i32* %2, align 4
  %263 = and i32 %262, 63680
  %264 = icmp eq i32 %263, 57536
  br i1 %264, label %265, label %268

265:                                              ; preds = %261
  %266 = load i32, i32* %2, align 4
  %267 = call i32 @DisaAsrEa(i32 %266)
  br label %268

268:                                              ; preds = %265, %261
  ret i32 0
}

declare dso_local i32 @DisaArithImm(i32) #1

declare dso_local i32 @DisaArithSr(i32) #1

declare dso_local i32 @DisaBtstReg(i32) #1

declare dso_local i32 @DisaMovep(i32) #1

declare dso_local i32 @DisaBtstImm(i32) #1

declare dso_local i32 @DisaMove(i32) #1

declare dso_local i32 @DisaNeg(i32) #1

declare dso_local i32 @OpChk(i32) #1

declare dso_local i32 @DisaLea(i32) #1

declare dso_local i32 @DisaMoveSr(i32) #1

declare dso_local i32 @DisaNbcd(i32) #1

declare dso_local i32 @DisaSwap(i32) #1

declare dso_local i32 @DisaPea(i32) #1

declare dso_local i32 @DisaExt(i32) #1

declare dso_local i32 @DisaMovem(i32) #1

declare dso_local i32 @DisaTst(i32) #1

declare dso_local i32 @DisaTas(i32) #1

declare dso_local i32 @DisaTrap(i32) #1

declare dso_local i32 @DisaLink(i32) #1

declare dso_local i32 @DisaUnlk(i32) #1

declare dso_local i32 @DisaMoveUsp(i32) #1

declare dso_local i32 @Disa4E70(i32) #1

declare dso_local i32 @DisaJsr(i32) #1

declare dso_local i32 @DisaAddq(i32) #1

declare dso_local i32 @DisaSet(i32) #1

declare dso_local i32 @DisaDbra(i32) #1

declare dso_local i32 @DisaBranch(i32) #1

declare dso_local i32 @DisaArithReg(i32) #1

declare dso_local i32 @DisaAbcd(i32) #1

declare dso_local i32 @DisaAddx(i32) #1

declare dso_local i32 @DisaMul(i32) #1

declare dso_local i32 @DisaMoveq(i32) #1

declare dso_local i32 @DisaAritha(i32) #1

declare dso_local i32 @DisaCmpEor(i32) #1

declare dso_local i32 @DisaCmpm(i32) #1

declare dso_local i32 @DisaExg(i32) #1

declare dso_local i32 @DisaAsr(i32) #1

declare dso_local i32 @DisaAsrEa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
