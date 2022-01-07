; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_NewRUDP.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_NewRUDP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i8*, i64, i64*, i32, i64, i64*, i32, i32, i64, i32, i8*, %struct.TYPE_15__*, %struct.TYPE_16__*, i8*, i32*, i32*, i32, i32, i8*, i32, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i32, i8* }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_15__ = type { i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@SHA1_SIZE = common dso_local global i32 0, align 4
@rand_port_numbers = common dso_local global i64* null, align 8
@RUDPCompareSessionList = common dso_local global i32* null, align 8
@RUDP_PROTOCOL_UDP = common dso_local global i64 0, align 8
@IP_PROTO_ICMPV4 = common dso_local global i32 0, align 4
@RUDP_PROTOCOL_ICMP = common dso_local global i64 0, align 8
@RUDP_PROTOCOL_DNS = common dso_local global i64 0, align 8
@RUDPIpQueryThread = common dso_local global i32 0, align 4
@RUDPMainThread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @NewRUDP(i32 %0, i8* %1, i32* %2, i32* %3, i8* %4, i64 %5, %struct.TYPE_16__* %6, %struct.TYPE_15__* %7, i32 %8, i32 %9, i32* %10, i64* %11, i64 %12, i32* %13) #0 {
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_16__*, align 8
  %23 = alloca %struct.TYPE_15__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i64*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32*, align 8
  %30 = alloca %struct.TYPE_17__*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store i32 %0, i32* %16, align 4
  store i8* %1, i8** %17, align 8
  store i32* %2, i32** %18, align 8
  store i32* %3, i32** %19, align 8
  store i8* %4, i8** %20, align 8
  store i64 %5, i64* %21, align 8
  store %struct.TYPE_16__* %6, %struct.TYPE_16__** %22, align 8
  store %struct.TYPE_15__* %7, %struct.TYPE_15__** %23, align 8
  store i32 %8, i32* %24, align 4
  store i32 %9, i32* %25, align 4
  store i32* %10, i32** %26, align 8
  store i64* %11, i64** %27, align 8
  store i64 %12, i64* %28, align 8
  store i32* %13, i32** %29, align 8
  %37 = load i32, i32* @MAX_SIZE, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %31, align 8
  %40 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %32, align 8
  %41 = load i32, i32* @SHA1_SIZE, align 4
  %42 = zext i32 %41 to i64
  %43 = alloca i64, i64 %42, align 16
  store i64 %42, i64* %33, align 8
  %44 = load i8*, i8** %17, align 8
  %45 = call i64 @IsEmptyStr(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %14
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %15, align 8
  store i32 1, i32* %36, align 4
  br label %307

48:                                               ; preds = %14
  %49 = call i32 (...) @ListenTcpForPopupFirewallDialog()
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %51 = icmp eq %struct.TYPE_16__* %50, null
  br i1 %51, label %52, label %79

52:                                               ; preds = %48
  %53 = load i32, i32* %16, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load i32*, i32** %26, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32*, i32** %26, align 8
  %60 = load i64, i64* %21, align 8
  %61 = call %struct.TYPE_16__* @NewUDP4ForSpecificIp(i32* %59, i64 %60)
  store %struct.TYPE_16__* %61, %struct.TYPE_16__** %22, align 8
  br label %74

62:                                               ; preds = %55, %52
  %63 = load i64, i64* %28, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i64, i64* %21, align 8
  %67 = load i32*, i32** %29, align 8
  %68 = call %struct.TYPE_16__* @NewUDPEx2(i64 %66, i32 0, i32* %67)
  store %struct.TYPE_16__* %68, %struct.TYPE_16__** %22, align 8
  br label %73

69:                                               ; preds = %62
  %70 = load i32*, i32** %29, align 8
  %71 = load i64, i64* %28, align 8
  %72 = call %struct.TYPE_16__* @NewUDPEx2RandMachineAndExePath(i32 0, i32* %70, i32 0, i64 %71)
  store %struct.TYPE_16__* %72, %struct.TYPE_16__** %22, align 8
  br label %73

73:                                               ; preds = %69, %65
  br label %74

74:                                               ; preds = %73, %58
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %76 = icmp eq %struct.TYPE_16__* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %15, align 8
  store i32 1, i32* %36, align 4
  br label %307

78:                                               ; preds = %74
  br label %84

79:                                               ; preds = %48
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @AddRef(i32 %82)
  br label %84

84:                                               ; preds = %79, %78
  %85 = load i64, i64* %21, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %21, align 8
  br label %91

91:                                               ; preds = %87, %84
  %92 = load i64, i64* %28, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load i64, i64* %21, align 8
  %96 = load i64*, i64** @rand_port_numbers, align 8
  %97 = load i64, i64* %28, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  store i64 %95, i64* %98, align 8
  br label %99

99:                                               ; preds = %94, %91
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %101 = icmp eq %struct.TYPE_15__* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = call %struct.TYPE_15__* (...) @NewSockEvent()
  store %struct.TYPE_15__* %103, %struct.TYPE_15__** %23, align 8
  br label %109

104:                                              ; preds = %99
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @AddRef(i32 %107)
  br label %109

109:                                              ; preds = %104, %102
  %110 = call %struct.TYPE_17__* @ZeroMalloc(i32 216)
  store %struct.TYPE_17__* %110, %struct.TYPE_17__** %30, align 8
  %111 = call i8* (...) @Rand64()
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 29
  store i8* %111, i8** %113, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load i8*, i8** %17, align 8
  %118 = call i32 @StrCpy(i8* %116, i32 8, i8* %117)
  %119 = load i64, i64* %28, align 8
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  %122 = load i64*, i64** %27, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 2
  store i64* %122, i64** %124, align 8
  %125 = load i32, i32* %16, align 4
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 8
  %128 = call i32 (...) @NewInterruptManager()
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 28
  store i32 %128, i32* %130, align 8
  %131 = load i32*, i32** @RUDPCompareSessionList, align 8
  %132 = call i8* @NewList(i32* %131)
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 27
  store i8* %132, i8** %134, align 8
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 12
  store %struct.TYPE_16__* %135, %struct.TYPE_16__** %137, align 8
  %138 = load i64, i64* %21, align 8
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 4
  store i64 %138, i64* %140, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 11
  store %struct.TYPE_15__* %141, %struct.TYPE_15__** %143, align 8
  %144 = call i8* (...) @NewEvent()
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 26
  store i8* %144, i8** %146, align 8
  %147 = call i32 (...) @Tick64()
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 25
  store i32 %147, i32* %149, align 4
  %150 = call i32 (...) @NewLock()
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 24
  store i32 %150, i32* %152, align 8
  %153 = load i8*, i8** %20, align 8
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 23
  store i8* %153, i8** %155, align 8
  %156 = call i8* (...) @NewEvent()
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 22
  store i8* %156, i8** %158, align 8
  %159 = call i8* @NewList(i32* null)
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 21
  store i8* %159, i8** %161, align 8
  %162 = call i8* (...) @NewEvent()
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 20
  store i8* %162, i8** %164, align 8
  %165 = call i32 (...) @NewQueue()
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 19
  store i32 %165, i32* %167, align 8
  %168 = call i8* (...) @Rand64()
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 18
  store i8* %168, i8** %170, align 8
  %171 = call i32 @NewListFast(i32* null)
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 17
  store i32 %171, i32* %173, align 4
  %174 = trunc i64 %38 to i32
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @StrCpy(i8* %40, i32 %174, i8* %177)
  %179 = call i32 @Trim(i8* %40)
  %180 = call i32 @StrLower(i8* %40)
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 5
  %183 = load i64*, i64** %182, align 8
  %184 = call i32 @StrLen(i8* %40)
  %185 = call i32 (i64*, ...) @Sha1(i64* %183, i8* %40, i32 %184)
  %186 = call i32 (...) @Rand32()
  %187 = srem i32 %186, 65534
  %188 = add nsw i32 %187, 1
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 6
  store i32 %188, i32* %190, align 8
  %191 = call i32 (...) @Rand32()
  %192 = srem i32 %191, 65534
  %193 = add nsw i32 %192, 1
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 7
  store i32 %193, i32* %195, align 4
  %196 = load i64, i64* @RUDP_PROTOCOL_UDP, align 8
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 8
  store i64 %196, i64* %198, align 8
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 4
  %201 = load i64, i64* %200, align 8
  %202 = load i32, i32* @IP_PROTO_ICMPV4, align 4
  %203 = call i64 @MAKE_SPECIAL_PORT(i32 %202)
  %204 = icmp eq i64 %201, %203
  br i1 %204, label %205, label %225

205:                                              ; preds = %109
  %206 = load i64, i64* @RUDP_PROTOCOL_ICMP, align 8
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 8
  store i64 %206, i64* %208, align 8
  %209 = call i32 (...) @getpid()
  %210 = sext i32 %209 to i64
  store i64 %210, i64* %34, align 8
  %211 = load i64, i64* %34, align 8
  %212 = call i64 @Endian32(i64 %211)
  store i64 %212, i64* %34, align 8
  %213 = call i32 (i64*, ...) @Sha1(i64* %43, i64* %34, i64 8)
  %214 = call i32 @READ_USHORT(i64* %43)
  store i32 %214, i32* %35, align 4
  %215 = load i32, i32* %35, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %220, label %217

217:                                              ; preds = %205
  %218 = load i32, i32* %35, align 4
  %219 = icmp eq i32 %218, 65535
  br i1 %219, label %220, label %221

220:                                              ; preds = %217, %205
  store i32 1, i32* %35, align 4
  br label %221

221:                                              ; preds = %220, %217
  %222 = load i32, i32* %35, align 4
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 6
  store i32 %222, i32* %224, align 8
  br label %233

225:                                              ; preds = %109
  %226 = load i32, i32* %25, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %225
  %229 = load i64, i64* @RUDP_PROTOCOL_DNS, align 8
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 8
  store i64 %229, i64* %231, align 8
  br label %232

232:                                              ; preds = %228, %225
  br label %233

233:                                              ; preds = %232, %221
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 8
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %257

238:                                              ; preds = %233
  %239 = load i32, i32* %24, align 4
  %240 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i32 0, i32 9
  store i32 %239, i32* %241, align 8
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 8
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @RUDP_PROTOCOL_ICMP, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %253, label %247

247:                                              ; preds = %238
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 8
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @RUDP_PROTOCOL_DNS, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %256

253:                                              ; preds = %247, %238
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 9
  store i32 1, i32* %255, align 8
  br label %256

256:                                              ; preds = %253, %247
  br label %257

257:                                              ; preds = %256, %233
  %258 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 16
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @RUDPGetRegisterHostNameByIP(i32 %260, i32 4, i32* null)
  %262 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 8
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %273

266:                                              ; preds = %257
  %267 = load i32*, i32** %18, align 8
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 15
  store i32* %267, i32** %269, align 8
  %270 = load i32*, i32** %19, align 8
  %271 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %272 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %271, i32 0, i32 14
  store i32* %270, i32** %272, align 8
  br label %273

273:                                              ; preds = %266, %257
  %274 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %275 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 8
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %289

278:                                              ; preds = %273
  %279 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %280 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %279, i32 0, i32 9
  %281 = load i32, i32* %280, align 8
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %278
  %284 = load i32, i32* @RUDPIpQueryThread, align 4
  %285 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %286 = call i8* @NewThread(i32 %284, %struct.TYPE_17__* %285)
  %287 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %288 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %287, i32 0, i32 13
  store i8* %286, i8** %288, align 8
  br label %289

289:                                              ; preds = %283, %278, %273
  %290 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %291 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %290, i32 0, i32 12
  %292 = load %struct.TYPE_16__*, %struct.TYPE_16__** %291, align 8
  %293 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %294 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %293, i32 0, i32 11
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %294, align 8
  %296 = call i32 @JoinSockToSockEvent(%struct.TYPE_16__* %292, %struct.TYPE_15__* %295)
  %297 = load i32, i32* @RUDPMainThread, align 4
  %298 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %299 = call i8* @NewThread(i32 %297, %struct.TYPE_17__* %298)
  %300 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %301 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %300, i32 0, i32 10
  store i8* %299, i8** %301, align 8
  %302 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %303 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %302, i32 0, i32 10
  %304 = load i8*, i8** %303, align 8
  %305 = call i32 @WaitThreadInit(i8* %304)
  %306 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  store %struct.TYPE_17__* %306, %struct.TYPE_17__** %15, align 8
  store i32 1, i32* %36, align 4
  br label %307

307:                                              ; preds = %289, %77, %47
  %308 = load i8*, i8** %31, align 8
  call void @llvm.stackrestore(i8* %308)
  %309 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  ret %struct.TYPE_17__* %309
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @IsEmptyStr(i8*) #2

declare dso_local i32 @ListenTcpForPopupFirewallDialog(...) #2

declare dso_local %struct.TYPE_16__* @NewUDP4ForSpecificIp(i32*, i64) #2

declare dso_local %struct.TYPE_16__* @NewUDPEx2(i64, i32, i32*) #2

declare dso_local %struct.TYPE_16__* @NewUDPEx2RandMachineAndExePath(i32, i32*, i32, i64) #2

declare dso_local i32 @AddRef(i32) #2

declare dso_local %struct.TYPE_15__* @NewSockEvent(...) #2

declare dso_local %struct.TYPE_17__* @ZeroMalloc(i32) #2

declare dso_local i8* @Rand64(...) #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @NewInterruptManager(...) #2

declare dso_local i8* @NewList(i32*) #2

declare dso_local i8* @NewEvent(...) #2

declare dso_local i32 @Tick64(...) #2

declare dso_local i32 @NewLock(...) #2

declare dso_local i32 @NewQueue(...) #2

declare dso_local i32 @NewListFast(i32*) #2

declare dso_local i32 @Trim(i8*) #2

declare dso_local i32 @StrLower(i8*) #2

declare dso_local i32 @Sha1(i64*, ...) #2

declare dso_local i32 @StrLen(i8*) #2

declare dso_local i32 @Rand32(...) #2

declare dso_local i64 @MAKE_SPECIAL_PORT(i32) #2

declare dso_local i32 @getpid(...) #2

declare dso_local i64 @Endian32(i64) #2

declare dso_local i32 @READ_USHORT(i64*) #2

declare dso_local i32 @RUDPGetRegisterHostNameByIP(i32, i32, i32*) #2

declare dso_local i8* @NewThread(i32, %struct.TYPE_17__*) #2

declare dso_local i32 @JoinSockToSockEvent(%struct.TYPE_16__*, %struct.TYPE_15__*) #2

declare dso_local i32 @WaitThreadInit(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
