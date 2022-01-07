; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Logging.c_CalcPacketLoggingLevelEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Logging.c_CalcPacketLoggingLevelEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32, i32*, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@PACKET_LOG_NONE = common dso_local global i32 0, align 4
@PACKET_LOG_ETHERNET = common dso_local global i64 0, align 8
@PACKET_LOG_ARP = common dso_local global i64 0, align 8
@PACKET_LOG_IP = common dso_local global i64 0, align 8
@PACKET_LOG_ICMP = common dso_local global i64 0, align 8
@PACKET_LOG_TCP = common dso_local global i64 0, align 8
@TCP_SYN = common dso_local global i32 0, align 4
@TCP_RST = common dso_local global i32 0, align 4
@TCP_FIN = common dso_local global i32 0, align 4
@PACKET_LOG_TCP_CONN = common dso_local global i64 0, align 8
@PACKET_LOG_UDP = common dso_local global i64 0, align 8
@PACKET_LOG_DHCP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CalcPacketLoggingLevelEx(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = icmp eq %struct.TYPE_10__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = icmp eq %struct.TYPE_9__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @PACKET_LOG_NONE, align 4
  store i32 %13, i32* %3, align 4
  br label %280

14:                                               ; preds = %9
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @PACKET_LOG_ETHERNET, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @MAX(i32 %15, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %264 [
    i32 138, label %26
    i32 137, label %35
    i32 136, label %154
  ]

26:                                               ; preds = %14
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @PACKET_LOG_ARP, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @MAX(i32 %27, i32 %33)
  store i32 %34, i32* %6, align 4
  br label %264

35:                                               ; preds = %14
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @PACKET_LOG_IP, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @MAX(i32 %36, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %153 [
    i32 135, label %47
    i32 133, label %56
    i32 132, label %104
  ]

47:                                               ; preds = %35
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @PACKET_LOG_ICMP, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @MAX(i32 %48, i32 %54)
  store i32 %55, i32* %6, align 4
  br label %153

56:                                               ; preds = %35
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @PACKET_LOG_TCP, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @MAX(i32 %57, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @TCP_SYN, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %94, label %74

74:                                               ; preds = %56
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @TCP_RST, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %74
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @TCP_FIN, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %84, %74, %56
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* @PACKET_LOG_TCP_CONN, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @MAX(i32 %95, i32 %101)
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %94, %84
  br label %153

104:                                              ; preds = %35
  %105 = load i32, i32* %6, align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* @PACKET_LOG_UDP, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @MAX(i32 %105, i32 %111)
  store i32 %112, i32* %6, align 4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  switch i32 %115, label %152 [
    i32 131, label %116
    i32 129, label %125
    i32 128, label %134
    i32 130, label %143
  ]

116:                                              ; preds = %104
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* @PACKET_LOG_DHCP, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @MAX(i32 %117, i32 %123)
  store i32 %124, i32* %6, align 4
  br label %152

125:                                              ; preds = %104
  %126 = load i32, i32* %6, align 4
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i64, i64* @PACKET_LOG_TCP_CONN, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @MAX(i32 %126, i32 %132)
  store i32 %133, i32* %6, align 4
  br label %152

134:                                              ; preds = %104
  %135 = load i32, i32* %6, align 4
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i64, i64* @PACKET_LOG_TCP_CONN, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @MAX(i32 %135, i32 %141)
  store i32 %142, i32* %6, align 4
  br label %152

143:                                              ; preds = %104
  %144 = load i32, i32* %6, align 4
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i64, i64* @PACKET_LOG_TCP_CONN, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @MAX(i32 %144, i32 %150)
  store i32 %151, i32* %6, align 4
  br label %152

152:                                              ; preds = %104, %143, %134, %125, %116
  br label %153

153:                                              ; preds = %35, %152, %103, %47
  br label %264

154:                                              ; preds = %14
  %155 = load i32, i32* %6, align 4
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i64, i64* @PACKET_LOG_IP, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @MAX(i32 %155, i32 %161)
  store i32 %162, i32* %6, align 4
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  switch i32 %165, label %263 [
    i32 134, label %166
    i32 133, label %175
    i32 132, label %223
  ]

166:                                              ; preds = %154
  %167 = load i32, i32* %6, align 4
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load i64, i64* @PACKET_LOG_ICMP, align 8
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @MAX(i32 %167, i32 %173)
  store i32 %174, i32* %6, align 4
  br label %263

175:                                              ; preds = %154
  %176 = load i32, i32* %6, align 4
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = load i64, i64* @PACKET_LOG_TCP, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @MAX(i32 %176, i32 %182)
  store i32 %183, i32* %6, align 4
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @TCP_SYN, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %213, label %193

193:                                              ; preds = %175
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @TCP_RST, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %213, label %203

203:                                              ; preds = %193
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @TCP_FIN, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %222

213:                                              ; preds = %203, %193, %175
  %214 = load i32, i32* %6, align 4
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = load i64, i64* @PACKET_LOG_TCP_CONN, align 8
  %219 = getelementptr inbounds i32, i32* %217, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @MAX(i32 %214, i32 %220)
  store i32 %221, i32* %6, align 4
  br label %222

222:                                              ; preds = %213, %203
  br label %263

223:                                              ; preds = %154
  %224 = load i32, i32* %6, align 4
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  %227 = load i32*, i32** %226, align 8
  %228 = load i64, i64* @PACKET_LOG_UDP, align 8
  %229 = getelementptr inbounds i32, i32* %227, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @MAX(i32 %224, i32 %230)
  store i32 %231, i32* %6, align 4
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  switch i32 %234, label %262 [
    i32 129, label %235
    i32 128, label %244
    i32 130, label %253
  ]

235:                                              ; preds = %223
  %236 = load i32, i32* %6, align 4
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = load i64, i64* @PACKET_LOG_TCP_CONN, align 8
  %241 = getelementptr inbounds i32, i32* %239, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @MAX(i32 %236, i32 %242)
  store i32 %243, i32* %6, align 4
  br label %262

244:                                              ; preds = %223
  %245 = load i32, i32* %6, align 4
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 0
  %248 = load i32*, i32** %247, align 8
  %249 = load i64, i64* @PACKET_LOG_TCP_CONN, align 8
  %250 = getelementptr inbounds i32, i32* %248, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @MAX(i32 %245, i32 %251)
  store i32 %252, i32* %6, align 4
  br label %262

253:                                              ; preds = %223
  %254 = load i32, i32* %6, align 4
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = load i64, i64* @PACKET_LOG_TCP_CONN, align 8
  %259 = getelementptr inbounds i32, i32* %257, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @MAX(i32 %254, i32 %260)
  store i32 %261, i32* %6, align 4
  br label %262

262:                                              ; preds = %223, %253, %244, %235
  br label %263

263:                                              ; preds = %154, %262, %222, %166
  br label %264

264:                                              ; preds = %14, %263, %153, %26
  %265 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 1
  %267 = load i32*, i32** %266, align 8
  %268 = icmp ne i32* %267, null
  br i1 %268, label %269, label %278

269:                                              ; preds = %264
  %270 = load i32, i32* %6, align 4
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 0
  %273 = load i32*, i32** %272, align 8
  %274 = load i64, i64* @PACKET_LOG_TCP_CONN, align 8
  %275 = getelementptr inbounds i32, i32* %273, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @MAX(i32 %270, i32 %276)
  store i32 %277, i32* %6, align 4
  br label %278

278:                                              ; preds = %269, %264
  %279 = load i32, i32* %6, align 4
  store i32 %279, i32* %3, align 4
  br label %280

280:                                              ; preds = %278, %12
  %281 = load i32, i32* %3, align 4
  ret i32 %281
}

declare dso_local i32 @MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
