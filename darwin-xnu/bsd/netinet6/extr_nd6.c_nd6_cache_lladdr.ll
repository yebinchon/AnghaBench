; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6.c_nd6_cache_lladdr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6.c_nd6_cache_lladdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node_head = type { i32 (%struct.radix_node_head*, i32, i8*)* }
%struct.ifnet = type { i64 }
%struct.in6_addr = type { i32 }
%struct.rtentry = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.llinfo_nd6 = type { i32, i32, %struct.mbuf* }
%struct.mbuf = type { i32 }
%struct.sockaddr_dl = type { i64 }
%struct.nd_ifinfo = type { i64, i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.route_event = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"ifp == NULL in nd6_cache_lladdr\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"from == NULL in nd6_cache_lladdr\00", align 1
@RTF_STATIC = common dso_local global i32 0, align 4
@RTF_GATEWAY = common dso_local global i32 0, align 4
@RTF_LLINFO = common dso_local global i32 0, align 4
@AF_LINK = common dso_local global i64 0, align 8
@ND6_LLINFO_STALE = common dso_local global i32 0, align 4
@ND6_LLINFO_NOSTATE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@ND6_IFF_PERFORMNUD = common dso_local global i32 0, align 4
@ND6_LLINFO_REACHABLE = common dso_local global i32 0, align 4
@nd6_gctimer = common dso_local global i64 0, align 8
@ND6_LLINFO_INCOMPLETE = common dso_local global i32 0, align 4
@ND_REDIRECT_ROUTER = common dso_local global i32 0, align 4
@ROUTE_LLENTRY_CHANGED = common dso_local global i32 0, align 4
@ROUTE_LLENTRY_RESOLVED = common dso_local global i32 0, align 4
@RTF_ROUTER = common dso_local global i32 0, align 4
@rnh_lock = common dso_local global i32 0, align 4
@rt_tables = common dso_local global %struct.radix_node_head** null, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@route_event_walktree = common dso_local global i32 0, align 4
@nd6_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nd6_cache_lladdr(%struct.ifnet* %0, %struct.in6_addr* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.rtentry*, align 8
  %14 = alloca %struct.llinfo_nd6*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.sockaddr_dl*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.nd_ifinfo*, align 8
  %24 = alloca %struct.mbuf*, align 8
  %25 = alloca %struct.sockaddr_in6, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.radix_node_head*, align 8
  %28 = alloca %struct.route_event, align 4
  store %struct.ifnet* %0, %struct.ifnet** %7, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store %struct.rtentry* null, %struct.rtentry** %13, align 8
  store %struct.llinfo_nd6* null, %struct.llinfo_nd6** %14, align 8
  store %struct.sockaddr_dl* null, %struct.sockaddr_dl** %16, align 8
  store i32 0, i32* %20, align 4
  %29 = load i64, i64* @FALSE, align 8
  store i64 %29, i64* %22, align 8
  store %struct.nd_ifinfo* null, %struct.nd_ifinfo** %23, align 8
  %30 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %31 = icmp eq %struct.ifnet* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %6
  %33 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %6
  %35 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %36 = icmp eq %struct.in6_addr* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 @panic(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %34
  %40 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %41 = call i64 @IN6_IS_ADDR_UNSPECIFIED(%struct.in6_addr* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %437

44:                                               ; preds = %39
  %45 = call i64 (...) @net_uptime()
  store i64 %45, i64* %21, align 8
  %46 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %47 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %48 = call %struct.rtentry* @nd6_lookup(%struct.in6_addr* %46, i32 0, %struct.ifnet* %47, i32 0)
  store %struct.rtentry* %48, %struct.rtentry** %13, align 8
  %49 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %50 = icmp eq %struct.rtentry* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %44
  %52 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %53 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %54 = call %struct.rtentry* @nd6_lookup(%struct.in6_addr* %52, i32 1, %struct.ifnet* %53, i32 0)
  store %struct.rtentry* %54, %struct.rtentry** %13, align 8
  %55 = icmp eq %struct.rtentry* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %437

57:                                               ; preds = %51
  %58 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %59 = call i32 @RT_LOCK_ASSERT_HELD(%struct.rtentry* %58)
  store i32 1, i32* %15, align 4
  br label %75

60:                                               ; preds = %44
  %61 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %62 = call i32 @RT_LOCK_ASSERT_HELD(%struct.rtentry* %61)
  %63 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %64 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @RTF_STATIC, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %60
  %70 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %71 = call i32 @RT_REMREF_LOCKED(%struct.rtentry* %70)
  %72 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %73 = call i32 @RT_UNLOCK(%struct.rtentry* %72)
  br label %437

74:                                               ; preds = %60
  store i32 0, i32* %15, align 4
  br label %75

75:                                               ; preds = %74, %57
  %76 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %77 = icmp eq %struct.rtentry* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %437

79:                                               ; preds = %75
  %80 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %81 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @RTF_GATEWAY, align 4
  %84 = load i32, i32* @RTF_LLINFO, align 4
  %85 = or i32 %83, %84
  %86 = and i32 %82, %85
  %87 = load i32, i32* @RTF_LLINFO, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %79
  br label %90

90:                                               ; preds = %119, %110, %104, %89
  %91 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %92 = call i32 @RT_UNLOCK(%struct.rtentry* %91)
  %93 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %94 = call i32 @nd6_free(%struct.rtentry* %93)
  %95 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %96 = call i32 @rtfree(%struct.rtentry* %95)
  br label %437

97:                                               ; preds = %79
  %98 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %99 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to %struct.llinfo_nd6*
  store %struct.llinfo_nd6* %101, %struct.llinfo_nd6** %14, align 8
  %102 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %14, align 8
  %103 = icmp eq %struct.llinfo_nd6* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  br label %90

105:                                              ; preds = %97
  %106 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %107 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = icmp eq %struct.TYPE_2__* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %90

111:                                              ; preds = %105
  %112 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %113 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %112, i32 0, i32 1
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @AF_LINK, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %90

120:                                              ; preds = %111
  %121 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %122 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %121, i32 0, i32 1
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = call %struct.sockaddr_dl* @SDL(%struct.TYPE_2__* %123)
  store %struct.sockaddr_dl* %124, %struct.sockaddr_dl** %16, align 8
  %125 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %16, align 8
  %126 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i32 1, i32 0
  store i32 %130, i32* %18, align 4
  %131 = load i32, i32* %18, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %148

133:                                              ; preds = %120
  %134 = load i8*, i8** %9, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %148

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8
  %138 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %16, align 8
  %139 = call i32 @LLADDR(%struct.sockaddr_dl* %138)
  %140 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %141 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call i64 @bcmp(i8* %137, i32 %139, i64 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %136
  store i32 1, i32* %19, align 4
  br label %147

146:                                              ; preds = %136
  store i32 0, i32* %19, align 4
  br label %147

147:                                              ; preds = %146, %145
  br label %149

148:                                              ; preds = %133, %120
  store i32 0, i32* %19, align 4
  br label %149

149:                                              ; preds = %148, %147
  %150 = load i8*, i8** %9, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %174

152:                                              ; preds = %149
  %153 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %154 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %16, align 8
  %157 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %156, i32 0, i32 0
  store i64 %155, i64* %157, align 8
  %158 = load i8*, i8** %9, align 8
  %159 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %16, align 8
  %160 = call i32 @LLADDR(%struct.sockaddr_dl* %159)
  %161 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %162 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @bcopy(i8* %158, i32 %160, i64 %163)
  %165 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %166 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %167 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %16, align 8
  %168 = call i32 @LLADDR(%struct.sockaddr_dl* %167)
  %169 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %16, align 8
  %170 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @FALSE, align 8
  %173 = call i32 @nd6_llreach_alloc(%struct.rtentry* %165, %struct.ifnet* %166, i32 %168, i64 %171, i64 %172)
  br label %174

174:                                              ; preds = %152, %149
  %175 = load i32, i32* %15, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %196

177:                                              ; preds = %174
  %178 = load i32, i32* %18, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %177
  %181 = load i8*, i8** %9, align 8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %192, label %183

183:                                              ; preds = %180, %177
  %184 = load i32, i32* %18, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %183
  %187 = load i8*, i8** %9, align 8
  %188 = icmp ne i8* %187, null
  br i1 %188, label %189, label %194

189:                                              ; preds = %186
  %190 = load i32, i32* %19, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %189, %180
  store i32 1, i32* %17, align 4
  %193 = load i32, i32* @ND6_LLINFO_STALE, align 4
  store i32 %193, i32* %20, align 4
  br label %195

194:                                              ; preds = %189, %186, %183
  store i32 0, i32* %17, align 4
  br label %195

195:                                              ; preds = %194, %192
  br label %204

196:                                              ; preds = %174
  store i32 1, i32* %17, align 4
  %197 = load i8*, i8** %9, align 8
  %198 = icmp eq i8* %197, null
  br i1 %198, label %199, label %201

199:                                              ; preds = %196
  %200 = load i32, i32* @ND6_LLINFO_NOSTATE, align 4
  store i32 %200, i32* %20, align 4
  br label %203

201:                                              ; preds = %196
  %202 = load i32, i32* @ND6_LLINFO_STALE, align 4
  store i32 %202, i32* %20, align 4
  br label %203

203:                                              ; preds = %201, %199
  br label %204

204:                                              ; preds = %203, %195
  %205 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %206 = call %struct.nd_ifinfo* @ND_IFINFO(%struct.ifnet* %205)
  store %struct.nd_ifinfo* %206, %struct.nd_ifinfo** %23, align 8
  %207 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %23, align 8
  %208 = icmp ne %struct.nd_ifinfo* null, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %204
  %210 = load i64, i64* @TRUE, align 8
  %211 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %23, align 8
  %212 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp eq i64 %210, %213
  br label %215

215:                                              ; preds = %209, %204
  %216 = phi i1 [ false, %204 ], [ %214, %209 ]
  %217 = zext i1 %216 to i32
  %218 = call i32 @VERIFY(i32 %217)
  %219 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %23, align 8
  %220 = icmp ne %struct.nd_ifinfo* %219, null
  br i1 %220, label %221, label %232

221:                                              ; preds = %215
  %222 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %23, align 8
  %223 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @ND6_IFF_PERFORMNUD, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %232, label %228

228:                                              ; preds = %221
  %229 = load i32, i32* @ND6_LLINFO_REACHABLE, align 4
  store i32 %229, i32* %20, align 4
  %230 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %14, align 8
  %231 = call i32 @ln_setexpire(%struct.llinfo_nd6* %230, i64 0)
  br label %232

232:                                              ; preds = %228, %221, %215
  %233 = load i32, i32* %17, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %296

235:                                              ; preds = %232
  %236 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %14, align 8
  %237 = load i32, i32* %20, align 4
  %238 = call i32 @ND6_CACHE_STATE_TRANSITION(%struct.llinfo_nd6* %236, i32 %237)
  %239 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %14, align 8
  %240 = getelementptr inbounds %struct.llinfo_nd6, %struct.llinfo_nd6* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @ND6_LLINFO_STALE, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %250, label %244

244:                                              ; preds = %235
  %245 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %14, align 8
  %246 = getelementptr inbounds %struct.llinfo_nd6, %struct.llinfo_nd6* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @ND6_LLINFO_REACHABLE, align 4
  %249 = icmp eq i32 %247, %248
  br i1 %249, label %250, label %283

250:                                              ; preds = %244, %235
  %251 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %14, align 8
  %252 = getelementptr inbounds %struct.llinfo_nd6, %struct.llinfo_nd6* %251, i32 0, i32 2
  %253 = load %struct.mbuf*, %struct.mbuf** %252, align 8
  store %struct.mbuf* %253, %struct.mbuf** %24, align 8
  %254 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %14, align 8
  %255 = getelementptr inbounds %struct.llinfo_nd6, %struct.llinfo_nd6* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @ND6_LLINFO_STALE, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %265

259:                                              ; preds = %250
  %260 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %14, align 8
  %261 = load i64, i64* %21, align 8
  %262 = load i64, i64* @nd6_gctimer, align 8
  %263 = add nsw i64 %261, %262
  %264 = call i32 @ln_setexpire(%struct.llinfo_nd6* %260, i64 %263)
  br label %265

265:                                              ; preds = %259, %250
  %266 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %14, align 8
  %267 = getelementptr inbounds %struct.llinfo_nd6, %struct.llinfo_nd6* %266, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %267, align 8
  %268 = load %struct.mbuf*, %struct.mbuf** %24, align 8
  %269 = icmp ne %struct.mbuf* %268, null
  br i1 %269, label %270, label %282

270:                                              ; preds = %265
  %271 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %272 = call i32 @rtkey_to_sa6(%struct.rtentry* %271, %struct.sockaddr_in6* %25)
  %273 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %274 = call i32 @RT_UNLOCK(%struct.rtentry* %273)
  %275 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %276 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %277 = load %struct.mbuf*, %struct.mbuf** %24, align 8
  %278 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %279 = call i32 @nd6_output_list(%struct.ifnet* %275, %struct.ifnet* %276, %struct.mbuf* %277, %struct.sockaddr_in6* %25, %struct.rtentry* %278, i32* null)
  %280 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %281 = call i32 @RT_LOCK(%struct.rtentry* %280)
  br label %282

282:                                              ; preds = %270, %265
  br label %295

283:                                              ; preds = %244
  %284 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %14, align 8
  %285 = getelementptr inbounds %struct.llinfo_nd6, %struct.llinfo_nd6* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @ND6_LLINFO_INCOMPLETE, align 4
  %288 = icmp eq i32 %286, %287
  br i1 %288, label %289, label %294

289:                                              ; preds = %283
  %290 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %14, align 8
  %291 = load i64, i64* %21, align 8
  %292 = call i32 @ln_setexpire(%struct.llinfo_nd6* %290, i64 %291)
  %293 = load i64, i64* @TRUE, align 8
  store i64 %293, i64* %22, align 8
  br label %294

294:                                              ; preds = %289, %283
  br label %295

295:                                              ; preds = %294, %282
  br label %296

296:                                              ; preds = %295, %232
  %297 = load i32, i32* %11, align 4
  %298 = and i32 %297, 255
  switch i32 %298, label %343 [
    i32 131, label %299
    i32 130, label %306
    i32 128, label %321
    i32 129, label %324
  ]

299:                                              ; preds = %296
  %300 = load i32, i32* %15, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %305

302:                                              ; preds = %299
  %303 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %14, align 8
  %304 = getelementptr inbounds %struct.llinfo_nd6, %struct.llinfo_nd6* %303, i32 0, i32 1
  store i32 0, i32* %304, align 4
  br label %305

305:                                              ; preds = %302, %299
  br label %343

306:                                              ; preds = %296
  %307 = load i32, i32* %12, align 4
  %308 = load i32, i32* @ND_REDIRECT_ROUTER, align 4
  %309 = icmp eq i32 %307, %308
  br i1 %309, label %310, label %313

310:                                              ; preds = %306
  %311 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %14, align 8
  %312 = getelementptr inbounds %struct.llinfo_nd6, %struct.llinfo_nd6* %311, i32 0, i32 1
  store i32 1, i32* %312, align 4
  br label %320

313:                                              ; preds = %306
  %314 = load i32, i32* %15, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %319

316:                                              ; preds = %313
  %317 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %14, align 8
  %318 = getelementptr inbounds %struct.llinfo_nd6, %struct.llinfo_nd6* %317, i32 0, i32 1
  store i32 0, i32* %318, align 4
  br label %319

319:                                              ; preds = %316, %313
  br label %320

320:                                              ; preds = %319, %310
  br label %343

321:                                              ; preds = %296
  %322 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %14, align 8
  %323 = getelementptr inbounds %struct.llinfo_nd6, %struct.llinfo_nd6* %322, i32 0, i32 1
  store i32 0, i32* %323, align 4
  br label %343

324:                                              ; preds = %296
  %325 = load i32, i32* %15, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %333, label %327

327:                                              ; preds = %324
  %328 = load i32, i32* %18, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %339, label %330

330:                                              ; preds = %327
  %331 = load i8*, i8** %9, align 8
  %332 = icmp ne i8* %331, null
  br i1 %332, label %339, label %333

333:                                              ; preds = %330, %324
  %334 = load i32, i32* %15, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %342

336:                                              ; preds = %333
  %337 = load i8*, i8** %9, align 8
  %338 = icmp ne i8* %337, null
  br i1 %338, label %339, label %342

339:                                              ; preds = %336, %330, %327
  %340 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %14, align 8
  %341 = getelementptr inbounds %struct.llinfo_nd6, %struct.llinfo_nd6* %340, i32 0, i32 1
  store i32 1, i32* %341, align 4
  br label %342

342:                                              ; preds = %339, %336, %333
  br label %343

343:                                              ; preds = %296, %342, %321, %320, %305
  %344 = load i32, i32* %17, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %404

346:                                              ; preds = %343
  store i32 0, i32* %26, align 4
  %347 = load i32, i32* %19, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %351

349:                                              ; preds = %346
  %350 = load i32, i32* @ROUTE_LLENTRY_CHANGED, align 4
  store i32 %350, i32* %26, align 4
  br label %353

351:                                              ; preds = %346
  %352 = load i32, i32* @ROUTE_LLENTRY_RESOLVED, align 4
  store i32 %352, i32* %26, align 4
  br label %353

353:                                              ; preds = %351, %349
  %354 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %355 = load i32, i32* %26, align 4
  %356 = load i64, i64* @TRUE, align 8
  %357 = call i32 @route_event_enqueue_nwk_wq_entry(%struct.rtentry* %354, i32* null, i32 %355, i32* null, i64 %356)
  %358 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %14, align 8
  %359 = getelementptr inbounds %struct.llinfo_nd6, %struct.llinfo_nd6* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %369, label %362

362:                                              ; preds = %353
  %363 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %364 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* @RTF_ROUTER, align 4
  %367 = and i32 %365, %366
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %403

369:                                              ; preds = %362, %353
  store %struct.radix_node_head* null, %struct.radix_node_head** %27, align 8
  %370 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %371 = load i32, i32* %19, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %375

373:                                              ; preds = %369
  %374 = load i32, i32* @ROUTE_LLENTRY_CHANGED, align 4
  br label %377

375:                                              ; preds = %369
  %376 = load i32, i32* @ROUTE_LLENTRY_RESOLVED, align 4
  br label %377

377:                                              ; preds = %375, %373
  %378 = phi i32 [ %374, %373 ], [ %376, %375 ]
  %379 = call i32 @route_event_init(%struct.route_event* %28, %struct.rtentry* %370, i32* null, i32 %378)
  %380 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %381 = call i32 @RT_UNLOCK(%struct.rtentry* %380)
  %382 = load i32, i32* @rnh_lock, align 4
  %383 = call i32 @lck_mtx_lock(i32 %382)
  %384 = load %struct.radix_node_head**, %struct.radix_node_head*** @rt_tables, align 8
  %385 = load i64, i64* @AF_INET6, align 8
  %386 = getelementptr inbounds %struct.radix_node_head*, %struct.radix_node_head** %384, i64 %385
  %387 = load %struct.radix_node_head*, %struct.radix_node_head** %386, align 8
  store %struct.radix_node_head* %387, %struct.radix_node_head** %27, align 8
  %388 = load %struct.radix_node_head*, %struct.radix_node_head** %27, align 8
  %389 = icmp ne %struct.radix_node_head* %388, null
  br i1 %389, label %390, label %398

390:                                              ; preds = %377
  %391 = load %struct.radix_node_head*, %struct.radix_node_head** %27, align 8
  %392 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %391, i32 0, i32 0
  %393 = load i32 (%struct.radix_node_head*, i32, i8*)*, i32 (%struct.radix_node_head*, i32, i8*)** %392, align 8
  %394 = load %struct.radix_node_head*, %struct.radix_node_head** %27, align 8
  %395 = load i32, i32* @route_event_walktree, align 4
  %396 = bitcast %struct.route_event* %28 to i8*
  %397 = call i32 %393(%struct.radix_node_head* %394, i32 %395, i8* %396)
  br label %398

398:                                              ; preds = %390, %377
  %399 = load i32, i32* @rnh_lock, align 4
  %400 = call i32 @lck_mtx_unlock(i32 %399)
  %401 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %402 = call i32 @RT_LOCK(%struct.rtentry* %401)
  br label %403

403:                                              ; preds = %398, %362
  br label %404

404:                                              ; preds = %403, %343
  %405 = load i32, i32* %17, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %423

407:                                              ; preds = %404
  %408 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %14, align 8
  %409 = getelementptr inbounds %struct.llinfo_nd6, %struct.llinfo_nd6* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %423

412:                                              ; preds = %407
  %413 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %414 = call i32 @RT_REMREF_LOCKED(%struct.rtentry* %413)
  %415 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %416 = call i32 @RT_UNLOCK(%struct.rtentry* %415)
  %417 = load i32, i32* @nd6_mutex, align 4
  %418 = call i32 @lck_mtx_lock(i32 %417)
  %419 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %420 = call i32 @defrouter_select(%struct.ifnet* %419)
  %421 = load i32, i32* @nd6_mutex, align 4
  %422 = call i32 @lck_mtx_unlock(i32 %421)
  br label %428

423:                                              ; preds = %407, %404
  %424 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %425 = call i32 @RT_REMREF_LOCKED(%struct.rtentry* %424)
  %426 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %427 = call i32 @RT_UNLOCK(%struct.rtentry* %426)
  br label %428

428:                                              ; preds = %423, %412
  %429 = load i64, i64* %22, align 8
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %431, label %437

431:                                              ; preds = %428
  %432 = load i32, i32* @rnh_lock, align 4
  %433 = call i32 @lck_mtx_lock(i32 %432)
  %434 = call i32 @nd6_sched_timeout(i32* null, i32* null)
  %435 = load i32, i32* @rnh_lock, align 4
  %436 = call i32 @lck_mtx_unlock(i32 %435)
  br label %437

437:                                              ; preds = %43, %56, %69, %78, %90, %431, %428
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @IN6_IS_ADDR_UNSPECIFIED(%struct.in6_addr*) #1

declare dso_local i64 @net_uptime(...) #1

declare dso_local %struct.rtentry* @nd6_lookup(%struct.in6_addr*, i32, %struct.ifnet*, i32) #1

declare dso_local i32 @RT_LOCK_ASSERT_HELD(%struct.rtentry*) #1

declare dso_local i32 @RT_REMREF_LOCKED(%struct.rtentry*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local i32 @nd6_free(%struct.rtentry*) #1

declare dso_local i32 @rtfree(%struct.rtentry*) #1

declare dso_local %struct.sockaddr_dl* @SDL(%struct.TYPE_2__*) #1

declare dso_local i64 @bcmp(i8*, i32, i64) #1

declare dso_local i32 @LLADDR(%struct.sockaddr_dl*) #1

declare dso_local i32 @bcopy(i8*, i32, i64) #1

declare dso_local i32 @nd6_llreach_alloc(%struct.rtentry*, %struct.ifnet*, i32, i64, i64) #1

declare dso_local %struct.nd_ifinfo* @ND_IFINFO(%struct.ifnet*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @ln_setexpire(%struct.llinfo_nd6*, i64) #1

declare dso_local i32 @ND6_CACHE_STATE_TRANSITION(%struct.llinfo_nd6*, i32) #1

declare dso_local i32 @rtkey_to_sa6(%struct.rtentry*, %struct.sockaddr_in6*) #1

declare dso_local i32 @nd6_output_list(%struct.ifnet*, %struct.ifnet*, %struct.mbuf*, %struct.sockaddr_in6*, %struct.rtentry*, i32*) #1

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @route_event_enqueue_nwk_wq_entry(%struct.rtentry*, i32*, i32, i32*, i64) #1

declare dso_local i32 @route_event_init(%struct.route_event*, %struct.rtentry*, i32*, i32) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @defrouter_select(%struct.ifnet*) #1

declare dso_local i32 @nd6_sched_timeout(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
