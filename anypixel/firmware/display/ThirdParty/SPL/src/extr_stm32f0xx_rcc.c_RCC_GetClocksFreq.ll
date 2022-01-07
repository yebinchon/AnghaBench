; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_rcc.c_RCC_GetClocksFreq.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_rcc.c_RCC_GetClocksFreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@RCC = common dso_local global %struct.TYPE_5__* null, align 8
@RCC_CFGR_SWS = common dso_local global i32 0, align 4
@HSI_VALUE = common dso_local global i32 0, align 4
@HSE_VALUE = common dso_local global i32 0, align 4
@RCC_CFGR_PLLMULL = common dso_local global i32 0, align 4
@RCC_CFGR_PLLSRC = common dso_local global i32 0, align 4
@RCC_CFGR2_PREDIV1 = common dso_local global i32 0, align 4
@HSI48_VALUE = common dso_local global i8* null, align 8
@RCC_CFGR_HPRE = common dso_local global i32 0, align 4
@APBAHBPrescTable = common dso_local global i32* null, align 8
@RCC_CFGR_PPRE = common dso_local global i32 0, align 4
@RCC_CFGR3_ADCSW = common dso_local global i32 0, align 4
@HSI14_VALUE = common dso_local global i32 0, align 4
@RCC_CFGR_ADCPRE = common dso_local global i32 0, align 4
@RCC_CFGR3_CECSW = common dso_local global i32 0, align 4
@LSE_VALUE = common dso_local global i8* null, align 8
@RCC_CFGR3_I2C1SW = common dso_local global i32 0, align 4
@RCC_CFGR3_USART1SW = common dso_local global i32 0, align 4
@RCC_CFGR3_USART1SW_0 = common dso_local global i32 0, align 4
@RCC_CFGR3_USART1SW_1 = common dso_local global i32 0, align 4
@RCC_CFGR3_USART2SW = common dso_local global i32 0, align 4
@RCC_CFGR3_USART2SW_0 = common dso_local global i32 0, align 4
@RCC_CFGR3_USART2SW_1 = common dso_local global i32 0, align 4
@RCC_CFGR3_USBSW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RCC_GetClocksFreq(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RCC, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @RCC_CFGR_SWS, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  switch i32 %14, label %65 [
    i32 0, label %15
    i32 4, label %19
    i32 8, label %23
    i32 12, label %60
  ]

15:                                               ; preds = %1
  %16 = load i32, i32* @HSI_VALUE, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %69

19:                                               ; preds = %1
  %20 = load i32, i32* @HSE_VALUE, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %69

23:                                               ; preds = %1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RCC, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @RCC_CFGR_PLLMULL, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %4, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RCC, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @RCC_CFGR_PLLSRC, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %4, align 4
  %35 = ashr i32 %34, 18
  %36 = add nsw i32 %35, 2
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %23
  %40 = load i32, i32* @HSI_VALUE, align 4
  %41 = ashr i32 %40, 1
  %42 = load i32, i32* %4, align 4
  %43 = mul nsw i32 %41, %42
  store i32 %43, i32* %8, align 4
  br label %56

44:                                               ; preds = %23
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RCC, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @RCC_CFGR2_PREDIV1, align 4
  %49 = and i32 %47, %48
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* @HSE_VALUE, align 4
  %52 = load i32, i32* %6, align 4
  %53 = sdiv i32 %51, %52
  %54 = load i32, i32* %4, align 4
  %55 = mul nsw i32 %53, %54
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %44, %39
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %69

60:                                               ; preds = %1
  %61 = load i8*, i8** @HSI48_VALUE, align 8
  %62 = ptrtoint i8* %61 to i32
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %69

65:                                               ; preds = %1
  %66 = load i32, i32* @HSI_VALUE, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %65, %60, %56, %19, %15
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RCC, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @RCC_CFGR_HPRE, align 4
  %74 = and i32 %72, %73
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* %3, align 4
  %76 = ashr i32 %75, 4
  store i32 %76, i32* %3, align 4
  %77 = load i32*, i32** @APBAHBPrescTable, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %7, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %7, align 4
  %86 = ashr i32 %84, %85
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RCC, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @RCC_CFGR_PPRE, align 4
  %93 = and i32 %91, %92
  store i32 %93, i32* %3, align 4
  %94 = load i32, i32* %3, align 4
  %95 = ashr i32 %94, 8
  store i32 %95, i32* %3, align 4
  %96 = load i32*, i32** @APBAHBPrescTable, align 8
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %7, align 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %7, align 4
  %105 = ashr i32 %103, %104
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RCC, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @RCC_CFGR3_ADCSW, align 4
  %112 = and i32 %110, %111
  %113 = load i32, i32* @RCC_CFGR3_ADCSW, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %69
  %116 = load i32, i32* @HSI14_VALUE, align 4
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  br label %142

119:                                              ; preds = %69
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RCC, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @RCC_CFGR_ADCPRE, align 4
  %124 = and i32 %122, %123
  %125 = load i32, i32* @RCC_CFGR_ADCPRE, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %119
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = ashr i32 %130, 1
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 4
  br label %141

134:                                              ; preds = %119
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = ashr i32 %137, 2
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 4
  br label %141

141:                                              ; preds = %134, %127
  br label %142

142:                                              ; preds = %141, %115
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RCC, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @RCC_CFGR3_CECSW, align 4
  %147 = and i32 %145, %146
  %148 = load i32, i32* @RCC_CFGR3_CECSW, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %142
  %151 = load i32, i32* @HSI_VALUE, align 4
  %152 = sdiv i32 %151, 244
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 4
  store i32 %152, i32* %154, align 4
  br label %160

155:                                              ; preds = %142
  %156 = load i8*, i8** @LSE_VALUE, align 8
  %157 = ptrtoint i8* %156 to i32
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 4
  store i32 %157, i32* %159, align 4
  br label %160

160:                                              ; preds = %155, %150
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RCC, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @RCC_CFGR3_I2C1SW, align 4
  %165 = and i32 %163, %164
  %166 = load i32, i32* @RCC_CFGR3_I2C1SW, align 4
  %167 = icmp ne i32 %165, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %160
  %169 = load i32, i32* @HSI_VALUE, align 4
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 5
  store i32 %169, i32* %171, align 4
  br label %178

172:                                              ; preds = %160
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 5
  store i32 %175, i32* %177, align 4
  br label %178

178:                                              ; preds = %172, %168
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RCC, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @RCC_CFGR3_USART1SW, align 4
  %183 = and i32 %181, %182
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %178
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 6
  store i32 %188, i32* %190, align 4
  br label %233

191:                                              ; preds = %178
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RCC, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @RCC_CFGR3_USART1SW, align 4
  %196 = and i32 %194, %195
  %197 = load i32, i32* @RCC_CFGR3_USART1SW_0, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %205

199:                                              ; preds = %191
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 6
  store i32 %202, i32* %204, align 4
  br label %232

205:                                              ; preds = %191
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RCC, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @RCC_CFGR3_USART1SW, align 4
  %210 = and i32 %208, %209
  %211 = load i32, i32* @RCC_CFGR3_USART1SW_1, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %218

213:                                              ; preds = %205
  %214 = load i8*, i8** @LSE_VALUE, align 8
  %215 = ptrtoint i8* %214 to i32
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 6
  store i32 %215, i32* %217, align 4
  br label %231

218:                                              ; preds = %205
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RCC, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @RCC_CFGR3_USART1SW, align 4
  %223 = and i32 %221, %222
  %224 = load i32, i32* @RCC_CFGR3_USART1SW, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %230

226:                                              ; preds = %218
  %227 = load i32, i32* @HSI_VALUE, align 4
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 6
  store i32 %227, i32* %229, align 4
  br label %230

230:                                              ; preds = %226, %218
  br label %231

231:                                              ; preds = %230, %213
  br label %232

232:                                              ; preds = %231, %199
  br label %233

233:                                              ; preds = %232, %185
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RCC, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @RCC_CFGR3_USART2SW, align 4
  %238 = and i32 %236, %237
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %233
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 7
  store i32 %243, i32* %245, align 4
  br label %288

246:                                              ; preds = %233
  %247 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RCC, align 8
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @RCC_CFGR3_USART2SW, align 4
  %251 = and i32 %249, %250
  %252 = load i32, i32* @RCC_CFGR3_USART2SW_0, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %254, label %260

254:                                              ; preds = %246
  %255 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 7
  store i32 %257, i32* %259, align 4
  br label %287

260:                                              ; preds = %246
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RCC, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @RCC_CFGR3_USART2SW, align 4
  %265 = and i32 %263, %264
  %266 = load i32, i32* @RCC_CFGR3_USART2SW_1, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %273

268:                                              ; preds = %260
  %269 = load i8*, i8** @LSE_VALUE, align 8
  %270 = ptrtoint i8* %269 to i32
  %271 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 7
  store i32 %270, i32* %272, align 4
  br label %286

273:                                              ; preds = %260
  %274 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RCC, align 8
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @RCC_CFGR3_USART2SW, align 4
  %278 = and i32 %276, %277
  %279 = load i32, i32* @RCC_CFGR3_USART2SW, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %285

281:                                              ; preds = %273
  %282 = load i32, i32* @HSI_VALUE, align 4
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 7
  store i32 %282, i32* %284, align 4
  br label %285

285:                                              ; preds = %281, %273
  br label %286

286:                                              ; preds = %285, %268
  br label %287

287:                                              ; preds = %286, %254
  br label %288

288:                                              ; preds = %287, %240
  %289 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RCC, align 8
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @RCC_CFGR3_USBSW, align 4
  %293 = and i32 %291, %292
  %294 = load i32, i32* @RCC_CFGR3_USBSW, align 4
  %295 = icmp ne i32 %293, %294
  br i1 %295, label %296, label %301

296:                                              ; preds = %288
  %297 = load i8*, i8** @HSI48_VALUE, align 8
  %298 = ptrtoint i8* %297 to i32
  %299 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 8
  store i32 %298, i32* %300, align 4
  br label %305

301:                                              ; preds = %288
  %302 = load i32, i32* %8, align 4
  %303 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 8
  store i32 %302, i32* %304, align 4
  br label %305

305:                                              ; preds = %301, %296
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
