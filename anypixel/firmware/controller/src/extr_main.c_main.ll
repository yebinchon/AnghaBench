; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i8* }
%struct.pbuf = type { i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@NVIC_PriorityGroup_4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"about to start ethernet config\0A\00", align 1
@pins_powerctrl = common dso_local global i32 0, align 4
@PWRCTRL_NUM_PINS = common dso_local global i32 0, align 4
@pins_debug = common dso_local global i32 0, align 4
@DEBUGPIN_NUM = common dso_local global i32 0, align 4
@PWR_CTRL_AC_0 = common dso_local global i32 0, align 4
@PWR_CTRL_AC_1 = common dso_local global i32 0, align 4
@global_row = common dso_local global i32 0, align 4
@global_column = common dso_local global i32 0, align 4
@IP_lastOctet = common dso_local global i32 0, align 4
@mac_last_octet = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"IP: 192.168.0.%d\00", align 1
@udp_dest = common dso_local global i32 0, align 4
@IP_ADDR0 = common dso_local global i32 0, align 4
@IP_ADDR1 = common dso_local global i32 0, align 4
@IP_ADDR2 = common dso_local global i32 0, align 4
@POWER_ROW = common dso_local global i32 0, align 4
@usarts = common dso_local global i32* null, align 8
@PKT_TYPE_DOTCORRECT_PACK12 = common dso_local global i32 0, align 4
@panelLEDmap = common dso_local global i32* null, align 8
@PKT_TYPE_GSVALS = common dso_local global i8* null, align 8
@ledpackets = common dso_local global %struct.TYPE_8__* null, align 8
@PANEL_NW = common dso_local global i64 0, align 8
@PKT_TYPE_SET_LOOKUP = common dso_local global i8* null, align 8
@LocalTime = common dso_local global i64 0, align 8
@lastPacketTime = common dso_local global i64 0, align 8
@maxPacketDelay = common dso_local global i64 0, align 8
@bootloaderMode = common dso_local global i64 0, align 8
@BL_MODE_INACTIVE = common dso_local global i64 0, align 8
@lastStatusPacketTime = common dso_local global i64 0, align 8
@minStatusPacketDelay = common dso_local global i64 0, align 8
@PBUF_TRANSPORT = common dso_local global i32 0, align 4
@PBUF_RAM = common dso_local global i32 0, align 4
@PWR_MON_0_0 = common dso_local global i32 0, align 4
@PWR_MON_0_1 = common dso_local global i32 0, align 4
@PWR_MON_0_2 = common dso_local global i32 0, align 4
@PWR_MON_1_0 = common dso_local global i32 0, align 4
@PWR_MON_1_1 = common dso_local global i32 0, align 4
@PWR_MON_1_2 = common dso_local global i32 0, align 4
@PWR_MON_AC_0 = common dso_local global i32 0, align 4
@PWR_MON_AC_1 = common dso_local global i32 0, align 4
@global_pcb = common dso_local global i32 0, align 4
@lastButtonPacketTime = common dso_local global i64 0, align 8
@minButtonPacketDelay = common dso_local global i64 0, align 8
@buttonpacket = common dso_local global i32 0, align 4
@temperatures = common dso_local global i32 0, align 4
@fan_tach = common dso_local global i32* null, align 8
@serialNum = common dso_local global i32 0, align 4
@uptimes = common dso_local global i32 0, align 4
@panel_avg_temp = common dso_local global i32 0, align 4
@lastUDPReceivePacketTime = common dso_local global i64 0, align 8
@minPacketDelay = common dso_local global i64 0, align 8
@USART_NW = common dso_local global i32 0, align 4
@USART_SW = common dso_local global i32 0, align 4
@PANEL_SW = common dso_local global i64 0, align 8
@USART_SE = common dso_local global i32 0, align 4
@PANEL_SE = common dso_local global i64 0, align 8
@USART_NE = common dso_local global i32 0, align 4
@PANEL_NE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.pbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %9 = load i32, i32* @NVIC_PriorityGroup_4, align 4
  %10 = call i32 @NVIC_PriorityGroupConfig(i32 %9)
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 (...) @ETH_BSP_Config()
  %13 = call i32 (...) @BUTTONS_Config()
  %14 = call i32 (...) @PIN_Config()
  %15 = load i32, i32* @pins_powerctrl, align 4
  %16 = load i32, i32* @PWRCTRL_NUM_PINS, align 4
  %17 = call i32 @CONFIG_pins(i32 %15, i32 %16)
  %18 = load i32, i32* @pins_debug, align 4
  %19 = load i32, i32* @DEBUGPIN_NUM, align 4
  %20 = call i32 @PIN_Num(i32 %18, i32 0, i32 %19)
  %21 = load i32, i32* @pins_powerctrl, align 4
  %22 = load i32, i32* @PWR_CTRL_AC_0, align 4
  %23 = call i32 @PIN_Low(i32 %21, i32 %22)
  %24 = load i32, i32* @pins_powerctrl, align 4
  %25 = load i32, i32* @PWR_CTRL_AC_1, align 4
  %26 = call i32 @PIN_Low(i32 %24, i32 %25)
  %27 = call i32 @Delay(i32 10)
  %28 = call i32 (...) @BUTTONS_Read_All()
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %2, align 4
  %30 = ashr i32 %29, 4
  %31 = and i32 %30, 15
  store i32 %31, i32* @global_row, align 4
  %32 = load i32, i32* %2, align 4
  %33 = and i32 %32, 15
  store i32 %33, i32* @global_column, align 4
  %34 = load i32, i32* @global_row, align 4
  %35 = mul nsw i32 %34, 10
  %36 = add nsw i32 20, %35
  %37 = load i32, i32* @global_column, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* @IP_lastOctet, align 4
  %39 = load i32, i32* @global_row, align 4
  %40 = mul nsw i32 %39, 10
  %41 = add nsw i32 20, %40
  %42 = load i32, i32* @global_column, align 4
  %43 = add nsw i32 %41, %42
  store i32 %43, i32* @mac_last_octet, align 4
  %44 = load i32, i32* @IP_lastOctet, align 4
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @IP_ADDR0, align 4
  %47 = load i32, i32* @IP_ADDR1, align 4
  %48 = load i32, i32* @IP_ADDR2, align 4
  %49 = call i32 @IP4_ADDR(i32* @udp_dest, i32 %46, i32 %47, i32 %48, i32 10)
  %50 = call i32 (...) @LwIP_Init()
  %51 = call i32 (...) @udp_recv_init()
  %52 = load i32, i32* @global_row, align 4
  %53 = load i32, i32* @POWER_ROW, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %452

55:                                               ; preds = %0
  %56 = load i32*, i32** @usarts, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = call i32 @UART_Config(i32* %57)
  %59 = load i32*, i32** @usarts, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = call i32 @UART_Config(i32* %60)
  %62 = load i32*, i32** @usarts, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = call i32 @UART_Config(i32* %63)
  %65 = load i32*, i32** @usarts, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  %67 = call i32 @UART_Config(i32* %66)
  %68 = call i32 @Delay(i32 10)
  %69 = call i32 @Delay(i32 7000)
  store i32 58, i32* %4, align 4
  br label %70

70:                                               ; preds = %192, %55
  %71 = load i32, i32* %4, align 4
  %72 = icmp sle i32 %71, 63
  br i1 %72, label %73, label %228

73:                                               ; preds = %70
  %74 = call i32 @Delay(i32 50)
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @memset(i32 %76, i32 0, i32 12)
  %78 = load i32, i32* @PKT_TYPE_DOTCORRECT_PACK12, align 4
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %122, %73
  %82 = load i32, i32* %2, align 4
  %83 = icmp slt i32 %82, 49
  br i1 %83, label %84, label %125

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** @panelLEDmap, align 8
  %89 = load i32, i32* %2, align 4
  %90 = mul nsw i32 %89, 3
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %88, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @pack12bit(i32 %87, i32 %94, i32 %95)
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** @panelLEDmap, align 8
  %101 = load i32, i32* %2, align 4
  %102 = mul nsw i32 %101, 3
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %4, align 4
  %107 = sdiv i32 %106, 2
  %108 = call i32 @pack12bit(i32 %99, i32 %105, i32 %107)
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** @panelLEDmap, align 8
  %113 = load i32, i32* %2, align 4
  %114 = mul nsw i32 %113, 3
  %115 = add nsw i32 %114, 2
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %112, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %4, align 4
  %120 = sdiv i32 %119, 2
  %121 = call i32 @pack12bit(i32 %111, i32 %118, i32 %120)
  br label %122

122:                                              ; preds = %84
  %123 = load i32, i32* %2, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %2, align 4
  br label %81

125:                                              ; preds = %81
  %126 = load i32*, i32** @usarts, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @UART_SendBytes(i32* %127, i32 %129, i32 12)
  %131 = load i32*, i32** @usarts, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @UART_SendBytes(i32* %132, i32 %134, i32 12)
  %136 = load i32*, i32** @usarts, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 2
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @UART_SendBytes(i32* %137, i32 %139, i32 12)
  %141 = load i32*, i32** @usarts, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 3
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @UART_SendBytes(i32* %142, i32 %144, i32 12)
  %146 = call i32 @Delay(i32 50)
  %147 = load i8*, i8** @PKT_TYPE_GSVALS, align 8
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ledpackets, align 8
  %149 = load i64, i64* @PANEL_NW, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  store i8* %147, i8** %152, align 8
  store i32 0, i32* %2, align 4
  br label %153

153:                                              ; preds = %169, %125
  %154 = load i32, i32* %2, align 4
  %155 = icmp slt i32 %154, 21
  br i1 %155, label %156, label %172

156:                                              ; preds = %153
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ledpackets, align 8
  %158 = load i64, i64* @PANEL_NW, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** @panelLEDmap, align 8
  %164 = load i32, i32* %2, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @pack12bit(i32 %162, i32 %167, i32 800)
  br label %169

169:                                              ; preds = %156
  %170 = load i32, i32* %2, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %2, align 4
  br label %153

172:                                              ; preds = %153
  br label %173

173:                                              ; preds = %189, %172
  %174 = load i32, i32* %2, align 4
  %175 = icmp slt i32 %174, 147
  br i1 %175, label %176, label %192

176:                                              ; preds = %173
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ledpackets, align 8
  %178 = load i64, i64* @PANEL_NW, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** @panelLEDmap, align 8
  %184 = load i32, i32* %2, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @pack12bit(i32 %182, i32 %187, i32 0)
  br label %189

189:                                              ; preds = %176
  %190 = load i32, i32* %2, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %2, align 4
  br label %173

192:                                              ; preds = %173
  %193 = load i32*, i32** @usarts, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 3
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ledpackets, align 8
  %196 = load i64, i64* @PANEL_NW, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @UART_SendBytes(i32* %194, i32 %199, i32 4)
  %201 = load i32*, i32** @usarts, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 2
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ledpackets, align 8
  %204 = load i64, i64* @PANEL_NW, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @UART_SendBytes(i32* %202, i32 %207, i32 4)
  %209 = load i32*, i32** @usarts, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 1
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ledpackets, align 8
  %212 = load i64, i64* @PANEL_NW, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @UART_SendBytes(i32* %210, i32 %215, i32 4)
  %217 = load i32*, i32** @usarts, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ledpackets, align 8
  %220 = load i64, i64* @PANEL_NW, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @UART_SendBytes(i32* %218, i32 %223, i32 4)
  %225 = load i32, i32* %4, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %4, align 4
  %227 = call i32 @Delay(i32 30)
  br label %70

228:                                              ; preds = %70
  %229 = load i8*, i8** @PKT_TYPE_SET_LOOKUP, align 8
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ledpackets, align 8
  %231 = load i64, i64* @PANEL_NW, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 2
  store i8* %229, i8** %234, align 8
  store i32 0, i32* %2, align 4
  br label %235

235:                                              ; preds = %310, %228
  %236 = load i32, i32* %2, align 4
  %237 = icmp slt i32 %236, 65
  br i1 %237, label %238, label %313

238:                                              ; preds = %235
  %239 = load i32, i32* %2, align 4
  %240 = sitofp i32 %239 to float
  %241 = fpext float %240 to double
  %242 = fdiv double %241, 6.500000e+01
  %243 = fptrunc double %242 to float
  %244 = call i32 @pow(float %243, double 2.200000e+00)
  %245 = mul nsw i32 4000, %244
  %246 = sitofp i32 %245 to float
  store float %246, float* %7, align 4
  %247 = load float, float* %7, align 4
  %248 = fptosi float %247 to i32
  %249 = and i32 %248, 4095
  store i32 %249, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %250

250:                                              ; preds = %267, %238
  %251 = load i32, i32* %6, align 4
  %252 = icmp slt i32 %251, 147
  br i1 %252, label %253, label %270

253:                                              ; preds = %250
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ledpackets, align 8
  %255 = load i64, i64* @PANEL_NW, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load i32*, i32** @panelLEDmap, align 8
  %261 = load i32, i32* %6, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* %8, align 4
  %266 = call i32 @pack12bit(i32 %259, i32 %264, i32 %265)
  br label %267

267:                                              ; preds = %253
  %268 = load i32, i32* %6, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %6, align 4
  br label %250

270:                                              ; preds = %250
  %271 = load i32, i32* %2, align 4
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ledpackets, align 8
  %273 = load i64, i64* @PANEL_NW, align 8
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 0
  store i32 %271, i32* %276, align 8
  %277 = load i32*, i32** @usarts, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 3
  %279 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ledpackets, align 8
  %280 = load i64, i64* @PANEL_NW, align 8
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @UART_SendBytes(i32* %278, i32 %283, i32 4)
  %285 = load i32*, i32** @usarts, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 2
  %287 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ledpackets, align 8
  %288 = load i64, i64* @PANEL_NW, align 8
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @UART_SendBytes(i32* %286, i32 %291, i32 4)
  %293 = load i32*, i32** @usarts, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 1
  %295 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ledpackets, align 8
  %296 = load i64, i64* @PANEL_NW, align 8
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = call i32 @UART_SendBytes(i32* %294, i32 %299, i32 4)
  %301 = load i32*, i32** @usarts, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 0
  %303 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ledpackets, align 8
  %304 = load i64, i64* @PANEL_NW, align 8
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @UART_SendBytes(i32* %302, i32 %307, i32 4)
  %309 = call i32 @Delay(i32 30)
  br label %310

310:                                              ; preds = %270
  %311 = load i32, i32* %2, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %2, align 4
  br label %235

313:                                              ; preds = %235
  %314 = load i8*, i8** @PKT_TYPE_GSVALS, align 8
  %315 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ledpackets, align 8
  %316 = load i64, i64* @PANEL_NW, align 8
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 2
  store i8* %314, i8** %319, align 8
  store i32 0, i32* %2, align 4
  br label %320

320:                                              ; preds = %336, %313
  %321 = load i32, i32* %2, align 4
  %322 = icmp slt i32 %321, 147
  br i1 %322, label %323, label %339

323:                                              ; preds = %320
  %324 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ledpackets, align 8
  %325 = load i64, i64* @PANEL_NW, align 8
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %324, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 1
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = load i32*, i32** @panelLEDmap, align 8
  %331 = load i32, i32* %2, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %330, i64 %332
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @pack12bit(i32 %329, i32 %334, i32 0)
  br label %336

336:                                              ; preds = %323
  %337 = load i32, i32* %2, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %2, align 4
  br label %320

339:                                              ; preds = %320
  %340 = load i32*, i32** @usarts, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 3
  %342 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ledpackets, align 8
  %343 = load i64, i64* @PANEL_NW, align 8
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = call i32 @UART_SendBytes(i32* %341, i32 %346, i32 4)
  %348 = load i32*, i32** @usarts, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 2
  %350 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ledpackets, align 8
  %351 = load i64, i64* @PANEL_NW, align 8
  %352 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %350, i64 %351
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = call i32 @UART_SendBytes(i32* %349, i32 %354, i32 4)
  %356 = load i32*, i32** @usarts, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 1
  %358 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ledpackets, align 8
  %359 = load i64, i64* @PANEL_NW, align 8
  %360 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %358, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = call i32 @UART_SendBytes(i32* %357, i32 %362, i32 4)
  %364 = load i32*, i32** @usarts, align 8
  %365 = getelementptr inbounds i32, i32* %364, i64 0
  %366 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ledpackets, align 8
  %367 = load i64, i64* @PANEL_NW, align 8
  %368 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %366, i64 %367
  %369 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = call i32 @UART_SendBytes(i32* %365, i32 %370, i32 4)
  %372 = load i8*, i8** @PKT_TYPE_GSVALS, align 8
  %373 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ledpackets, align 8
  %374 = load i64, i64* @PANEL_NW, align 8
  %375 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %373, i64 %374
  %376 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %376, i32 0, i32 2
  store i8* %372, i8** %377, align 8
  store i32 0, i32* %2, align 4
  br label %378

378:                                              ; preds = %448, %339
  %379 = load i32, i32* %2, align 4
  %380 = icmp slt i32 %379, 148
  br i1 %380, label %381, label %451

381:                                              ; preds = %378
  %382 = load i32, i32* %2, align 4
  %383 = icmp slt i32 %382, 147
  br i1 %383, label %384, label %397

384:                                              ; preds = %381
  %385 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ledpackets, align 8
  %386 = load i64, i64* @PANEL_NW, align 8
  %387 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %385, i64 %386
  %388 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %387, i32 0, i32 1
  %389 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 4
  %391 = load i32*, i32** @panelLEDmap, align 8
  %392 = load i32, i32* %2, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %391, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = call i32 @pack12bit(i32 %390, i32 %395, i32 800)
  br label %397

397:                                              ; preds = %384, %381
  %398 = load i32, i32* %2, align 4
  %399 = icmp sgt i32 %398, 0
  br i1 %399, label %400, label %414

400:                                              ; preds = %397
  %401 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ledpackets, align 8
  %402 = load i64, i64* @PANEL_NW, align 8
  %403 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %401, i64 %402
  %404 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %403, i32 0, i32 1
  %405 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = load i32*, i32** @panelLEDmap, align 8
  %408 = load i32, i32* %2, align 4
  %409 = sub nsw i32 %408, 1
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i32, i32* %407, i64 %410
  %412 = load i32, i32* %411, align 4
  %413 = call i32 @pack12bit(i32 %406, i32 %412, i32 0)
  br label %414

414:                                              ; preds = %400, %397
  %415 = load i32*, i32** @usarts, align 8
  %416 = getelementptr inbounds i32, i32* %415, i64 3
  %417 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ledpackets, align 8
  %418 = load i64, i64* @PANEL_NW, align 8
  %419 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %417, i64 %418
  %420 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  %422 = call i32 @UART_SendBytes(i32* %416, i32 %421, i32 4)
  %423 = load i32*, i32** @usarts, align 8
  %424 = getelementptr inbounds i32, i32* %423, i64 2
  %425 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ledpackets, align 8
  %426 = load i64, i64* @PANEL_NW, align 8
  %427 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %425, i64 %426
  %428 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = call i32 @UART_SendBytes(i32* %424, i32 %429, i32 4)
  %431 = load i32*, i32** @usarts, align 8
  %432 = getelementptr inbounds i32, i32* %431, i64 1
  %433 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ledpackets, align 8
  %434 = load i64, i64* @PANEL_NW, align 8
  %435 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %433, i64 %434
  %436 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 8
  %438 = call i32 @UART_SendBytes(i32* %432, i32 %437, i32 4)
  %439 = load i32*, i32** @usarts, align 8
  %440 = getelementptr inbounds i32, i32* %439, i64 0
  %441 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ledpackets, align 8
  %442 = load i64, i64* @PANEL_NW, align 8
  %443 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %441, i64 %442
  %444 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = call i32 @UART_SendBytes(i32* %440, i32 %445, i32 4)
  %447 = call i32 @Delay(i32 10)
  br label %448

448:                                              ; preds = %414
  %449 = load i32, i32* %2, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* %2, align 4
  br label %378

451:                                              ; preds = %378
  br label %452

452:                                              ; preds = %451, %0
  br label %453

453:                                              ; preds = %452, %855
  %454 = call i64 (...) @ETH_CheckFrameReceived()
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %456, label %458

456:                                              ; preds = %453
  %457 = call i32 (...) @LwIP_Pkt_Handle()
  br label %458

458:                                              ; preds = %456, %453
  %459 = load i32, i32* @global_row, align 4
  %460 = load i32, i32* @POWER_ROW, align 4
  %461 = icmp ne i32 %459, %460
  br i1 %461, label %462, label %475

462:                                              ; preds = %458
  %463 = load i64, i64* @LocalTime, align 8
  %464 = load i64, i64* @lastPacketTime, align 8
  %465 = sub nsw i64 %463, %464
  %466 = load i64, i64* @maxPacketDelay, align 8
  %467 = icmp sge i64 %465, %466
  br i1 %467, label %468, label %475

468:                                              ; preds = %462
  %469 = load i64, i64* @bootloaderMode, align 8
  %470 = load i64, i64* @BL_MODE_INACTIVE, align 8
  %471 = icmp eq i64 %469, %470
  br i1 %471, label %472, label %475

472:                                              ; preds = %468
  %473 = call i32 (...) @sendLEDpackets()
  %474 = call i32 @DEBUGPIN_TGL(i32 8)
  br label %475

475:                                              ; preds = %472, %468, %462, %458
  %476 = load i32, i32* @global_row, align 4
  %477 = load i32, i32* @POWER_ROW, align 4
  %478 = icmp eq i32 %476, %477
  br i1 %478, label %479, label %644

479:                                              ; preds = %475
  %480 = load i64, i64* @LocalTime, align 8
  %481 = load i64, i64* @lastStatusPacketTime, align 8
  %482 = sub nsw i64 %480, %481
  %483 = load i64, i64* @minStatusPacketDelay, align 8
  %484 = icmp sge i64 %482, %483
  br i1 %484, label %485, label %643

485:                                              ; preds = %479
  %486 = load i64, i64* @LocalTime, align 8
  store i64 %486, i64* @lastStatusPacketTime, align 8
  %487 = load i32, i32* @PBUF_TRANSPORT, align 4
  %488 = load i32, i32* @PBUF_RAM, align 4
  %489 = call %struct.pbuf* @pbuf_alloc(i32 %487, i32 14, i32 %488)
  store %struct.pbuf* %489, %struct.pbuf** %3, align 8
  store i32 0, i32* %2, align 4
  %490 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %491 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %490, i32 0, i32 0
  %492 = load i64, i64* %491, align 8
  %493 = inttoptr i64 %492 to i32*
  %494 = load i32, i32* %2, align 4
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %2, align 4
  %496 = sext i32 %494 to i64
  %497 = getelementptr inbounds i32, i32* %493, i64 %496
  store i32 34, i32* %497, align 4
  %498 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %499 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %498, i32 0, i32 0
  %500 = load i64, i64* %499, align 8
  %501 = inttoptr i64 %500 to i32*
  %502 = load i32, i32* %2, align 4
  %503 = add nsw i32 %502, 1
  store i32 %503, i32* %2, align 4
  %504 = sext i32 %502 to i64
  %505 = getelementptr inbounds i32, i32* %501, i64 %504
  store i32 0, i32* %505, align 4
  %506 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %507 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %506, i32 0, i32 0
  %508 = load i64, i64* %507, align 8
  %509 = inttoptr i64 %508 to i32*
  %510 = load i32, i32* %2, align 4
  %511 = add nsw i32 %510, 1
  store i32 %511, i32* %2, align 4
  %512 = sext i32 %510 to i64
  %513 = getelementptr inbounds i32, i32* %509, i64 %512
  store i32 0, i32* %513, align 4
  %514 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %515 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %514, i32 0, i32 0
  %516 = load i64, i64* %515, align 8
  %517 = inttoptr i64 %516 to i32*
  %518 = load i32, i32* %2, align 4
  %519 = add nsw i32 %518, 1
  store i32 %519, i32* %2, align 4
  %520 = sext i32 %518 to i64
  %521 = getelementptr inbounds i32, i32* %517, i64 %520
  store i32 0, i32* %521, align 4
  %522 = load i32, i32* @pins_powerctrl, align 4
  %523 = load i32, i32* @PWR_MON_0_0, align 4
  %524 = call i32 @PIN_State(i32 %522, i32 %523)
  %525 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %526 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %525, i32 0, i32 0
  %527 = load i64, i64* %526, align 8
  %528 = inttoptr i64 %527 to i32*
  %529 = load i32, i32* %2, align 4
  %530 = add nsw i32 %529, 1
  store i32 %530, i32* %2, align 4
  %531 = sext i32 %529 to i64
  %532 = getelementptr inbounds i32, i32* %528, i64 %531
  store i32 %524, i32* %532, align 4
  %533 = load i32, i32* @pins_powerctrl, align 4
  %534 = load i32, i32* @PWR_MON_0_1, align 4
  %535 = call i32 @PIN_State(i32 %533, i32 %534)
  %536 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %537 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %536, i32 0, i32 0
  %538 = load i64, i64* %537, align 8
  %539 = inttoptr i64 %538 to i32*
  %540 = load i32, i32* %2, align 4
  %541 = add nsw i32 %540, 1
  store i32 %541, i32* %2, align 4
  %542 = sext i32 %540 to i64
  %543 = getelementptr inbounds i32, i32* %539, i64 %542
  store i32 %535, i32* %543, align 4
  %544 = load i32, i32* @pins_powerctrl, align 4
  %545 = load i32, i32* @PWR_MON_0_2, align 4
  %546 = call i32 @PIN_State(i32 %544, i32 %545)
  %547 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %548 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %547, i32 0, i32 0
  %549 = load i64, i64* %548, align 8
  %550 = inttoptr i64 %549 to i32*
  %551 = load i32, i32* %2, align 4
  %552 = add nsw i32 %551, 1
  store i32 %552, i32* %2, align 4
  %553 = sext i32 %551 to i64
  %554 = getelementptr inbounds i32, i32* %550, i64 %553
  store i32 %546, i32* %554, align 4
  %555 = load i32, i32* @pins_powerctrl, align 4
  %556 = load i32, i32* @PWR_MON_1_0, align 4
  %557 = call i32 @PIN_State(i32 %555, i32 %556)
  %558 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %559 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %558, i32 0, i32 0
  %560 = load i64, i64* %559, align 8
  %561 = inttoptr i64 %560 to i32*
  %562 = load i32, i32* %2, align 4
  %563 = add nsw i32 %562, 1
  store i32 %563, i32* %2, align 4
  %564 = sext i32 %562 to i64
  %565 = getelementptr inbounds i32, i32* %561, i64 %564
  store i32 %557, i32* %565, align 4
  %566 = load i32, i32* @pins_powerctrl, align 4
  %567 = load i32, i32* @PWR_MON_1_1, align 4
  %568 = call i32 @PIN_State(i32 %566, i32 %567)
  %569 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %570 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %569, i32 0, i32 0
  %571 = load i64, i64* %570, align 8
  %572 = inttoptr i64 %571 to i32*
  %573 = load i32, i32* %2, align 4
  %574 = add nsw i32 %573, 1
  store i32 %574, i32* %2, align 4
  %575 = sext i32 %573 to i64
  %576 = getelementptr inbounds i32, i32* %572, i64 %575
  store i32 %568, i32* %576, align 4
  %577 = load i32, i32* @pins_powerctrl, align 4
  %578 = load i32, i32* @PWR_MON_1_2, align 4
  %579 = call i32 @PIN_State(i32 %577, i32 %578)
  %580 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %581 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %580, i32 0, i32 0
  %582 = load i64, i64* %581, align 8
  %583 = inttoptr i64 %582 to i32*
  %584 = load i32, i32* %2, align 4
  %585 = add nsw i32 %584, 1
  store i32 %585, i32* %2, align 4
  %586 = sext i32 %584 to i64
  %587 = getelementptr inbounds i32, i32* %583, i64 %586
  store i32 %579, i32* %587, align 4
  %588 = load i32, i32* @pins_powerctrl, align 4
  %589 = load i32, i32* @PWR_MON_AC_0, align 4
  %590 = call i32 @PIN_State(i32 %588, i32 %589)
  %591 = icmp ne i32 %590, 0
  %592 = xor i1 %591, true
  %593 = zext i1 %592 to i32
  %594 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %595 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %594, i32 0, i32 0
  %596 = load i64, i64* %595, align 8
  %597 = inttoptr i64 %596 to i32*
  %598 = load i32, i32* %2, align 4
  %599 = add nsw i32 %598, 1
  store i32 %599, i32* %2, align 4
  %600 = sext i32 %598 to i64
  %601 = getelementptr inbounds i32, i32* %597, i64 %600
  store i32 %593, i32* %601, align 4
  %602 = load i32, i32* @pins_powerctrl, align 4
  %603 = load i32, i32* @PWR_MON_AC_1, align 4
  %604 = call i32 @PIN_State(i32 %602, i32 %603)
  %605 = icmp ne i32 %604, 0
  %606 = xor i1 %605, true
  %607 = zext i1 %606 to i32
  %608 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %609 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %608, i32 0, i32 0
  %610 = load i64, i64* %609, align 8
  %611 = inttoptr i64 %610 to i32*
  %612 = load i32, i32* %2, align 4
  %613 = add nsw i32 %612, 1
  store i32 %613, i32* %2, align 4
  %614 = sext i32 %612 to i64
  %615 = getelementptr inbounds i32, i32* %611, i64 %614
  store i32 %607, i32* %615, align 4
  %616 = load i32, i32* @pins_powerctrl, align 4
  %617 = load i32, i32* @PWR_CTRL_AC_0, align 4
  %618 = call i32 @PIN_State(i32 %616, i32 %617)
  %619 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %620 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %619, i32 0, i32 0
  %621 = load i64, i64* %620, align 8
  %622 = inttoptr i64 %621 to i32*
  %623 = load i32, i32* %2, align 4
  %624 = add nsw i32 %623, 1
  store i32 %624, i32* %2, align 4
  %625 = sext i32 %623 to i64
  %626 = getelementptr inbounds i32, i32* %622, i64 %625
  store i32 %618, i32* %626, align 4
  %627 = load i32, i32* @pins_powerctrl, align 4
  %628 = load i32, i32* @PWR_CTRL_AC_1, align 4
  %629 = call i32 @PIN_State(i32 %627, i32 %628)
  %630 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %631 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %630, i32 0, i32 0
  %632 = load i64, i64* %631, align 8
  %633 = inttoptr i64 %632 to i32*
  %634 = load i32, i32* %2, align 4
  %635 = add nsw i32 %634, 1
  store i32 %635, i32* %2, align 4
  %636 = sext i32 %634 to i64
  %637 = getelementptr inbounds i32, i32* %633, i64 %636
  store i32 %629, i32* %637, align 4
  %638 = load i32, i32* @global_pcb, align 4
  %639 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %640 = call i32 @udp_sendto(i32 %638, %struct.pbuf* %639, i32* @udp_dest, i32 27482)
  %641 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %642 = call i32 @pbuf_free(%struct.pbuf* %641)
  br label %643

643:                                              ; preds = %485, %479
  br label %765

644:                                              ; preds = %475
  %645 = load i64, i64* @LocalTime, align 8
  %646 = load i64, i64* @lastButtonPacketTime, align 8
  %647 = sub nsw i64 %645, %646
  %648 = load i64, i64* @minButtonPacketDelay, align 8
  %649 = icmp sge i64 %647, %648
  br i1 %649, label %650, label %670

650:                                              ; preds = %644
  %651 = load i64, i64* @bootloaderMode, align 8
  %652 = load i64, i64* @BL_MODE_INACTIVE, align 8
  %653 = icmp eq i64 %651, %652
  br i1 %653, label %654, label %670

654:                                              ; preds = %650
  %655 = load i64, i64* @LocalTime, align 8
  store i64 %655, i64* @lastButtonPacketTime, align 8
  %656 = call i32 @DEBUGPIN_TGL(i32 7)
  %657 = load i32, i32* @PBUF_TRANSPORT, align 4
  %658 = load i32, i32* @PBUF_RAM, align 4
  %659 = call %struct.pbuf* @pbuf_alloc(i32 %657, i32 29, i32 %658)
  store %struct.pbuf* %659, %struct.pbuf** %3, align 8
  %660 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %661 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %660, i32 0, i32 0
  %662 = load i64, i64* %661, align 8
  %663 = load i32, i32* @buttonpacket, align 4
  %664 = call i32 @memcpy(i64 %662, i32 %663, i32 29)
  %665 = load i32, i32* @global_pcb, align 4
  %666 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %667 = call i32 @udp_sendto(i32 %665, %struct.pbuf* %666, i32* @udp_dest, i32 27482)
  %668 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %669 = call i32 @pbuf_free(%struct.pbuf* %668)
  br label %670

670:                                              ; preds = %654, %650, %644
  %671 = load i64, i64* @LocalTime, align 8
  %672 = load i64, i64* @lastStatusPacketTime, align 8
  %673 = sub nsw i64 %671, %672
  %674 = load i64, i64* @minStatusPacketDelay, align 8
  %675 = icmp sge i64 %673, %674
  br i1 %675, label %676, label %764

676:                                              ; preds = %670
  %677 = load i64, i64* @bootloaderMode, align 8
  %678 = load i64, i64* @BL_MODE_INACTIVE, align 8
  %679 = icmp eq i64 %677, %678
  br i1 %679, label %680, label %764

680:                                              ; preds = %676
  %681 = load i64, i64* @LocalTime, align 8
  store i64 %681, i64* @lastStatusPacketTime, align 8
  %682 = load i32, i32* @PBUF_TRANSPORT, align 4
  %683 = load i32, i32* @PBUF_RAM, align 4
  %684 = call %struct.pbuf* @pbuf_alloc(i32 %682, i32 248, i32 %683)
  store %struct.pbuf* %684, %struct.pbuf** %3, align 8
  %685 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %686 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %685, i32 0, i32 0
  %687 = load i64, i64* %686, align 8
  %688 = inttoptr i64 %687 to i32*
  %689 = getelementptr inbounds i32, i32* %688, i64 0
  store i32 33, i32* %689, align 4
  %690 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %691 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %690, i32 0, i32 0
  %692 = load i64, i64* %691, align 8
  %693 = add nsw i64 %692, 4
  %694 = load i32, i32* @temperatures, align 4
  %695 = call i32 @memcpy(i64 %693, i32 %694, i32 196)
  %696 = load i32*, i32** @fan_tach, align 8
  %697 = getelementptr inbounds i32, i32* %696, i64 0
  %698 = load i32, i32* %697, align 4
  %699 = call i32 @calcMedian(i32 %698)
  %700 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %701 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %700, i32 0, i32 0
  %702 = load i64, i64* %701, align 8
  %703 = inttoptr i64 %702 to i32*
  %704 = getelementptr inbounds i32, i32* %703, i64 200
  store i32 %699, i32* %704, align 4
  %705 = load i32*, i32** @fan_tach, align 8
  %706 = getelementptr inbounds i32, i32* %705, i64 1
  %707 = load i32, i32* %706, align 4
  %708 = call i32 @calcMedian(i32 %707)
  %709 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %710 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %709, i32 0, i32 0
  %711 = load i64, i64* %710, align 8
  %712 = inttoptr i64 %711 to i32*
  %713 = getelementptr inbounds i32, i32* %712, i64 201
  store i32 %708, i32* %713, align 4
  %714 = load i32*, i32** @fan_tach, align 8
  %715 = getelementptr inbounds i32, i32* %714, i64 2
  %716 = load i32, i32* %715, align 4
  %717 = call i32 @calcMedian(i32 %716)
  %718 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %719 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %718, i32 0, i32 0
  %720 = load i64, i64* %719, align 8
  %721 = inttoptr i64 %720 to i32*
  %722 = getelementptr inbounds i32, i32* %721, i64 202
  store i32 %717, i32* %722, align 4
  %723 = load i32*, i32** @fan_tach, align 8
  %724 = getelementptr inbounds i32, i32* %723, i64 3
  %725 = load i32, i32* %724, align 4
  %726 = call i32 @calcMedian(i32 %725)
  %727 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %728 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %727, i32 0, i32 0
  %729 = load i64, i64* %728, align 8
  %730 = inttoptr i64 %729 to i32*
  %731 = getelementptr inbounds i32, i32* %730, i64 203
  store i32 %726, i32* %731, align 4
  %732 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %733 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %732, i32 0, i32 0
  %734 = load i64, i64* %733, align 8
  %735 = add nsw i64 %734, 4
  %736 = add nsw i64 %735, 196
  %737 = add nsw i64 %736, 4
  %738 = load i32, i32* @serialNum, align 4
  %739 = call i32 @memcpy(i64 %737, i32 %738, i32 24)
  %740 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %741 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %740, i32 0, i32 0
  %742 = load i64, i64* %741, align 8
  %743 = add nsw i64 %742, 4
  %744 = add nsw i64 %743, 196
  %745 = add nsw i64 %744, 4
  %746 = add nsw i64 %745, 24
  %747 = load i32, i32* @uptimes, align 4
  %748 = call i32 @memcpy(i64 %746, i32 %747, i32 16)
  %749 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %750 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %749, i32 0, i32 0
  %751 = load i64, i64* %750, align 8
  %752 = add nsw i64 %751, 4
  %753 = add nsw i64 %752, 196
  %754 = add nsw i64 %753, 4
  %755 = add nsw i64 %754, 24
  %756 = add nsw i64 %755, 16
  %757 = load i32, i32* @panel_avg_temp, align 4
  %758 = call i32 @memcpy(i64 %756, i32 %757, i32 4)
  %759 = load i32, i32* @global_pcb, align 4
  %760 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %761 = call i32 @udp_sendto(i32 %759, %struct.pbuf* %760, i32* @udp_dest, i32 27482)
  %762 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %763 = call i32 @pbuf_free(%struct.pbuf* %762)
  br label %764

764:                                              ; preds = %680, %676, %670
  br label %765

765:                                              ; preds = %764, %643
  %766 = load i64, i64* @LocalTime, align 8
  %767 = call i32 @LwIP_Periodic_Handle(i64 %766)
  %768 = load i64, i64* @LocalTime, align 8
  %769 = load i64, i64* @lastUDPReceivePacketTime, align 8
  %770 = sub nsw i64 %768, %769
  %771 = icmp sgt i64 %770, 5000
  br i1 %771, label %772, label %855

772:                                              ; preds = %765
  %773 = load i8*, i8** @PKT_TYPE_GSVALS, align 8
  %774 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ledpackets, align 8
  %775 = load i64, i64* @PANEL_NW, align 8
  %776 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %774, i64 %775
  %777 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %776, i32 0, i32 1
  %778 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %777, i32 0, i32 2
  store i8* %773, i8** %778, align 8
  store i32 0, i32* %2, align 4
  br label %779

779:                                              ; preds = %795, %772
  %780 = load i32, i32* %2, align 4
  %781 = icmp slt i32 %780, 147
  br i1 %781, label %782, label %798

782:                                              ; preds = %779
  %783 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ledpackets, align 8
  %784 = load i64, i64* @PANEL_NW, align 8
  %785 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %783, i64 %784
  %786 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %785, i32 0, i32 1
  %787 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %786, i32 0, i32 1
  %788 = load i32, i32* %787, align 4
  %789 = load i32*, i32** @panelLEDmap, align 8
  %790 = load i32, i32* %2, align 4
  %791 = sext i32 %790 to i64
  %792 = getelementptr inbounds i32, i32* %789, i64 %791
  %793 = load i32, i32* %792, align 4
  %794 = call i32 @pack12bit(i32 %788, i32 %793, i32 0)
  br label %795

795:                                              ; preds = %782
  %796 = load i32, i32* %2, align 4
  %797 = add nsw i32 %796, 1
  store i32 %797, i32* %2, align 4
  br label %779

798:                                              ; preds = %779
  %799 = load i32, i32* @global_row, align 4
  %800 = load i32, i32* @POWER_ROW, align 4
  %801 = icmp ne i32 %799, %800
  br i1 %801, label %802, label %854

802:                                              ; preds = %798
  %803 = load i64, i64* @LocalTime, align 8
  %804 = load i64, i64* @lastPacketTime, align 8
  %805 = sub nsw i64 %803, %804
  %806 = load i64, i64* @minPacketDelay, align 8
  %807 = icmp sge i64 %805, %806
  br i1 %807, label %808, label %854

808:                                              ; preds = %802
  %809 = load i32, i32* @USART_NW, align 4
  %810 = load i64, i64* @PANEL_NW, align 8
  %811 = call i32 @handle_feedback(i32 %809, i64 %810)
  %812 = load i32, i32* @USART_SW, align 4
  %813 = load i64, i64* @PANEL_SW, align 8
  %814 = call i32 @handle_feedback(i32 %812, i64 %813)
  %815 = load i32, i32* @USART_SE, align 4
  %816 = load i64, i64* @PANEL_SE, align 8
  %817 = call i32 @handle_feedback(i32 %815, i64 %816)
  %818 = load i32, i32* @USART_NE, align 4
  %819 = load i64, i64* @PANEL_NE, align 8
  %820 = call i32 @handle_feedback(i32 %818, i64 %819)
  %821 = load i32*, i32** @usarts, align 8
  %822 = getelementptr inbounds i32, i32* %821, i64 3
  %823 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ledpackets, align 8
  %824 = load i64, i64* @PANEL_NW, align 8
  %825 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %823, i64 %824
  %826 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %825, i32 0, i32 0
  %827 = load i32, i32* %826, align 8
  %828 = call i32 @UART_SendBytes(i32* %822, i32 %827, i32 4)
  %829 = load i32*, i32** @usarts, align 8
  %830 = getelementptr inbounds i32, i32* %829, i64 2
  %831 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ledpackets, align 8
  %832 = load i64, i64* @PANEL_NW, align 8
  %833 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %831, i64 %832
  %834 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %833, i32 0, i32 0
  %835 = load i32, i32* %834, align 8
  %836 = call i32 @UART_SendBytes(i32* %830, i32 %835, i32 4)
  %837 = load i32*, i32** @usarts, align 8
  %838 = getelementptr inbounds i32, i32* %837, i64 1
  %839 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ledpackets, align 8
  %840 = load i64, i64* @PANEL_NW, align 8
  %841 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %839, i64 %840
  %842 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %841, i32 0, i32 0
  %843 = load i32, i32* %842, align 8
  %844 = call i32 @UART_SendBytes(i32* %838, i32 %843, i32 4)
  %845 = load i32*, i32** @usarts, align 8
  %846 = getelementptr inbounds i32, i32* %845, i64 0
  %847 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ledpackets, align 8
  %848 = load i64, i64* @PANEL_NW, align 8
  %849 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %847, i64 %848
  %850 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %849, i32 0, i32 0
  %851 = load i32, i32* %850, align 8
  %852 = call i32 @UART_SendBytes(i32* %846, i32 %851, i32 4)
  %853 = load i64, i64* @LocalTime, align 8
  store i64 %853, i64* @lastPacketTime, align 8
  br label %854

854:                                              ; preds = %808, %802, %798
  br label %855

855:                                              ; preds = %854, %765
  br label %453
}

declare dso_local i32 @NVIC_PriorityGroupConfig(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ETH_BSP_Config(...) #1

declare dso_local i32 @BUTTONS_Config(...) #1

declare dso_local i32 @PIN_Config(...) #1

declare dso_local i32 @CONFIG_pins(i32, i32) #1

declare dso_local i32 @PIN_Num(i32, i32, i32) #1

declare dso_local i32 @PIN_Low(i32, i32) #1

declare dso_local i32 @Delay(i32) #1

declare dso_local i32 @BUTTONS_Read_All(...) #1

declare dso_local i32 @IP4_ADDR(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @LwIP_Init(...) #1

declare dso_local i32 @udp_recv_init(...) #1

declare dso_local i32 @UART_Config(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @pack12bit(i32, i32, i32) #1

declare dso_local i32 @UART_SendBytes(i32*, i32, i32) #1

declare dso_local i32 @pow(float, double) #1

declare dso_local i64 @ETH_CheckFrameReceived(...) #1

declare dso_local i32 @LwIP_Pkt_Handle(...) #1

declare dso_local i32 @sendLEDpackets(...) #1

declare dso_local i32 @DEBUGPIN_TGL(i32) #1

declare dso_local %struct.pbuf* @pbuf_alloc(i32, i32, i32) #1

declare dso_local i32 @PIN_State(i32, i32) #1

declare dso_local i32 @udp_sendto(i32, %struct.pbuf*, i32*, i32) #1

declare dso_local i32 @pbuf_free(%struct.pbuf*) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @calcMedian(i32) #1

declare dso_local i32 @LwIP_Periodic_Handle(i64) #1

declare dso_local i32 @handle_feedback(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
