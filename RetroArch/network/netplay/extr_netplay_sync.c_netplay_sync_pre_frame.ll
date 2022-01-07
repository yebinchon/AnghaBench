; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_sync.c_netplay_sync_pre_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_sync.c_netplay_sync_pre_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i32, i32, i32, i64, i64, i64, i32, i64, i32, i32, %struct.netplay_connection*, i64, i64, %struct.TYPE_15__*, i32 }
%struct.netplay_connection = type { i32, i64, i32, %struct.TYPE_14__, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { %struct.netplay_connection* }
%struct.TYPE_12__ = type { i32, %struct.netplay_connection*, %struct.netplay_connection* }
%struct.timeval = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@NETPLAY_QUIRK_INITIALIZATION = common dso_local global i32 0, align 4
@NETPLAY_QUIRK_NO_SAVESTATES = common dso_local global i32 0, align 4
@NETPLAY_QUIRK_NO_TRANSMISSION = common dso_local global i32 0, align 4
@NETPLAY_CONNECTION_CONNECTED = common dso_local global i64 0, align 8
@NETPLAY_STALL_NO_CONNECTION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@MSG_NETPLAY_FAILED = common dso_local global i32 0, align 4
@NETPLAY_CONNECTION_DELAYED_DISCONNECT = common dso_local global i64 0, align 8
@NETPLAY_CONNECTION_INIT = common dso_local global i64 0, align 8
@FD_CLOEXEC = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netplay_sync_pre_frame(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_12__, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_storage, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.netplay_connection*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.netplay_connection*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 15
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i64 %19
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @netplay_delta_frame_ready(%struct.TYPE_13__* %13, %struct.TYPE_15__* %20, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %191

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 1
  store %struct.netplay_connection* null, %struct.netplay_connection** %27, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 15
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load %struct.netplay_connection*, %struct.netplay_connection** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 2
  store %struct.netplay_connection* %36, %struct.netplay_connection** %37, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 2
  %43 = load %struct.netplay_connection*, %struct.netplay_connection** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @memset(%struct.netplay_connection* %43, i32 0, i32 %45)
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @NETPLAY_QUIRK_INITIALIZATION, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %26
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53, %26
  br label %150

59:                                               ; preds = %53
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @NETPLAY_QUIRK_NO_SAVESTATES, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %141, label %66

66:                                               ; preds = %59
  %67 = call i64 @core_serialize(%struct.TYPE_12__* %3)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %141

69:                                               ; preds = %66
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %140

74:                                               ; preds = %69
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %140, label %79

79:                                               ; preds = %74
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 16
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %140, label %84

84:                                               ; preds = %79
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 6
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %87, %90
  br i1 %91, label %92, label %125

92:                                               ; preds = %84
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 15
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %94, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 6
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load %struct.netplay_connection*, %struct.netplay_connection** %100, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 15
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %103, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load %struct.netplay_connection*, %struct.netplay_connection** %109, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @memcpy(%struct.netplay_connection* %101, %struct.netplay_connection* %110, i32 %113)
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 6
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 7
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 1
  store i64 %122, i64* %124, align 8
  br label %125

125:                                              ; preds = %92, %84
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 15
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %127, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load %struct.netplay_connection*, %struct.netplay_connection** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 1
  store %struct.netplay_connection* %134, %struct.netplay_connection** %135, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %137 = call i32 @netplay_load_savestate(%struct.TYPE_13__* %136, %struct.TYPE_12__* %3, i32 0)
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 4
  store i32 0, i32* %139, align 8
  br label %140

140:                                              ; preds = %125, %79, %74, %69
  br label %149

141:                                              ; preds = %66, %59
  %142 = load i32, i32* @NETPLAY_QUIRK_NO_SAVESTATES, align 4
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 4
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 8
  store i32 1, i32* %148, align 8
  br label %149

149:                                              ; preds = %141, %140
  br label %150

150:                                              ; preds = %149, %58
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp sgt i64 %153, 0
  br i1 %154, label %155, label %190

155:                                              ; preds = %150
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @NETPLAY_QUIRK_NO_SAVESTATES, align 4
  %160 = load i32, i32* @NETPLAY_QUIRK_NO_TRANSMISSION, align 4
  %161 = or i32 %159, %160
  %162 = and i32 %158, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %190

164:                                              ; preds = %155
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 9
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %186, label %169

169:                                              ; preds = %164
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 12
  %172 = load %struct.netplay_connection*, %struct.netplay_connection** %171, align 8
  %173 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %172, i64 0
  %174 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %169
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 12
  %180 = load %struct.netplay_connection*, %struct.netplay_connection** %179, align 8
  %181 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %180, i64 0
  %182 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @NETPLAY_CONNECTION_CONNECTED, align 8
  %185 = icmp slt i64 %183, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %177, %169, %164
  %187 = load i64, i64* @NETPLAY_STALL_NO_CONNECTION, align 8
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 5
  store i64 %187, i64* %189, align 8
  br label %190

190:                                              ; preds = %186, %177, %155, %150
  br label %191

191:                                              ; preds = %190, %1
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 14
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %376

196:                                              ; preds = %191
  %197 = bitcast %struct.timeval* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %197, i8 0, i64 4, i1 false)
  %198 = call i32 @FD_ZERO(i32* %4)
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 13
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @FD_SET(i64 %201, i32* %4)
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 13
  %205 = load i64, i64* %204, align 8
  %206 = add nsw i64 %205, 1
  %207 = call i64 @socket_select(i64 %206, i32* %4, i32* null, i32* null, %struct.timeval* %5)
  %208 = icmp sgt i64 %207, 0
  br i1 %208, label %209, label %375

209:                                              ; preds = %196
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 13
  %212 = load i64, i64* %211, align 8
  %213 = call i64 @FD_ISSET(i64 %212, i32* %4)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %375

215:                                              ; preds = %209
  store i32 4, i32* %8, align 4
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 13
  %218 = load i64, i64* %217, align 8
  %219 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr*
  %220 = call i32 @accept(i64 %218, %struct.sockaddr* %219, i32* %8)
  store i32 %220, i32* %6, align 4
  %221 = load i32, i32* %6, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %215
  %224 = load i32, i32* @MSG_NETPLAY_FAILED, align 4
  %225 = call i32 @msg_hash_to_str(i32 %224)
  %226 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %225)
  br label %377

227:                                              ; preds = %215
  %228 = load i32, i32* %6, align 4
  %229 = call i32 @socket_nonblock(i32 %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %234, label %231

231:                                              ; preds = %227
  %232 = load i32, i32* %6, align 4
  %233 = call i32 @socket_close(i32 %232)
  br label %377

234:                                              ; preds = %227
  store i64 0, i64* %10, align 8
  br label %235

235:                                              ; preds = %262, %234
  %236 = load i64, i64* %10, align 8
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 9
  %239 = load i64, i64* %238, align 8
  %240 = icmp ult i64 %236, %239
  br i1 %240, label %241, label %265

241:                                              ; preds = %235
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 12
  %244 = load %struct.netplay_connection*, %struct.netplay_connection** %243, align 8
  %245 = load i64, i64* %10, align 8
  %246 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %244, i64 %245
  %247 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %261, label %250

250:                                              ; preds = %241
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 12
  %253 = load %struct.netplay_connection*, %struct.netplay_connection** %252, align 8
  %254 = load i64, i64* %10, align 8
  %255 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %253, i64 %254
  %256 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @NETPLAY_CONNECTION_DELAYED_DISCONNECT, align 8
  %259 = icmp ne i64 %257, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %250
  br label %265

261:                                              ; preds = %250, %241
  br label %262

262:                                              ; preds = %261
  %263 = load i64, i64* %10, align 8
  %264 = add i64 %263, 1
  store i64 %264, i64* %10, align 8
  br label %235

265:                                              ; preds = %260, %235
  %266 = load i64, i64* %10, align 8
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 9
  %269 = load i64, i64* %268, align 8
  %270 = icmp eq i64 %266, %269
  br i1 %270, label %271, label %325

271:                                              ; preds = %265
  %272 = load i64, i64* %10, align 8
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %274, label %289

274:                                              ; preds = %271
  %275 = call i64 @malloc(i32 40)
  %276 = inttoptr i64 %275 to %struct.netplay_connection*
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 12
  store %struct.netplay_connection* %276, %struct.netplay_connection** %278, align 8
  %279 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 12
  %281 = load %struct.netplay_connection*, %struct.netplay_connection** %280, align 8
  %282 = icmp ne %struct.netplay_connection* %281, null
  br i1 %282, label %286, label %283

283:                                              ; preds = %274
  %284 = load i32, i32* %6, align 4
  %285 = call i32 @socket_close(i32 %284)
  br label %377

286:                                              ; preds = %274
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i32 0, i32 9
  store i64 1, i64* %288, align 8
  br label %324

289:                                              ; preds = %271
  %290 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %290, i32 0, i32 9
  %292 = load i64, i64* %291, align 8
  %293 = mul i64 %292, 2
  store i64 %293, i64* %11, align 8
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 12
  %296 = load %struct.netplay_connection*, %struct.netplay_connection** %295, align 8
  %297 = load i64, i64* %11, align 8
  %298 = mul i64 %297, 40
  %299 = call i64 @realloc(%struct.netplay_connection* %296, i64 %298)
  %300 = inttoptr i64 %299 to %struct.netplay_connection*
  store %struct.netplay_connection* %300, %struct.netplay_connection** %12, align 8
  %301 = load %struct.netplay_connection*, %struct.netplay_connection** %12, align 8
  %302 = icmp ne %struct.netplay_connection* %301, null
  br i1 %302, label %306, label %303

303:                                              ; preds = %289
  %304 = load i32, i32* %6, align 4
  %305 = call i32 @socket_close(i32 %304)
  br label %377

306:                                              ; preds = %289
  %307 = load %struct.netplay_connection*, %struct.netplay_connection** %12, align 8
  %308 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %309 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %308, i32 0, i32 9
  %310 = load i64, i64* %309, align 8
  %311 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %307, i64 %310
  %312 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %313 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %312, i32 0, i32 9
  %314 = load i64, i64* %313, align 8
  %315 = mul i64 %314, 40
  %316 = trunc i64 %315 to i32
  %317 = call i32 @memset(%struct.netplay_connection* %311, i32 0, i32 %316)
  %318 = load %struct.netplay_connection*, %struct.netplay_connection** %12, align 8
  %319 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %320 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %319, i32 0, i32 12
  store %struct.netplay_connection* %318, %struct.netplay_connection** %320, align 8
  %321 = load i64, i64* %11, align 8
  %322 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %323 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %322, i32 0, i32 9
  store i64 %321, i64* %323, align 8
  br label %324

324:                                              ; preds = %306, %286
  br label %325

325:                                              ; preds = %324, %265
  %326 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %327 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %326, i32 0, i32 12
  %328 = load %struct.netplay_connection*, %struct.netplay_connection** %327, align 8
  %329 = load i64, i64* %10, align 8
  %330 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %328, i64 %329
  store %struct.netplay_connection* %330, %struct.netplay_connection** %9, align 8
  %331 = load %struct.netplay_connection*, %struct.netplay_connection** %9, align 8
  %332 = call i32 @memset(%struct.netplay_connection* %331, i32 0, i32 40)
  %333 = load %struct.netplay_connection*, %struct.netplay_connection** %9, align 8
  %334 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %333, i32 0, i32 0
  store i32 1, i32* %334, align 8
  %335 = load i32, i32* %6, align 4
  %336 = load %struct.netplay_connection*, %struct.netplay_connection** %9, align 8
  %337 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %336, i32 0, i32 2
  store i32 %335, i32* %337, align 8
  %338 = load i64, i64* @NETPLAY_CONNECTION_INIT, align 8
  %339 = load %struct.netplay_connection*, %struct.netplay_connection** %9, align 8
  %340 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %339, i32 0, i32 1
  store i64 %338, i64* %340, align 8
  %341 = load %struct.netplay_connection*, %struct.netplay_connection** %9, align 8
  %342 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %341, i32 0, i32 3
  %343 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %343, i32 0, i32 11
  %345 = load i32, i32* %344, align 4
  %346 = call i32 @netplay_init_socket_buffer(%struct.TYPE_14__* %342, i32 %345)
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %356

348:                                              ; preds = %325
  %349 = load %struct.netplay_connection*, %struct.netplay_connection** %9, align 8
  %350 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %349, i32 0, i32 4
  %351 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %352 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %351, i32 0, i32 11
  %353 = load i32, i32* %352, align 4
  %354 = call i32 @netplay_init_socket_buffer(%struct.TYPE_14__* %350, i32 %353)
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %371, label %356

356:                                              ; preds = %348, %325
  %357 = load %struct.netplay_connection*, %struct.netplay_connection** %9, align 8
  %358 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %357, i32 0, i32 3
  %359 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %366

362:                                              ; preds = %356
  %363 = load %struct.netplay_connection*, %struct.netplay_connection** %9, align 8
  %364 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %363, i32 0, i32 3
  %365 = call i32 @netplay_deinit_socket_buffer(%struct.TYPE_14__* %364)
  br label %366

366:                                              ; preds = %362, %356
  %367 = load %struct.netplay_connection*, %struct.netplay_connection** %9, align 8
  %368 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %367, i32 0, i32 0
  store i32 0, i32* %368, align 8
  %369 = load i32, i32* %6, align 4
  %370 = call i32 @socket_close(i32 %369)
  br label %377

371:                                              ; preds = %348
  %372 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %373 = load %struct.netplay_connection*, %struct.netplay_connection** %9, align 8
  %374 = call i32 @netplay_handshake_init_send(%struct.TYPE_13__* %372, %struct.netplay_connection* %373)
  br label %375

375:                                              ; preds = %371, %209, %196
  br label %376

376:                                              ; preds = %375, %191
  br label %377

377:                                              ; preds = %376, %366, %303, %283, %231, %223
  %378 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %379 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %378, i32 0, i32 10
  store i32 1, i32* %379, align 8
  %380 = call i32 (...) @input_poll_net()
  %381 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %382 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %381, i32 0, i32 5
  %383 = load i64, i64* %382, align 8
  %384 = load i64, i64* @NETPLAY_STALL_NO_CONNECTION, align 8
  %385 = icmp ne i64 %383, %384
  %386 = zext i1 %385 to i32
  ret i32 %386
}

declare dso_local i64 @netplay_delta_frame_ready(%struct.TYPE_13__*, %struct.TYPE_15__*, i64) #1

declare dso_local i32 @memset(%struct.netplay_connection*, i32, i32) #1

declare dso_local i64 @core_serialize(%struct.TYPE_12__*) #1

declare dso_local i32 @memcpy(%struct.netplay_connection*, %struct.netplay_connection*, i32) #1

declare dso_local i32 @netplay_load_savestate(%struct.TYPE_13__*, %struct.TYPE_12__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i64 @socket_select(i64, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @FD_ISSET(i64, i32*) #1

declare dso_local i32 @accept(i64, %struct.sockaddr*, i32*) #1

declare dso_local i32 @RARCH_ERR(i8*, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @socket_nonblock(i32) #1

declare dso_local i32 @socket_close(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @realloc(%struct.netplay_connection*, i64) #1

declare dso_local i32 @netplay_init_socket_buffer(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @netplay_deinit_socket_buffer(%struct.TYPE_14__*) #1

declare dso_local i32 @netplay_handshake_init_send(%struct.TYPE_13__*, %struct.netplay_connection*) #1

declare dso_local i32 @input_poll_net(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
