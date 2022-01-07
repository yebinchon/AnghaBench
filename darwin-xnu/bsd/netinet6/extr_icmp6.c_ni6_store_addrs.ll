; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_icmp6.c_ni6_store_addrs.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_icmp6.c_ni6_store_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icmp6_nodeinfo = type { i32 }
%struct.ifnet = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ifaddr* }
%struct.ifaddr = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.ifaddr* }
%struct.in6_ifaddr = type { i32, %struct.TYPE_8__, %struct.in6_addrlifetime_i }
%struct.TYPE_8__ = type { i32 }
%struct.in6_addrlifetime_i = type { i64 }
%struct.in6_addr = type { i64* }

@NI_NODEADDR_FLAG_ALL = common dso_local global i32 0, align 4
@ifnet_head = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@IN6_IFF_DEPRECATED = common dso_local global i32 0, align 4
@NI_NODEADDR_FLAG_LINKLOCAL = common dso_local global i32 0, align 4
@NI_NODEADDR_FLAG_SITELOCAL = common dso_local global i32 0, align 4
@NI_NODEADDR_FLAG_GLOBAL = common dso_local global i32 0, align 4
@IN6_IFF_ANYCAST = common dso_local global i32 0, align 4
@NI_NODEADDR_FLAG_ANYCAST = common dso_local global i32 0, align 4
@IN6_IFF_TEMPORARY = common dso_local global i32 0, align 4
@icmp6_nodeinfo = common dso_local global i32 0, align 4
@ICMP6_NODEINFO_TMPADDROK = common dso_local global i32 0, align 4
@NI_NODEADDR_FLAG_TRUNCATE = common dso_local global i32 0, align 4
@ND6_INFINITE_LIFETIME = common dso_local global i32 0, align 4
@if_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icmp6_nodeinfo*, %struct.icmp6_nodeinfo*, %struct.ifnet*, i32)* @ni6_store_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni6_store_addrs(%struct.icmp6_nodeinfo* %0, %struct.icmp6_nodeinfo* %1, %struct.ifnet* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.icmp6_nodeinfo*, align 8
  %7 = alloca %struct.icmp6_nodeinfo*, align 8
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ifnet*, align 8
  %11 = alloca %struct.in6_ifaddr*, align 8
  %12 = alloca %struct.ifaddr*, align 8
  %13 = alloca %struct.ifnet*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.in6_addrlifetime_i*, align 8
  store %struct.icmp6_nodeinfo* %0, %struct.icmp6_nodeinfo** %6, align 8
  store %struct.icmp6_nodeinfo* %1, %struct.icmp6_nodeinfo** %7, align 8
  store %struct.ifnet* %2, %struct.ifnet** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %21, %struct.ifnet** %10, align 8
  store %struct.ifnet* null, %struct.ifnet** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %22 = load %struct.icmp6_nodeinfo*, %struct.icmp6_nodeinfo** %7, align 8
  %23 = getelementptr inbounds %struct.icmp6_nodeinfo, %struct.icmp6_nodeinfo* %22, i64 1
  %24 = bitcast %struct.icmp6_nodeinfo* %23 to i32*
  store i32* %24, i32** %16, align 8
  %25 = load %struct.icmp6_nodeinfo*, %struct.icmp6_nodeinfo** %6, align 8
  %26 = getelementptr inbounds %struct.icmp6_nodeinfo, %struct.icmp6_nodeinfo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %17, align 4
  %28 = call i64 (...) @net_uptime()
  store i64 %28, i64* %19, align 8
  %29 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %30 = icmp eq %struct.ifnet* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %4
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* @NI_NODEADDR_FLAG_ALL, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %272

37:                                               ; preds = %31, %4
  br label %38

38:                                               ; preds = %268, %37
  %39 = call i32 (...) @ifnet_head_lock_shared()
  %40 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %41 = icmp eq %struct.ifnet* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call %struct.ifnet* @TAILQ_FIRST(i32* @ifnet_head)
  store %struct.ifnet* %43, %struct.ifnet** %10, align 8
  br label %44

44:                                               ; preds = %42, %38
  br label %45

45:                                               ; preds = %257, %44
  %46 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %47 = icmp ne %struct.ifnet* %46, null
  br i1 %47, label %48, label %261

48:                                               ; preds = %45
  %49 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %50 = call i32 @ifnet_lock_shared(%struct.ifnet* %49)
  %51 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %52 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.ifaddr*, %struct.ifaddr** %53, align 8
  store %struct.ifaddr* %54, %struct.ifaddr** %12, align 8
  br label %55

55:                                               ; preds = %245, %48
  %56 = load %struct.ifaddr*, %struct.ifaddr** %12, align 8
  %57 = icmp ne %struct.ifaddr* %56, null
  br i1 %57, label %58, label %250

58:                                               ; preds = %55
  %59 = load %struct.ifaddr*, %struct.ifaddr** %12, align 8
  %60 = call i32 @IFA_LOCK(%struct.ifaddr* %59)
  %61 = load %struct.ifaddr*, %struct.ifaddr** %12, align 8
  %62 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @AF_INET6, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = load %struct.ifaddr*, %struct.ifaddr** %12, align 8
  %70 = call i32 @IFA_UNLOCK(%struct.ifaddr* %69)
  br label %245

71:                                               ; preds = %58
  %72 = load %struct.ifaddr*, %struct.ifaddr** %12, align 8
  %73 = bitcast %struct.ifaddr* %72 to %struct.in6_ifaddr*
  store %struct.in6_ifaddr* %73, %struct.in6_ifaddr** %11, align 8
  %74 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %11, align 8
  %75 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @IN6_IFF_DEPRECATED, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %71
  %81 = load i32, i32* %15, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  %85 = icmp eq %struct.ifnet* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %87, %struct.ifnet** %13, align 8
  br label %88

88:                                               ; preds = %86, %83
  %89 = load %struct.ifaddr*, %struct.ifaddr** %12, align 8
  %90 = call i32 @IFA_UNLOCK(%struct.ifaddr* %89)
  br label %245

91:                                               ; preds = %80, %71
  %92 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %11, align 8
  %93 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @IN6_IFF_DEPRECATED, align 4
  %96 = and i32 %94, %95
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load i32, i32* %15, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load %struct.ifaddr*, %struct.ifaddr** %12, align 8
  %103 = call i32 @IFA_UNLOCK(%struct.ifaddr* %102)
  br label %245

104:                                              ; preds = %98, %91
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %11, align 8
  %107 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = call i32 @in6_addrscope(i32* %108)
  switch i32 %109, label %137 [
    i32 129, label %110
    i32 128, label %119
    i32 130, label %128
  ]

110:                                              ; preds = %105
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* @NI_NODEADDR_FLAG_LINKLOCAL, align 4
  %113 = and i32 %111, %112
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load %struct.ifaddr*, %struct.ifaddr** %12, align 8
  %117 = call i32 @IFA_UNLOCK(%struct.ifaddr* %116)
  br label %245

118:                                              ; preds = %110
  br label %140

119:                                              ; preds = %105
  %120 = load i32, i32* %17, align 4
  %121 = load i32, i32* @NI_NODEADDR_FLAG_SITELOCAL, align 4
  %122 = and i32 %120, %121
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load %struct.ifaddr*, %struct.ifaddr** %12, align 8
  %126 = call i32 @IFA_UNLOCK(%struct.ifaddr* %125)
  br label %245

127:                                              ; preds = %119
  br label %140

128:                                              ; preds = %105
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* @NI_NODEADDR_FLAG_GLOBAL, align 4
  %131 = and i32 %129, %130
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load %struct.ifaddr*, %struct.ifaddr** %12, align 8
  %135 = call i32 @IFA_UNLOCK(%struct.ifaddr* %134)
  br label %245

136:                                              ; preds = %128
  br label %140

137:                                              ; preds = %105
  %138 = load %struct.ifaddr*, %struct.ifaddr** %12, align 8
  %139 = call i32 @IFA_UNLOCK(%struct.ifaddr* %138)
  br label %245

140:                                              ; preds = %136, %127, %118
  %141 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %11, align 8
  %142 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @IN6_IFF_ANYCAST, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %140
  %148 = load i32, i32* %17, align 4
  %149 = load i32, i32* @NI_NODEADDR_FLAG_ANYCAST, align 4
  %150 = and i32 %148, %149
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load %struct.ifaddr*, %struct.ifaddr** %12, align 8
  %154 = call i32 @IFA_UNLOCK(%struct.ifaddr* %153)
  br label %245

155:                                              ; preds = %147, %140
  %156 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %11, align 8
  %157 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @IN6_IFF_TEMPORARY, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %155
  %163 = load i32, i32* @icmp6_nodeinfo, align 4
  %164 = load i32, i32* @ICMP6_NODEINFO_TMPADDROK, align 4
  %165 = and i32 %163, %164
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load %struct.ifaddr*, %struct.ifaddr** %12, align 8
  %169 = call i32 @IFA_UNLOCK(%struct.ifaddr* %168)
  br label %245

170:                                              ; preds = %162, %155
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = icmp ult i64 %172, 12
  br i1 %173, label %174, label %186

174:                                              ; preds = %170
  %175 = load %struct.ifaddr*, %struct.ifaddr** %12, align 8
  %176 = call i32 @IFA_UNLOCK(%struct.ifaddr* %175)
  %177 = load i32, i32* @NI_NODEADDR_FLAG_TRUNCATE, align 4
  %178 = load %struct.icmp6_nodeinfo*, %struct.icmp6_nodeinfo** %7, align 8
  %179 = getelementptr inbounds %struct.icmp6_nodeinfo, %struct.icmp6_nodeinfo* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 4
  %182 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %183 = call i32 @ifnet_lock_done(%struct.ifnet* %182)
  %184 = call i32 (...) @ifnet_head_done()
  %185 = load i32, i32* %14, align 4
  store i32 %185, i32* %5, align 4
  br label %272

186:                                              ; preds = %170
  %187 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %11, align 8
  %188 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %187, i32 0, i32 2
  store %struct.in6_addrlifetime_i* %188, %struct.in6_addrlifetime_i** %20, align 8
  %189 = load %struct.in6_addrlifetime_i*, %struct.in6_addrlifetime_i** %20, align 8
  %190 = getelementptr inbounds %struct.in6_addrlifetime_i, %struct.in6_addrlifetime_i* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %186
  %194 = load i32, i32* @ND6_INFINITE_LIFETIME, align 4
  store i32 %194, i32* %18, align 4
  br label %210

195:                                              ; preds = %186
  %196 = load %struct.in6_addrlifetime_i*, %struct.in6_addrlifetime_i** %20, align 8
  %197 = getelementptr inbounds %struct.in6_addrlifetime_i, %struct.in6_addrlifetime_i* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* %19, align 8
  %200 = icmp sgt i64 %198, %199
  br i1 %200, label %201, label %208

201:                                              ; preds = %195
  %202 = load %struct.in6_addrlifetime_i*, %struct.in6_addrlifetime_i** %20, align 8
  %203 = getelementptr inbounds %struct.in6_addrlifetime_i, %struct.in6_addrlifetime_i* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* %19, align 8
  %206 = sub nsw i64 %204, %205
  %207 = call i32 @htonl(i64 %206)
  store i32 %207, i32* %18, align 4
  br label %209

208:                                              ; preds = %195
  store i32 0, i32* %18, align 4
  br label %209

209:                                              ; preds = %208, %201
  br label %210

210:                                              ; preds = %209, %193
  %211 = load i32*, i32** %16, align 8
  %212 = call i32 @bcopy(i32* %18, i32* %211, i32 4)
  %213 = load i32*, i32** %16, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 4
  store i32* %214, i32** %16, align 8
  %215 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %11, align 8
  %216 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 0
  %218 = load i32*, i32** %16, align 8
  %219 = call i32 @bcopy(i32* %217, i32* %218, i32 8)
  %220 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %11, align 8
  %221 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 0
  %223 = call i64 @IN6_IS_ADDR_LINKLOCAL(i32* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %210
  %226 = load i32*, i32** %16, align 8
  %227 = bitcast i32* %226 to i8*
  %228 = bitcast i8* %227 to %struct.in6_addr*
  %229 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %228, i32 0, i32 0
  %230 = load i64*, i64** %229, align 8
  %231 = getelementptr inbounds i64, i64* %230, i64 1
  store i64 0, i64* %231, align 8
  br label %232

232:                                              ; preds = %225, %210
  %233 = load i32*, i32** %16, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 8
  store i32* %234, i32** %16, align 8
  %235 = load i32, i32* %9, align 4
  %236 = sext i32 %235 to i64
  %237 = sub i64 %236, 12
  %238 = trunc i64 %237 to i32
  store i32 %238, i32* %9, align 4
  %239 = load i32, i32* %14, align 4
  %240 = sext i32 %239 to i64
  %241 = add i64 %240, 12
  %242 = trunc i64 %241 to i32
  store i32 %242, i32* %14, align 4
  %243 = load %struct.ifaddr*, %struct.ifaddr** %12, align 8
  %244 = call i32 @IFA_UNLOCK(%struct.ifaddr* %243)
  br label %245

245:                                              ; preds = %232, %167, %152, %137, %133, %124, %115, %101, %88, %68
  %246 = load %struct.ifaddr*, %struct.ifaddr** %12, align 8
  %247 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 0
  %249 = load %struct.ifaddr*, %struct.ifaddr** %248, align 8
  store %struct.ifaddr* %249, %struct.ifaddr** %12, align 8
  br label %55

250:                                              ; preds = %55
  %251 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %252 = call i32 @ifnet_lock_done(%struct.ifnet* %251)
  %253 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %254 = icmp ne %struct.ifnet* %253, null
  br i1 %254, label %255, label %256

255:                                              ; preds = %250
  br label %261

256:                                              ; preds = %250
  br label %257

257:                                              ; preds = %256
  %258 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %259 = load i32, i32* @if_list, align 4
  %260 = call %struct.ifnet* @TAILQ_NEXT(%struct.ifnet* %258, i32 %259)
  store %struct.ifnet* %260, %struct.ifnet** %10, align 8
  br label %45

261:                                              ; preds = %255, %45
  %262 = call i32 (...) @ifnet_head_done()
  %263 = load i32, i32* %15, align 4
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %261
  %266 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  %267 = icmp ne %struct.ifnet* %266, null
  br i1 %267, label %268, label %270

268:                                              ; preds = %265
  %269 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  store %struct.ifnet* %269, %struct.ifnet** %10, align 8
  store i32 1, i32* %15, align 4
  br label %38

270:                                              ; preds = %265, %261
  %271 = load i32, i32* %14, align 4
  store i32 %271, i32* %5, align 4
  br label %272

272:                                              ; preds = %270, %174, %36
  %273 = load i32, i32* %5, align 4
  ret i32 %273
}

declare dso_local i64 @net_uptime(...) #1

declare dso_local i32 @ifnet_head_lock_shared(...) #1

declare dso_local %struct.ifnet* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @ifnet_lock_shared(%struct.ifnet*) #1

declare dso_local i32 @IFA_LOCK(%struct.ifaddr*) #1

declare dso_local i32 @IFA_UNLOCK(%struct.ifaddr*) #1

declare dso_local i32 @in6_addrscope(i32*) #1

declare dso_local i32 @ifnet_lock_done(%struct.ifnet*) #1

declare dso_local i32 @ifnet_head_done(...) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i64 @IN6_IS_ADDR_LINKLOCAL(i32*) #1

declare dso_local %struct.ifnet* @TAILQ_NEXT(%struct.ifnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
