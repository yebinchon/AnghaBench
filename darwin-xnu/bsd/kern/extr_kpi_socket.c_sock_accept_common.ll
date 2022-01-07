; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_socket.c_sock_accept_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_socket.c_sock_accept_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.socket = type { i32, i32, i64, i32, %struct.TYPE_8__*, i32*, i32, i32, i32*, %struct.TYPE_10__, i32 }
%struct.TYPE_8__ = type { i32* (%struct.socket*, i32)*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_10__ = type { i32* }
%struct.sockaddr = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@SO_ACCEPTCONN = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i64 0, align 8
@SS_NBIO = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i64 0, align 8
@PR_F_WILLUNLOCK = common dso_local global i32 0, align 4
@SS_CANTRCVMORE = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i64 0, align 8
@PSOCK = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"sock_accept\00", align 1
@so_list = common dso_local global i32 0, align 4
@SS_COMP = common dso_local global i32 0, align 4
@SOF1_IN_KERNEL_SOCKET = common dso_local global i32 0, align 4
@net_api_stats = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@LCK_MTX_ASSERT_NOTOWNED = common dso_local global i32 0, align 4
@M_SONAME = common dso_local global i32 0, align 4
@SOF_DEFUNCT = common dso_local global i32 0, align 4
@SHUTDOWN_SOCKET_LEVEL_DISCONNECT_INTERNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sock_accept_common(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, i32 %3, i32* %4, i8* %5, %struct.socket** %6, i32 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.socket*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.socket**, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.sockaddr*, align 8
  %19 = alloca %struct.socket*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store %struct.socket* %0, %struct.socket** %10, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i8* %5, i8** %15, align 8
  store %struct.socket** %6, %struct.socket*** %16, align 8
  store i32 %7, i32* %17, align 4
  store i64 0, i64* %22, align 8
  %23 = load %struct.socket*, %struct.socket** %10, align 8
  %24 = icmp eq %struct.socket* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %8
  %26 = load %struct.socket**, %struct.socket*** %16, align 8
  %27 = icmp eq %struct.socket** %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25, %8
  %29 = load i64, i64* @EINVAL, align 8
  store i64 %29, i64* %9, align 8
  br label %295

30:                                               ; preds = %25
  %31 = load %struct.socket*, %struct.socket** %10, align 8
  %32 = call i32 @socket_lock(%struct.socket* %31, i32 1)
  %33 = load %struct.socket*, %struct.socket** %10, align 8
  %34 = getelementptr inbounds %struct.socket, %struct.socket* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SO_ACCEPTCONN, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load %struct.socket*, %struct.socket** %10, align 8
  %41 = call i32 @socket_unlock(%struct.socket* %40, i32 1)
  %42 = load i64, i64* @EINVAL, align 8
  store i64 %42, i64* %9, align 8
  br label %295

43:                                               ; preds = %30
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @MSG_DONTWAIT, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.socket*, %struct.socket** %10, align 8
  %51 = call i32 @socket_unlock(%struct.socket* %50, i32 1)
  %52 = load i64, i64* @ENOTSUP, align 8
  store i64 %52, i64* %9, align 8
  br label %295

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %161, %53
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @MSG_DONTWAIT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %54
  %60 = load %struct.socket*, %struct.socket** %10, align 8
  %61 = getelementptr inbounds %struct.socket, %struct.socket* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SS_NBIO, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %59, %54
  %67 = load %struct.socket*, %struct.socket** %10, align 8
  %68 = getelementptr inbounds %struct.socket, %struct.socket* %67, i32 0, i32 9
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load %struct.socket*, %struct.socket** %10, align 8
  %74 = call i32 @socket_unlock(%struct.socket* %73, i32 1)
  %75 = load i64, i64* @EWOULDBLOCK, align 8
  store i64 %75, i64* %9, align 8
  br label %295

76:                                               ; preds = %66, %59
  %77 = load %struct.socket*, %struct.socket** %10, align 8
  %78 = getelementptr inbounds %struct.socket, %struct.socket* %77, i32 0, i32 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32* (%struct.socket*, i32)*, i32* (%struct.socket*, i32)** %80, align 8
  %82 = icmp ne i32* (%struct.socket*, i32)* %81, null
  br i1 %82, label %83, label %92

83:                                               ; preds = %76
  %84 = load %struct.socket*, %struct.socket** %10, align 8
  %85 = getelementptr inbounds %struct.socket, %struct.socket* %84, i32 0, i32 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32* (%struct.socket*, i32)*, i32* (%struct.socket*, i32)** %87, align 8
  %89 = load %struct.socket*, %struct.socket** %10, align 8
  %90 = load i32, i32* @PR_F_WILLUNLOCK, align 4
  %91 = call i32* %88(%struct.socket* %89, i32 %90)
  store i32* %91, i32** %20, align 8
  store i32 1, i32* %21, align 4
  br label %100

92:                                               ; preds = %76
  %93 = load %struct.socket*, %struct.socket** %10, align 8
  %94 = getelementptr inbounds %struct.socket, %struct.socket* %93, i32 0, i32 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  store i32* %99, i32** %20, align 8
  store i32 0, i32* %21, align 4
  br label %100

100:                                              ; preds = %92, %83
  br label %101

101:                                              ; preds = %139, %100
  %102 = load %struct.socket*, %struct.socket** %10, align 8
  %103 = getelementptr inbounds %struct.socket, %struct.socket* %102, i32 0, i32 9
  %104 = call i64 @TAILQ_EMPTY(%struct.TYPE_10__* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load %struct.socket*, %struct.socket** %10, align 8
  %108 = getelementptr inbounds %struct.socket, %struct.socket* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 0
  br label %111

111:                                              ; preds = %106, %101
  %112 = phi i1 [ false, %101 ], [ %110, %106 ]
  br i1 %112, label %113, label %140

113:                                              ; preds = %111
  %114 = load %struct.socket*, %struct.socket** %10, align 8
  %115 = getelementptr inbounds %struct.socket, %struct.socket* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @SS_CANTRCVMORE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %113
  %121 = load i64, i64* @ECONNABORTED, align 8
  %122 = load %struct.socket*, %struct.socket** %10, align 8
  %123 = getelementptr inbounds %struct.socket, %struct.socket* %122, i32 0, i32 2
  store i64 %121, i64* %123, align 8
  br label %140

124:                                              ; preds = %113
  %125 = load %struct.socket*, %struct.socket** %10, align 8
  %126 = getelementptr inbounds %struct.socket, %struct.socket* %125, i32 0, i32 10
  %127 = ptrtoint i32* %126 to i32
  %128 = load i32*, i32** %20, align 8
  %129 = load i32, i32* @PSOCK, align 4
  %130 = load i32, i32* @PCATCH, align 4
  %131 = or i32 %129, %130
  %132 = call i64 @msleep(i32 %127, i32* %128, i32 %131, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null)
  store i64 %132, i64* %22, align 8
  %133 = load i64, i64* %22, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %124
  %136 = load %struct.socket*, %struct.socket** %10, align 8
  %137 = call i32 @socket_unlock(%struct.socket* %136, i32 1)
  %138 = load i64, i64* %22, align 8
  store i64 %138, i64* %9, align 8
  br label %295

139:                                              ; preds = %124
  br label %101

140:                                              ; preds = %120, %111
  %141 = load %struct.socket*, %struct.socket** %10, align 8
  %142 = getelementptr inbounds %struct.socket, %struct.socket* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %140
  %146 = load %struct.socket*, %struct.socket** %10, align 8
  %147 = getelementptr inbounds %struct.socket, %struct.socket* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  store i64 %148, i64* %22, align 8
  %149 = load %struct.socket*, %struct.socket** %10, align 8
  %150 = getelementptr inbounds %struct.socket, %struct.socket* %149, i32 0, i32 2
  store i64 0, i64* %150, align 8
  %151 = load %struct.socket*, %struct.socket** %10, align 8
  %152 = call i32 @socket_unlock(%struct.socket* %151, i32 1)
  %153 = load i64, i64* %22, align 8
  store i64 %153, i64* %9, align 8
  br label %295

154:                                              ; preds = %140
  %155 = load %struct.socket*, %struct.socket** %10, align 8
  %156 = call i32 @so_acquire_accept_list(%struct.socket* %155, i32* null)
  %157 = load %struct.socket*, %struct.socket** %10, align 8
  %158 = getelementptr inbounds %struct.socket, %struct.socket* %157, i32 0, i32 9
  %159 = call i64 @TAILQ_EMPTY(%struct.TYPE_10__* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %154
  %162 = load %struct.socket*, %struct.socket** %10, align 8
  %163 = call i32 @so_release_accept_list(%struct.socket* %162)
  br label %54

164:                                              ; preds = %154
  %165 = load %struct.socket*, %struct.socket** %10, align 8
  %166 = getelementptr inbounds %struct.socket, %struct.socket* %165, i32 0, i32 9
  %167 = call %struct.socket* @TAILQ_FIRST(%struct.TYPE_10__* %166)
  store %struct.socket* %167, %struct.socket** %19, align 8
  %168 = load %struct.socket*, %struct.socket** %10, align 8
  %169 = getelementptr inbounds %struct.socket, %struct.socket* %168, i32 0, i32 9
  %170 = load %struct.socket*, %struct.socket** %19, align 8
  %171 = load i32, i32* @so_list, align 4
  %172 = call i32 @TAILQ_REMOVE(%struct.TYPE_10__* %169, %struct.socket* %170, i32 %171)
  %173 = load i32, i32* @SS_COMP, align 4
  %174 = xor i32 %173, -1
  %175 = load %struct.socket*, %struct.socket** %19, align 8
  %176 = getelementptr inbounds %struct.socket, %struct.socket* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, %174
  store i32 %178, i32* %176, align 4
  %179 = load %struct.socket*, %struct.socket** %19, align 8
  %180 = getelementptr inbounds %struct.socket, %struct.socket* %179, i32 0, i32 8
  store i32* null, i32** %180, align 8
  %181 = load %struct.socket*, %struct.socket** %10, align 8
  %182 = getelementptr inbounds %struct.socket, %struct.socket* %181, i32 0, i32 7
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %183, -1
  store i32 %184, i32* %182, align 4
  %185 = load %struct.socket*, %struct.socket** %10, align 8
  %186 = call i32 @so_release_accept_list(%struct.socket* %185)
  %187 = load i32, i32* @SOF1_IN_KERNEL_SOCKET, align 4
  %188 = load %struct.socket*, %struct.socket** %19, align 8
  %189 = getelementptr inbounds %struct.socket, %struct.socket* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 8
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 8
  %192 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @net_api_stats, i32 0, i32 1), align 4
  %193 = call i32 @INC_ATOMIC_INT64_LIM(i32 %192)
  %194 = load i32, i32* %17, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %164
  %197 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @net_api_stats, i32 0, i32 0), align 4
  %198 = call i32 @INC_ATOMIC_INT64_LIM(i32 %197)
  br label %199

199:                                              ; preds = %196, %164
  %200 = load %struct.socket*, %struct.socket** %19, align 8
  %201 = getelementptr inbounds %struct.socket, %struct.socket* %200, i32 0, i32 5
  %202 = load i32*, i32** %201, align 8
  %203 = icmp ne i32* %202, null
  br i1 %203, label %204, label %218

204:                                              ; preds = %199
  %205 = load %struct.socket*, %struct.socket** %10, align 8
  %206 = call i32 @socket_unlock(%struct.socket* %205, i32 0)
  %207 = load %struct.socket*, %struct.socket** %19, align 8
  %208 = load %struct.socket*, %struct.socket** %10, align 8
  %209 = call i64 @soacceptfilter(%struct.socket* %207, %struct.socket* %208)
  store i64 %209, i64* %22, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %204
  %212 = load %struct.socket*, %struct.socket** %10, align 8
  %213 = call i32 @sodereference(%struct.socket* %212)
  %214 = load i64, i64* %22, align 8
  store i64 %214, i64* %9, align 8
  br label %295

215:                                              ; preds = %204
  %216 = load %struct.socket*, %struct.socket** %10, align 8
  %217 = call i32 @socket_lock(%struct.socket* %216, i32 0)
  br label %218

218:                                              ; preds = %215, %199
  %219 = load i32, i32* %21, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %233

221:                                              ; preds = %218
  %222 = load %struct.socket*, %struct.socket** %19, align 8
  %223 = getelementptr inbounds %struct.socket, %struct.socket* %222, i32 0, i32 4
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 0
  %226 = load i32* (%struct.socket*, i32)*, i32* (%struct.socket*, i32)** %225, align 8
  %227 = load %struct.socket*, %struct.socket** %19, align 8
  %228 = call i32* %226(%struct.socket* %227, i32 0)
  %229 = load i32, i32* @LCK_MTX_ASSERT_NOTOWNED, align 4
  %230 = call i32 @LCK_MTX_ASSERT(i32* %228, i32 %229)
  %231 = load %struct.socket*, %struct.socket** %19, align 8
  %232 = call i32 @socket_lock(%struct.socket* %231, i32 1)
  br label %233

233:                                              ; preds = %221, %218
  %234 = load %struct.socket*, %struct.socket** %19, align 8
  %235 = call i32 @soacceptlock(%struct.socket* %234, %struct.sockaddr** %18, i32 0)
  %236 = load %struct.socket*, %struct.socket** %10, align 8
  %237 = call i32 @socket_unlock(%struct.socket* %236, i32 1)
  %238 = load i32*, i32** %14, align 8
  %239 = icmp ne i32* %238, null
  br i1 %239, label %240, label %245

240:                                              ; preds = %233
  %241 = load %struct.socket*, %struct.socket** %19, align 8
  %242 = load i32*, i32** %14, align 8
  %243 = load i8*, i8** %15, align 8
  %244 = call i32 @sock_setupcalls_locked(%struct.socket* %241, i32* %242, i8* %243, i32* null, i8* null, i32 0)
  br label %245

245:                                              ; preds = %240, %233
  %246 = load %struct.sockaddr*, %struct.sockaddr** %18, align 8
  %247 = icmp ne %struct.sockaddr* %246, null
  br i1 %247, label %248, label %266

248:                                              ; preds = %245
  %249 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %250 = icmp ne %struct.sockaddr* %249, null
  br i1 %250, label %251, label %266

251:                                              ; preds = %248
  %252 = load i32, i32* %12, align 4
  %253 = load %struct.sockaddr*, %struct.sockaddr** %18, align 8
  %254 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = icmp sgt i32 %252, %255
  br i1 %256, label %257, label %261

257:                                              ; preds = %251
  %258 = load %struct.sockaddr*, %struct.sockaddr** %18, align 8
  %259 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  store i32 %260, i32* %12, align 4
  br label %261

261:                                              ; preds = %257, %251
  %262 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %263 = load %struct.sockaddr*, %struct.sockaddr** %18, align 8
  %264 = load i32, i32* %12, align 4
  %265 = call i32 @memcpy(%struct.sockaddr* %262, %struct.sockaddr* %263, i32 %264)
  br label %266

266:                                              ; preds = %261, %248, %245
  %267 = load %struct.sockaddr*, %struct.sockaddr** %18, align 8
  %268 = icmp ne %struct.sockaddr* %267, null
  br i1 %268, label %269, label %273

269:                                              ; preds = %266
  %270 = load %struct.sockaddr*, %struct.sockaddr** %18, align 8
  %271 = load i32, i32* @M_SONAME, align 4
  %272 = call i32 @FREE(%struct.sockaddr* %270, i32 %271)
  br label %273

273:                                              ; preds = %269, %266
  %274 = load %struct.socket*, %struct.socket** %19, align 8
  %275 = getelementptr inbounds %struct.socket, %struct.socket* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @SOF_DEFUNCT, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %285

280:                                              ; preds = %273
  %281 = call i32 (...) @current_proc()
  %282 = load %struct.socket*, %struct.socket** %19, align 8
  %283 = load i32, i32* @SHUTDOWN_SOCKET_LEVEL_DISCONNECT_INTERNAL, align 4
  %284 = call i32 @sodefunct(i32 %281, %struct.socket* %282, i32 %283)
  br label %285

285:                                              ; preds = %280, %273
  %286 = load %struct.socket*, %struct.socket** %19, align 8
  %287 = load %struct.socket**, %struct.socket*** %16, align 8
  store %struct.socket* %286, %struct.socket** %287, align 8
  %288 = load i32, i32* %21, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %285
  %291 = load %struct.socket*, %struct.socket** %19, align 8
  %292 = call i32 @socket_unlock(%struct.socket* %291, i32 1)
  br label %293

293:                                              ; preds = %290, %285
  %294 = load i64, i64* %22, align 8
  store i64 %294, i64* %9, align 8
  br label %295

295:                                              ; preds = %293, %211, %145, %135, %72, %49, %39, %28
  %296 = load i64, i64* %9, align 8
  ret i64 %296
}

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

declare dso_local i64 @TAILQ_EMPTY(%struct.TYPE_10__*) #1

declare dso_local i64 @msleep(i32, i32*, i32, i8*, i32*) #1

declare dso_local i32 @so_acquire_accept_list(%struct.socket*, i32*) #1

declare dso_local i32 @so_release_accept_list(%struct.socket*) #1

declare dso_local %struct.socket* @TAILQ_FIRST(%struct.TYPE_10__*) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.TYPE_10__*, %struct.socket*, i32) #1

declare dso_local i32 @INC_ATOMIC_INT64_LIM(i32) #1

declare dso_local i64 @soacceptfilter(%struct.socket*, %struct.socket*) #1

declare dso_local i32 @sodereference(%struct.socket*) #1

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @soacceptlock(%struct.socket*, %struct.sockaddr**, i32) #1

declare dso_local i32 @sock_setupcalls_locked(%struct.socket*, i32*, i8*, i32*, i8*, i32) #1

declare dso_local i32 @memcpy(%struct.sockaddr*, %struct.sockaddr*, i32) #1

declare dso_local i32 @FREE(%struct.sockaddr*, i32) #1

declare dso_local i32 @sodefunct(i32, %struct.socket*, i32) #1

declare dso_local i32 @current_proc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
