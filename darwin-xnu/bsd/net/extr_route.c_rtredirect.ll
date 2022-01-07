; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rtredirect.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rtredirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i16, i16, i32 }
%struct.ifnet = type { i32 }
%struct.sockaddr = type { i32 }
%struct.rtentry = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.sockaddr* }
%struct.rt_addrinfo = type { %struct.sockaddr** }
%struct.ifaddr = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.TYPE_6__ = type { i32 }

@IFSCOPE_NONE = common dso_local global i32 0, align 4
@rnh_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_NOTOWNED = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@RTF_CLONING = common dso_local global i32 0, align 4
@RTF_PRCLONING = common dso_local global i32 0, align 4
@RTF_DONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@RTF_GATEWAY = common dso_local global i32 0, align 4
@RTF_HOST = common dso_local global i32 0, align 4
@RTF_DYNAMIC = common dso_local global i32 0, align 4
@RTM_ADD = common dso_local global i32 0, align 4
@rtstat = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@RTF_MODIFIED = common dso_local global i32 0, align 4
@ROUTE_ENTRY_REFRESH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@RTAX_DST = common dso_local global i64 0, align 8
@RTAX_GATEWAY = common dso_local global i64 0, align 8
@RTAX_NETMASK = common dso_local global i64 0, align 8
@RTAX_AUTHOR = common dso_local global i64 0, align 8
@RTM_REDIRECT = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtredirect(%struct.ifnet* %0, %struct.sockaddr* %1, %struct.sockaddr* %2, %struct.sockaddr* %3, i32 %4, %struct.sockaddr* %5, %struct.rtentry** %6) #0 {
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sockaddr*, align 8
  %14 = alloca %struct.rtentry**, align 8
  %15 = alloca %struct.rtentry*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i16*, align 8
  %18 = alloca %struct.rt_addrinfo, align 8
  %19 = alloca %struct.ifaddr*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.sockaddr_storage, align 4
  %22 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %8, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %9, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %10, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.sockaddr* %5, %struct.sockaddr** %13, align 8
  store %struct.rtentry** %6, %struct.rtentry*** %14, align 8
  store %struct.rtentry* null, %struct.rtentry** %15, align 8
  store i32 0, i32* %16, align 4
  store i16* null, i16** %17, align 8
  store %struct.ifaddr* null, %struct.ifaddr** %19, align 8
  %23 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %24 = icmp ne %struct.ifnet* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %7
  %26 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %27 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  br label %31

29:                                               ; preds = %7
  %30 = load i32, i32* @IFSCOPE_NONE, align 4
  br label %31

31:                                               ; preds = %29, %25
  %32 = phi i32 [ %28, %25 ], [ %30, %29 ]
  store i32 %32, i32* %20, align 4
  %33 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %34 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %22, align 4
  %36 = load i32, i32* @rnh_lock, align 4
  %37 = load i32, i32* @LCK_MTX_ASSERT_NOTOWNED, align 4
  %38 = call i32 @LCK_MTX_ASSERT(i32 %36, i32 %37)
  %39 = load i32, i32* @rnh_lock, align 4
  %40 = call i32 @lck_mtx_lock(i32 %39)
  %41 = load i32, i32* %22, align 4
  %42 = load i32, i32* @AF_INET, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %31
  %45 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %46 = call %struct.sockaddr* @sa_copy(%struct.sockaddr* %45, %struct.sockaddr_storage* %21, i32* %20)
  store %struct.sockaddr* %46, %struct.sockaddr** %13, align 8
  br label %47

47:                                               ; preds = %44, %31
  %48 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %49 = load i32, i32* %20, align 4
  %50 = call %struct.ifaddr* @ifa_ifwithnet_scoped(%struct.sockaddr* %48, i32 %49)
  store %struct.ifaddr* %50, %struct.ifaddr** %19, align 8
  %51 = icmp eq %struct.ifaddr* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @ENETUNREACH, align 4
  store i32 %53, i32* %16, align 4
  br label %225

54:                                               ; preds = %47
  %55 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %56 = load i32, i32* @RTF_CLONING, align 4
  %57 = load i32, i32* @RTF_PRCLONING, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %20, align 4
  %60 = call %struct.rtentry* @rtalloc1_scoped_locked(%struct.sockaddr* %55, i32 0, i32 %58, i32 %59)
  store %struct.rtentry* %60, %struct.rtentry** %15, align 8
  %61 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  %62 = icmp ne %struct.rtentry* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  %65 = call i32 @RT_LOCK(%struct.rtentry* %64)
  br label %66

66:                                               ; preds = %63, %54
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @RTF_DONE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %94, label %71

71:                                               ; preds = %66
  %72 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  %73 = icmp ne %struct.rtentry* %72, null
  br i1 %73, label %74, label %94

74:                                               ; preds = %71
  %75 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %76 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  %77 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @equal(%struct.sockaddr* %75, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %74
  %82 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  %83 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load %struct.sockaddr*, %struct.sockaddr** %85, align 8
  %87 = load %struct.ifaddr*, %struct.ifaddr** %19, align 8
  %88 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @equal(%struct.sockaddr* %86, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %81, %74
  %93 = load i32, i32* @EINVAL, align 4
  store i32 %93, i32* %16, align 4
  br label %105

94:                                               ; preds = %81, %71, %66
  %95 = load %struct.ifaddr*, %struct.ifaddr** %19, align 8
  %96 = call i32 @IFA_REMREF(%struct.ifaddr* %95)
  %97 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %98 = call %struct.ifaddr* @ifa_ifwithaddr(%struct.sockaddr* %97)
  store %struct.ifaddr* %98, %struct.ifaddr** %19, align 8
  %99 = icmp ne %struct.ifaddr* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load %struct.ifaddr*, %struct.ifaddr** %19, align 8
  %102 = call i32 @IFA_REMREF(%struct.ifaddr* %101)
  store %struct.ifaddr* null, %struct.ifaddr** %19, align 8
  %103 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %103, i32* %16, align 4
  br label %104

104:                                              ; preds = %100, %94
  br label %105

105:                                              ; preds = %104, %92
  %106 = load %struct.ifaddr*, %struct.ifaddr** %19, align 8
  %107 = icmp ne %struct.ifaddr* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load %struct.ifaddr*, %struct.ifaddr** %19, align 8
  %110 = call i32 @IFA_REMREF(%struct.ifaddr* %109)
  store %struct.ifaddr* null, %struct.ifaddr** %19, align 8
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i32, i32* %16, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %111
  %115 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  %116 = icmp ne %struct.rtentry* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  %119 = call i32 @RT_UNLOCK(%struct.rtentry* %118)
  br label %120

120:                                              ; preds = %117, %114
  br label %198

121:                                              ; preds = %111
  %122 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  %123 = icmp eq %struct.rtentry* %122, null
  br i1 %123, label %134, label %124

124:                                              ; preds = %121
  %125 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  %126 = call %struct.TYPE_6__* @rt_mask(%struct.rtentry* %125)
  %127 = icmp ne %struct.TYPE_6__* %126, null
  br i1 %127, label %128, label %135

128:                                              ; preds = %124
  %129 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  %130 = call %struct.TYPE_6__* @rt_mask(%struct.rtentry* %129)
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %132, 2
  br i1 %133, label %134, label %135

134:                                              ; preds = %128, %121
  br label %157

135:                                              ; preds = %128, %124
  %136 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  %137 = call i32 @RT_LOCK_ASSERT_HELD(%struct.rtentry* %136)
  %138 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  %139 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @RTF_GATEWAY, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %193

144:                                              ; preds = %135
  %145 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  %146 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @RTF_HOST, align 4
  %149 = and i32 %147, %148
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %176

151:                                              ; preds = %144
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* @RTF_HOST, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %176

156:                                              ; preds = %151
  br label %157

157:                                              ; preds = %156, %134
  %158 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  %159 = icmp ne %struct.rtentry* %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  %162 = call i32 @RT_UNLOCK(%struct.rtentry* %161)
  br label %163

163:                                              ; preds = %160, %157
  %164 = load i32, i32* @RTF_GATEWAY, align 4
  %165 = load i32, i32* @RTF_DYNAMIC, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* %12, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %12, align 4
  %169 = load i32, i32* @RTM_ADD, align 4
  %170 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %171 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %172 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* %20, align 4
  %175 = call i32 @rtrequest_scoped_locked(i32 %169, %struct.sockaddr* %170, %struct.sockaddr* %171, %struct.sockaddr* %172, i32 %173, i32* null, i32 %174)
  store i32 %175, i32* %16, align 4
  store i16* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rtstat, i32 0, i32 0), i16** %17, align 8
  br label %192

176:                                              ; preds = %151, %144
  %177 = load i32, i32* @RTF_MODIFIED, align 4
  %178 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  %179 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 8
  %182 = load i32, i32* @RTF_MODIFIED, align 4
  %183 = load i32, i32* %12, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %12, align 4
  store i16* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rtstat, i32 0, i32 1), i16** %17, align 8
  %185 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  %186 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  %187 = call i32 @rt_key(%struct.rtentry* %186)
  %188 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %189 = call i32 @rt_setgate(%struct.rtentry* %185, i32 %187, %struct.sockaddr* %188)
  store i32 %189, i32* %16, align 4
  %190 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  %191 = call i32 @RT_UNLOCK(%struct.rtentry* %190)
  br label %192

192:                                              ; preds = %176, %163
  br label %197

193:                                              ; preds = %135
  %194 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  %195 = call i32 @RT_UNLOCK(%struct.rtentry* %194)
  %196 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %196, i32* %16, align 4
  br label %197

197:                                              ; preds = %193, %192
  br label %198

198:                                              ; preds = %197, %120
  %199 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  %200 = icmp ne %struct.rtentry* %199, null
  br i1 %200, label %201, label %224

201:                                              ; preds = %198
  %202 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  %203 = call i32 @RT_LOCK_ASSERT_NOTHELD(%struct.rtentry* %202)
  %204 = load i32, i32* %16, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %220, label %206

206:                                              ; preds = %201
  %207 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  %208 = load i32, i32* @ROUTE_ENTRY_REFRESH, align 4
  %209 = load i32, i32* @FALSE, align 4
  %210 = call i32 @route_event_enqueue_nwk_wq_entry(%struct.rtentry* %207, i32* null, i32 %208, i32* null, i32 %209)
  %211 = load %struct.rtentry**, %struct.rtentry*** %14, align 8
  %212 = icmp ne %struct.rtentry** %211, null
  br i1 %212, label %213, label %216

213:                                              ; preds = %206
  %214 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  %215 = load %struct.rtentry**, %struct.rtentry*** %14, align 8
  store %struct.rtentry* %214, %struct.rtentry** %215, align 8
  br label %219

216:                                              ; preds = %206
  %217 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  %218 = call i32 @rtfree_locked(%struct.rtentry* %217)
  br label %219

219:                                              ; preds = %216, %213
  br label %223

220:                                              ; preds = %201
  %221 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  %222 = call i32 @rtfree_locked(%struct.rtentry* %221)
  br label %223

223:                                              ; preds = %220, %219
  br label %224

224:                                              ; preds = %223, %198
  br label %225

225:                                              ; preds = %224, %52
  %226 = load i32, i32* %16, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %225
  %229 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rtstat, i32 0, i32 2), align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rtstat, i32 0, i32 2), align 4
  br label %245

231:                                              ; preds = %225
  %232 = load i16*, i16** %17, align 8
  %233 = icmp ne i16* %232, null
  br i1 %233, label %234, label %238

234:                                              ; preds = %231
  %235 = load i16*, i16** %17, align 8
  %236 = load i16, i16* %235, align 2
  %237 = add i16 %236, 1
  store i16 %237, i16* %235, align 2
  br label %238

238:                                              ; preds = %234, %231
  %239 = load i32, i32* %22, align 4
  %240 = load i32, i32* @AF_INET, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %244

242:                                              ; preds = %238
  %243 = call i32 (...) @routegenid_inet_update()
  br label %244

244:                                              ; preds = %242, %238
  br label %245

245:                                              ; preds = %244, %228
  %246 = load i32, i32* @rnh_lock, align 4
  %247 = call i32 @lck_mtx_unlock(i32 %246)
  %248 = ptrtoint %struct.rt_addrinfo* %18 to i32
  %249 = call i32 @bzero(i32 %248, i32 8)
  %250 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %251 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %18, i32 0, i32 0
  %252 = load %struct.sockaddr**, %struct.sockaddr*** %251, align 8
  %253 = load i64, i64* @RTAX_DST, align 8
  %254 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %252, i64 %253
  store %struct.sockaddr* %250, %struct.sockaddr** %254, align 8
  %255 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %256 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %18, i32 0, i32 0
  %257 = load %struct.sockaddr**, %struct.sockaddr*** %256, align 8
  %258 = load i64, i64* @RTAX_GATEWAY, align 8
  %259 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %257, i64 %258
  store %struct.sockaddr* %255, %struct.sockaddr** %259, align 8
  %260 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %261 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %18, i32 0, i32 0
  %262 = load %struct.sockaddr**, %struct.sockaddr*** %261, align 8
  %263 = load i64, i64* @RTAX_NETMASK, align 8
  %264 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %262, i64 %263
  store %struct.sockaddr* %260, %struct.sockaddr** %264, align 8
  %265 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %266 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %18, i32 0, i32 0
  %267 = load %struct.sockaddr**, %struct.sockaddr*** %266, align 8
  %268 = load i64, i64* @RTAX_AUTHOR, align 8
  %269 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %267, i64 %268
  store %struct.sockaddr* %265, %struct.sockaddr** %269, align 8
  %270 = load i32, i32* @RTM_REDIRECT, align 4
  %271 = load i32, i32* %12, align 4
  %272 = load i32, i32* %16, align 4
  %273 = call i32 @rt_missmsg(i32 %270, %struct.rt_addrinfo* %18, i32 %271, i32 %272)
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local %struct.sockaddr* @sa_copy(%struct.sockaddr*, %struct.sockaddr_storage*, i32*) #1

declare dso_local %struct.ifaddr* @ifa_ifwithnet_scoped(%struct.sockaddr*, i32) #1

declare dso_local %struct.rtentry* @rtalloc1_scoped_locked(%struct.sockaddr*, i32, i32, i32) #1

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @equal(%struct.sockaddr*, i32) #1

declare dso_local i32 @IFA_REMREF(%struct.ifaddr*) #1

declare dso_local %struct.ifaddr* @ifa_ifwithaddr(%struct.sockaddr*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local %struct.TYPE_6__* @rt_mask(%struct.rtentry*) #1

declare dso_local i32 @RT_LOCK_ASSERT_HELD(%struct.rtentry*) #1

declare dso_local i32 @rtrequest_scoped_locked(i32, %struct.sockaddr*, %struct.sockaddr*, %struct.sockaddr*, i32, i32*, i32) #1

declare dso_local i32 @rt_setgate(%struct.rtentry*, i32, %struct.sockaddr*) #1

declare dso_local i32 @rt_key(%struct.rtentry*) #1

declare dso_local i32 @RT_LOCK_ASSERT_NOTHELD(%struct.rtentry*) #1

declare dso_local i32 @route_event_enqueue_nwk_wq_entry(%struct.rtentry*, i32*, i32, i32*, i32) #1

declare dso_local i32 @rtfree_locked(%struct.rtentry*) #1

declare dso_local i32 @routegenid_inet_update(...) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @rt_missmsg(i32, %struct.rt_addrinfo*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
