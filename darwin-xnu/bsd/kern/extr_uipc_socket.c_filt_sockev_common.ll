; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_filt_sockev_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_filt_sockev_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, i32, i64, i32, i32 }
%struct.socket = type { i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SO_FILT_HINT_CONNRESET = common dso_local global i64 0, align 8
@NOTE_CONNRESET = common dso_local global i32 0, align 4
@SO_FILT_HINT_TIMEOUT = common dso_local global i64 0, align 8
@NOTE_TIMEOUT = common dso_local global i32 0, align 4
@SO_FILT_HINT_NOSRCADDR = common dso_local global i64 0, align 8
@NOTE_NOSRCADDR = common dso_local global i32 0, align 4
@SO_FILT_HINT_IFDENIED = common dso_local global i64 0, align 8
@NOTE_IFDENIED = common dso_local global i32 0, align 4
@SO_FILT_HINT_KEEPALIVE = common dso_local global i64 0, align 8
@NOTE_KEEPALIVE = common dso_local global i32 0, align 4
@SO_FILT_HINT_ADAPTIVE_WTIMO = common dso_local global i64 0, align 8
@NOTE_ADAPTIVE_WTIMO = common dso_local global i32 0, align 4
@SO_FILT_HINT_ADAPTIVE_RTIMO = common dso_local global i64 0, align 8
@NOTE_ADAPTIVE_RTIMO = common dso_local global i32 0, align 4
@SO_FILT_HINT_CONNECTED = common dso_local global i64 0, align 8
@SS_ISCONNECTED = common dso_local global i32 0, align 4
@NOTE_CONNECTED = common dso_local global i32 0, align 4
@SO_FILT_HINT_DISCONNECTED = common dso_local global i64 0, align 8
@SS_ISDISCONNECTED = common dso_local global i32 0, align 4
@NOTE_DISCONNECTED = common dso_local global i32 0, align 4
@SO_FILT_HINT_CONNINFO_UPDATED = common dso_local global i64 0, align 8
@PR_EVCONNINFO = common dso_local global i32 0, align 4
@NOTE_CONNINFO_UPDATED = common dso_local global i32 0, align 4
@SO_FILT_HINT_NOTIFY_ACK = common dso_local global i64 0, align 8
@NOTE_NOTIFY_ACK = common dso_local global i32 0, align 4
@SS_CANTRCVMORE = common dso_local global i32 0, align 4
@NOTE_READCLOSED = common dso_local global i32 0, align 4
@SS_CANTSENDMORE = common dso_local global i32 0, align 4
@NOTE_WRITECLOSED = common dso_local global i32 0, align 4
@SO_FILT_HINT_SUSPEND = common dso_local global i64 0, align 8
@SOF_SUSPENDED = common dso_local global i32 0, align 4
@NOTE_SUSPEND = common dso_local global i32 0, align 4
@NOTE_RESUME = common dso_local global i32 0, align 4
@SO_FILT_HINT_RESUME = common dso_local global i64 0, align 8
@EV_EOF = common dso_local global i32 0, align 4
@EVFILT_SOCK_ALL_MASK = common dso_local global i32 0, align 4
@EVFILT_SOCK_LEVEL_TRIGGER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, %struct.socket*, i64)* @filt_sockev_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_sockev_common(%struct.knote* %0, %struct.socket* %1, i64 %2) #0 {
  %4 = alloca %struct.knote*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @SO_FILT_HINT_CONNRESET, align 8
  %11 = and i64 %9, %10
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32, i32* @NOTE_CONNRESET, align 4
  %15 = load %struct.knote*, %struct.knote** %4, align 8
  %16 = getelementptr inbounds %struct.knote, %struct.knote* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 8
  br label %19

19:                                               ; preds = %13, %3
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @SO_FILT_HINT_TIMEOUT, align 8
  %22 = and i64 %20, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i32, i32* @NOTE_TIMEOUT, align 4
  %26 = load %struct.knote*, %struct.knote** %4, align 8
  %27 = getelementptr inbounds %struct.knote, %struct.knote* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  br label %30

30:                                               ; preds = %24, %19
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @SO_FILT_HINT_NOSRCADDR, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i32, i32* @NOTE_NOSRCADDR, align 4
  %37 = load %struct.knote*, %struct.knote** %4, align 8
  %38 = getelementptr inbounds %struct.knote, %struct.knote* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %35, %30
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @SO_FILT_HINT_IFDENIED, align 8
  %44 = and i64 %42, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i32, i32* @NOTE_IFDENIED, align 4
  %48 = load %struct.knote*, %struct.knote** %4, align 8
  %49 = getelementptr inbounds %struct.knote, %struct.knote* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %46, %41
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @SO_FILT_HINT_KEEPALIVE, align 8
  %55 = and i64 %53, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i32, i32* @NOTE_KEEPALIVE, align 4
  %59 = load %struct.knote*, %struct.knote** %4, align 8
  %60 = getelementptr inbounds %struct.knote, %struct.knote* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %57, %52
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* @SO_FILT_HINT_ADAPTIVE_WTIMO, align 8
  %66 = and i64 %64, %65
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load i32, i32* @NOTE_ADAPTIVE_WTIMO, align 4
  %70 = load %struct.knote*, %struct.knote** %4, align 8
  %71 = getelementptr inbounds %struct.knote, %struct.knote* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %68, %63
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* @SO_FILT_HINT_ADAPTIVE_RTIMO, align 8
  %77 = and i64 %75, %76
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load i32, i32* @NOTE_ADAPTIVE_RTIMO, align 4
  %81 = load %struct.knote*, %struct.knote** %4, align 8
  %82 = getelementptr inbounds %struct.knote, %struct.knote* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %79, %74
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* @SO_FILT_HINT_CONNECTED, align 8
  %88 = and i64 %86, %87
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %85
  %91 = load %struct.socket*, %struct.socket** %5, align 8
  %92 = getelementptr inbounds %struct.socket, %struct.socket* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @SS_ISCONNECTED, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %90, %85
  %98 = load i32, i32* @NOTE_CONNECTED, align 4
  %99 = load %struct.knote*, %struct.knote** %4, align 8
  %100 = getelementptr inbounds %struct.knote, %struct.knote* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  %103 = load i32, i32* @NOTE_CONNECTED, align 4
  %104 = load i32, i32* %8, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %97, %90
  %107 = load i64, i64* %6, align 8
  %108 = load i64, i64* @SO_FILT_HINT_DISCONNECTED, align 8
  %109 = and i64 %107, %108
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %106
  %112 = load %struct.socket*, %struct.socket** %5, align 8
  %113 = getelementptr inbounds %struct.socket, %struct.socket* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @SS_ISDISCONNECTED, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %111, %106
  %119 = load i32, i32* @NOTE_DISCONNECTED, align 4
  %120 = load %struct.knote*, %struct.knote** %4, align 8
  %121 = getelementptr inbounds %struct.knote, %struct.knote* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  %124 = load i32, i32* @NOTE_DISCONNECTED, align 4
  %125 = load i32, i32* %8, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %118, %111
  %128 = load i64, i64* %6, align 8
  %129 = load i64, i64* @SO_FILT_HINT_CONNINFO_UPDATED, align 8
  %130 = and i64 %128, %129
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %153

132:                                              ; preds = %127
  %133 = load %struct.socket*, %struct.socket** %5, align 8
  %134 = getelementptr inbounds %struct.socket, %struct.socket* %133, i32 0, i32 4
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = icmp ne %struct.TYPE_2__* %135, null
  br i1 %136, label %137, label %152

137:                                              ; preds = %132
  %138 = load %struct.socket*, %struct.socket** %5, align 8
  %139 = getelementptr inbounds %struct.socket, %struct.socket* %138, i32 0, i32 4
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @PR_EVCONNINFO, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %137
  %147 = load i32, i32* @NOTE_CONNINFO_UPDATED, align 4
  %148 = load %struct.knote*, %struct.knote** %4, align 8
  %149 = getelementptr inbounds %struct.knote, %struct.knote* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 8
  br label %152

152:                                              ; preds = %146, %137, %132
  br label %153

153:                                              ; preds = %152, %127
  %154 = load i64, i64* %6, align 8
  %155 = load i64, i64* @SO_FILT_HINT_NOTIFY_ACK, align 8
  %156 = and i64 %154, %155
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %153
  %159 = load %struct.socket*, %struct.socket** %5, align 8
  %160 = call i64 @tcp_notify_ack_active(%struct.socket* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %158, %153
  %163 = load i32, i32* @NOTE_NOTIFY_ACK, align 4
  %164 = load %struct.knote*, %struct.knote** %4, align 8
  %165 = getelementptr inbounds %struct.knote, %struct.knote* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 8
  br label %168

168:                                              ; preds = %162, %158
  %169 = load %struct.socket*, %struct.socket** %5, align 8
  %170 = getelementptr inbounds %struct.socket, %struct.socket* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @SS_CANTRCVMORE, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %168
  %176 = load i32, i32* @NOTE_READCLOSED, align 4
  %177 = load %struct.knote*, %struct.knote** %4, align 8
  %178 = getelementptr inbounds %struct.knote, %struct.knote* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 8
  %181 = load i32, i32* @NOTE_READCLOSED, align 4
  %182 = load i32, i32* %8, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %8, align 4
  br label %184

184:                                              ; preds = %175, %168
  %185 = load %struct.socket*, %struct.socket** %5, align 8
  %186 = getelementptr inbounds %struct.socket, %struct.socket* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @SS_CANTSENDMORE, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %184
  %192 = load i32, i32* @NOTE_WRITECLOSED, align 4
  %193 = load %struct.knote*, %struct.knote** %4, align 8
  %194 = getelementptr inbounds %struct.knote, %struct.knote* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 8
  %197 = load i32, i32* @NOTE_WRITECLOSED, align 4
  %198 = load i32, i32* %8, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %8, align 4
  br label %200

200:                                              ; preds = %191, %184
  %201 = load i64, i64* %6, align 8
  %202 = load i64, i64* @SO_FILT_HINT_SUSPEND, align 8
  %203 = and i64 %201, %202
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %212, label %205

205:                                              ; preds = %200
  %206 = load %struct.socket*, %struct.socket** %5, align 8
  %207 = getelementptr inbounds %struct.socket, %struct.socket* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @SOF_SUSPENDED, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %235

212:                                              ; preds = %205, %200
  %213 = load i32, i32* @NOTE_SUSPEND, align 4
  %214 = load i32, i32* @NOTE_RESUME, align 4
  %215 = or i32 %213, %214
  %216 = xor i32 %215, -1
  %217 = load %struct.knote*, %struct.knote** %4, align 8
  %218 = getelementptr inbounds %struct.knote, %struct.knote* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = and i32 %219, %216
  store i32 %220, i32* %218, align 8
  %221 = load i32, i32* @NOTE_RESUME, align 4
  %222 = xor i32 %221, -1
  %223 = load %struct.knote*, %struct.knote** %4, align 8
  %224 = getelementptr inbounds %struct.knote, %struct.knote* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = and i32 %225, %222
  store i32 %226, i32* %224, align 4
  %227 = load i32, i32* @NOTE_SUSPEND, align 4
  %228 = load %struct.knote*, %struct.knote** %4, align 8
  %229 = getelementptr inbounds %struct.knote, %struct.knote* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = or i32 %230, %227
  store i32 %231, i32* %229, align 8
  %232 = load i32, i32* @NOTE_SUSPEND, align 4
  %233 = load i32, i32* %8, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %8, align 4
  br label %235

235:                                              ; preds = %212, %205
  %236 = load i64, i64* %6, align 8
  %237 = load i64, i64* @SO_FILT_HINT_RESUME, align 8
  %238 = and i64 %236, %237
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %247, label %240

240:                                              ; preds = %235
  %241 = load %struct.socket*, %struct.socket** %5, align 8
  %242 = getelementptr inbounds %struct.socket, %struct.socket* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @SOF_SUSPENDED, align 4
  %245 = and i32 %243, %244
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %270

247:                                              ; preds = %240, %235
  %248 = load i32, i32* @NOTE_SUSPEND, align 4
  %249 = load i32, i32* @NOTE_RESUME, align 4
  %250 = or i32 %248, %249
  %251 = xor i32 %250, -1
  %252 = load %struct.knote*, %struct.knote** %4, align 8
  %253 = getelementptr inbounds %struct.knote, %struct.knote* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = and i32 %254, %251
  store i32 %255, i32* %253, align 8
  %256 = load i32, i32* @NOTE_SUSPEND, align 4
  %257 = xor i32 %256, -1
  %258 = load %struct.knote*, %struct.knote** %4, align 8
  %259 = getelementptr inbounds %struct.knote, %struct.knote* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = and i32 %260, %257
  store i32 %261, i32* %259, align 4
  %262 = load i32, i32* @NOTE_RESUME, align 4
  %263 = load %struct.knote*, %struct.knote** %4, align 8
  %264 = getelementptr inbounds %struct.knote, %struct.knote* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = or i32 %265, %262
  store i32 %266, i32* %264, align 8
  %267 = load i32, i32* @NOTE_RESUME, align 4
  %268 = load i32, i32* %8, align 4
  %269 = or i32 %268, %267
  store i32 %269, i32* %8, align 4
  br label %270

270:                                              ; preds = %247, %240
  %271 = load %struct.socket*, %struct.socket** %5, align 8
  %272 = getelementptr inbounds %struct.socket, %struct.socket* %271, i32 0, i32 2
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %286

275:                                              ; preds = %270
  store i32 1, i32* %7, align 4
  %276 = load %struct.socket*, %struct.socket** %5, align 8
  %277 = getelementptr inbounds %struct.socket, %struct.socket* %276, i32 0, i32 2
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.knote*, %struct.knote** %4, align 8
  %280 = getelementptr inbounds %struct.knote, %struct.knote* %279, i32 0, i32 2
  store i64 %278, i64* %280, align 8
  %281 = load i32, i32* @EV_EOF, align 4
  %282 = load %struct.knote*, %struct.knote** %4, align 8
  %283 = getelementptr inbounds %struct.knote, %struct.knote* %282, i32 0, i32 4
  %284 = load i32, i32* %283, align 4
  %285 = or i32 %284, %281
  store i32 %285, i32* %283, align 4
  br label %292

286:                                              ; preds = %270
  %287 = load %struct.socket*, %struct.socket** %5, align 8
  %288 = load %struct.knote*, %struct.knote** %4, align 8
  %289 = getelementptr inbounds %struct.knote, %struct.knote* %288, i32 0, i32 2
  %290 = bitcast i64* %289 to i32*
  %291 = call i32 @get_sockev_state(%struct.socket* %287, i32* %290)
  br label %292

292:                                              ; preds = %286, %275
  %293 = load %struct.knote*, %struct.knote** %4, align 8
  %294 = getelementptr inbounds %struct.knote, %struct.knote* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @EVFILT_SOCK_ALL_MASK, align 4
  %297 = and i32 %295, %296
  %298 = load %struct.knote*, %struct.knote** %4, align 8
  %299 = getelementptr inbounds %struct.knote, %struct.knote* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = and i32 %300, %297
  store i32 %301, i32* %299, align 8
  %302 = load %struct.knote*, %struct.knote** %4, align 8
  %303 = getelementptr inbounds %struct.knote, %struct.knote* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* @EVFILT_SOCK_ALL_MASK, align 4
  %306 = and i32 %304, %305
  %307 = load i32, i32* %8, align 4
  %308 = and i32 %307, %306
  store i32 %308, i32* %8, align 4
  %309 = load %struct.knote*, %struct.knote** %4, align 8
  %310 = getelementptr inbounds %struct.knote, %struct.knote* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* %8, align 4
  %313 = and i32 %312, %311
  store i32 %313, i32* %8, align 4
  %314 = load i32, i32* @EVFILT_SOCK_LEVEL_TRIGGER_MASK, align 4
  %315 = load i32, i32* %8, align 4
  %316 = and i32 %315, %314
  store i32 %316, i32* %8, align 4
  %317 = load %struct.knote*, %struct.knote** %4, align 8
  %318 = getelementptr inbounds %struct.knote, %struct.knote* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* %8, align 4
  %321 = xor i32 %320, -1
  %322 = and i32 %319, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %325

324:                                              ; preds = %292
  store i32 1, i32* %7, align 4
  br label %325

325:                                              ; preds = %324, %292
  %326 = load i32, i32* %7, align 4
  ret i32 %326
}

declare dso_local i64 @tcp_notify_ack_active(%struct.socket*) #1

declare dso_local i32 @get_sockev_state(%struct.socket*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
