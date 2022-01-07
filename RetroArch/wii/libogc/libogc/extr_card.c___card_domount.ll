; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_domount.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_domount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.TYPE_5__ = type { i32**, i32* }

@CARD_ERROR_READY = common dso_local global i64 0, align 8
@EXI_CHANNEL_0 = common dso_local global i64 0, align 8
@EXI_CHANNEL_2 = common dso_local global i64 0, align 8
@CARD_ERROR_NOCARD = common dso_local global i64 0, align 8
@cardmap = common dso_local global %struct.TYPE_6__* null, align 8
@EXI_DEVICE_0 = common dso_local global i32 0, align 4
@CARD_ERROR_WRONGDEVICE = common dso_local global i64 0, align 8
@card_sector_size = common dso_local global i32* null, align 8
@card_latency = common dso_local global i32* null, align 8
@CARD_STATUS_UNLOCKED = common dso_local global i32 0, align 4
@CARD_ERROR_IOERROR = common dso_local global i64 0, align 8
@__card_exihandler = common dso_local global i32 0, align 4
@__card_mountcallback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @__card_domount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__card_domount(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %3, align 8
  %13 = load i64, i64* @CARD_ERROR_READY, align 8
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @EXI_CHANNEL_0, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @EXI_CHANNEL_2, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %1
  %22 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %22, i64* %2, align 8
  br label %275

23:                                               ; preds = %17
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cardmap, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %25
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %11, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %217

31:                                               ; preds = %23
  store i64 0, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %32 = load i64, i64* %3, align 8
  %33 = load i32, i32* @EXI_DEVICE_0, align 4
  %34 = call i64 @EXI_GetID(i64 %32, i32 %33, i32* %8)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %37, i64* %6, align 8
  br label %45

38:                                               ; preds = %31
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @__card_iscard(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* @CARD_ERROR_WRONGDEVICE, align 8
  store i64 %43, i64* %6, align 8
  br label %44

44:                                               ; preds = %42, %38
  br label %45

45:                                               ; preds = %44, %36
  %46 = load i64, i64* %6, align 8
  %47 = icmp ult i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %268

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, 252
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %216

61:                                               ; preds = %49
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @_ROTL(i32 %62, i32 23)
  %64 = and i32 %63, 28
  store i32 %64, i32* %9, align 4
  %65 = load i32*, i32** @card_sector_size, align 8
  %66 = load i32, i32* %9, align 4
  %67 = ashr i32 %66, 2
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = shl i32 %75, 20
  %77 = ashr i32 %76, 3
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = sdiv i32 %77, %80
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = icmp sgt i32 %86, 8
  br i1 %87, label %88, label %215

88:                                               ; preds = %61
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @_ROTL(i32 %89, i32 26)
  %91 = and i32 %90, 28
  store i32 %91, i32* %9, align 4
  %92 = load i32*, i32** @card_latency, align 8
  %93 = load i32, i32* %9, align 4
  %94 = ashr i32 %93, 2
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 7
  store i32 %97, i32* %99, align 8
  %100 = load i64, i64* %3, align 8
  %101 = call i64 @__card_clearstatus(i64 %100)
  store i64 %101, i64* %6, align 8
  %102 = icmp ult i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %88
  br label %268

104:                                              ; preds = %88
  %105 = load i64, i64* %3, align 8
  %106 = call i64 @__card_readstatus(i64 %105, i32* %4)
  store i64 %106, i64* %6, align 8
  %107 = icmp ult i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  br label %268

109:                                              ; preds = %104
  %110 = load i64, i64* %3, align 8
  %111 = call i64 @EXI_Probe(i64 %110)
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %114, i64* %6, align 8
  br label %268

115:                                              ; preds = %109
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @CARD_STATUS_UNLOCKED, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %172, label %120

120:                                              ; preds = %115
  %121 = load i64, i64* %3, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 6
  %124 = load i64, i64* %123, align 8
  %125 = call i64 @__dounlock(i64 %121, i64 %124)
  store i64 %125, i64* %6, align 8
  %126 = icmp ult i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  br label %268

128:                                              ; preds = %120
  store i32 0, i32* %10, align 4
  store i32 0, i32* %7, align 4
  %129 = call %struct.TYPE_5__* (...) @__SYS_LockSramEx()
  store %struct.TYPE_5__* %129, %struct.TYPE_5__** %12, align 8
  br label %130

130:                                              ; preds = %133, %128
  %131 = load i32, i32* %10, align 4
  %132 = icmp slt i32 %131, 12
  br i1 %132, label %133, label %157

133:                                              ; preds = %130
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 6
  %136 = load i64, i64* %135, align 8
  %137 = inttoptr i64 %136 to i32*
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %5, align 4
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i32**, i32*** %144, align 8
  %146 = load i64, i64* %3, align 8
  %147 = getelementptr inbounds i32*, i32** %145, i64 %146
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  store i32 %142, i32* %151, align 4
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* %7, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %10, align 4
  br label %130

157:                                              ; preds = %130
  %158 = load i32, i32* %7, align 4
  %159 = xor i32 %158, -1
  %160 = and i32 %159, 255
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* %7, align 4
  %162 = shl i32 %161, 8
  %163 = load i32, i32* %7, align 4
  %164 = or i32 %162, %163
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = load i64, i64* %3, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  store i32 %164, i32* %169, align 4
  %170 = call i32 @__SYS_UnlockSramEx(i32 1)
  %171 = load i64, i64* %6, align 8
  store i64 %171, i64* %2, align 8
  br label %275

172:                                              ; preds = %115
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  store i32 1, i32* %174, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %7, align 4
  %175 = call %struct.TYPE_5__* (...) @__SYS_LockSramEx()
  store %struct.TYPE_5__* %175, %struct.TYPE_5__** %12, align 8
  br label %176

176:                                              ; preds = %179, %172
  %177 = load i32, i32* %10, align 4
  %178 = icmp slt i32 %177, 12
  br i1 %178, label %179, label %194

179:                                              ; preds = %176
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 0
  %182 = load i32**, i32*** %181, align 8
  %183 = load i64, i64* %3, align 8
  %184 = getelementptr inbounds i32*, i32** %182, i64 %183
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %10, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %7, align 4
  %191 = add nsw i32 %190, %189
  store i32 %191, i32* %7, align 4
  %192 = load i32, i32* %10, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %10, align 4
  br label %176

194:                                              ; preds = %176
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = load i64, i64* %3, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  %200 = load i32, i32* %199, align 4
  store i32 %200, i32* %10, align 4
  %201 = call i32 @__SYS_UnlockSramEx(i32 0)
  %202 = load i32, i32* %7, align 4
  %203 = xor i32 %202, -1
  %204 = and i32 %203, 255
  store i32 %204, i32* %7, align 4
  %205 = load i32, i32* %7, align 4
  %206 = shl i32 %205, 8
  %207 = load i32, i32* %7, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %7, align 4
  %209 = load i32, i32* %10, align 4
  %210 = load i32, i32* %7, align 4
  %211 = icmp ne i32 %209, %210
  br i1 %211, label %212, label %214

212:                                              ; preds = %194
  %213 = load i64, i64* @CARD_ERROR_IOERROR, align 8
  store i64 %213, i64* %6, align 8
  br label %268

214:                                              ; preds = %194
  br label %215

215:                                              ; preds = %214, %61
  br label %216

216:                                              ; preds = %215, %49
  br label %217

217:                                              ; preds = %216, %23
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp eq i32 %220, 1
  br i1 %221, label %222, label %239

222:                                              ; preds = %217
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  store i32 2, i32* %224, align 8
  %225 = load i64, i64* %3, align 8
  %226 = call i64 @__card_enableinterrupt(i64 %225, i32 1)
  store i64 %226, i64* %6, align 8
  %227 = icmp ult i64 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %222
  br label %268

229:                                              ; preds = %222
  %230 = load i64, i64* %3, align 8
  %231 = load i32, i32* @__card_exihandler, align 4
  %232 = call i32 @EXI_RegisterEXICallback(i64 %230, i32 %231)
  %233 = load i64, i64* %3, align 8
  %234 = call i32 @EXI_Unlock(i64 %233)
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 5
  %237 = load i64, i64* %236, align 8
  %238 = call i32 @DCInvalidateRange(i64 %237, i32 40960)
  br label %239

239:                                              ; preds = %229, %217
  %240 = load i64, i64* %3, align 8
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = sub nsw i32 %246, 2
  %248 = mul nsw i32 %243, %247
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 5
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = sub nsw i32 %257, 2
  %259 = shl i32 %258, 13
  %260 = sext i32 %259 to i64
  %261 = add nsw i64 %254, %260
  %262 = load i32, i32* @__card_mountcallback, align 4
  %263 = call i64 @__card_read(i64 %240, i32 %248, i32 %251, i64 %261, i32 %262)
  store i64 %263, i64* %6, align 8
  %264 = icmp ult i64 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %239
  br label %268

266:                                              ; preds = %239
  %267 = load i64, i64* %6, align 8
  store i64 %267, i64* %2, align 8
  br label %275

268:                                              ; preds = %265, %228, %212, %127, %113, %108, %103, %48
  %269 = load i64, i64* %3, align 8
  %270 = call i32 @EXI_Unlock(i64 %269)
  %271 = load i64, i64* %3, align 8
  %272 = load i64, i64* %6, align 8
  %273 = call i32 @__card_dounmount(i64 %271, i64 %272)
  %274 = load i64, i64* %6, align 8
  store i64 %274, i64* %2, align 8
  br label %275

275:                                              ; preds = %268, %266, %157, %21
  %276 = load i64, i64* %2, align 8
  ret i64 %276
}

declare dso_local i64 @EXI_GetID(i64, i32, i32*) #1

declare dso_local i32 @__card_iscard(i32) #1

declare dso_local i32 @_ROTL(i32, i32) #1

declare dso_local i64 @__card_clearstatus(i64) #1

declare dso_local i64 @__card_readstatus(i64, i32*) #1

declare dso_local i64 @EXI_Probe(i64) #1

declare dso_local i64 @__dounlock(i64, i64) #1

declare dso_local %struct.TYPE_5__* @__SYS_LockSramEx(...) #1

declare dso_local i32 @__SYS_UnlockSramEx(i32) #1

declare dso_local i64 @__card_enableinterrupt(i64, i32) #1

declare dso_local i32 @EXI_RegisterEXICallback(i64, i32) #1

declare dso_local i32 @EXI_Unlock(i64) #1

declare dso_local i32 @DCInvalidateRange(i64, i32) #1

declare dso_local i64 @__card_read(i64, i32, i32, i64, i32) #1

declare dso_local i32 @__card_dounmount(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
