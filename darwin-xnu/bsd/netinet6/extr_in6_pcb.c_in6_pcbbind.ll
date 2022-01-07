; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_pcb.c_in6_pcbbind.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_pcb.c_in6_pcbbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32, i64, %struct.ifnet*, i64, i8*, %struct.socket*, %struct.TYPE_2__, %struct.inpcbinfo* }
%struct.ifnet = type { i32 }
%struct.socket = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.inpcbinfo = type { i32 }
%struct.sockaddr = type { i32, i64 }
%struct.proc = type { i32 }
%struct.sockaddr_in6 = type { i64, i8*, i64, i64 }
%struct.ifaddr = type { %struct.ifnet* }
%struct.sockaddr_in = type { i32 }
%struct.in6_ifaddr = type { i32 }

@SO_REUSEPORT = common dso_local global i32 0, align 4
@in6_ifaddrs = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@IN6_IFF_ANYCAST = common dso_local global i32 0, align 4
@IN6_IFF_NOTREADY = common dso_local global i32 0, align 4
@IN6_IFF_DETACHED = common dso_local global i32 0, align 4
@IN6_IFF_CLAT46 = common dso_local global i32 0, align 4
@IPV6PORT_RESERVED = common dso_local global i64 0, align 8
@PRIV_NETINET_RESERVEDPORT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@INPLOOKUP_WILDCARD = common dso_local global i32 0, align 4
@SOF_REUSESHAREUID = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@IN6P_IPV6_V6ONLY = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i64 0, align 8
@INPCB_STATE_DEAD = common dso_local global i64 0, align 8
@ECONNABORTED = common dso_local global i32 0, align 4
@in6addr_any = common dso_local global i8* null, align 8
@EAGAIN = common dso_local global i32 0, align 4
@sock_evt_bound = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_pcbbind(%struct.inpcb* %0, %struct.sockaddr* %1, %struct.proc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inpcb*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.inpcbinfo*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ifnet*, align 8
  %14 = alloca %struct.sockaddr_in6, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ifaddr*, align 8
  %18 = alloca %struct.inpcb*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.sockaddr_in, align 4
  %21 = alloca %struct.sockaddr_in, align 4
  %22 = alloca i32, align 4
  store %struct.inpcb* %0, %struct.inpcb** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.proc* %2, %struct.proc** %7, align 8
  %23 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %24 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %23, i32 0, i32 5
  %25 = load %struct.socket*, %struct.socket** %24, align 8
  store %struct.socket* %25, %struct.socket** %8, align 8
  %26 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %27 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %26, i32 0, i32 7
  %28 = load %struct.inpcbinfo*, %struct.inpcbinfo** %27, align 8
  store %struct.inpcbinfo* %28, %struct.inpcbinfo** %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %29 = load %struct.socket*, %struct.socket** %8, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SO_REUSEPORT, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %12, align 4
  store %struct.ifnet* null, %struct.ifnet** %13, align 8
  %34 = load i32, i32* @in6_ifaddrs, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %3
  %37 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %37, i32* %4, align 4
  br label %532

38:                                               ; preds = %3
  %39 = load %struct.socket*, %struct.socket** %8, align 8
  %40 = getelementptr inbounds %struct.socket, %struct.socket* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SO_REUSEADDR, align 4
  %43 = load i32, i32* @SO_REUSEPORT, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  store i32 1, i32* %11, align 4
  br label %48

48:                                               ; preds = %47, %38
  %49 = load %struct.socket*, %struct.socket** %8, align 8
  %50 = call i32 @socket_unlock(%struct.socket* %49, i32 0)
  %51 = load %struct.inpcbinfo*, %struct.inpcbinfo** %9, align 8
  %52 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @lck_rw_lock_exclusive(i32 %53)
  %55 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %56 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %48
  %60 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %61 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %60, i32 0, i32 4
  %62 = call i64 @IN6_IS_ADDR_UNSPECIFIED(i8** %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %59, %48
  %65 = load %struct.inpcbinfo*, %struct.inpcbinfo** %9, align 8
  %66 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @lck_rw_done(i32 %67)
  %69 = load %struct.socket*, %struct.socket** %8, align 8
  %70 = call i32 @socket_lock(%struct.socket* %69, i32 0)
  %71 = load i32, i32* @EINVAL, align 4
  store i32 %71, i32* %4, align 4
  br label %532

72:                                               ; preds = %59
  %73 = call i32 @bzero(%struct.sockaddr_in6* %14, i32 32)
  %74 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %75 = icmp ne %struct.sockaddr* %74, null
  br i1 %75, label %76, label %439

76:                                               ; preds = %72
  %77 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %78 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = icmp ne i64 %80, 32
  br i1 %81, label %82, label %90

82:                                               ; preds = %76
  %83 = load %struct.inpcbinfo*, %struct.inpcbinfo** %9, align 8
  %84 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @lck_rw_done(i32 %85)
  %87 = load %struct.socket*, %struct.socket** %8, align 8
  %88 = call i32 @socket_lock(%struct.socket* %87, i32 0)
  %89 = load i32, i32* @EINVAL, align 4
  store i32 %89, i32* %4, align 4
  br label %532

90:                                               ; preds = %76
  %91 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %92 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @AF_INET6, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %90
  %97 = load %struct.inpcbinfo*, %struct.inpcbinfo** %9, align 8
  %98 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @lck_rw_done(i32 %99)
  %101 = load %struct.socket*, %struct.socket** %8, align 8
  %102 = call i32 @socket_lock(%struct.socket* %101, i32 0)
  %103 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %103, i32* %4, align 4
  br label %532

104:                                              ; preds = %90
  %105 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %106 = call %struct.sockaddr_in6* @SIN6(%struct.sockaddr* %105)
  %107 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %10, align 8
  %109 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %110 = call %struct.sockaddr_in6* @SIN6(%struct.sockaddr* %109)
  %111 = bitcast %struct.sockaddr_in6* %14 to i8*
  %112 = bitcast %struct.sockaddr_in6* %110 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %111, i8* align 8 %112, i64 32, i1 false)
  %113 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %14, i32 0, i32 1
  %114 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %115 = call i64 @in6_embedscope(i8** %113, %struct.sockaddr_in6* %14, %struct.inpcb* %114, i32* null, i32* null)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %104
  %118 = load %struct.inpcbinfo*, %struct.inpcbinfo** %9, align 8
  %119 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @lck_rw_done(i32 %120)
  %122 = load %struct.socket*, %struct.socket** %8, align 8
  %123 = call i32 @socket_lock(%struct.socket* %122, i32 0)
  %124 = load i32, i32* @EINVAL, align 4
  store i32 %124, i32* %4, align 4
  br label %532

125:                                              ; preds = %104
  %126 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %14, i32 0, i32 3
  store i64 0, i64* %126, align 8
  %127 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %14, i32 0, i32 2
  store i64 0, i64* %127, align 8
  %128 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %14, i32 0, i32 0
  store i64 0, i64* %128, align 8
  %129 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %14, i32 0, i32 1
  %130 = call i64 @IN6_IS_ADDR_MULTICAST(i8** %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %125
  %133 = load %struct.socket*, %struct.socket** %8, align 8
  %134 = getelementptr inbounds %struct.socket, %struct.socket* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @SO_REUSEADDR, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %132
  %140 = load i32, i32* @SO_REUSEADDR, align 4
  %141 = load i32, i32* @SO_REUSEPORT, align 4
  %142 = or i32 %140, %141
  store i32 %142, i32* %12, align 4
  br label %143

143:                                              ; preds = %139, %132
  br label %199

144:                                              ; preds = %125
  %145 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %14, i32 0, i32 1
  %146 = call i64 @IN6_IS_ADDR_UNSPECIFIED(i8** %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %198, label %148

148:                                              ; preds = %144
  %149 = call i32 @SA(%struct.sockaddr_in6* %14)
  %150 = call %struct.ifaddr* @ifa_ifwithaddr(i32 %149)
  store %struct.ifaddr* %150, %struct.ifaddr** %17, align 8
  %151 = load %struct.ifaddr*, %struct.ifaddr** %17, align 8
  %152 = icmp eq %struct.ifaddr* %151, null
  br i1 %152, label %153, label %161

153:                                              ; preds = %148
  %154 = load %struct.inpcbinfo*, %struct.inpcbinfo** %9, align 8
  %155 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @lck_rw_done(i32 %156)
  %158 = load %struct.socket*, %struct.socket** %8, align 8
  %159 = call i32 @socket_lock(%struct.socket* %158, i32 0)
  %160 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %160, i32* %4, align 4
  br label %532

161:                                              ; preds = %148
  %162 = load %struct.ifaddr*, %struct.ifaddr** %17, align 8
  %163 = call i32 @IFA_LOCK_SPIN(%struct.ifaddr* %162)
  %164 = load %struct.ifaddr*, %struct.ifaddr** %17, align 8
  %165 = bitcast %struct.ifaddr* %164 to %struct.in6_ifaddr*
  %166 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @IN6_IFF_ANYCAST, align 4
  %169 = load i32, i32* @IN6_IFF_NOTREADY, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @IN6_IFF_DETACHED, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @IN6_IFF_CLAT46, align 4
  %174 = or i32 %172, %173
  %175 = and i32 %167, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %189

177:                                              ; preds = %161
  %178 = load %struct.ifaddr*, %struct.ifaddr** %17, align 8
  %179 = call i32 @IFA_UNLOCK(%struct.ifaddr* %178)
  %180 = load %struct.ifaddr*, %struct.ifaddr** %17, align 8
  %181 = call i32 @IFA_REMREF(%struct.ifaddr* %180)
  %182 = load %struct.inpcbinfo*, %struct.inpcbinfo** %9, align 8
  %183 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @lck_rw_done(i32 %184)
  %186 = load %struct.socket*, %struct.socket** %8, align 8
  %187 = call i32 @socket_lock(%struct.socket* %186, i32 0)
  %188 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %188, i32* %4, align 4
  br label %532

189:                                              ; preds = %161
  %190 = load %struct.ifaddr*, %struct.ifaddr** %17, align 8
  %191 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %190, i32 0, i32 0
  %192 = load %struct.ifnet*, %struct.ifnet** %191, align 8
  store %struct.ifnet* %192, %struct.ifnet** %13, align 8
  %193 = load %struct.ifaddr*, %struct.ifaddr** %17, align 8
  %194 = call i32 @IFA_UNLOCK(%struct.ifaddr* %193)
  %195 = load %struct.ifaddr*, %struct.ifaddr** %17, align 8
  %196 = call i32 @IFA_REMREF(%struct.ifaddr* %195)
  br label %197

197:                                              ; preds = %189
  br label %198

198:                                              ; preds = %197, %144
  br label %199

199:                                              ; preds = %198, %143
  %200 = load i64, i64* %10, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %438

202:                                              ; preds = %199
  %203 = load i64, i64* %10, align 8
  %204 = call i64 @ntohs(i64 %203)
  %205 = load i64, i64* @IPV6PORT_RESERVED, align 8
  %206 = icmp slt i64 %204, %205
  br i1 %206, label %207, label %229

207:                                              ; preds = %202
  %208 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %14, i32 0, i32 1
  %209 = call i64 @IN6_IS_ADDR_UNSPECIFIED(i8** %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %229, label %211

211:                                              ; preds = %207
  %212 = load %struct.proc*, %struct.proc** %7, align 8
  %213 = call i32 @kauth_cred_proc_ref(%struct.proc* %212)
  store i32 %213, i32* %16, align 4
  %214 = load i32, i32* %16, align 4
  %215 = load i32, i32* @PRIV_NETINET_RESERVEDPORT, align 4
  %216 = call i32 @priv_check_cred(i32 %214, i32 %215, i32 0)
  store i32 %216, i32* %15, align 4
  %217 = call i32 @kauth_cred_unref(i32* %16)
  %218 = load i32, i32* %15, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %228

220:                                              ; preds = %211
  %221 = load %struct.inpcbinfo*, %struct.inpcbinfo** %9, align 8
  %222 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @lck_rw_done(i32 %223)
  %225 = load %struct.socket*, %struct.socket** %8, align 8
  %226 = call i32 @socket_lock(%struct.socket* %225, i32 0)
  %227 = load i32, i32* @EACCES, align 4
  store i32 %227, i32* %4, align 4
  br label %532

228:                                              ; preds = %211
  br label %229

229:                                              ; preds = %228, %207, %202
  %230 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %14, i32 0, i32 1
  %231 = call i64 @IN6_IS_ADDR_MULTICAST(i8** %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %358, label %233

233:                                              ; preds = %229
  %234 = load %struct.socket*, %struct.socket** %8, align 8
  %235 = getelementptr inbounds %struct.socket, %struct.socket* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = call i64 @kauth_cred_getuid(i32 %236)
  store i64 %237, i64* %19, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %358

239:                                              ; preds = %233
  %240 = load %struct.inpcbinfo*, %struct.inpcbinfo** %9, align 8
  %241 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %14, i32 0, i32 1
  %242 = load i64, i64* %10, align 8
  %243 = load i32, i32* @INPLOOKUP_WILDCARD, align 4
  %244 = call %struct.inpcb* @in6_pcblookup_local_and_cleanup(%struct.inpcbinfo* %240, i8** %241, i64 %242, i32 %243)
  store %struct.inpcb* %244, %struct.inpcb** %18, align 8
  %245 = load %struct.inpcb*, %struct.inpcb** %18, align 8
  %246 = icmp ne %struct.inpcb* %245, null
  br i1 %246, label %247, label %291

247:                                              ; preds = %239
  %248 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %14, i32 0, i32 1
  %249 = call i64 @IN6_IS_ADDR_UNSPECIFIED(i8** %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %265

251:                                              ; preds = %247
  %252 = load %struct.inpcb*, %struct.inpcb** %18, align 8
  %253 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %252, i32 0, i32 4
  %254 = call i64 @IN6_IS_ADDR_UNSPECIFIED(i8** %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %265

256:                                              ; preds = %251
  %257 = load %struct.inpcb*, %struct.inpcb** %18, align 8
  %258 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %257, i32 0, i32 5
  %259 = load %struct.socket*, %struct.socket** %258, align 8
  %260 = getelementptr inbounds %struct.socket, %struct.socket* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @SO_REUSEPORT, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %291, label %265

265:                                              ; preds = %256, %251, %247
  %266 = load i64, i64* %19, align 8
  %267 = load %struct.inpcb*, %struct.inpcb** %18, align 8
  %268 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %267, i32 0, i32 5
  %269 = load %struct.socket*, %struct.socket** %268, align 8
  %270 = getelementptr inbounds %struct.socket, %struct.socket* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 4
  %272 = call i64 @kauth_cred_getuid(i32 %271)
  %273 = icmp ne i64 %266, %272
  br i1 %273, label %274, label %291

274:                                              ; preds = %265
  %275 = load %struct.inpcb*, %struct.inpcb** %18, align 8
  %276 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %275, i32 0, i32 5
  %277 = load %struct.socket*, %struct.socket** %276, align 8
  %278 = getelementptr inbounds %struct.socket, %struct.socket* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* @SOF_REUSESHAREUID, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %291, label %283

283:                                              ; preds = %274
  %284 = load %struct.inpcbinfo*, %struct.inpcbinfo** %9, align 8
  %285 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @lck_rw_done(i32 %286)
  %288 = load %struct.socket*, %struct.socket** %8, align 8
  %289 = call i32 @socket_lock(%struct.socket* %288, i32 0)
  %290 = load i32, i32* @EADDRINUSE, align 4
  store i32 %290, i32* %4, align 4
  br label %532

291:                                              ; preds = %274, %265, %256, %239
  %292 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %293 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @IN6P_IPV6_V6ONLY, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %357, label %298

298:                                              ; preds = %291
  %299 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %14, i32 0, i32 1
  %300 = call i64 @IN6_IS_ADDR_UNSPECIFIED(i8** %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %357

302:                                              ; preds = %298
  %303 = call i32 @in6_sin6_2_sin(%struct.sockaddr_in* %20, %struct.sockaddr_in6* %14)
  %304 = load %struct.inpcbinfo*, %struct.inpcbinfo** %9, align 8
  %305 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %20, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = load i64, i64* %10, align 8
  %308 = load i32, i32* @INPLOOKUP_WILDCARD, align 4
  %309 = call %struct.inpcb* @in_pcblookup_local_and_cleanup(%struct.inpcbinfo* %304, i32 %306, i64 %307, i32 %308)
  store %struct.inpcb* %309, %struct.inpcb** %18, align 8
  %310 = load %struct.inpcb*, %struct.inpcb** %18, align 8
  %311 = icmp ne %struct.inpcb* %310, null
  br i1 %311, label %312, label %356

312:                                              ; preds = %302
  %313 = load %struct.inpcb*, %struct.inpcb** %18, align 8
  %314 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %313, i32 0, i32 5
  %315 = load %struct.socket*, %struct.socket** %314, align 8
  %316 = getelementptr inbounds %struct.socket, %struct.socket* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @SO_REUSEPORT, align 4
  %319 = and i32 %317, %318
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %356, label %321

321:                                              ; preds = %312
  %322 = load %struct.socket*, %struct.socket** %8, align 8
  %323 = getelementptr inbounds %struct.socket, %struct.socket* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 4
  %325 = call i64 @kauth_cred_getuid(i32 %324)
  %326 = load %struct.inpcb*, %struct.inpcb** %18, align 8
  %327 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %326, i32 0, i32 5
  %328 = load %struct.socket*, %struct.socket** %327, align 8
  %329 = getelementptr inbounds %struct.socket, %struct.socket* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 4
  %331 = call i64 @kauth_cred_getuid(i32 %330)
  %332 = icmp ne i64 %325, %331
  br i1 %332, label %333, label %356

333:                                              ; preds = %321
  %334 = load %struct.inpcb*, %struct.inpcb** %18, align 8
  %335 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %334, i32 0, i32 6
  %336 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = load i64, i64* @INADDR_ANY, align 8
  %339 = icmp ne i64 %337, %338
  br i1 %339, label %348, label %340

340:                                              ; preds = %333
  %341 = load %struct.socket*, %struct.socket** %8, align 8
  %342 = call i64 @SOCK_DOM(%struct.socket* %341)
  %343 = load %struct.inpcb*, %struct.inpcb** %18, align 8
  %344 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %343, i32 0, i32 5
  %345 = load %struct.socket*, %struct.socket** %344, align 8
  %346 = call i64 @SOCK_DOM(%struct.socket* %345)
  %347 = icmp eq i64 %342, %346
  br i1 %347, label %348, label %356

348:                                              ; preds = %340, %333
  %349 = load %struct.inpcbinfo*, %struct.inpcbinfo** %9, align 8
  %350 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @lck_rw_done(i32 %351)
  %353 = load %struct.socket*, %struct.socket** %8, align 8
  %354 = call i32 @socket_lock(%struct.socket* %353, i32 0)
  %355 = load i32, i32* @EADDRINUSE, align 4
  store i32 %355, i32* %4, align 4
  br label %532

356:                                              ; preds = %340, %321, %312, %302
  br label %357

357:                                              ; preds = %356, %298, %291
  br label %358

358:                                              ; preds = %357, %233, %229
  %359 = load %struct.inpcbinfo*, %struct.inpcbinfo** %9, align 8
  %360 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %14, i32 0, i32 1
  %361 = load i64, i64* %10, align 8
  %362 = load i32, i32* %11, align 4
  %363 = call %struct.inpcb* @in6_pcblookup_local_and_cleanup(%struct.inpcbinfo* %359, i8** %360, i64 %361, i32 %362)
  store %struct.inpcb* %363, %struct.inpcb** %18, align 8
  %364 = load %struct.inpcb*, %struct.inpcb** %18, align 8
  %365 = icmp ne %struct.inpcb* %364, null
  br i1 %365, label %366, label %383

366:                                              ; preds = %358
  %367 = load i32, i32* %12, align 4
  %368 = load %struct.inpcb*, %struct.inpcb** %18, align 8
  %369 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %368, i32 0, i32 5
  %370 = load %struct.socket*, %struct.socket** %369, align 8
  %371 = getelementptr inbounds %struct.socket, %struct.socket* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 4
  %373 = and i32 %367, %372
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %375, label %383

375:                                              ; preds = %366
  %376 = load %struct.inpcbinfo*, %struct.inpcbinfo** %9, align 8
  %377 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = call i32 @lck_rw_done(i32 %378)
  %380 = load %struct.socket*, %struct.socket** %8, align 8
  %381 = call i32 @socket_lock(%struct.socket* %380, i32 0)
  %382 = load i32, i32* @EADDRINUSE, align 4
  store i32 %382, i32* %4, align 4
  br label %532

383:                                              ; preds = %366, %358
  %384 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %385 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = load i32, i32* @IN6P_IPV6_V6ONLY, align 4
  %388 = and i32 %386, %387
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %437, label %390

390:                                              ; preds = %383
  %391 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %14, i32 0, i32 1
  %392 = call i64 @IN6_IS_ADDR_UNSPECIFIED(i8** %391)
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %437

394:                                              ; preds = %390
  %395 = call i32 @in6_sin6_2_sin(%struct.sockaddr_in* %21, %struct.sockaddr_in6* %14)
  %396 = load %struct.inpcbinfo*, %struct.inpcbinfo** %9, align 8
  %397 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %21, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  %399 = load i64, i64* %10, align 8
  %400 = load i32, i32* %11, align 4
  %401 = call %struct.inpcb* @in_pcblookup_local_and_cleanup(%struct.inpcbinfo* %396, i32 %398, i64 %399, i32 %400)
  store %struct.inpcb* %401, %struct.inpcb** %18, align 8
  %402 = load %struct.inpcb*, %struct.inpcb** %18, align 8
  %403 = icmp ne %struct.inpcb* %402, null
  br i1 %403, label %404, label %436

404:                                              ; preds = %394
  %405 = load i32, i32* %12, align 4
  %406 = load %struct.inpcb*, %struct.inpcb** %18, align 8
  %407 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %406, i32 0, i32 5
  %408 = load %struct.socket*, %struct.socket** %407, align 8
  %409 = getelementptr inbounds %struct.socket, %struct.socket* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 4
  %411 = and i32 %405, %410
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %413, label %436

413:                                              ; preds = %404
  %414 = load %struct.inpcb*, %struct.inpcb** %18, align 8
  %415 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %414, i32 0, i32 6
  %416 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %415, i32 0, i32 0
  %417 = load i64, i64* %416, align 8
  %418 = load i64, i64* @INADDR_ANY, align 8
  %419 = icmp ne i64 %417, %418
  br i1 %419, label %428, label %420

420:                                              ; preds = %413
  %421 = load %struct.socket*, %struct.socket** %8, align 8
  %422 = call i64 @SOCK_DOM(%struct.socket* %421)
  %423 = load %struct.inpcb*, %struct.inpcb** %18, align 8
  %424 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %423, i32 0, i32 5
  %425 = load %struct.socket*, %struct.socket** %424, align 8
  %426 = call i64 @SOCK_DOM(%struct.socket* %425)
  %427 = icmp eq i64 %422, %426
  br i1 %427, label %428, label %436

428:                                              ; preds = %420, %413
  %429 = load %struct.inpcbinfo*, %struct.inpcbinfo** %9, align 8
  %430 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 4
  %432 = call i32 @lck_rw_done(i32 %431)
  %433 = load %struct.socket*, %struct.socket** %8, align 8
  %434 = call i32 @socket_lock(%struct.socket* %433, i32 0)
  %435 = load i32, i32* @EADDRINUSE, align 4
  store i32 %435, i32* %4, align 4
  br label %532

436:                                              ; preds = %420, %404, %394
  br label %437

437:                                              ; preds = %436, %390, %383
  br label %438

438:                                              ; preds = %437, %199
  br label %439

439:                                              ; preds = %438, %72
  %440 = load %struct.socket*, %struct.socket** %8, align 8
  %441 = call i32 @socket_lock(%struct.socket* %440, i32 0)
  %442 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %443 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %442, i32 0, i32 1
  %444 = load i64, i64* %443, align 8
  %445 = load i64, i64* @INPCB_STATE_DEAD, align 8
  %446 = icmp eq i64 %444, %445
  br i1 %446, label %447, label %453

447:                                              ; preds = %439
  %448 = load %struct.inpcbinfo*, %struct.inpcbinfo** %9, align 8
  %449 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 4
  %451 = call i32 @lck_rw_done(i32 %450)
  %452 = load i32, i32* @ECONNABORTED, align 4
  store i32 %452, i32* %4, align 4
  br label %532

453:                                              ; preds = %439
  %454 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %455 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %454, i32 0, i32 3
  %456 = load i64, i64* %455, align 8
  %457 = icmp ne i64 %456, 0
  br i1 %457, label %463, label %458

458:                                              ; preds = %453
  %459 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %460 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %459, i32 0, i32 4
  %461 = call i64 @IN6_IS_ADDR_UNSPECIFIED(i8** %460)
  %462 = icmp ne i64 %461, 0
  br i1 %462, label %469, label %463

463:                                              ; preds = %458, %453
  %464 = load %struct.inpcbinfo*, %struct.inpcbinfo** %9, align 8
  %465 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 4
  %467 = call i32 @lck_rw_done(i32 %466)
  %468 = load i32, i32* @EINVAL, align 4
  store i32 %468, i32* %4, align 4
  br label %532

469:                                              ; preds = %458
  %470 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %14, i32 0, i32 1
  %471 = call i64 @IN6_IS_ADDR_UNSPECIFIED(i8** %470)
  %472 = icmp ne i64 %471, 0
  br i1 %472, label %481, label %473

473:                                              ; preds = %469
  %474 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %14, i32 0, i32 1
  %475 = load i8*, i8** %474, align 8
  %476 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %477 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %476, i32 0, i32 4
  store i8* %475, i8** %477, align 8
  %478 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  %479 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %480 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %479, i32 0, i32 2
  store %struct.ifnet* %478, %struct.ifnet** %480, align 8
  br label %481

481:                                              ; preds = %473, %469
  %482 = load i64, i64* %10, align 8
  %483 = icmp eq i64 %482, 0
  br i1 %483, label %484, label %503

484:                                              ; preds = %481
  %485 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %486 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %485, i32 0, i32 4
  %487 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %488 = load %struct.proc*, %struct.proc** %7, align 8
  %489 = call i32 @in6_pcbsetport(i8** %486, %struct.inpcb* %487, %struct.proc* %488, i32 1)
  store i32 %489, i32* %22, align 4
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %502

491:                                              ; preds = %484
  %492 = load i8*, i8** @in6addr_any, align 8
  %493 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %494 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %493, i32 0, i32 4
  store i8* %492, i8** %494, align 8
  %495 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %496 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %495, i32 0, i32 2
  store %struct.ifnet* null, %struct.ifnet** %496, align 8
  %497 = load %struct.inpcbinfo*, %struct.inpcbinfo** %9, align 8
  %498 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 4
  %500 = call i32 @lck_rw_done(i32 %499)
  %501 = load i32, i32* %22, align 4
  store i32 %501, i32* %4, align 4
  br label %532

502:                                              ; preds = %484
  br label %524

503:                                              ; preds = %481
  %504 = load i64, i64* %10, align 8
  %505 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %506 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %505, i32 0, i32 3
  store i64 %504, i64* %506, align 8
  %507 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %508 = call i64 @in_pcbinshash(%struct.inpcb* %507, i32 1)
  %509 = icmp ne i64 %508, 0
  br i1 %509, label %510, label %523

510:                                              ; preds = %503
  %511 = load i8*, i8** @in6addr_any, align 8
  %512 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %513 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %512, i32 0, i32 4
  store i8* %511, i8** %513, align 8
  %514 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %515 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %514, i32 0, i32 3
  store i64 0, i64* %515, align 8
  %516 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %517 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %516, i32 0, i32 2
  store %struct.ifnet* null, %struct.ifnet** %517, align 8
  %518 = load %struct.inpcbinfo*, %struct.inpcbinfo** %9, align 8
  %519 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 4
  %521 = call i32 @lck_rw_done(i32 %520)
  %522 = load i32, i32* @EAGAIN, align 4
  store i32 %522, i32* %4, align 4
  br label %532

523:                                              ; preds = %503
  br label %524

524:                                              ; preds = %523, %502
  %525 = load %struct.inpcbinfo*, %struct.inpcbinfo** %9, align 8
  %526 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 4
  %528 = call i32 @lck_rw_done(i32 %527)
  %529 = load %struct.socket*, %struct.socket** %8, align 8
  %530 = load i32, i32* @sock_evt_bound, align 4
  %531 = call i32 @sflt_notify(%struct.socket* %529, i32 %530, i32* null)
  store i32 0, i32* %4, align 4
  br label %532

532:                                              ; preds = %524, %510, %491, %463, %447, %428, %375, %348, %283, %220, %177, %153, %117, %96, %82, %64, %36
  %533 = load i32, i32* %4, align 4
  ret i32 %533
}

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

declare dso_local i32 @lck_rw_lock_exclusive(i32) #1

declare dso_local i64 @IN6_IS_ADDR_UNSPECIFIED(i8**) #1

declare dso_local i32 @lck_rw_done(i32) #1

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i32 @bzero(%struct.sockaddr_in6*, i32) #1

declare dso_local %struct.sockaddr_in6* @SIN6(%struct.sockaddr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @in6_embedscope(i8**, %struct.sockaddr_in6*, %struct.inpcb*, i32*, i32*) #1

declare dso_local i64 @IN6_IS_ADDR_MULTICAST(i8**) #1

declare dso_local %struct.ifaddr* @ifa_ifwithaddr(i32) #1

declare dso_local i32 @SA(%struct.sockaddr_in6*) #1

declare dso_local i32 @IFA_LOCK_SPIN(%struct.ifaddr*) #1

declare dso_local i32 @IFA_UNLOCK(%struct.ifaddr*) #1

declare dso_local i32 @IFA_REMREF(%struct.ifaddr*) #1

declare dso_local i64 @ntohs(i64) #1

declare dso_local i32 @kauth_cred_proc_ref(%struct.proc*) #1

declare dso_local i32 @priv_check_cred(i32, i32, i32) #1

declare dso_local i32 @kauth_cred_unref(i32*) #1

declare dso_local i64 @kauth_cred_getuid(i32) #1

declare dso_local %struct.inpcb* @in6_pcblookup_local_and_cleanup(%struct.inpcbinfo*, i8**, i64, i32) #1

declare dso_local i32 @in6_sin6_2_sin(%struct.sockaddr_in*, %struct.sockaddr_in6*) #1

declare dso_local %struct.inpcb* @in_pcblookup_local_and_cleanup(%struct.inpcbinfo*, i32, i64, i32) #1

declare dso_local i64 @SOCK_DOM(%struct.socket*) #1

declare dso_local i32 @in6_pcbsetport(i8**, %struct.inpcb*, %struct.proc*, i32) #1

declare dso_local i64 @in_pcbinshash(%struct.inpcb*, i32) #1

declare dso_local i32 @sflt_notify(%struct.socket*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
