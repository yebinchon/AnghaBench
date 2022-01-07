; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/src/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/src/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { i32*, i64 }
%struct.TYPE_11__ = type { i32*, %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { i32*, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@LocalTime = common dso_local global i32 0, align 4
@SysTick_CLKSource_HCLK = common dso_local global i32 0, align 4
@busAddress = common dso_local global i32 0, align 4
@MACaddr = common dso_local global i32* null, align 8
@SYSTEMTICK_PERIOD_MS = common dso_local global i32 0, align 4
@TICKS_PER_MS = common dso_local global i32 0, align 4
@SysTick_IRQn = common dso_local global i32 0, align 4
@usarts = common dso_local global i32* null, align 8
@USART1 = common dso_local global i32 0, align 4
@USART_FLAG_RXNE = common dso_local global i32 0, align 4
@RESET = common dso_local global i64 0, align 8
@USART_FLAG_ORE = common dso_local global i32 0, align 4
@packetStarted = common dso_local global i32 0, align 4
@lastByteTime = common dso_local global i32 0, align 4
@BLACK_TIMEOUT = common dso_local global i32 0, align 4
@TLC59401_CHANNELS = common dso_local global i32 0, align 4
@packetIdx = common dso_local global i32 0, align 4
@outPacket = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@LED_PACKET_HEADER_LEN = common dso_local global i32 0, align 4
@inPacket = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@analog_map = common dso_local global i32* null, align 8
@FanLastIrq = common dso_local global i32 0, align 4
@FanCapture = common dso_local global i32 0, align 4
@USART_FLAG_TXE = common dso_local global i32 0, align 4
@fan_pwm = common dso_local global i8* null, align 8
@led_pwm = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* @LocalTime, align 4
  %10 = load i32, i32* @SysTick_CLKSource_HCLK, align 4
  %11 = call i32 @SysTick_CLKSourceConfig(i32 %10)
  %12 = call i32 (...) @CONFIG_get_addr()
  store i32 %12, i32* @busAddress, align 4
  %13 = load i32, i32* @busAddress, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %0
  %16 = call i32 (...) @eeprom_Config()
  %17 = load i32*, i32** @MACaddr, align 8
  %18 = call i32 @eeprom_ReadMAC(i32* %17)
  br label %19

19:                                               ; preds = %15, %0
  %20 = call i32 @usleep(i32 100000)
  %21 = call i32 (...) @ANALOG_Config()
  %22 = call i32 @RCC_GetClocksFreq(%struct.TYPE_9__* %7)
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SYSTEMTICK_PERIOD_MS, align 4
  %26 = sdiv i32 1000, %25
  %27 = load i32, i32* @TICKS_PER_MS, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sdiv i32 %24, %28
  %30 = call i32 @SysTick_Config(i32 %29)
  %31 = load i32, i32* @SysTick_IRQn, align 4
  %32 = call i32 @NVIC_SetPriority(i32 %31, i32 0)
  %33 = load i32, i32* @busAddress, align 4
  %34 = icmp eq i32 %33, 3
  br i1 %34, label %35, label %37

35:                                               ; preds = %19
  %36 = call i32 (...) @fan_setup()
  br label %37

37:                                               ; preds = %35, %19
  %38 = call i32 @Delay(i32 1000)
  %39 = call i32 (...) @DEBUGPIN_Config()
  %40 = call i32 (...) @BUTTONS_Config()
  %41 = call i32 (...) @TLC59401_Config()
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %57, %37
  %43 = load i32, i32* %2, align 4
  %44 = icmp slt i32 %43, 32
  br i1 %44, label %45, label %60

45:                                               ; preds = %42
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @TLC59401_SetValue(i32 %46, i32 500)
  %48 = load i32, i32* %2, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* %2, align 4
  %52 = sub nsw i32 %51, 1
  %53 = call i32 @TLC59401_SetValue(i32 %52, i32 0)
  br label %54

54:                                               ; preds = %50, %45
  %55 = call i32 (...) @TLC59401_Send()
  %56 = call i32 @Delay(i32 30)
  br label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %2, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %2, align 4
  br label %42

60:                                               ; preds = %42
  %61 = call i32 @TLC59401_SetValue(i32 31, i32 0)
  %62 = call i32 (...) @TLC59401_Send()
  %63 = call i32 @Delay(i32 30)
  %64 = call i32 @TLC59401_SetValue(i32 2, i32 500)
  %65 = load i32, i32* @busAddress, align 4
  %66 = icmp sge i32 %65, 1
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = call i32 @TLC59401_SetValue(i32 5, i32 500)
  br label %69

69:                                               ; preds = %67, %60
  %70 = load i32, i32* @busAddress, align 4
  %71 = icmp sge i32 %70, 2
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = call i32 @TLC59401_SetValue(i32 8, i32 500)
  br label %74

74:                                               ; preds = %72, %69
  %75 = load i32, i32* @busAddress, align 4
  %76 = icmp sge i32 %75, 3
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = call i32 @TLC59401_SetValue(i32 11, i32 500)
  br label %79

79:                                               ; preds = %77, %74
  %80 = load i32, i32* @busAddress, align 4
  %81 = icmp sge i32 %80, 4
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = call i32 @TLC59401_SetValue(i32 14, i32 500)
  br label %84

84:                                               ; preds = %82, %79
  %85 = call i32 (...) @TLC59401_Send()
  %86 = call i32 @Delay(i32 30)
  %87 = load i32*, i32** @usarts, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = call i32 @UART_Config(i32* %88)
  br label %90

90:                                               ; preds = %84, %481
  br label %91

91:                                               ; preds = %90, %152, %167
  br label %92

92:                                               ; preds = %137, %91
  %93 = load i32, i32* @USART1, align 4
  %94 = load i32, i32* @USART_FLAG_RXNE, align 4
  %95 = call i64 @USART_GetFlagStatus(i32 %93, i32 %94)
  %96 = load i64, i64* @RESET, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %138

98:                                               ; preds = %92
  %99 = load i32, i32* @USART1, align 4
  %100 = load i32, i32* @USART_FLAG_ORE, align 4
  %101 = call i64 @USART_GetFlagStatus(i32 %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load i32, i32* @USART1, align 4
  %105 = load i32, i32* @USART_FLAG_ORE, align 4
  %106 = call i32 @USART_ClearFlag(i32 %104, i32 %105)
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  store i32 0, i32* @packetStarted, align 4
  br label %109

109:                                              ; preds = %103, %98
  %110 = load i32, i32* @LocalTime, align 4
  %111 = load i32, i32* @lastByteTime, align 4
  %112 = sub nsw i32 %110, %111
  %113 = load i32, i32* @TICKS_PER_MS, align 4
  %114 = icmp sgt i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  store i32 0, i32* @packetStarted, align 4
  br label %116

116:                                              ; preds = %115, %109
  %117 = load i32, i32* @LocalTime, align 4
  %118 = load i32, i32* @lastByteTime, align 4
  %119 = sub nsw i32 %117, %118
  %120 = load i32, i32* @BLACK_TIMEOUT, align 4
  %121 = load i32, i32* @TICKS_PER_MS, align 4
  %122 = mul nsw i32 %120, %121
  %123 = icmp sgt i32 %119, %122
  br i1 %123, label %124, label %137

124:                                              ; preds = %116
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %132, %124
  %126 = load i32, i32* %2, align 4
  %127 = load i32, i32* @TLC59401_CHANNELS, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %125
  %130 = load i32, i32* %2, align 4
  %131 = call i32 @TLC59401_SetValue(i32 %130, i32 0)
  br label %132

132:                                              ; preds = %129
  %133 = load i32, i32* %2, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %2, align 4
  br label %125

135:                                              ; preds = %125
  %136 = call i32 (...) @TLC59401_Send()
  br label %137

137:                                              ; preds = %135, %116
  br label %92

138:                                              ; preds = %92
  %139 = load i32, i32* @USART1, align 4
  %140 = call i32 @USART_ReceiveData(i32 %139)
  store i32 %140, i32* %3, align 4
  %141 = load i32, i32* %4, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %4, align 4
  %143 = load i32, i32* @packetStarted, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %155, label %145

145:                                              ; preds = %138
  %146 = load i32, i32* @LocalTime, align 4
  %147 = load i32, i32* @lastByteTime, align 4
  %148 = sub nsw i32 %146, %147
  %149 = load i32, i32* @TICKS_PER_MS, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  store i32 1, i32* @packetStarted, align 4
  store i32 0, i32* @packetIdx, align 4
  br label %154

152:                                              ; preds = %145
  %153 = load i32, i32* @LocalTime, align 4
  store i32 %153, i32* @lastByteTime, align 4
  br label %91

154:                                              ; preds = %151
  br label %155

155:                                              ; preds = %154, %138
  %156 = load i32, i32* %3, align 4
  %157 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @outPacket, i32 0, i32 1), align 8
  %158 = load i32, i32* @packetIdx, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* @packetIdx, align 4
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i32, i32* %157, i64 %160
  store i32 %156, i32* %161, align 4
  %162 = load i32, i32* @LocalTime, align 4
  store i32 %162, i32* @lastByteTime, align 4
  %163 = load i32, i32* @packetIdx, align 4
  %164 = sext i32 %163 to i64
  %165 = icmp uge i64 %164, 4
  br i1 %165, label %166, label %167

166:                                              ; preds = %155
  store i32 0, i32* @packetStarted, align 4
  br label %168

167:                                              ; preds = %155
  br label %91

168:                                              ; preds = %166
  store i32 0, i32* %2, align 4
  br label %169

169:                                              ; preds = %183, %168
  %170 = load i32, i32* %2, align 4
  %171 = load i32, i32* @LED_PACKET_HEADER_LEN, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %186

173:                                              ; preds = %169
  %174 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @outPacket, i32 0, i32 1), align 8
  %175 = load i32, i32* %2, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @inPacket, i32 0, i32 2), align 8
  %180 = load i32, i32* %2, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  store i32 %178, i32* %182, align 4
  br label %183

183:                                              ; preds = %173
  %184 = load i32, i32* %2, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %2, align 4
  br label %169

186:                                              ; preds = %169
  store i32 0, i32* %2, align 4
  br label %187

187:                                              ; preds = %203, %186
  %188 = load i32, i32* %2, align 4
  %189 = icmp slt i32 %188, 48
  br i1 %189, label %190, label %206

190:                                              ; preds = %187
  %191 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @outPacket, i32 0, i32 0, i32 0), align 8
  %192 = load i32, i32* %2, align 4
  %193 = load i32, i32* @busAddress, align 4
  %194 = mul nsw i32 %193, 48
  %195 = add nsw i32 %192, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %191, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @inPacket, i32 0, i32 1, i32 0), align 8
  %200 = load i32, i32* %2, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  store i32 %198, i32* %202, align 4
  br label %203

203:                                              ; preds = %190
  %204 = load i32, i32* %2, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %2, align 4
  br label %187

206:                                              ; preds = %187
  %207 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @inPacket, i32 0, i32 1, i32 1), align 8
  %208 = icmp eq i32 %207, 131
  br i1 %208, label %209, label %217

209:                                              ; preds = %206
  %210 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @inPacket, i32 0, i32 1, i32 2), align 4
  %211 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @outPacket, i32 0, i32 0, i32 0), align 8
  %212 = load i32, i32* @busAddress, align 4
  %213 = mul nsw i32 %212, 48
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %211, i64 %214
  %216 = call i32 @TLC59401_GetCalibration(i32 %210, i32* %215)
  br label %344

217:                                              ; preds = %206
  store i32 0, i32* %2, align 4
  br label %218

218:                                              ; preds = %231, %217
  %219 = load i32, i32* %2, align 4
  %220 = icmp slt i32 %219, 10
  br i1 %220, label %221, label %234

221:                                              ; preds = %218
  %222 = load i32, i32* %2, align 4
  %223 = call i32 @BUTTONS_Read(i32 %222)
  %224 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @outPacket, i32 0, i32 0, i32 0), align 8
  %225 = load i32, i32* %2, align 4
  %226 = load i32, i32* @busAddress, align 4
  %227 = mul nsw i32 %226, 48
  %228 = add nsw i32 %225, %227
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %224, i64 %229
  store i32 %223, i32* %230, align 4
  br label %231

231:                                              ; preds = %221
  %232 = load i32, i32* %2, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %2, align 4
  br label %218

234:                                              ; preds = %218
  store i32 0, i32* %2, align 4
  br label %235

235:                                              ; preds = %258, %234
  %236 = load i32, i32* %2, align 4
  %237 = icmp slt i32 %236, 10
  br i1 %237, label %238, label %261

238:                                              ; preds = %235
  %239 = load i32*, i32** @analog_map, align 8
  %240 = load i32, i32* %2, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @ANALOG_get_voltage(i32 %243)
  store i32 %244, i32* %8, align 4
  %245 = load i32, i32* %8, align 4
  %246 = mul nsw i32 %245, 2753
  %247 = add nsw i32 %246, 2066808
  %248 = ashr i32 %247, 16
  store i32 %248, i32* %8, align 4
  %249 = load i32, i32* %8, align 4
  %250 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @outPacket, i32 0, i32 0, i32 0), align 8
  %251 = load i32, i32* %2, align 4
  %252 = add nsw i32 %251, 10
  %253 = load i32, i32* @busAddress, align 4
  %254 = mul nsw i32 %253, 48
  %255 = add nsw i32 %252, %254
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %250, i64 %256
  store i32 %249, i32* %257, align 4
  br label %258

258:                                              ; preds = %238
  %259 = load i32, i32* %2, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %2, align 4
  br label %235

261:                                              ; preds = %235
  %262 = load i32, i32* @busAddress, align 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %286

264:                                              ; preds = %261
  store i32 0, i32* %2, align 4
  br label %265

265:                                              ; preds = %282, %264
  %266 = load i32, i32* %2, align 4
  %267 = icmp slt i32 %266, 6
  br i1 %267, label %268, label %285

268:                                              ; preds = %265
  %269 = load i32*, i32** @MACaddr, align 8
  %270 = load i32, i32* %2, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @outPacket, i32 0, i32 0, i32 0), align 8
  %275 = load i32, i32* %2, align 4
  %276 = add nsw i32 %275, 20
  %277 = load i32, i32* @busAddress, align 4
  %278 = mul nsw i32 %277, 48
  %279 = add nsw i32 %276, %278
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %274, i64 %280
  store i32 %273, i32* %281, align 4
  br label %282

282:                                              ; preds = %268
  %283 = load i32, i32* %2, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %2, align 4
  br label %265

285:                                              ; preds = %265
  br label %286

286:                                              ; preds = %285, %261
  %287 = load i32, i32* @busAddress, align 4
  %288 = icmp eq i32 %287, 3
  br i1 %288, label %289, label %320

289:                                              ; preds = %286
  %290 = load i32, i32* @LocalTime, align 4
  %291 = load i32, i32* @FanLastIrq, align 4
  %292 = sub nsw i32 %290, %291
  %293 = load i32, i32* @TICKS_PER_MS, align 4
  %294 = mul nsw i32 %293, 1000
  %295 = icmp sgt i32 %292, %294
  br i1 %295, label %296, label %297

296:                                              ; preds = %289
  store i32 65535, i32* @FanCapture, align 4
  br label %297

297:                                              ; preds = %296, %289
  store i32 0, i32* %2, align 4
  br label %298

298:                                              ; preds = %316, %297
  %299 = load i32, i32* %2, align 4
  %300 = icmp slt i32 %299, 4
  br i1 %300, label %301, label %319

301:                                              ; preds = %298
  %302 = load i32, i32* @FanCapture, align 4
  %303 = load i32, i32* %2, align 4
  %304 = mul nsw i32 8, %303
  %305 = sub nsw i32 24, %304
  %306 = ashr i32 %302, %305
  %307 = and i32 %306, 255
  %308 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @outPacket, i32 0, i32 0, i32 0), align 8
  %309 = load i32, i32* %2, align 4
  %310 = add nsw i32 %309, 20
  %311 = load i32, i32* @busAddress, align 4
  %312 = mul nsw i32 %311, 48
  %313 = add nsw i32 %310, %312
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %308, i64 %314
  store i32 %307, i32* %315, align 4
  br label %316

316:                                              ; preds = %301
  %317 = load i32, i32* %2, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %2, align 4
  br label %298

319:                                              ; preds = %298
  br label %320

320:                                              ; preds = %319, %286
  %321 = load i32, i32* @LocalTime, align 4
  store i32 %321, i32* %8, align 4
  store i32 0, i32* %2, align 4
  br label %322

322:                                              ; preds = %340, %320
  %323 = load i32, i32* %2, align 4
  %324 = icmp slt i32 %323, 4
  br i1 %324, label %325, label %343

325:                                              ; preds = %322
  %326 = load i32, i32* %8, align 4
  %327 = load i32, i32* %2, align 4
  %328 = mul nsw i32 8, %327
  %329 = sub nsw i32 24, %328
  %330 = ashr i32 %326, %329
  %331 = and i32 %330, 255
  %332 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @outPacket, i32 0, i32 0, i32 0), align 8
  %333 = load i32, i32* %2, align 4
  %334 = add nsw i32 %333, 32
  %335 = load i32, i32* @busAddress, align 4
  %336 = mul nsw i32 %335, 48
  %337 = add nsw i32 %334, %336
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %332, i64 %338
  store i32 %331, i32* %339, align 4
  br label %340

340:                                              ; preds = %325
  %341 = load i32, i32* %2, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %2, align 4
  br label %322

343:                                              ; preds = %322
  br label %344

344:                                              ; preds = %343, %209
  store i32 0, i32* %2, align 4
  br label %345

345:                                              ; preds = %367, %344
  %346 = load i32, i32* %2, align 4
  %347 = sext i32 %346 to i64
  %348 = icmp ult i64 %347, 4
  br i1 %348, label %349, label %370

349:                                              ; preds = %345
  br label %350

350:                                              ; preds = %356, %349
  %351 = load i32, i32* @USART1, align 4
  %352 = load i32, i32* @USART_FLAG_TXE, align 4
  %353 = call i64 @USART_GetFlagStatus(i32 %351, i32 %352)
  %354 = load i64, i64* @RESET, align 8
  %355 = icmp eq i64 %353, %354
  br i1 %355, label %356, label %357

356:                                              ; preds = %350
  br label %350

357:                                              ; preds = %350
  %358 = load i32, i32* @USART1, align 4
  %359 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @outPacket, i32 0, i32 1), align 8
  %360 = load i32, i32* %2, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %359, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = call i32 @USART_SendData(i32 %358, i32 %363)
  %365 = load i32, i32* %5, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %5, align 4
  br label %367

367:                                              ; preds = %357
  %368 = load i32, i32* %2, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %2, align 4
  br label %345

370:                                              ; preds = %345
  %371 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @outPacket, i32 0, i32 0, i32 1), align 8
  %372 = icmp ne i64 %371, 128
  br i1 %372, label %373, label %386

373:                                              ; preds = %370
  %374 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @inPacket, i32 0, i32 0), align 8
  %375 = getelementptr inbounds i32, i32* %374, i64 1
  %376 = call i8* @unpack12bit(i32* %375, i32 0)
  store i8* %376, i8** @fan_pwm, align 8
  %377 = load i32, i32* @busAddress, align 4
  %378 = icmp eq i32 %377, 3
  br i1 %378, label %379, label %382

379:                                              ; preds = %373
  %380 = load i8*, i8** @fan_pwm, align 8
  %381 = call i32 @fan_set_duty(i8* %380)
  br label %382

382:                                              ; preds = %379, %373
  %383 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @inPacket, i32 0, i32 0), align 8
  %384 = getelementptr inbounds i32, i32* %383, i64 1
  %385 = call i8* @unpack12bit(i32* %384, i32 1)
  store i8* %385, i8** @led_pwm, align 8
  br label %386

386:                                              ; preds = %382, %370
  %387 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @inPacket, i32 0, i32 1, i32 1), align 8
  switch i32 %387, label %480 [
    i32 136, label %388
    i32 130, label %406
    i32 134, label %410
    i32 135, label %425
    i32 128, label %444
    i32 132, label %448
    i32 133, label %463
    i32 131, label %467
    i32 129, label %468
  ]

388:                                              ; preds = %386
  store i32 0, i32* %2, align 4
  br label %389

389:                                              ; preds = %401, %388
  %390 = load i32, i32* %2, align 4
  %391 = load i32, i32* @TLC59401_CHANNELS, align 4
  %392 = icmp slt i32 %390, %391
  br i1 %392, label %393, label %404

393:                                              ; preds = %389
  %394 = load i32, i32* %2, align 4
  %395 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @inPacket, i32 0, i32 1, i32 0), align 8
  %396 = load i32, i32* %2, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %395, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = call i32 @TLC59401_Set8bitCalValue(i32 %394, i32 %399)
  br label %401

401:                                              ; preds = %393
  %402 = load i32, i32* %2, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %2, align 4
  br label %389

404:                                              ; preds = %389
  %405 = call i32 (...) @TLC59401_Send()
  br label %481

406:                                              ; preds = %386
  %407 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @inPacket, i32 0, i32 1, i32 0), align 8
  %408 = call i32 @TLC59401_SetPacket(i32* %407)
  %409 = call i32 (...) @TLC59401_Send()
  br label %481

410:                                              ; preds = %386
  store i32 0, i32* %2, align 4
  br label %411

411:                                              ; preds = %420, %410
  %412 = load i32, i32* %2, align 4
  %413 = icmp slt i32 %412, 32
  br i1 %413, label %414, label %423

414:                                              ; preds = %411
  %415 = load i32, i32* %2, align 4
  %416 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @inPacket, i32 0, i32 1, i32 0), align 8
  %417 = load i32, i32* %2, align 4
  %418 = call i8* @unpack12bit(i32* %416, i32 %417)
  %419 = call i32 @TLC59401_SetDotCorrection(i32 %415, i8* %418)
  br label %420

420:                                              ; preds = %414
  %421 = load i32, i32* %2, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %2, align 4
  br label %411

423:                                              ; preds = %411
  %424 = call i32 (...) @TLC59401_SendDotCorrection()
  br label %481

425:                                              ; preds = %386
  store i32 0, i32* %2, align 4
  br label %426

426:                                              ; preds = %439, %425
  %427 = load i32, i32* %2, align 4
  %428 = load i32, i32* @TLC59401_CHANNELS, align 4
  %429 = icmp slt i32 %427, %428
  br i1 %429, label %430, label %442

430:                                              ; preds = %426
  %431 = load i32, i32* %2, align 4
  %432 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @inPacket, i32 0, i32 1, i32 0), align 8
  %433 = load i32, i32* %2, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i32, i32* %432, i64 %434
  %436 = load i32, i32* %435, align 4
  %437 = shl i32 %436, 4
  %438 = call i32 @TLC59401_SetValue(i32 %431, i32 %437)
  br label %439

439:                                              ; preds = %430
  %440 = load i32, i32* %2, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %2, align 4
  br label %426

442:                                              ; preds = %426
  %443 = call i32 (...) @TLC59401_Send()
  br label %481

444:                                              ; preds = %386
  %445 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @inPacket, i32 0, i32 1, i32 2), align 4
  %446 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @inPacket, i32 0, i32 1, i32 0), align 8
  %447 = call i32 @TLC59401_SetCalibration(i32 %445, i32* %446)
  br label %481

448:                                              ; preds = %386
  store i32 0, i32* %2, align 4
  br label %449

449:                                              ; preds = %458, %448
  %450 = load i32, i32* %2, align 4
  %451 = icmp slt i32 %450, 32
  br i1 %451, label %452, label %461

452:                                              ; preds = %449
  %453 = load i32, i32* %2, align 4
  %454 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @inPacket, i32 0, i32 1, i32 0), align 8
  %455 = load i32, i32* %2, align 4
  %456 = call i8* @unpack12bit(i32* %454, i32 %455)
  %457 = call i32 @TLC59401_SetDotCorrection(i32 %453, i8* %456)
  br label %458

458:                                              ; preds = %452
  %459 = load i32, i32* %2, align 4
  %460 = add nsw i32 %459, 1
  store i32 %460, i32* %2, align 4
  br label %449

461:                                              ; preds = %449
  %462 = call i32 (...) @TLC59401_SendDotCorrection()
  br label %481

463:                                              ; preds = %386
  %464 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @inPacket, i32 0, i32 1, i32 0), align 8
  %465 = call i32 @TLC59401_SetDotCorrectionPacket(i32* %464)
  %466 = call i32 (...) @TLC59401_SendDotCorrection()
  br label %481

467:                                              ; preds = %386
  br label %481

468:                                              ; preds = %386
  %469 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @inPacket, i32 0, i32 1, i32 0), align 8
  store i32* %469, i32** %9, align 8
  %470 = load i32*, i32** %9, align 8
  %471 = getelementptr inbounds i32, i32* %470, i64 0
  %472 = load i32, i32* %471, align 4
  %473 = icmp eq i32 %472, -2123739470
  br i1 %473, label %474, label %479

474:                                              ; preds = %468
  %475 = load i32, i32* @TICKS_PER_MS, align 4
  %476 = mul nsw i32 100, %475
  %477 = call i32 @Delay(i32 %476)
  %478 = call i32 (...) @NVIC_SystemReset()
  br label %479

479:                                              ; preds = %474, %468
  br label %481

480:                                              ; preds = %386
  br label %481

481:                                              ; preds = %480, %479, %467, %463, %461, %444, %442, %423, %406, %404
  br label %90
}

declare dso_local i32 @SysTick_CLKSourceConfig(i32) #1

declare dso_local i32 @CONFIG_get_addr(...) #1

declare dso_local i32 @eeprom_Config(...) #1

declare dso_local i32 @eeprom_ReadMAC(i32*) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @ANALOG_Config(...) #1

declare dso_local i32 @RCC_GetClocksFreq(%struct.TYPE_9__*) #1

declare dso_local i32 @SysTick_Config(i32) #1

declare dso_local i32 @NVIC_SetPriority(i32, i32) #1

declare dso_local i32 @fan_setup(...) #1

declare dso_local i32 @Delay(i32) #1

declare dso_local i32 @DEBUGPIN_Config(...) #1

declare dso_local i32 @BUTTONS_Config(...) #1

declare dso_local i32 @TLC59401_Config(...) #1

declare dso_local i32 @TLC59401_SetValue(i32, i32) #1

declare dso_local i32 @TLC59401_Send(...) #1

declare dso_local i32 @UART_Config(i32*) #1

declare dso_local i64 @USART_GetFlagStatus(i32, i32) #1

declare dso_local i32 @USART_ClearFlag(i32, i32) #1

declare dso_local i32 @USART_ReceiveData(i32) #1

declare dso_local i32 @TLC59401_GetCalibration(i32, i32*) #1

declare dso_local i32 @BUTTONS_Read(i32) #1

declare dso_local i32 @ANALOG_get_voltage(i32) #1

declare dso_local i32 @USART_SendData(i32, i32) #1

declare dso_local i8* @unpack12bit(i32*, i32) #1

declare dso_local i32 @fan_set_duty(i8*) #1

declare dso_local i32 @TLC59401_Set8bitCalValue(i32, i32) #1

declare dso_local i32 @TLC59401_SetPacket(i32*) #1

declare dso_local i32 @TLC59401_SetDotCorrection(i32, i8*) #1

declare dso_local i32 @TLC59401_SendDotCorrection(...) #1

declare dso_local i32 @TLC59401_SetCalibration(i32, i32*) #1

declare dso_local i32 @TLC59401_SetDotCorrectionPacket(i32*) #1

declare dso_local i32 @NVIC_SystemReset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
