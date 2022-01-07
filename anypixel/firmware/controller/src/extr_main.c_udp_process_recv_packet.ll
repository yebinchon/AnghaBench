; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_main.c_udp_process_recv_packet.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_main.c_udp_process_recv_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.udp_pcb = type { i32 }
%struct.pbuf = type { i32* }
%struct.ip_addr = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }

@udp_process_recv_packet.pktCount = internal global i32 0, align 4
@LocalTime = common dso_local global i64 0, align 8
@lastUDPReceivePacketTime = common dso_local global i64 0, align 8
@fan_setpoint = common dso_local global i32* null, align 8
@fan_mode = common dso_local global i32* null, align 8
@fan_slope = common dso_local global i32* null, align 8
@fan_intercept = common dso_local global i32* null, align 8
@fan_min = common dso_local global i32* null, align 8
@fan_duty = common dso_local global i32* null, align 8
@pins_powerctrl = common dso_local global i32 0, align 4
@PWR_CTRL_AC_0 = common dso_local global i32 0, align 4
@PWR_CTRL_AC_1 = common dso_local global i32 0, align 4
@usarts = common dso_local global i32* null, align 8
@bootloaderMode = common dso_local global i32 0, align 4
@BL_MODE_WAITING = common dso_local global i32 0, align 4
@BL_MODE_ACTIVE = common dso_local global i32 0, align 4
@ledpackets = common dso_local global %struct.TYPE_8__* null, align 8
@global_row = common dso_local global i64 0, align 8
@POWER_ROW = common dso_local global i64 0, align 8
@lastPacketTime = common dso_local global i64 0, align 8
@minPacketDelay = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udp_process_recv_packet(i8* %0, %struct.udp_pcb* %1, %struct.pbuf* %2, %struct.ip_addr* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.udp_pcb*, align 8
  %8 = alloca %struct.pbuf*, align 8
  %9 = alloca %struct.ip_addr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_7__, align 8
  store i8* %0, i8** %6, align 8
  store %struct.udp_pcb* %1, %struct.udp_pcb** %7, align 8
  store %struct.pbuf* %2, %struct.pbuf** %8, align 8
  store %struct.ip_addr* %3, %struct.ip_addr** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = call i32 @DEBUGPIN_SET(i32 0)
  %18 = load i32, i32* @udp_process_recv_packet.pktCount, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @udp_process_recv_packet.pktCount, align 4
  %20 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %21 = icmp ne %struct.pbuf* %20, null
  br i1 %21, label %22, label %458

22:                                               ; preds = %5
  %23 = load i64, i64* @LocalTime, align 8
  store i64 %23, i64* @lastUDPReceivePacketTime, align 8
  %24 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %25 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  switch i32 %29, label %420 [
    i32 139, label %30
    i32 131, label %50
    i32 136, label %68
    i32 138, label %86
    i32 128, label %106
    i32 134, label %129
    i32 135, label %149
    i32 132, label %167
    i32 133, label %172
    i32 129, label %294
    i32 130, label %327
    i32 137, label %413
  ]

30:                                               ; preds = %22
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %46, %30
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 588
  br i1 %33, label %34, label %49

34:                                               ; preds = %31
  %35 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %36 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 16, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @globalSet8bit(i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %34
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %31

49:                                               ; preds = %31
  br label %421

50:                                               ; preds = %22
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %64, %50
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 588
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %56 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 16
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @unpack12bit(i32* %58, i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @globalSet(i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %54
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %51

67:                                               ; preds = %51
  br label %421

68:                                               ; preds = %22
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %82, %68
  %70 = load i32, i32* %11, align 4
  %71 = icmp slt i32 %70, 588
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %74 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 16
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @unpack12bit(i32* %76, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @globalSet(i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %72
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %69

85:                                               ; preds = %69
  br label %421

86:                                               ; preds = %22
  store i32 0, i32* %11, align 4
  br label %87

87:                                               ; preds = %102, %86
  %88 = load i32, i32* %11, align 4
  %89 = icmp slt i32 %88, 588
  br i1 %89, label %90, label %105

90:                                               ; preds = %87
  %91 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %92 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 16, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @globalSet8bit(i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %90
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %11, align 4
  br label %87

105:                                              ; preds = %87
  br label %421

106:                                              ; preds = %22
  store i32 0, i32* %11, align 4
  br label %107

107:                                              ; preds = %120, %106
  %108 = load i32, i32* %11, align 4
  %109 = icmp slt i32 %108, 588
  br i1 %109, label %110, label %123

110:                                              ; preds = %107
  %111 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %112 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 16
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @unpack12bit(i32* %114, i32 %115)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @globalSet(i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %110
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  br label %107

123:                                              ; preds = %107
  %124 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %125 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 6
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %14, align 4
  br label %421

129:                                              ; preds = %22
  store i32 0, i32* %11, align 4
  br label %130

130:                                              ; preds = %145, %129
  %131 = load i32, i32* %11, align 4
  %132 = icmp slt i32 %131, 588
  br i1 %132, label %133, label %148

133:                                              ; preds = %130
  %134 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %135 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 16, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @globalSet(i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %133
  %146 = load i32, i32* %11, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %11, align 4
  br label %130

148:                                              ; preds = %130
  store i32 136, i32* %13, align 4
  br label %421

149:                                              ; preds = %22
  store i32 0, i32* %11, align 4
  br label %150

150:                                              ; preds = %163, %149
  %151 = load i32, i32* %11, align 4
  %152 = icmp slt i32 %151, 588
  br i1 %152, label %153, label %166

153:                                              ; preds = %150
  %154 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %155 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 16
  %158 = load i32, i32* %11, align 4
  %159 = call i32 @unpack6bit(i32* %157, i32 %158)
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* %12, align 4
  %162 = call i32 @globalSet(i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %153
  %164 = load i32, i32* %11, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %11, align 4
  br label %150

166:                                              ; preds = %150
  store i32 136, i32* %13, align 4
  br label %421

167:                                              ; preds = %22
  %168 = call i32 (...) @doLookupTableReadback()
  %169 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %170 = call i32 @pbuf_free(%struct.pbuf* %169)
  %171 = call i32 @DEBUGPIN_CLR(i32 0)
  br label %460

172:                                              ; preds = %22
  %173 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %174 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 16
  store i32* %176, i32** %15, align 8
  store i32 0, i32* %11, align 4
  br label %177

177:                                              ; preds = %290, %172
  %178 = load i32, i32* %11, align 4
  %179 = icmp slt i32 %178, 4
  br i1 %179, label %180, label %293

180:                                              ; preds = %177
  %181 = load i32*, i32** %15, align 8
  %182 = load i32, i32* %11, align 4
  %183 = mul nsw i32 %182, 2
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %181, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = shl i32 %186, 8
  %188 = load i32*, i32** %15, align 8
  %189 = load i32, i32* %11, align 4
  %190 = mul nsw i32 %189, 2
  %191 = add nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %188, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %187, %194
  %196 = load i32*, i32** @fan_setpoint, align 8
  %197 = load i32, i32* %11, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  store i32 %195, i32* %199, align 4
  %200 = load i32*, i32** %15, align 8
  %201 = load i32, i32* %11, align 4
  %202 = add nsw i32 8, %201
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %200, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load i32*, i32** @fan_mode, align 8
  %207 = load i32, i32* %11, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  store i32 %205, i32* %209, align 4
  %210 = load i32*, i32** %15, align 8
  %211 = load i32, i32* %11, align 4
  %212 = mul nsw i32 %211, 2
  %213 = add nsw i32 12, %212
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %210, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = shl i32 %216, 8
  %218 = load i32*, i32** %15, align 8
  %219 = load i32, i32* %11, align 4
  %220 = mul nsw i32 %219, 2
  %221 = add nsw i32 12, %220
  %222 = add nsw i32 %221, 1
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %218, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = or i32 %217, %225
  %227 = load i32*, i32** @fan_slope, align 8
  %228 = load i32, i32* %11, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  store i32 %226, i32* %230, align 4
  %231 = load i32*, i32** %15, align 8
  %232 = load i32, i32* %11, align 4
  %233 = mul nsw i32 %232, 2
  %234 = add nsw i32 20, %233
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %231, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = shl i32 %237, 8
  %239 = load i32*, i32** %15, align 8
  %240 = load i32, i32* %11, align 4
  %241 = mul nsw i32 %240, 2
  %242 = add nsw i32 20, %241
  %243 = add nsw i32 %242, 1
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %239, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = or i32 %238, %246
  %248 = load i32*, i32** @fan_intercept, align 8
  %249 = load i32, i32* %11, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  store i32 %247, i32* %251, align 4
  %252 = load i32*, i32** %15, align 8
  %253 = load i32, i32* %11, align 4
  %254 = mul nsw i32 %253, 2
  %255 = add nsw i32 28, %254
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %252, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = shl i32 %258, 8
  %260 = load i32*, i32** %15, align 8
  %261 = load i32, i32* %11, align 4
  %262 = mul nsw i32 %261, 2
  %263 = add nsw i32 28, %262
  %264 = add nsw i32 %263, 1
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %260, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = or i32 %259, %267
  %269 = load i32*, i32** @fan_min, align 8
  %270 = load i32, i32* %11, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  store i32 %268, i32* %272, align 4
  %273 = load i32*, i32** @fan_mode, align 8
  %274 = load i32, i32* %11, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %289

279:                                              ; preds = %180
  %280 = load i32*, i32** @fan_setpoint, align 8
  %281 = load i32, i32* %11, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = load i32*, i32** @fan_duty, align 8
  %286 = load i32, i32* %11, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  store i32 %284, i32* %288, align 4
  br label %289

289:                                              ; preds = %279, %180
  br label %290

290:                                              ; preds = %289
  %291 = load i32, i32* %11, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %11, align 4
  br label %177

293:                                              ; preds = %177
  br label %421

294:                                              ; preds = %22
  %295 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %296 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %295, i32 0, i32 0
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 16
  %299 = getelementptr inbounds i32, i32* %298, i64 0
  %300 = load i32, i32* %299, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %306

302:                                              ; preds = %294
  %303 = load i32, i32* @pins_powerctrl, align 4
  %304 = load i32, i32* @PWR_CTRL_AC_0, align 4
  %305 = call i32 @PIN_High(i32 %303, i32 %304)
  br label %310

306:                                              ; preds = %294
  %307 = load i32, i32* @pins_powerctrl, align 4
  %308 = load i32, i32* @PWR_CTRL_AC_0, align 4
  %309 = call i32 @PIN_Low(i32 %307, i32 %308)
  br label %310

310:                                              ; preds = %306, %302
  %311 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %312 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %311, i32 0, i32 0
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 16
  %315 = getelementptr inbounds i32, i32* %314, i64 1
  %316 = load i32, i32* %315, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %322

318:                                              ; preds = %310
  %319 = load i32, i32* @pins_powerctrl, align 4
  %320 = load i32, i32* @PWR_CTRL_AC_1, align 4
  %321 = call i32 @PIN_High(i32 %319, i32 %320)
  br label %326

322:                                              ; preds = %310
  %323 = load i32, i32* @pins_powerctrl, align 4
  %324 = load i32, i32* @PWR_CTRL_AC_1, align 4
  %325 = call i32 @PIN_Low(i32 %323, i32 %324)
  br label %326

326:                                              ; preds = %322, %318
  br label %421

327:                                              ; preds = %22
  %328 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %329 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %328, i32 0, i32 0
  %330 = load i32*, i32** %329, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 16
  %332 = getelementptr inbounds i32, i32* %331, i64 0
  %333 = load i32, i32* %332, align 4
  %334 = icmp eq i32 %333, -2123739470
  br i1 %334, label %335, label %412

335:                                              ; preds = %327
  %336 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %337 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %336, i32 0, i32 0
  %338 = load i32*, i32** %337, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 16
  %340 = getelementptr inbounds i32, i32* %339, i64 4
  %341 = load i32, i32* %340, align 4
  %342 = and i32 %341, 15
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %399

344:                                              ; preds = %335
  %345 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %345, i32 0, i32 0
  store i32 130, i32* %346, align 8
  %347 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %348 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %347, i32 0, i32 1
  %349 = load i64, i64* %348, align 8
  %350 = inttoptr i64 %349 to i32*
  %351 = getelementptr inbounds i32, i32* %350, i64 0
  store i32 -2123739470, i32* %351, align 4
  %352 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %352, i32 0, i32 1
  %354 = load i64, i64* %353, align 8
  %355 = inttoptr i64 %354 to i32*
  %356 = getelementptr inbounds i32, i32* %355, i64 12
  store i32 -2123739470, i32* %356, align 4
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %358 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %357, i32 0, i32 1
  %359 = load i64, i64* %358, align 8
  %360 = inttoptr i64 %359 to i32*
  %361 = getelementptr inbounds i32, i32* %360, i64 24
  store i32 -2123739470, i32* %361, align 4
  %362 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %363 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %362, i32 0, i32 1
  %364 = load i64, i64* %363, align 8
  %365 = inttoptr i64 %364 to i32*
  %366 = getelementptr inbounds i32, i32* %365, i64 36
  store i32 -2123739470, i32* %366, align 4
  %367 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %368 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %367, i32 0, i32 1
  %369 = load i64, i64* %368, align 8
  %370 = inttoptr i64 %369 to i32*
  %371 = getelementptr inbounds i32, i32* %370, i64 48
  store i32 -2123739470, i32* %371, align 4
  store i32 0, i32* %11, align 4
  br label %372

372:                                              ; preds = %395, %344
  %373 = load i32, i32* %11, align 4
  %374 = icmp slt i32 %373, 4
  br i1 %374, label %375, label %398

375:                                              ; preds = %372
  %376 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %377 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %376, i32 0, i32 0
  %378 = load i32*, i32** %377, align 8
  %379 = getelementptr inbounds i32, i32* %378, i64 16
  %380 = getelementptr inbounds i32, i32* %379, i64 4
  %381 = load i32, i32* %380, align 4
  %382 = load i32, i32* %11, align 4
  %383 = shl i32 1, %382
  %384 = and i32 %381, %383
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %394

386:                                              ; preds = %375
  %387 = load i32*, i32** @usarts, align 8
  %388 = load i32, i32* %11, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %387, i64 %389
  %391 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = call i32 @UART_SendBytes(i32* %390, i32 %392, i32 24)
  br label %394

394:                                              ; preds = %386, %375
  br label %395

395:                                              ; preds = %394
  %396 = load i32, i32* %11, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %11, align 4
  br label %372

398:                                              ; preds = %372
  br label %399

399:                                              ; preds = %398, %335
  %400 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %401 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %400, i32 0, i32 0
  %402 = load i32*, i32** %401, align 8
  %403 = getelementptr inbounds i32, i32* %402, i64 16
  %404 = getelementptr inbounds i32, i32* %403, i64 4
  %405 = load i32, i32* %404, align 4
  %406 = and i32 %405, 16
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %411

408:                                              ; preds = %399
  %409 = call i32 @Delay(i32 100)
  %410 = call i32 (...) @NVIC_SystemReset()
  br label %411

411:                                              ; preds = %408, %399
  br label %412

412:                                              ; preds = %411, %327
  br label %421

413:                                              ; preds = %22
  %414 = load i32, i32* @bootloaderMode, align 4
  %415 = load i32, i32* @BL_MODE_WAITING, align 4
  %416 = icmp eq i32 %414, %415
  br i1 %416, label %417, label %419

417:                                              ; preds = %413
  %418 = load i32, i32* @BL_MODE_ACTIVE, align 4
  store i32 %418, i32* @bootloaderMode, align 4
  br label %419

419:                                              ; preds = %417, %413
  br label %420

420:                                              ; preds = %22, %419
  store i32 0, i32* %13, align 4
  br label %421

421:                                              ; preds = %420, %412, %326, %293, %166, %148, %123, %105, %85, %67, %49
  store i32 0, i32* %11, align 4
  br label %422

422:                                              ; preds = %440, %421
  %423 = load i32, i32* %11, align 4
  %424 = icmp slt i32 %423, 4
  br i1 %424, label %425, label %443

425:                                              ; preds = %422
  %426 = load i32, i32* %13, align 4
  %427 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ledpackets, align 8
  %428 = load i32, i32* %11, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %427, i64 %429
  %431 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %431, i32 0, i32 0
  store i32 %426, i32* %432, align 4
  %433 = load i32, i32* %14, align 4
  %434 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ledpackets, align 8
  %435 = load i32, i32* %11, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %434, i64 %436
  %438 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %438, i32 0, i32 1
  store i32 %433, i32* %439, align 4
  br label %440

440:                                              ; preds = %425
  %441 = load i32, i32* %11, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %11, align 4
  br label %422

443:                                              ; preds = %422
  %444 = load i64, i64* @global_row, align 8
  %445 = load i64, i64* @POWER_ROW, align 8
  %446 = icmp ne i64 %444, %445
  br i1 %446, label %447, label %455

447:                                              ; preds = %443
  %448 = load i64, i64* @LocalTime, align 8
  %449 = load i64, i64* @lastPacketTime, align 8
  %450 = sub nsw i64 %448, %449
  %451 = load i64, i64* @minPacketDelay, align 8
  %452 = icmp sge i64 %450, %451
  br i1 %452, label %453, label %455

453:                                              ; preds = %447
  %454 = call i32 (...) @sendLEDpackets()
  br label %455

455:                                              ; preds = %453, %447, %443
  %456 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %457 = call i32 @pbuf_free(%struct.pbuf* %456)
  br label %458

458:                                              ; preds = %455, %5
  %459 = call i32 @DEBUGPIN_CLR(i32 0)
  br label %460

460:                                              ; preds = %458, %167
  ret void
}

declare dso_local i32 @DEBUGPIN_SET(i32) #1

declare dso_local i32 @globalSet8bit(i32, i32) #1

declare dso_local i32 @unpack12bit(i32*, i32) #1

declare dso_local i32 @globalSet(i32, i32) #1

declare dso_local i32 @unpack6bit(i32*, i32) #1

declare dso_local i32 @doLookupTableReadback(...) #1

declare dso_local i32 @pbuf_free(%struct.pbuf*) #1

declare dso_local i32 @DEBUGPIN_CLR(i32) #1

declare dso_local i32 @PIN_High(i32, i32) #1

declare dso_local i32 @PIN_Low(i32, i32) #1

declare dso_local i32 @UART_SendBytes(i32*, i32, i32) #1

declare dso_local i32 @Delay(i32) #1

declare dso_local i32 @NVIC_SystemReset(...) #1

declare dso_local i32 @sendLEDpackets(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
