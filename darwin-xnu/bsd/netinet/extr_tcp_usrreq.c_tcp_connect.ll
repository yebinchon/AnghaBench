; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_usrreq.c_tcp_connect.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_usrreq.c_tcp_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.tcpcb = type { i64, i32, i32, i32*, i64, %struct.inpcb* }
%struct.inpcb = type { i64, i64, i64, %struct.TYPE_5__, %struct.TYPE_7__*, %struct.TYPE_8__, i32, %struct.ifnet*, %struct.in_addr, %struct.socket* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.ifnet = type { i32 }
%struct.in_addr = type { i64 }
%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.proc = type { i32 }
%struct.sockaddr_in = type { i64, %struct.TYPE_8__ }

@IFSCOPE_NONE = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i64 0, align 8
@WNT_RELEASE = common dso_local global i32 0, align 4
@WNT_STOPUSING = common dso_local global i64 0, align 8
@TCPS_TIME_WAIT = common dso_local global i64 0, align 8
@tcp_now = common dso_local global i64 0, align 8
@tcp_msl = common dso_local global i32 0, align 4
@TF_RCVD_CC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"tcp_connect: inp=0x%llx err=EADDRINUSE\0A\00", align 1
@EADDRINUSE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@INP_INADDR_ANY = common dso_local global i32 0, align 4
@tcpstat = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@TCPS_SYN_SENT = common dso_local global i64 0, align 8
@TCPT_KEEP = common dso_local global i64 0, align 8
@nstat_collect = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpcb*, %struct.sockaddr*, %struct.proc*)* @tcp_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_connect(%struct.tcpcb* %0, %struct.sockaddr* %1, %struct.proc* %2) #0 {
  %4 = alloca %struct.tcpcb*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.inpcb*, align 8
  %8 = alloca %struct.inpcb*, align 8
  %9 = alloca %struct.socket*, align 8
  %10 = alloca %struct.tcpcb*, align 8
  %11 = alloca %struct.sockaddr_in*, align 8
  %12 = alloca %struct.in_addr, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ifnet*, align 8
  %15 = alloca %struct.in_addr, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store %struct.proc* %2, %struct.proc** %6, align 8
  %16 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %17 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %16, i32 0, i32 5
  %18 = load %struct.inpcb*, %struct.inpcb** %17, align 8
  store %struct.inpcb* %18, %struct.inpcb** %7, align 8
  %19 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %20 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %19, i32 0, i32 9
  %21 = load %struct.socket*, %struct.socket** %20, align 8
  store %struct.socket* %21, %struct.socket** %9, align 8
  %22 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %23 = bitcast %struct.sockaddr* %22 to i8*
  %24 = bitcast i8* %23 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %24, %struct.sockaddr_in** %11, align 8
  store i32 0, i32* %13, align 4
  store %struct.ifnet* null, %struct.ifnet** %14, align 8
  %25 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %26 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %3
  %30 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %31 = load %struct.proc*, %struct.proc** %6, align 8
  %32 = call i32 @in_pcbbind(%struct.inpcb* %30, i32* null, %struct.proc* %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %311

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %3
  %38 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %39 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %40 = load i32, i32* @IFSCOPE_NONE, align 4
  %41 = call i32 @in_pcbladdr(%struct.inpcb* %38, %struct.sockaddr* %39, %struct.in_addr* %12, i32 %40, %struct.ifnet** %14, i32 0)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %311

45:                                               ; preds = %37
  %46 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %47 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %46, i32 0, i32 9
  %48 = load %struct.socket*, %struct.socket** %47, align 8
  %49 = call i32 @socket_unlock(%struct.socket* %48, i32 0)
  %50 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %51 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %50, i32 0, i32 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %54 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %53, i32 0, i32 1
  %55 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %56 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %59 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %58, i32 0, i32 8
  %60 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @INADDR_ANY, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %45
  %65 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %66 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %65, i32 0, i32 8
  %67 = bitcast %struct.in_addr* %15 to i8*
  %68 = bitcast %struct.in_addr* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 8, i1 false)
  br label %72

69:                                               ; preds = %45
  %70 = bitcast %struct.in_addr* %15 to i8*
  %71 = bitcast %struct.in_addr* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 8, i1 false)
  br label %72

72:                                               ; preds = %69, %64
  %73 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %74 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %15, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call %struct.inpcb* @in_pcblookup_hash(%struct.TYPE_7__* %52, i64 %77, i64 %57, i64 %79, i64 %75, i32 0, i32* null)
  store %struct.inpcb* %80, %struct.inpcb** %8, align 8
  %81 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %82 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %81, i32 0, i32 9
  %83 = load %struct.socket*, %struct.socket** %82, align 8
  %84 = call i32 @socket_lock(%struct.socket* %83, i32 0)
  %85 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %86 = icmp ne %struct.inpcb* %85, null
  br i1 %86, label %87, label %170

87:                                               ; preds = %72
  %88 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %89 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %90 = icmp ne %struct.inpcb* %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %93 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %92, i32 0, i32 9
  %94 = load %struct.socket*, %struct.socket** %93, align 8
  %95 = call i32 @socket_lock(%struct.socket* %94, i32 1)
  br label %96

96:                                               ; preds = %91, %87
  %97 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %98 = load i32, i32* @WNT_RELEASE, align 4
  %99 = call i64 @in_pcb_checkstate(%struct.inpcb* %97, i32 %98, i32 1)
  %100 = load i64, i64* @WNT_STOPUSING, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %96
  %103 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %104 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %105 = icmp ne %struct.inpcb* %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %108 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %107, i32 0, i32 9
  %109 = load %struct.socket*, %struct.socket** %108, align 8
  %110 = call i32 @socket_unlock(%struct.socket* %109, i32 1)
  br label %111

111:                                              ; preds = %106, %102
  br label %171

112:                                              ; preds = %96
  %113 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %114 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %115 = icmp ne %struct.inpcb* %113, %114
  br i1 %115, label %116, label %145

116:                                              ; preds = %112
  %117 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %118 = call %struct.tcpcb* @intotcpcb(%struct.inpcb* %117)
  store %struct.tcpcb* %118, %struct.tcpcb** %10, align 8
  %119 = icmp ne %struct.tcpcb* %118, null
  br i1 %119, label %120, label %145

120:                                              ; preds = %116
  %121 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %122 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @TCPS_TIME_WAIT, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %145

126:                                              ; preds = %120
  %127 = load i64, i64* @tcp_now, align 8
  %128 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %129 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = sub nsw i64 %127, %130
  %132 = trunc i64 %131 to i32
  %133 = load i32, i32* @tcp_msl, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %145

135:                                              ; preds = %126
  %136 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %137 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @TF_RCVD_CC, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %135
  %143 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %144 = call %struct.tcpcb* @tcp_close(%struct.tcpcb* %143)
  store %struct.tcpcb* %144, %struct.tcpcb** %10, align 8
  br label %160

145:                                              ; preds = %135, %126, %120, %116, %112
  %146 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %147 = call i64 @VM_KERNEL_ADDRPERM(%struct.inpcb* %146)
  %148 = trunc i64 %147 to i32
  %149 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %148)
  %150 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %151 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %152 = icmp ne %struct.inpcb* %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %145
  %154 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %155 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %154, i32 0, i32 9
  %156 = load %struct.socket*, %struct.socket** %155, align 8
  %157 = call i32 @socket_unlock(%struct.socket* %156, i32 1)
  br label %158

158:                                              ; preds = %153, %145
  %159 = load i32, i32* @EADDRINUSE, align 4
  store i32 %159, i32* %13, align 4
  br label %311

160:                                              ; preds = %142
  %161 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %162 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %163 = icmp ne %struct.inpcb* %161, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %160
  %165 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %166 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %165, i32 0, i32 9
  %167 = load %struct.socket*, %struct.socket** %166, align 8
  %168 = call i32 @socket_unlock(%struct.socket* %167, i32 1)
  br label %169

169:                                              ; preds = %164, %160
  br label %170

170:                                              ; preds = %169, %72
  br label %171

171:                                              ; preds = %170, %111
  %172 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %173 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %172, i32 0, i32 8
  %174 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @INADDR_ANY, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %171
  %179 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %12, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  br label %186

181:                                              ; preds = %171
  %182 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %183 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %182, i32 0, i32 8
  %184 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  br label %186

186:                                              ; preds = %181, %178
  %187 = phi i64 [ %180, %178 ], [ %185, %181 ]
  %188 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %189 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp eq i64 %187, %191
  br i1 %192, label %193, label %203

193:                                              ; preds = %186
  %194 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %195 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %198 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp eq i64 %196, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %193
  %202 = load i32, i32* @EINVAL, align 4
  store i32 %202, i32* %13, align 4
  br label %311

203:                                              ; preds = %193, %186
  %204 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %205 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %204, i32 0, i32 4
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @lck_rw_try_lock_exclusive(i32 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %226, label %211

211:                                              ; preds = %203
  %212 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %213 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %212, i32 0, i32 9
  %214 = load %struct.socket*, %struct.socket** %213, align 8
  %215 = call i32 @socket_unlock(%struct.socket* %214, i32 0)
  %216 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %217 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %216, i32 0, i32 4
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @lck_rw_lock_exclusive(i32 %220)
  %222 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %223 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %222, i32 0, i32 9
  %224 = load %struct.socket*, %struct.socket** %223, align 8
  %225 = call i32 @socket_lock(%struct.socket* %224, i32 0)
  br label %226

226:                                              ; preds = %211, %203
  %227 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %228 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %227, i32 0, i32 8
  %229 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @INADDR_ANY, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %246

233:                                              ; preds = %226
  %234 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %235 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %234, i32 0, i32 8
  %236 = bitcast %struct.in_addr* %235 to i8*
  %237 = bitcast %struct.in_addr* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %236, i8* align 8 %237, i64 8, i1 false)
  %238 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %239 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %240 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %239, i32 0, i32 7
  store %struct.ifnet* %238, %struct.ifnet** %240, align 8
  %241 = load i32, i32* @INP_INADDR_ANY, align 4
  %242 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %243 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %242, i32 0, i32 6
  %244 = load i32, i32* %243, align 8
  %245 = or i32 %244, %241
  store i32 %245, i32* %243, align 8
  br label %246

246:                                              ; preds = %233, %226
  %247 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %248 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %247, i32 0, i32 5
  %249 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %250 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %249, i32 0, i32 1
  %251 = bitcast %struct.TYPE_8__* %248 to i8*
  %252 = bitcast %struct.TYPE_8__* %250 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %251, i8* align 8 %252, i64 8, i1 false)
  %253 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %254 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %257 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %256, i32 0, i32 1
  store i64 %255, i64* %257, align 8
  %258 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %259 = call i32 @in_pcbrehash(%struct.inpcb* %258)
  %260 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %261 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %260, i32 0, i32 4
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @lck_rw_done(i32 %264)
  %266 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %267 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %266, i32 0, i32 2
  %268 = load i64, i64* %267, align 8
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %246
  %271 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %272 = call i64 @inp_calc_flowhash(%struct.inpcb* %271)
  %273 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %274 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %273, i32 0, i32 2
  store i64 %272, i64* %274, align 8
  br label %275

275:                                              ; preds = %270, %246
  %276 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %277 = load %struct.socket*, %struct.socket** %9, align 8
  %278 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %279 = call i32 @tcp_set_max_rwinscale(%struct.tcpcb* %276, %struct.socket* %277, %struct.ifnet* %278)
  %280 = load %struct.socket*, %struct.socket** %9, align 8
  %281 = call i32 @soisconnecting(%struct.socket* %280)
  %282 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tcpstat, i32 0, i32 0), align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tcpstat, i32 0, i32 0), align 4
  %284 = load i64, i64* @TCPS_SYN_SENT, align 8
  %285 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %286 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %285, i32 0, i32 0
  store i64 %284, i64* %286, align 8
  %287 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %288 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %289 = call i32 @TCP_CONN_KEEPINIT(%struct.tcpcb* %288)
  %290 = call i32 @OFFSET_FROM_START(%struct.tcpcb* %287, i32 %289)
  %291 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %292 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %291, i32 0, i32 3
  %293 = load i32*, i32** %292, align 8
  %294 = load i64, i64* @TCPT_KEEP, align 8
  %295 = getelementptr inbounds i32, i32* %293, i64 %294
  store i32 %290, i32* %295, align 4
  %296 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %297 = call i32 @tcp_new_isn(%struct.tcpcb* %296)
  %298 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %299 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %298, i32 0, i32 2
  store i32 %297, i32* %299, align 4
  %300 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %301 = call i32 @tcp_sendseqinit(%struct.tcpcb* %300)
  %302 = load i64, i64* @nstat_collect, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %310

304:                                              ; preds = %275
  %305 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %306 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %305, i32 0, i32 3
  %307 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = call i32 @nstat_route_connect_attempt(i32 %308)
  br label %310

310:                                              ; preds = %304, %275
  br label %311

311:                                              ; preds = %310, %201, %158, %44, %35
  %312 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %313 = icmp ne %struct.ifnet* %312, null
  br i1 %313, label %314, label %317

314:                                              ; preds = %311
  %315 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %316 = call i32 @ifnet_release(%struct.ifnet* %315)
  br label %317

317:                                              ; preds = %314, %311
  %318 = load i32, i32* %13, align 4
  ret i32 %318
}

declare dso_local i32 @in_pcbbind(%struct.inpcb*, i32*, %struct.proc*) #1

declare dso_local i32 @in_pcbladdr(%struct.inpcb*, %struct.sockaddr*, %struct.in_addr*, i32, %struct.ifnet**, i32) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

declare dso_local %struct.inpcb* @in_pcblookup_hash(%struct.TYPE_7__*, i64, i64, i64, i64, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i64 @in_pcb_checkstate(%struct.inpcb*, i32, i32) #1

declare dso_local %struct.tcpcb* @intotcpcb(%struct.inpcb*) #1

declare dso_local %struct.tcpcb* @tcp_close(%struct.tcpcb*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.inpcb*) #1

declare dso_local i32 @lck_rw_try_lock_exclusive(i32) #1

declare dso_local i32 @lck_rw_lock_exclusive(i32) #1

declare dso_local i32 @in_pcbrehash(%struct.inpcb*) #1

declare dso_local i32 @lck_rw_done(i32) #1

declare dso_local i64 @inp_calc_flowhash(%struct.inpcb*) #1

declare dso_local i32 @tcp_set_max_rwinscale(%struct.tcpcb*, %struct.socket*, %struct.ifnet*) #1

declare dso_local i32 @soisconnecting(%struct.socket*) #1

declare dso_local i32 @OFFSET_FROM_START(%struct.tcpcb*, i32) #1

declare dso_local i32 @TCP_CONN_KEEPINIT(%struct.tcpcb*) #1

declare dso_local i32 @tcp_new_isn(%struct.tcpcb*) #1

declare dso_local i32 @tcp_sendseqinit(%struct.tcpcb*) #1

declare dso_local i32 @nstat_route_connect_attempt(i32) #1

declare dso_local i32 @ifnet_release(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
