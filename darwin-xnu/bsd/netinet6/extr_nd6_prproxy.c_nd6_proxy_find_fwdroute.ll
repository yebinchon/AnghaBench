; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_prproxy.c_nd6_proxy_find_fwdroute.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_prproxy.c_nd6_proxy_find_fwdroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.nd_prefix* }
%struct.nd_prefix = type { i32, i64, %struct.ifnet*, %struct.TYPE_4__, %struct.nd_prefix*, i32 }
%struct.ifnet = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.route_in6 = type { %struct.rtentry*, %struct.TYPE_6__ }
%struct.rtentry = type { i32, %struct.ifnet*, i32 }
%struct.TYPE_6__ = type { %struct.in6_addr }
%struct.in6_addr = type { i32 }

@RTF_PROXY = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"%s: found incorrect prefix proxy route for dst %s on %s\0A\00", align 1
@nd6_mutex = common dso_local global i32 0, align 4
@nd_prefix = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@NDPRF_ONLINK = common dso_local global i32 0, align 4
@NDPRF_PRPROXY = common dso_local global i32 0, align 4
@NDPRF_IFSCOPE = common dso_local global i32 0, align 4
@rnh_lock = common dso_local global i32 0, align 4
@RTF_CLONING = common dso_local global i32 0, align 4
@RTF_PRCLONING = common dso_local global i32 0, align 4
@IFSCOPE_NONE = common dso_local global i32 0, align 4
@RTF_CONDEMNED = common dso_local global i32 0, align 4
@RTM_DELETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"%s: found prefix proxy route for dst %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"%s: allocated prefix proxy route for dst %s\0A\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [61 x i8] c"%s: failed to find forwarding prefix proxy entry for dst %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nd6_proxy_find_fwdroute(%struct.ifnet* %0, %struct.route_in6* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.route_in6*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.nd_prefix*, align 8
  %8 = alloca %struct.rtentry*, align 8
  %9 = alloca %struct.in6_addr, align 4
  %10 = alloca %struct.nd_prefix*, align 8
  %11 = alloca i64, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.route_in6* %1, %struct.route_in6** %4, align 8
  %12 = load %struct.route_in6*, %struct.route_in6** %4, align 8
  %13 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store %struct.in6_addr* %14, %struct.in6_addr** %5, align 8
  store %struct.ifnet* null, %struct.ifnet** %6, align 8
  %15 = load %struct.route_in6*, %struct.route_in6** %4, align 8
  %16 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %15, i32 0, i32 0
  %17 = load %struct.rtentry*, %struct.rtentry** %16, align 8
  store %struct.rtentry* %17, %struct.rtentry** %8, align 8
  %18 = icmp ne %struct.rtentry* %17, null
  br i1 %18, label %19, label %51

19:                                               ; preds = %2
  %20 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %21 = call i32 @RT_LOCK(%struct.rtentry* %20)
  %22 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %23 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @RTF_PROXY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %30 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %29, i32 0, i32 1
  %31 = load %struct.ifnet*, %struct.ifnet** %30, align 8
  %32 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %33 = icmp eq %struct.ifnet* %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %28, %19
  %35 = load i32, i32* @LOG_DEBUG, align 4
  %36 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %37 = call i32 @if_name(%struct.ifnet* %36)
  %38 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %39 = call i32 @ip6_sprintf(%struct.in6_addr* %38)
  %40 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %41 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %40, i32 0, i32 1
  %42 = load %struct.ifnet*, %struct.ifnet** %41, align 8
  %43 = call i32 @if_name(%struct.ifnet* %42)
  %44 = call i32 @nd6log2(i32 %43)
  %45 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %46 = call i32 @RT_UNLOCK(%struct.rtentry* %45)
  br label %50

47:                                               ; preds = %28
  %48 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %49 = call i32 @RT_UNLOCK(%struct.rtentry* %48)
  br label %305

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %50, %2
  %52 = load i32, i32* @nd6_mutex, align 4
  %53 = call i32 @lck_mtx_lock(i32 %52)
  %54 = load %struct.nd_prefix*, %struct.nd_prefix** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nd_prefix, i32 0, i32 0), align 8
  store %struct.nd_prefix* %54, %struct.nd_prefix** %7, align 8
  br label %55

55:                                               ; preds = %151, %51
  %56 = load %struct.nd_prefix*, %struct.nd_prefix** %7, align 8
  %57 = icmp ne %struct.nd_prefix* %56, null
  br i1 %57, label %58, label %155

58:                                               ; preds = %55
  %59 = load %struct.nd_prefix*, %struct.nd_prefix** %7, align 8
  %60 = call i32 @NDPR_LOCK(%struct.nd_prefix* %59)
  %61 = load %struct.nd_prefix*, %struct.nd_prefix** %7, align 8
  %62 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @NDPRF_ONLINK, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %58
  %68 = load %struct.nd_prefix*, %struct.nd_prefix** %7, align 8
  %69 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @NDPRF_PRPROXY, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %67
  %75 = load %struct.nd_prefix*, %struct.nd_prefix** %7, align 8
  %76 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %79 = load %struct.nd_prefix*, %struct.nd_prefix** %7, align 8
  %80 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %79, i32 0, i32 5
  %81 = call i32 @IN6_ARE_MASKED_ADDR_EQUAL(i32* %77, %struct.in6_addr* %78, i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %74, %67, %58
  %84 = load %struct.nd_prefix*, %struct.nd_prefix** %7, align 8
  %85 = call i32 @NDPR_UNLOCK(%struct.nd_prefix* %84)
  br label %151

86:                                               ; preds = %74
  %87 = load %struct.nd_prefix*, %struct.nd_prefix** %7, align 8
  %88 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @NDPRF_IFSCOPE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = call i32 @VERIFY(i32 %94)
  %96 = load %struct.nd_prefix*, %struct.nd_prefix** %7, align 8
  %97 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = call i32 @bcopy(i32* %98, %struct.in6_addr* %9, i32 4)
  %100 = load %struct.nd_prefix*, %struct.nd_prefix** %7, align 8
  %101 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %11, align 8
  %103 = load %struct.nd_prefix*, %struct.nd_prefix** %7, align 8
  %104 = call i32 @NDPR_UNLOCK(%struct.nd_prefix* %103)
  %105 = load %struct.nd_prefix*, %struct.nd_prefix** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nd_prefix, i32 0, i32 0), align 8
  store %struct.nd_prefix* %105, %struct.nd_prefix** %10, align 8
  br label %106

106:                                              ; preds = %146, %86
  %107 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %108 = icmp ne %struct.nd_prefix* %107, null
  br i1 %108, label %109, label %150

109:                                              ; preds = %106
  %110 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %111 = call i32 @NDPR_LOCK(%struct.nd_prefix* %110)
  %112 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %113 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @NDPRF_ONLINK, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %137

118:                                              ; preds = %109
  %119 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %120 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %119, i32 0, i32 2
  %121 = load %struct.ifnet*, %struct.ifnet** %120, align 8
  %122 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %123 = icmp eq %struct.ifnet* %121, %122
  br i1 %123, label %137, label %124

124:                                              ; preds = %118
  %125 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %126 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %11, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %137, label %130

130:                                              ; preds = %124
  %131 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %132 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i64, i64* %11, align 8
  %135 = call i32 @in6_are_prefix_equal(i32* %133, %struct.in6_addr* %9, i64 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %130, %124, %118, %109
  %138 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %139 = call i32 @NDPR_UNLOCK(%struct.nd_prefix* %138)
  br label %146

140:                                              ; preds = %130
  %141 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %142 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %141, i32 0, i32 2
  %143 = load %struct.ifnet*, %struct.ifnet** %142, align 8
  store %struct.ifnet* %143, %struct.ifnet** %6, align 8
  %144 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %145 = call i32 @NDPR_UNLOCK(%struct.nd_prefix* %144)
  br label %150

146:                                              ; preds = %137
  %147 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %148 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %147, i32 0, i32 4
  %149 = load %struct.nd_prefix*, %struct.nd_prefix** %148, align 8
  store %struct.nd_prefix* %149, %struct.nd_prefix** %10, align 8
  br label %106

150:                                              ; preds = %140, %106
  br label %155

151:                                              ; preds = %83
  %152 = load %struct.nd_prefix*, %struct.nd_prefix** %7, align 8
  %153 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %152, i32 0, i32 4
  %154 = load %struct.nd_prefix*, %struct.nd_prefix** %153, align 8
  store %struct.nd_prefix* %154, %struct.nd_prefix** %7, align 8
  br label %55

155:                                              ; preds = %150, %55
  %156 = load i32, i32* @nd6_mutex, align 4
  %157 = call i32 @lck_mtx_unlock(i32 %156)
  %158 = load i32, i32* @rnh_lock, align 4
  %159 = call i32 @lck_mtx_lock(i32 %158)
  %160 = load %struct.route_in6*, %struct.route_in6** %4, align 8
  %161 = call i32 @ROUTE_RELEASE_LOCKED(%struct.route_in6* %160)
  %162 = load %struct.route_in6*, %struct.route_in6** %4, align 8
  %163 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %162, i32 0, i32 1
  %164 = call i32 @SA(%struct.TYPE_6__* %163)
  %165 = load i32, i32* @RTF_CLONING, align 4
  %166 = load i32, i32* @RTF_PRCLONING, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @IFSCOPE_NONE, align 4
  %169 = call %struct.rtentry* @rtalloc1_scoped_locked(i32 %164, i32 0, i32 %167, i32 %168)
  store %struct.rtentry* %169, %struct.rtentry** %8, align 8
  %170 = icmp ne %struct.rtentry* %169, null
  br i1 %170, label %171, label %225

171:                                              ; preds = %155
  %172 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %173 = call i32 @RT_LOCK(%struct.rtentry* %172)
  %174 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %175 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %174, i32 0, i32 1
  %176 = load %struct.ifnet*, %struct.ifnet** %175, align 8
  %177 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %178 = icmp ne %struct.ifnet* %176, %177
  br i1 %178, label %186, label %179

179:                                              ; preds = %171
  %180 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %181 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @RTF_PROXY, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %208, label %186

186:                                              ; preds = %179, %171
  %187 = load i32, i32* @RTF_CONDEMNED, align 4
  %188 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %189 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 8
  %192 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %193 = call i32 @RT_UNLOCK(%struct.rtentry* %192)
  %194 = load i32, i32* @RTM_DELETE, align 4
  %195 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %196 = call i32 @rt_key(%struct.rtentry* %195)
  %197 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %198 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %201 = call i32 @rt_mask(%struct.rtentry* %200)
  %202 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %203 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @rtrequest_locked(i32 %194, i32 %196, i32 %199, i32 %201, i32 %204, i32* null)
  %206 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %207 = call i32 @rtfree_locked(%struct.rtentry* %206)
  store %struct.rtentry* null, %struct.rtentry** %8, align 8
  br label %224

208:                                              ; preds = %179
  %209 = load i32, i32* @LOG_DEBUG, align 4
  %210 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %211 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %210, i32 0, i32 1
  %212 = load %struct.ifnet*, %struct.ifnet** %211, align 8
  %213 = call i32 @if_name(%struct.ifnet* %212)
  %214 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %215 = call i32 @ip6_sprintf(%struct.in6_addr* %214)
  %216 = call i32 @nd6log2(i32 %215)
  %217 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %218 = call i32 @RT_UNLOCK(%struct.rtentry* %217)
  %219 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %220 = load %struct.route_in6*, %struct.route_in6** %4, align 8
  %221 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %220, i32 0, i32 0
  store %struct.rtentry* %219, %struct.rtentry** %221, align 8
  %222 = load i32, i32* @rnh_lock, align 4
  %223 = call i32 @lck_mtx_unlock(i32 %222)
  br label %305

224:                                              ; preds = %186
  br label %225

225:                                              ; preds = %224, %155
  %226 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %227 = icmp eq %struct.rtentry* %226, null
  br i1 %227, label %228, label %233

228:                                              ; preds = %225
  %229 = load %struct.route_in6*, %struct.route_in6** %4, align 8
  %230 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %229, i32 0, i32 0
  %231 = load %struct.rtentry*, %struct.rtentry** %230, align 8
  %232 = icmp eq %struct.rtentry* %231, null
  br label %233

233:                                              ; preds = %228, %225
  %234 = phi i1 [ false, %225 ], [ %232, %228 ]
  %235 = zext i1 %234 to i32
  %236 = call i32 @VERIFY(i32 %235)
  %237 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %238 = icmp ne %struct.ifnet* %237, null
  br i1 %238, label %239, label %278

239:                                              ; preds = %233
  %240 = load %struct.route_in6*, %struct.route_in6** %4, align 8
  %241 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %240, i32 0, i32 1
  %242 = call i32 @SA(%struct.TYPE_6__* %241)
  %243 = load i32, i32* @RTF_PRCLONING, align 4
  %244 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %245 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call %struct.rtentry* @rtalloc1_scoped_locked(i32 %242, i32 1, i32 %243, i32 %246)
  store %struct.rtentry* %247, %struct.rtentry** %8, align 8
  %248 = icmp ne %struct.rtentry* %247, null
  br i1 %248, label %249, label %278

249:                                              ; preds = %239
  %250 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %251 = call i32 @RT_LOCK(%struct.rtentry* %250)
  %252 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %253 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @RTF_PROXY, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %263, label %258

258:                                              ; preds = %249
  %259 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %260 = call i32 @RT_UNLOCK(%struct.rtentry* %259)
  %261 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %262 = call i32 @rtfree_locked(%struct.rtentry* %261)
  store %struct.rtentry* null, %struct.rtentry** %8, align 8
  br label %277

263:                                              ; preds = %249
  %264 = load i32, i32* @LOG_DEBUG, align 4
  %265 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %266 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %265, i32 0, i32 1
  %267 = load %struct.ifnet*, %struct.ifnet** %266, align 8
  %268 = call i32 @if_name(%struct.ifnet* %267)
  %269 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %270 = call i32 @ip6_sprintf(%struct.in6_addr* %269)
  %271 = call i32 @nd6log2(i32 %270)
  %272 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %273 = call i32 @RT_UNLOCK(%struct.rtentry* %272)
  %274 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %275 = load %struct.route_in6*, %struct.route_in6** %4, align 8
  %276 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %275, i32 0, i32 0
  store %struct.rtentry* %274, %struct.rtentry** %276, align 8
  br label %277

277:                                              ; preds = %263, %258
  br label %278

278:                                              ; preds = %277, %239, %233
  %279 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %280 = icmp ne %struct.rtentry* %279, null
  br i1 %280, label %286, label %281

281:                                              ; preds = %278
  %282 = load %struct.route_in6*, %struct.route_in6** %4, align 8
  %283 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %282, i32 0, i32 0
  %284 = load %struct.rtentry*, %struct.rtentry** %283, align 8
  %285 = icmp eq %struct.rtentry* %284, null
  br label %286

286:                                              ; preds = %281, %278
  %287 = phi i1 [ true, %278 ], [ %285, %281 ]
  %288 = zext i1 %287 to i32
  %289 = call i32 @VERIFY(i32 %288)
  %290 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %291 = icmp eq %struct.ifnet* %290, null
  br i1 %291, label %295, label %292

292:                                              ; preds = %286
  %293 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %294 = icmp eq %struct.rtentry* %293, null
  br i1 %294, label %295, label %302

295:                                              ; preds = %292, %286
  %296 = load i32, i32* @LOG_ERR, align 4
  %297 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %298 = call i32 @if_name(%struct.ifnet* %297)
  %299 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %300 = call i32 @ip6_sprintf(%struct.in6_addr* %299)
  %301 = call i32 @nd6log2(i32 %300)
  br label %302

302:                                              ; preds = %295, %292
  %303 = load i32, i32* @rnh_lock, align 4
  %304 = call i32 @lck_mtx_unlock(i32 %303)
  br label %305

305:                                              ; preds = %302, %208, %47
  ret void
}

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @nd6log2(i32) #1

declare dso_local i32 @if_name(%struct.ifnet*) #1

declare dso_local i32 @ip6_sprintf(%struct.in6_addr*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @NDPR_LOCK(%struct.nd_prefix*) #1

declare dso_local i32 @IN6_ARE_MASKED_ADDR_EQUAL(i32*, %struct.in6_addr*, i32*) #1

declare dso_local i32 @NDPR_UNLOCK(%struct.nd_prefix*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @bcopy(i32*, %struct.in6_addr*, i32) #1

declare dso_local i32 @in6_are_prefix_equal(i32*, %struct.in6_addr*, i64) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @ROUTE_RELEASE_LOCKED(%struct.route_in6*) #1

declare dso_local %struct.rtentry* @rtalloc1_scoped_locked(i32, i32, i32, i32) #1

declare dso_local i32 @SA(%struct.TYPE_6__*) #1

declare dso_local i32 @rtrequest_locked(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @rt_key(%struct.rtentry*) #1

declare dso_local i32 @rt_mask(%struct.rtentry*) #1

declare dso_local i32 @rtfree_locked(%struct.rtentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
