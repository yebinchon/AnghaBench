; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_sh2rec_rec_inst.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_sh2rec_rec_inst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_145__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sh2rec_rec_inst(%struct.TYPE_145__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_145__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_145__* %0, %struct.TYPE_145__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_145__, %struct.TYPE_145__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @MappedMemoryReadWord(i32 %10)
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @INSTRUCTION_A(i32 %12)
  switch i32 %13, label %710 [
    i32 0, label %14
    i32 1, label %149
    i32 2, label %153
    i32 3, label %218
    i32 4, label %279
    i32 5, label %505
    i32 6, label %509
    i32 7, label %577
    i32 8, label %581
    i32 9, label %622
    i32 10, label %626
    i32 11, label %630
    i32 12, label %634
    i32 13, label %702
    i32 14, label %706
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @INSTRUCTION_D(i32 %15)
  switch i32 %16, label %147 [
    i32 2, label %17
    i32 3, label %34
    i32 4, label %47
    i32 5, label %51
    i32 6, label %55
    i32 7, label %59
    i32 8, label %63
    i32 9, label %80
    i32 10, label %97
    i32 11, label %114
    i32 12, label %131
    i32 13, label %135
    i32 14, label %139
    i32 15, label %143
  ]

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @INSTRUCTION_C(i32 %18)
  switch i32 %19, label %32 [
    i32 0, label %20
    i32 1, label %24
    i32 2, label %28
  ]

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %23 = call i32 @generateSTCSR(i32 %21, %struct.TYPE_145__* %22)
  br label %33

24:                                               ; preds = %17
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %27 = call i32 @generateSTCGBR(i32 %25, %struct.TYPE_145__* %26)
  br label %33

28:                                               ; preds = %17
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %31 = call i32 @generateSTCVBR(i32 %29, %struct.TYPE_145__* %30)
  br label %33

32:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %713

33:                                               ; preds = %28, %24, %20
  br label %148

34:                                               ; preds = %14
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @INSTRUCTION_C(i32 %35)
  switch i32 %36, label %45 [
    i32 0, label %37
    i32 2, label %41
  ]

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %40 = call i32 @generateBSRF(i32 %38, %struct.TYPE_145__* %39)
  store i32 1, i32* %7, align 4
  br label %46

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %44 = call i32 @generateBRAF(i32 %42, %struct.TYPE_145__* %43)
  store i32 1, i32* %7, align 4
  br label %46

45:                                               ; preds = %34
  store i32 -1, i32* %3, align 4
  br label %713

46:                                               ; preds = %41, %37
  br label %148

47:                                               ; preds = %14
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %50 = call i32 @generateMOVBS0(i32 %48, %struct.TYPE_145__* %49)
  br label %148

51:                                               ; preds = %14
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %54 = call i32 @generateMOVWS0(i32 %52, %struct.TYPE_145__* %53)
  br label %148

55:                                               ; preds = %14
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %58 = call i32 @generateMOVLS0(i32 %56, %struct.TYPE_145__* %57)
  br label %148

59:                                               ; preds = %14
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %62 = call i32 @generateMULL(i32 %60, %struct.TYPE_145__* %61)
  br label %148

63:                                               ; preds = %14
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @INSTRUCTION_C(i32 %64)
  switch i32 %65, label %78 [
    i32 0, label %66
    i32 1, label %70
    i32 2, label %74
  ]

66:                                               ; preds = %63
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %69 = call i32 @generateCLRT(i32 %67, %struct.TYPE_145__* %68)
  br label %79

70:                                               ; preds = %63
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %73 = call i32 @generateSETT(i32 %71, %struct.TYPE_145__* %72)
  br label %79

74:                                               ; preds = %63
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %77 = call i32 @generateCLRMAC(i32 %75, %struct.TYPE_145__* %76)
  br label %79

78:                                               ; preds = %63
  store i32 -1, i32* %3, align 4
  br label %713

79:                                               ; preds = %74, %70, %66
  br label %148

80:                                               ; preds = %14
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @INSTRUCTION_C(i32 %81)
  switch i32 %82, label %95 [
    i32 0, label %83
    i32 1, label %87
    i32 2, label %91
  ]

83:                                               ; preds = %80
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %86 = call i32 @generateNOP(i32 %84, %struct.TYPE_145__* %85)
  br label %96

87:                                               ; preds = %80
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %90 = call i32 @generateDIV0U(i32 %88, %struct.TYPE_145__* %89)
  br label %96

91:                                               ; preds = %80
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %94 = call i32 @generateMOVT(i32 %92, %struct.TYPE_145__* %93)
  br label %96

95:                                               ; preds = %80
  store i32 -1, i32* %3, align 4
  br label %713

96:                                               ; preds = %91, %87, %83
  br label %148

97:                                               ; preds = %14
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @INSTRUCTION_C(i32 %98)
  switch i32 %99, label %112 [
    i32 0, label %100
    i32 1, label %104
    i32 2, label %108
  ]

100:                                              ; preds = %97
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %103 = call i32 @generateSTSMACH(i32 %101, %struct.TYPE_145__* %102)
  br label %113

104:                                              ; preds = %97
  %105 = load i32, i32* %6, align 4
  %106 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %107 = call i32 @generateSTSMACL(i32 %105, %struct.TYPE_145__* %106)
  br label %113

108:                                              ; preds = %97
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %111 = call i32 @generateSTSPR(i32 %109, %struct.TYPE_145__* %110)
  br label %113

112:                                              ; preds = %97
  store i32 -1, i32* %3, align 4
  br label %713

113:                                              ; preds = %108, %104, %100
  br label %148

114:                                              ; preds = %14
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @INSTRUCTION_C(i32 %115)
  switch i32 %116, label %129 [
    i32 0, label %117
    i32 1, label %121
    i32 2, label %125
  ]

117:                                              ; preds = %114
  %118 = load i32, i32* %6, align 4
  %119 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %120 = call i32 @generateRTS(i32 %118, %struct.TYPE_145__* %119)
  store i32 1, i32* %7, align 4
  br label %130

121:                                              ; preds = %114
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %124 = call i32 @generateSLEEP(i32 %122, %struct.TYPE_145__* %123)
  br label %130

125:                                              ; preds = %114
  %126 = load i32, i32* %6, align 4
  %127 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %128 = call i32 @generateRTE(i32 %126, %struct.TYPE_145__* %127)
  store i32 1, i32* %7, align 4
  br label %130

129:                                              ; preds = %114
  store i32 -1, i32* %3, align 4
  br label %713

130:                                              ; preds = %125, %121, %117
  br label %148

131:                                              ; preds = %14
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %134 = call i32 @generateMOVBL0(i32 %132, %struct.TYPE_145__* %133)
  br label %148

135:                                              ; preds = %14
  %136 = load i32, i32* %6, align 4
  %137 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %138 = call i32 @generateMOVWL0(i32 %136, %struct.TYPE_145__* %137)
  br label %148

139:                                              ; preds = %14
  %140 = load i32, i32* %6, align 4
  %141 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %142 = call i32 @generateMOVLL0(i32 %140, %struct.TYPE_145__* %141)
  br label %148

143:                                              ; preds = %14
  %144 = load i32, i32* %6, align 4
  %145 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %146 = call i32 @generateMACL(i32 %144, %struct.TYPE_145__* %145)
  br label %148

147:                                              ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %713

148:                                              ; preds = %143, %139, %135, %131, %130, %113, %96, %79, %59, %55, %51, %47, %46, %33
  br label %711

149:                                              ; preds = %2
  %150 = load i32, i32* %6, align 4
  %151 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %152 = call i32 @generateMOVLS4(i32 %150, %struct.TYPE_145__* %151)
  br label %711

153:                                              ; preds = %2
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @INSTRUCTION_D(i32 %154)
  switch i32 %155, label %216 [
    i32 0, label %156
    i32 1, label %160
    i32 2, label %164
    i32 4, label %168
    i32 5, label %172
    i32 6, label %176
    i32 7, label %180
    i32 8, label %184
    i32 9, label %188
    i32 10, label %192
    i32 11, label %196
    i32 12, label %200
    i32 13, label %204
    i32 14, label %208
    i32 15, label %212
  ]

156:                                              ; preds = %153
  %157 = load i32, i32* %6, align 4
  %158 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %159 = call i32 @generateMOVBS(i32 %157, %struct.TYPE_145__* %158)
  br label %217

160:                                              ; preds = %153
  %161 = load i32, i32* %6, align 4
  %162 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %163 = call i32 @generateMOVWS(i32 %161, %struct.TYPE_145__* %162)
  br label %217

164:                                              ; preds = %153
  %165 = load i32, i32* %6, align 4
  %166 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %167 = call i32 @generateMOVLS(i32 %165, %struct.TYPE_145__* %166)
  br label %217

168:                                              ; preds = %153
  %169 = load i32, i32* %6, align 4
  %170 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %171 = call i32 @generateMOVBM(i32 %169, %struct.TYPE_145__* %170)
  br label %217

172:                                              ; preds = %153
  %173 = load i32, i32* %6, align 4
  %174 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %175 = call i32 @generateMOVWM(i32 %173, %struct.TYPE_145__* %174)
  br label %217

176:                                              ; preds = %153
  %177 = load i32, i32* %6, align 4
  %178 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %179 = call i32 @generateMOVLM(i32 %177, %struct.TYPE_145__* %178)
  br label %217

180:                                              ; preds = %153
  %181 = load i32, i32* %6, align 4
  %182 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %183 = call i32 @generateDIV0S(i32 %181, %struct.TYPE_145__* %182)
  br label %217

184:                                              ; preds = %153
  %185 = load i32, i32* %6, align 4
  %186 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %187 = call i32 @generateTST(i32 %185, %struct.TYPE_145__* %186)
  br label %217

188:                                              ; preds = %153
  %189 = load i32, i32* %6, align 4
  %190 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %191 = call i32 @generateAND(i32 %189, %struct.TYPE_145__* %190)
  br label %217

192:                                              ; preds = %153
  %193 = load i32, i32* %6, align 4
  %194 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %195 = call i32 @generateXOR(i32 %193, %struct.TYPE_145__* %194)
  br label %217

196:                                              ; preds = %153
  %197 = load i32, i32* %6, align 4
  %198 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %199 = call i32 @generateOR(i32 %197, %struct.TYPE_145__* %198)
  br label %217

200:                                              ; preds = %153
  %201 = load i32, i32* %6, align 4
  %202 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %203 = call i32 @generateCMPSTR(i32 %201, %struct.TYPE_145__* %202)
  br label %217

204:                                              ; preds = %153
  %205 = load i32, i32* %6, align 4
  %206 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %207 = call i32 @generateXTRCT(i32 %205, %struct.TYPE_145__* %206)
  br label %217

208:                                              ; preds = %153
  %209 = load i32, i32* %6, align 4
  %210 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %211 = call i32 @generateMULU(i32 %209, %struct.TYPE_145__* %210)
  br label %217

212:                                              ; preds = %153
  %213 = load i32, i32* %6, align 4
  %214 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %215 = call i32 @generateMULS(i32 %213, %struct.TYPE_145__* %214)
  br label %217

216:                                              ; preds = %153
  store i32 -1, i32* %3, align 4
  br label %713

217:                                              ; preds = %212, %208, %204, %200, %196, %192, %188, %184, %180, %176, %172, %168, %164, %160, %156
  br label %711

218:                                              ; preds = %2
  %219 = load i32, i32* %6, align 4
  %220 = call i32 @INSTRUCTION_D(i32 %219)
  switch i32 %220, label %277 [
    i32 0, label %221
    i32 2, label %225
    i32 3, label %229
    i32 4, label %233
    i32 5, label %237
    i32 6, label %241
    i32 7, label %245
    i32 8, label %249
    i32 10, label %253
    i32 11, label %257
    i32 12, label %261
    i32 13, label %265
    i32 14, label %269
    i32 15, label %273
  ]

221:                                              ; preds = %218
  %222 = load i32, i32* %6, align 4
  %223 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %224 = call i32 @generateCMPEQ(i32 %222, %struct.TYPE_145__* %223)
  br label %278

225:                                              ; preds = %218
  %226 = load i32, i32* %6, align 4
  %227 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %228 = call i32 @generateCMPHS(i32 %226, %struct.TYPE_145__* %227)
  br label %278

229:                                              ; preds = %218
  %230 = load i32, i32* %6, align 4
  %231 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %232 = call i32 @generateCMPGE(i32 %230, %struct.TYPE_145__* %231)
  br label %278

233:                                              ; preds = %218
  %234 = load i32, i32* %6, align 4
  %235 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %236 = call i32 @generateDIV1(i32 %234, %struct.TYPE_145__* %235)
  br label %278

237:                                              ; preds = %218
  %238 = load i32, i32* %6, align 4
  %239 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %240 = call i32 @generateDMULU(i32 %238, %struct.TYPE_145__* %239)
  br label %278

241:                                              ; preds = %218
  %242 = load i32, i32* %6, align 4
  %243 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %244 = call i32 @generateCMPHI(i32 %242, %struct.TYPE_145__* %243)
  br label %278

245:                                              ; preds = %218
  %246 = load i32, i32* %6, align 4
  %247 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %248 = call i32 @generateCMPGT(i32 %246, %struct.TYPE_145__* %247)
  br label %278

249:                                              ; preds = %218
  %250 = load i32, i32* %6, align 4
  %251 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %252 = call i32 @generateSUB(i32 %250, %struct.TYPE_145__* %251)
  br label %278

253:                                              ; preds = %218
  %254 = load i32, i32* %6, align 4
  %255 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %256 = call i32 @generateSUBC(i32 %254, %struct.TYPE_145__* %255)
  br label %278

257:                                              ; preds = %218
  %258 = load i32, i32* %6, align 4
  %259 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %260 = call i32 @generateSUBV(i32 %258, %struct.TYPE_145__* %259)
  br label %278

261:                                              ; preds = %218
  %262 = load i32, i32* %6, align 4
  %263 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %264 = call i32 @generateADD(i32 %262, %struct.TYPE_145__* %263)
  br label %278

265:                                              ; preds = %218
  %266 = load i32, i32* %6, align 4
  %267 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %268 = call i32 @generateDMULS(i32 %266, %struct.TYPE_145__* %267)
  br label %278

269:                                              ; preds = %218
  %270 = load i32, i32* %6, align 4
  %271 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %272 = call i32 @generateADDC(i32 %270, %struct.TYPE_145__* %271)
  br label %278

273:                                              ; preds = %218
  %274 = load i32, i32* %6, align 4
  %275 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %276 = call i32 @generateADDV(i32 %274, %struct.TYPE_145__* %275)
  br label %278

277:                                              ; preds = %218
  store i32 -1, i32* %3, align 4
  br label %713

278:                                              ; preds = %273, %269, %265, %261, %257, %253, %249, %245, %241, %237, %233, %229, %225, %221
  br label %711

279:                                              ; preds = %2
  %280 = load i32, i32* %6, align 4
  %281 = call i32 @INSTRUCTION_D(i32 %280)
  switch i32 %281, label %503 [
    i32 0, label %282
    i32 1, label %299
    i32 2, label %316
    i32 3, label %333
    i32 4, label %350
    i32 5, label %363
    i32 6, label %380
    i32 7, label %397
    i32 8, label %414
    i32 9, label %431
    i32 10, label %448
    i32 11, label %465
    i32 14, label %482
    i32 15, label %499
  ]

282:                                              ; preds = %279
  %283 = load i32, i32* %6, align 4
  %284 = call i32 @INSTRUCTION_C(i32 %283)
  switch i32 %284, label %297 [
    i32 0, label %285
    i32 1, label %289
    i32 2, label %293
  ]

285:                                              ; preds = %282
  %286 = load i32, i32* %6, align 4
  %287 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %288 = call i32 @generateSHLL(i32 %286, %struct.TYPE_145__* %287)
  br label %298

289:                                              ; preds = %282
  %290 = load i32, i32* %6, align 4
  %291 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %292 = call i32 @generateDT(i32 %290, %struct.TYPE_145__* %291)
  br label %298

293:                                              ; preds = %282
  %294 = load i32, i32* %6, align 4
  %295 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %296 = call i32 @generateSHAL(i32 %294, %struct.TYPE_145__* %295)
  br label %298

297:                                              ; preds = %282
  store i32 -1, i32* %3, align 4
  br label %713

298:                                              ; preds = %293, %289, %285
  br label %504

299:                                              ; preds = %279
  %300 = load i32, i32* %6, align 4
  %301 = call i32 @INSTRUCTION_C(i32 %300)
  switch i32 %301, label %314 [
    i32 0, label %302
    i32 1, label %306
    i32 2, label %310
  ]

302:                                              ; preds = %299
  %303 = load i32, i32* %6, align 4
  %304 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %305 = call i32 @generateSHLR(i32 %303, %struct.TYPE_145__* %304)
  br label %315

306:                                              ; preds = %299
  %307 = load i32, i32* %6, align 4
  %308 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %309 = call i32 @generateCMPPZ(i32 %307, %struct.TYPE_145__* %308)
  br label %315

310:                                              ; preds = %299
  %311 = load i32, i32* %6, align 4
  %312 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %313 = call i32 @generateSHAR(i32 %311, %struct.TYPE_145__* %312)
  br label %315

314:                                              ; preds = %299
  store i32 -1, i32* %3, align 4
  br label %713

315:                                              ; preds = %310, %306, %302
  br label %504

316:                                              ; preds = %279
  %317 = load i32, i32* %6, align 4
  %318 = call i32 @INSTRUCTION_C(i32 %317)
  switch i32 %318, label %331 [
    i32 0, label %319
    i32 1, label %323
    i32 2, label %327
  ]

319:                                              ; preds = %316
  %320 = load i32, i32* %6, align 4
  %321 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %322 = call i32 @generateSTSMMACH(i32 %320, %struct.TYPE_145__* %321)
  br label %332

323:                                              ; preds = %316
  %324 = load i32, i32* %6, align 4
  %325 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %326 = call i32 @generateSTSMMACL(i32 %324, %struct.TYPE_145__* %325)
  br label %332

327:                                              ; preds = %316
  %328 = load i32, i32* %6, align 4
  %329 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %330 = call i32 @generateSTSMPR(i32 %328, %struct.TYPE_145__* %329)
  br label %332

331:                                              ; preds = %316
  store i32 -1, i32* %3, align 4
  br label %713

332:                                              ; preds = %327, %323, %319
  br label %504

333:                                              ; preds = %279
  %334 = load i32, i32* %6, align 4
  %335 = call i32 @INSTRUCTION_C(i32 %334)
  switch i32 %335, label %348 [
    i32 0, label %336
    i32 1, label %340
    i32 2, label %344
  ]

336:                                              ; preds = %333
  %337 = load i32, i32* %6, align 4
  %338 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %339 = call i32 @generateSTCMSR(i32 %337, %struct.TYPE_145__* %338)
  br label %349

340:                                              ; preds = %333
  %341 = load i32, i32* %6, align 4
  %342 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %343 = call i32 @generateSTCMGBR(i32 %341, %struct.TYPE_145__* %342)
  br label %349

344:                                              ; preds = %333
  %345 = load i32, i32* %6, align 4
  %346 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %347 = call i32 @generateSTCMVBR(i32 %345, %struct.TYPE_145__* %346)
  br label %349

348:                                              ; preds = %333
  store i32 -1, i32* %3, align 4
  br label %713

349:                                              ; preds = %344, %340, %336
  br label %504

350:                                              ; preds = %279
  %351 = load i32, i32* %6, align 4
  %352 = call i32 @INSTRUCTION_C(i32 %351)
  switch i32 %352, label %361 [
    i32 0, label %353
    i32 2, label %357
  ]

353:                                              ; preds = %350
  %354 = load i32, i32* %6, align 4
  %355 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %356 = call i32 @generateROTL(i32 %354, %struct.TYPE_145__* %355)
  br label %362

357:                                              ; preds = %350
  %358 = load i32, i32* %6, align 4
  %359 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %360 = call i32 @generateROTCL(i32 %358, %struct.TYPE_145__* %359)
  br label %362

361:                                              ; preds = %350
  store i32 -1, i32* %3, align 4
  br label %713

362:                                              ; preds = %357, %353
  br label %504

363:                                              ; preds = %279
  %364 = load i32, i32* %6, align 4
  %365 = call i32 @INSTRUCTION_C(i32 %364)
  switch i32 %365, label %378 [
    i32 0, label %366
    i32 1, label %370
    i32 2, label %374
  ]

366:                                              ; preds = %363
  %367 = load i32, i32* %6, align 4
  %368 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %369 = call i32 @generateROTR(i32 %367, %struct.TYPE_145__* %368)
  br label %379

370:                                              ; preds = %363
  %371 = load i32, i32* %6, align 4
  %372 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %373 = call i32 @generateCMPPL(i32 %371, %struct.TYPE_145__* %372)
  br label %379

374:                                              ; preds = %363
  %375 = load i32, i32* %6, align 4
  %376 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %377 = call i32 @generateROTCR(i32 %375, %struct.TYPE_145__* %376)
  br label %379

378:                                              ; preds = %363
  store i32 -1, i32* %3, align 4
  br label %713

379:                                              ; preds = %374, %370, %366
  br label %504

380:                                              ; preds = %279
  %381 = load i32, i32* %6, align 4
  %382 = call i32 @INSTRUCTION_C(i32 %381)
  switch i32 %382, label %395 [
    i32 0, label %383
    i32 1, label %387
    i32 2, label %391
  ]

383:                                              ; preds = %380
  %384 = load i32, i32* %6, align 4
  %385 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %386 = call i32 @generateLDSMMACH(i32 %384, %struct.TYPE_145__* %385)
  br label %396

387:                                              ; preds = %380
  %388 = load i32, i32* %6, align 4
  %389 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %390 = call i32 @generateLDSMMACL(i32 %388, %struct.TYPE_145__* %389)
  br label %396

391:                                              ; preds = %380
  %392 = load i32, i32* %6, align 4
  %393 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %394 = call i32 @generateLDSMPR(i32 %392, %struct.TYPE_145__* %393)
  br label %396

395:                                              ; preds = %380
  store i32 -1, i32* %3, align 4
  br label %713

396:                                              ; preds = %391, %387, %383
  br label %504

397:                                              ; preds = %279
  %398 = load i32, i32* %6, align 4
  %399 = call i32 @INSTRUCTION_C(i32 %398)
  switch i32 %399, label %412 [
    i32 0, label %400
    i32 1, label %404
    i32 2, label %408
  ]

400:                                              ; preds = %397
  %401 = load i32, i32* %6, align 4
  %402 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %403 = call i32 @generateLDCMSR(i32 %401, %struct.TYPE_145__* %402)
  br label %413

404:                                              ; preds = %397
  %405 = load i32, i32* %6, align 4
  %406 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %407 = call i32 @generateLDCMGBR(i32 %405, %struct.TYPE_145__* %406)
  br label %413

408:                                              ; preds = %397
  %409 = load i32, i32* %6, align 4
  %410 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %411 = call i32 @generateLDCMVBR(i32 %409, %struct.TYPE_145__* %410)
  br label %413

412:                                              ; preds = %397
  store i32 -1, i32* %3, align 4
  br label %713

413:                                              ; preds = %408, %404, %400
  br label %504

414:                                              ; preds = %279
  %415 = load i32, i32* %6, align 4
  %416 = call i32 @INSTRUCTION_C(i32 %415)
  switch i32 %416, label %429 [
    i32 0, label %417
    i32 1, label %421
    i32 2, label %425
  ]

417:                                              ; preds = %414
  %418 = load i32, i32* %6, align 4
  %419 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %420 = call i32 @generateSHLL2(i32 %418, %struct.TYPE_145__* %419)
  br label %430

421:                                              ; preds = %414
  %422 = load i32, i32* %6, align 4
  %423 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %424 = call i32 @generateSHLL8(i32 %422, %struct.TYPE_145__* %423)
  br label %430

425:                                              ; preds = %414
  %426 = load i32, i32* %6, align 4
  %427 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %428 = call i32 @generateSHLL16(i32 %426, %struct.TYPE_145__* %427)
  br label %430

429:                                              ; preds = %414
  store i32 -1, i32* %3, align 4
  br label %713

430:                                              ; preds = %425, %421, %417
  br label %504

431:                                              ; preds = %279
  %432 = load i32, i32* %6, align 4
  %433 = call i32 @INSTRUCTION_C(i32 %432)
  switch i32 %433, label %446 [
    i32 0, label %434
    i32 1, label %438
    i32 2, label %442
  ]

434:                                              ; preds = %431
  %435 = load i32, i32* %6, align 4
  %436 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %437 = call i32 @generateSHLR2(i32 %435, %struct.TYPE_145__* %436)
  br label %447

438:                                              ; preds = %431
  %439 = load i32, i32* %6, align 4
  %440 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %441 = call i32 @generateSHLR8(i32 %439, %struct.TYPE_145__* %440)
  br label %447

442:                                              ; preds = %431
  %443 = load i32, i32* %6, align 4
  %444 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %445 = call i32 @generateSHLR16(i32 %443, %struct.TYPE_145__* %444)
  br label %447

446:                                              ; preds = %431
  store i32 -1, i32* %3, align 4
  br label %713

447:                                              ; preds = %442, %438, %434
  br label %504

448:                                              ; preds = %279
  %449 = load i32, i32* %6, align 4
  %450 = call i32 @INSTRUCTION_C(i32 %449)
  switch i32 %450, label %463 [
    i32 0, label %451
    i32 1, label %455
    i32 2, label %459
  ]

451:                                              ; preds = %448
  %452 = load i32, i32* %6, align 4
  %453 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %454 = call i32 @generateLDSMACH(i32 %452, %struct.TYPE_145__* %453)
  br label %464

455:                                              ; preds = %448
  %456 = load i32, i32* %6, align 4
  %457 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %458 = call i32 @generateLDSMACL(i32 %456, %struct.TYPE_145__* %457)
  br label %464

459:                                              ; preds = %448
  %460 = load i32, i32* %6, align 4
  %461 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %462 = call i32 @generateLDSPR(i32 %460, %struct.TYPE_145__* %461)
  br label %464

463:                                              ; preds = %448
  store i32 -1, i32* %3, align 4
  br label %713

464:                                              ; preds = %459, %455, %451
  br label %504

465:                                              ; preds = %279
  %466 = load i32, i32* %6, align 4
  %467 = call i32 @INSTRUCTION_C(i32 %466)
  switch i32 %467, label %480 [
    i32 0, label %468
    i32 1, label %472
    i32 2, label %476
  ]

468:                                              ; preds = %465
  %469 = load i32, i32* %6, align 4
  %470 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %471 = call i32 @generateJSR(i32 %469, %struct.TYPE_145__* %470)
  store i32 1, i32* %7, align 4
  br label %481

472:                                              ; preds = %465
  %473 = load i32, i32* %6, align 4
  %474 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %475 = call i32 @generateTAS(i32 %473, %struct.TYPE_145__* %474)
  br label %481

476:                                              ; preds = %465
  %477 = load i32, i32* %6, align 4
  %478 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %479 = call i32 @generateJMP(i32 %477, %struct.TYPE_145__* %478)
  store i32 1, i32* %7, align 4
  br label %481

480:                                              ; preds = %465
  store i32 -1, i32* %3, align 4
  br label %713

481:                                              ; preds = %476, %472, %468
  br label %504

482:                                              ; preds = %279
  %483 = load i32, i32* %6, align 4
  %484 = call i32 @INSTRUCTION_C(i32 %483)
  switch i32 %484, label %497 [
    i32 0, label %485
    i32 1, label %489
    i32 2, label %493
  ]

485:                                              ; preds = %482
  %486 = load i32, i32* %6, align 4
  %487 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %488 = call i32 @generateLDCSR(i32 %486, %struct.TYPE_145__* %487)
  br label %498

489:                                              ; preds = %482
  %490 = load i32, i32* %6, align 4
  %491 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %492 = call i32 @generateLDCGBR(i32 %490, %struct.TYPE_145__* %491)
  br label %498

493:                                              ; preds = %482
  %494 = load i32, i32* %6, align 4
  %495 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %496 = call i32 @generateLDCVBR(i32 %494, %struct.TYPE_145__* %495)
  br label %498

497:                                              ; preds = %482
  store i32 -1, i32* %3, align 4
  br label %713

498:                                              ; preds = %493, %489, %485
  br label %504

499:                                              ; preds = %279
  %500 = load i32, i32* %6, align 4
  %501 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %502 = call i32 @generateMACW(i32 %500, %struct.TYPE_145__* %501)
  br label %504

503:                                              ; preds = %279
  store i32 -1, i32* %3, align 4
  br label %713

504:                                              ; preds = %499, %498, %481, %464, %447, %430, %413, %396, %379, %362, %349, %332, %315, %298
  br label %711

505:                                              ; preds = %2
  %506 = load i32, i32* %6, align 4
  %507 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %508 = call i32 @generateMOVLL4(i32 %506, %struct.TYPE_145__* %507)
  br label %711

509:                                              ; preds = %2
  %510 = load i32, i32* %6, align 4
  %511 = call i32 @INSTRUCTION_D(i32 %510)
  switch i32 %511, label %576 [
    i32 0, label %512
    i32 1, label %516
    i32 2, label %520
    i32 3, label %524
    i32 4, label %528
    i32 5, label %532
    i32 6, label %536
    i32 7, label %540
    i32 8, label %544
    i32 9, label %548
    i32 10, label %552
    i32 11, label %556
    i32 12, label %560
    i32 13, label %564
    i32 14, label %568
    i32 15, label %572
  ]

512:                                              ; preds = %509
  %513 = load i32, i32* %6, align 4
  %514 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %515 = call i32 @generateMOVBL(i32 %513, %struct.TYPE_145__* %514)
  br label %576

516:                                              ; preds = %509
  %517 = load i32, i32* %6, align 4
  %518 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %519 = call i32 @generateMOVWL(i32 %517, %struct.TYPE_145__* %518)
  br label %576

520:                                              ; preds = %509
  %521 = load i32, i32* %6, align 4
  %522 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %523 = call i32 @generateMOVLL(i32 %521, %struct.TYPE_145__* %522)
  br label %576

524:                                              ; preds = %509
  %525 = load i32, i32* %6, align 4
  %526 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %527 = call i32 @generateMOV(i32 %525, %struct.TYPE_145__* %526)
  br label %576

528:                                              ; preds = %509
  %529 = load i32, i32* %6, align 4
  %530 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %531 = call i32 @generateMOVBP(i32 %529, %struct.TYPE_145__* %530)
  br label %576

532:                                              ; preds = %509
  %533 = load i32, i32* %6, align 4
  %534 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %535 = call i32 @generateMOVWP(i32 %533, %struct.TYPE_145__* %534)
  br label %576

536:                                              ; preds = %509
  %537 = load i32, i32* %6, align 4
  %538 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %539 = call i32 @generateMOVLP(i32 %537, %struct.TYPE_145__* %538)
  br label %576

540:                                              ; preds = %509
  %541 = load i32, i32* %6, align 4
  %542 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %543 = call i32 @generateNOT(i32 %541, %struct.TYPE_145__* %542)
  br label %576

544:                                              ; preds = %509
  %545 = load i32, i32* %6, align 4
  %546 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %547 = call i32 @generateSWAPB(i32 %545, %struct.TYPE_145__* %546)
  br label %576

548:                                              ; preds = %509
  %549 = load i32, i32* %6, align 4
  %550 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %551 = call i32 @generateSWAPW(i32 %549, %struct.TYPE_145__* %550)
  br label %576

552:                                              ; preds = %509
  %553 = load i32, i32* %6, align 4
  %554 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %555 = call i32 @generateNEGC(i32 %553, %struct.TYPE_145__* %554)
  br label %576

556:                                              ; preds = %509
  %557 = load i32, i32* %6, align 4
  %558 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %559 = call i32 @generateNEG(i32 %557, %struct.TYPE_145__* %558)
  br label %576

560:                                              ; preds = %509
  %561 = load i32, i32* %6, align 4
  %562 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %563 = call i32 @generateEXTUB(i32 %561, %struct.TYPE_145__* %562)
  br label %576

564:                                              ; preds = %509
  %565 = load i32, i32* %6, align 4
  %566 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %567 = call i32 @generateEXTUW(i32 %565, %struct.TYPE_145__* %566)
  br label %576

568:                                              ; preds = %509
  %569 = load i32, i32* %6, align 4
  %570 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %571 = call i32 @generateEXTSB(i32 %569, %struct.TYPE_145__* %570)
  br label %576

572:                                              ; preds = %509
  %573 = load i32, i32* %6, align 4
  %574 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %575 = call i32 @generateEXTSW(i32 %573, %struct.TYPE_145__* %574)
  br label %576

576:                                              ; preds = %509, %572, %568, %564, %560, %556, %552, %548, %544, %540, %536, %532, %528, %524, %520, %516, %512
  br label %711

577:                                              ; preds = %2
  %578 = load i32, i32* %6, align 4
  %579 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %580 = call i32 @generateADDI(i32 %578, %struct.TYPE_145__* %579)
  br label %711

581:                                              ; preds = %2
  %582 = load i32, i32* %6, align 4
  %583 = call i32 @INSTRUCTION_B(i32 %582)
  switch i32 %583, label %620 [
    i32 0, label %584
    i32 1, label %588
    i32 4, label %592
    i32 5, label %596
    i32 8, label %600
    i32 9, label %604
    i32 11, label %608
    i32 13, label %612
    i32 15, label %616
  ]

584:                                              ; preds = %581
  %585 = load i32, i32* %6, align 4
  %586 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %587 = call i32 @generateMOVBS4(i32 %585, %struct.TYPE_145__* %586)
  br label %621

588:                                              ; preds = %581
  %589 = load i32, i32* %6, align 4
  %590 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %591 = call i32 @generateMOVWS4(i32 %589, %struct.TYPE_145__* %590)
  br label %621

592:                                              ; preds = %581
  %593 = load i32, i32* %6, align 4
  %594 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %595 = call i32 @generateMOVBL4(i32 %593, %struct.TYPE_145__* %594)
  br label %621

596:                                              ; preds = %581
  %597 = load i32, i32* %6, align 4
  %598 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %599 = call i32 @generateMOVWL4(i32 %597, %struct.TYPE_145__* %598)
  br label %621

600:                                              ; preds = %581
  %601 = load i32, i32* %6, align 4
  %602 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %603 = call i32 @generateCMPIM(i32 %601, %struct.TYPE_145__* %602)
  br label %621

604:                                              ; preds = %581
  %605 = load i32, i32* %6, align 4
  %606 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %607 = call i32 @generateBT(i32 %605, %struct.TYPE_145__* %606)
  store i32 1, i32* %7, align 4
  br label %621

608:                                              ; preds = %581
  %609 = load i32, i32* %6, align 4
  %610 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %611 = call i32 @generateBF(i32 %609, %struct.TYPE_145__* %610)
  store i32 1, i32* %7, align 4
  br label %621

612:                                              ; preds = %581
  %613 = load i32, i32* %6, align 4
  %614 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %615 = call i32 @generateBTS(i32 %613, %struct.TYPE_145__* %614)
  store i32 1, i32* %7, align 4
  br label %621

616:                                              ; preds = %581
  %617 = load i32, i32* %6, align 4
  %618 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %619 = call i32 @generateBFS(i32 %617, %struct.TYPE_145__* %618)
  store i32 1, i32* %7, align 4
  br label %621

620:                                              ; preds = %581
  store i32 -1, i32* %3, align 4
  br label %713

621:                                              ; preds = %616, %612, %608, %604, %600, %596, %592, %588, %584
  br label %711

622:                                              ; preds = %2
  %623 = load i32, i32* %6, align 4
  %624 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %625 = call i32 @generateMOVWI(i32 %623, %struct.TYPE_145__* %624)
  br label %711

626:                                              ; preds = %2
  %627 = load i32, i32* %6, align 4
  %628 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %629 = call i32 @generateBRA(i32 %627, %struct.TYPE_145__* %628)
  store i32 1, i32* %7, align 4
  br label %711

630:                                              ; preds = %2
  %631 = load i32, i32* %6, align 4
  %632 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %633 = call i32 @generateBSR(i32 %631, %struct.TYPE_145__* %632)
  store i32 1, i32* %7, align 4
  br label %711

634:                                              ; preds = %2
  %635 = load i32, i32* %6, align 4
  %636 = call i32 @INSTRUCTION_B(i32 %635)
  switch i32 %636, label %701 [
    i32 0, label %637
    i32 1, label %641
    i32 2, label %645
    i32 3, label %649
    i32 4, label %653
    i32 5, label %657
    i32 6, label %661
    i32 7, label %665
    i32 8, label %669
    i32 9, label %673
    i32 10, label %677
    i32 11, label %681
    i32 12, label %685
    i32 13, label %689
    i32 14, label %693
    i32 15, label %697
  ]

637:                                              ; preds = %634
  %638 = load i32, i32* %6, align 4
  %639 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %640 = call i32 @generateMOVBSG(i32 %638, %struct.TYPE_145__* %639)
  br label %701

641:                                              ; preds = %634
  %642 = load i32, i32* %6, align 4
  %643 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %644 = call i32 @generateMOVWSG(i32 %642, %struct.TYPE_145__* %643)
  br label %701

645:                                              ; preds = %634
  %646 = load i32, i32* %6, align 4
  %647 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %648 = call i32 @generateMOVLSG(i32 %646, %struct.TYPE_145__* %647)
  br label %701

649:                                              ; preds = %634
  %650 = load i32, i32* %6, align 4
  %651 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %652 = call i32 @generateTRAPA(i32 %650, %struct.TYPE_145__* %651)
  store i32 1, i32* %7, align 4
  br label %701

653:                                              ; preds = %634
  %654 = load i32, i32* %6, align 4
  %655 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %656 = call i32 @generateMOVBLG(i32 %654, %struct.TYPE_145__* %655)
  br label %701

657:                                              ; preds = %634
  %658 = load i32, i32* %6, align 4
  %659 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %660 = call i32 @generateMOVWLG(i32 %658, %struct.TYPE_145__* %659)
  br label %701

661:                                              ; preds = %634
  %662 = load i32, i32* %6, align 4
  %663 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %664 = call i32 @generateMOVLLG(i32 %662, %struct.TYPE_145__* %663)
  br label %701

665:                                              ; preds = %634
  %666 = load i32, i32* %6, align 4
  %667 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %668 = call i32 @generateMOVA(i32 %666, %struct.TYPE_145__* %667)
  br label %701

669:                                              ; preds = %634
  %670 = load i32, i32* %6, align 4
  %671 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %672 = call i32 @generateTSTI(i32 %670, %struct.TYPE_145__* %671)
  br label %701

673:                                              ; preds = %634
  %674 = load i32, i32* %6, align 4
  %675 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %676 = call i32 @generateANDI(i32 %674, %struct.TYPE_145__* %675)
  br label %701

677:                                              ; preds = %634
  %678 = load i32, i32* %6, align 4
  %679 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %680 = call i32 @generateXORI(i32 %678, %struct.TYPE_145__* %679)
  br label %701

681:                                              ; preds = %634
  %682 = load i32, i32* %6, align 4
  %683 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %684 = call i32 @generateORI(i32 %682, %struct.TYPE_145__* %683)
  br label %701

685:                                              ; preds = %634
  %686 = load i32, i32* %6, align 4
  %687 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %688 = call i32 @generateTSTM(i32 %686, %struct.TYPE_145__* %687)
  br label %701

689:                                              ; preds = %634
  %690 = load i32, i32* %6, align 4
  %691 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %692 = call i32 @generateANDM(i32 %690, %struct.TYPE_145__* %691)
  br label %701

693:                                              ; preds = %634
  %694 = load i32, i32* %6, align 4
  %695 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %696 = call i32 @generateXORM(i32 %694, %struct.TYPE_145__* %695)
  br label %701

697:                                              ; preds = %634
  %698 = load i32, i32* %6, align 4
  %699 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %700 = call i32 @generateORM(i32 %698, %struct.TYPE_145__* %699)
  br label %701

701:                                              ; preds = %634, %697, %693, %689, %685, %681, %677, %673, %669, %665, %661, %657, %653, %649, %645, %641, %637
  br label %711

702:                                              ; preds = %2
  %703 = load i32, i32* %6, align 4
  %704 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %705 = call i32 @generateMOVLI(i32 %703, %struct.TYPE_145__* %704)
  br label %711

706:                                              ; preds = %2
  %707 = load i32, i32* %6, align 4
  %708 = load %struct.TYPE_145__*, %struct.TYPE_145__** %4, align 8
  %709 = call i32 @generateMOVI(i32 %707, %struct.TYPE_145__* %708)
  br label %711

710:                                              ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %713

711:                                              ; preds = %706, %702, %701, %630, %626, %622, %621, %577, %576, %505, %504, %278, %217, %149, %148
  %712 = load i32, i32* %7, align 4
  store i32 %712, i32* %3, align 4
  br label %713

713:                                              ; preds = %711, %710, %620, %503, %497, %480, %463, %446, %429, %412, %395, %378, %361, %348, %331, %314, %297, %277, %216, %147, %129, %112, %95, %78, %45, %32
  %714 = load i32, i32* %3, align 4
  ret i32 %714
}

declare dso_local i32 @MappedMemoryReadWord(i32) #1

declare dso_local i32 @INSTRUCTION_A(i32) #1

declare dso_local i32 @INSTRUCTION_D(i32) #1

declare dso_local i32 @INSTRUCTION_C(i32) #1

declare dso_local i32 @generateSTCSR(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateSTCGBR(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateSTCVBR(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateBSRF(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateBRAF(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMOVBS0(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMOVWS0(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMOVLS0(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMULL(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateCLRT(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateSETT(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateCLRMAC(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateNOP(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateDIV0U(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMOVT(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateSTSMACH(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateSTSMACL(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateSTSPR(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateRTS(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateSLEEP(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateRTE(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMOVBL0(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMOVWL0(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMOVLL0(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMACL(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMOVLS4(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMOVBS(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMOVWS(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMOVLS(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMOVBM(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMOVWM(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMOVLM(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateDIV0S(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateTST(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateAND(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateXOR(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateOR(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateCMPSTR(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateXTRCT(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMULU(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMULS(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateCMPEQ(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateCMPHS(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateCMPGE(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateDIV1(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateDMULU(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateCMPHI(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateCMPGT(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateSUB(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateSUBC(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateSUBV(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateADD(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateDMULS(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateADDC(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateADDV(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateSHLL(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateDT(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateSHAL(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateSHLR(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateCMPPZ(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateSHAR(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateSTSMMACH(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateSTSMMACL(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateSTSMPR(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateSTCMSR(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateSTCMGBR(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateSTCMVBR(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateROTL(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateROTCL(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateROTR(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateCMPPL(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateROTCR(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateLDSMMACH(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateLDSMMACL(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateLDSMPR(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateLDCMSR(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateLDCMGBR(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateLDCMVBR(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateSHLL2(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateSHLL8(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateSHLL16(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateSHLR2(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateSHLR8(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateSHLR16(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateLDSMACH(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateLDSMACL(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateLDSPR(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateJSR(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateTAS(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateJMP(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateLDCSR(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateLDCGBR(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateLDCVBR(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMACW(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMOVLL4(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMOVBL(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMOVWL(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMOVLL(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMOV(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMOVBP(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMOVWP(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMOVLP(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateNOT(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateSWAPB(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateSWAPW(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateNEGC(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateNEG(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateEXTUB(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateEXTUW(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateEXTSB(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateEXTSW(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateADDI(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @INSTRUCTION_B(i32) #1

declare dso_local i32 @generateMOVBS4(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMOVWS4(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMOVBL4(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMOVWL4(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateCMPIM(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateBT(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateBF(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateBTS(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateBFS(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMOVWI(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateBRA(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateBSR(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMOVBSG(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMOVWSG(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMOVLSG(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateTRAPA(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMOVBLG(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMOVWLG(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMOVLLG(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMOVA(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateTSTI(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateANDI(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateXORI(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateORI(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateTSTM(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateANDM(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateXORM(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateORM(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMOVLI(i32, %struct.TYPE_145__*) #1

declare dso_local i32 @generateMOVI(i32, %struct.TYPE_145__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
