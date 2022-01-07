; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_vlan.c_vlan_config.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_vlan.c_vlan_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.ifnet = type { i32 }
%struct.TYPE_12__ = type { i64, i64, i64, i32, i32* }

@FALSE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@g_vlan = common dso_local global %struct.TYPE_11__* null, align 8
@vlp_parent_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"vlan_config\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IFEF_BOND = common dso_local global i32 0, align 4
@IFEF_VLAN = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@ETHER_VLAN_ENCAP_LEN = common dso_local global i64 0, align 8
@ETHERMTU = common dso_local global i64 0, align 8
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFNET_VLAN_TAGGING = common dso_local global i32 0, align 4
@IFNET_VLAN_MTU = common dso_local global i32 0, align 4
@IFF_RUNNING = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@SIOCSIFFLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.ifnet*, i32)* @vlan_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_config(%struct.ifnet* %0, %struct.ifnet* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store %struct.ifnet* %1, %struct.ifnet** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %9, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %10, align 8
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32* null, i32** %13, align 8
  store i32* null, i32** %16, align 8
  %19 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %20 = call i32 @vlan_parent_create(%struct.ifnet* %19, i32** %13)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %327

25:                                               ; preds = %3
  %26 = call i32 (...) @vlan_lock()
  %27 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %28 = call %struct.TYPE_12__* @ifnet_get_ifvlan_retained(%struct.ifnet* %27)
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %10, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %30 = icmp eq %struct.TYPE_12__* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %31, %25
  %37 = call i32 (...) @vlan_unlock()
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %39 = icmp ne %struct.TYPE_12__* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %42 = call i32 @ifvlan_release(%struct.TYPE_12__* %41)
  br label %43

43:                                               ; preds = %40, %36
  %44 = load i32*, i32** %13, align 8
  %45 = call i32 @vlan_parent_release(i32* %44)
  %46 = load i32, i32* @EBUSY, align 4
  store i32 %46, i32* %4, align 4
  br label %327

47:                                               ; preds = %31
  %48 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %49 = call i32* @parent_list_lookup(%struct.ifnet* %48)
  store i32* %49, i32** %16, align 8
  %50 = load i32*, i32** %16, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = load i32*, i32** %16, align 8
  %54 = call i32 @vlan_parent_retain(i32* %53)
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %12, align 4
  %57 = load i32*, i32** %16, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32* @vlan_parent_lookup_tag(i32* %57, i32 %58)
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* @EADDRINUSE, align 4
  store i32 %62, i32* %8, align 4
  br label %297

63:                                               ; preds = %52
  br label %77

64:                                               ; preds = %47
  %65 = load i32*, i32** %13, align 8
  %66 = call i32 @vlan_parent_retain(i32* %65)
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_vlan, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32*, i32** %13, align 8
  %70 = load i32, i32* @vlp_parent_list, align 4
  %71 = call i32 @LIST_INSERT_HEAD(i32* %68, i32* %69, i32 %70)
  %72 = load i32*, i32** %13, align 8
  store i32* %72, i32** %16, align 8
  %73 = load i32*, i32** %16, align 8
  %74 = call i32 @vlan_parent_retain(i32* %73)
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %64, %63
  %78 = load i32*, i32** %16, align 8
  %79 = call i32 @vlan_parent_wait(i32* %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %80 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %81 = call %struct.TYPE_12__* @ifnet_get_ifvlan(%struct.ifnet* %80)
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %83 = icmp ne %struct.TYPE_12__* %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i32, i32* @EINVAL, align 4
  store i32 %85, i32* %8, align 4
  br label %267

86:                                               ; preds = %77
  %87 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %88 = call i32* @parent_list_lookup(%struct.ifnet* %87)
  %89 = load i32*, i32** %16, align 8
  %90 = icmp ne i32* %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* @EBUSY, align 4
  store i32 %92, i32* %8, align 4
  br label %267

93:                                               ; preds = %86
  %94 = load i32*, i32** %16, align 8
  %95 = call i64 @vlan_parent_flags_detaching(i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %106, label %97

97:                                               ; preds = %93
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %99 = call i64 @ifvlan_flags_detaching(%struct.TYPE_12__* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %97
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %101, %97, %93
  %107 = load i32, i32* @EBUSY, align 4
  store i32 %107, i32* %8, align 4
  br label %267

108:                                              ; preds = %101
  %109 = load i32*, i32** %16, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i32* @vlan_parent_lookup_tag(i32* %109, i32 %110)
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = load i32, i32* @EADDRINUSE, align 4
  store i32 %114, i32* %8, align 4
  br label %267

115:                                              ; preds = %108
  %116 = load i32*, i32** %16, align 8
  %117 = call i64 @vlan_parent_no_vlans(i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load i32, i32* @TRUE, align 4
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %119, %115
  %122 = load i32*, i32** %16, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @vlan_parent_add_vlan(i32* %122, %struct.TYPE_12__* %123, i32 %124)
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %127 = call i32 @ifvlan_retain(%struct.TYPE_12__* %126)
  %128 = load i32, i32* @TRUE, align 4
  store i32 %128, i32* %11, align 4
  %129 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %130 = call i32 @ifnet_lock_exclusive(%struct.ifnet* %129)
  %131 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %132 = call i32 @ifnet_eflags(%struct.ifnet* %131)
  %133 = load i32, i32* @IFEF_BOND, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %121
  %137 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %138 = call i32 @ifnet_lock_done(%struct.ifnet* %137)
  %139 = load i32, i32* @EBUSY, align 4
  store i32 %139, i32* %8, align 4
  br label %267

140:                                              ; preds = %121
  %141 = load i32, i32* @IFEF_VLAN, align 4
  %142 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %143 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 4
  %146 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %147 = call i32 @ifnet_lock_done(%struct.ifnet* %146)
  %148 = call i32 (...) @vlan_unlock()
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %140
  %152 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %153 = call i32 @vlan_attach_protocol(%struct.ifnet* %152)
  store i32 %153, i32* %8, align 4
  %154 = load i32, i32* %8, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %151
  %157 = call i32 (...) @vlan_lock()
  br label %267

158:                                              ; preds = %151
  br label %159

159:                                              ; preds = %158, %140
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 3
  %162 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %163 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %164 = call i32 @multicast_list_program(i32* %161, %struct.ifnet* %162, %struct.ifnet* %163)
  store i32 %164, i32* %8, align 4
  %165 = load i32, i32* %8, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %159
  %168 = load i32, i32* %9, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %172 = call i32 @vlan_detach_protocol(%struct.ifnet* %171)
  br label %173

173:                                              ; preds = %170, %167
  %174 = call i32 (...) @vlan_lock()
  br label %267

175:                                              ; preds = %159
  %176 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %177 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %178 = call i32 @IF_LLADDR(%struct.ifnet* %177)
  %179 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %180 = load i32, i32* @IFT_ETHER, align 4
  %181 = call i32 @ifnet_set_lladdr_and_type(%struct.ifnet* %176, i32 %178, i32 %179, i32 %180)
  %182 = call i32 (...) @vlan_lock()
  %183 = load i64, i64* @ETHER_VLAN_ENCAP_LEN, align 8
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 1
  store i64 %183, i64* %185, align 8
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 2
  store i64 0, i64* %187, align 8
  %188 = load i32*, i32** %16, align 8
  %189 = call i64 @vlan_parent_flags_supports_vlan_mtu(i32* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %175
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  store i64 0, i64* %193, align 8
  br label %200

194:                                              ; preds = %175
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 0
  store i64 %197, i64* %199, align 8
  br label %200

200:                                              ; preds = %194, %191
  %201 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %202 = load i64, i64* @ETHERMTU, align 8
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = sub nsw i64 %202, %205
  %207 = call i32 @ifnet_set_mtu(%struct.ifnet* %201, i64 %206)
  %208 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %209 = call i32 @ifnet_flags(%struct.ifnet* %208)
  %210 = load i32, i32* @IFF_BROADCAST, align 4
  %211 = load i32, i32* @IFF_MULTICAST, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* @IFF_SIMPLEX, align 4
  %214 = or i32 %212, %213
  %215 = and i32 %209, %214
  store i32 %215, i32* %15, align 4
  %216 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %217 = load i32, i32* %15, align 4
  %218 = load i32, i32* @IFF_BROADCAST, align 4
  %219 = load i32, i32* @IFF_MULTICAST, align 4
  %220 = or i32 %218, %219
  %221 = load i32, i32* @IFF_SIMPLEX, align 4
  %222 = or i32 %220, %221
  %223 = call i32 @ifnet_set_flags(%struct.ifnet* %216, i32 %217, i32 %222)
  %224 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %225 = call i32 @ifnet_offload(%struct.ifnet* %224)
  %226 = load i32, i32* @IFNET_VLAN_TAGGING, align 4
  %227 = load i32, i32* @IFNET_VLAN_MTU, align 4
  %228 = or i32 %226, %227
  %229 = xor i32 %228, -1
  %230 = and i32 %225, %229
  store i32 %230, i32* %14, align 4
  %231 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %232 = load i32, i32* %14, align 4
  %233 = call i32 @ifnet_set_offload(%struct.ifnet* %231, i32 %232)
  %234 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %235 = load i32, i32* @IFF_RUNNING, align 4
  %236 = load i32, i32* @IFF_RUNNING, align 4
  %237 = call i32 @ifnet_set_flags(%struct.ifnet* %234, i32 %235, i32 %236)
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %239 = call i32 @ifvlan_flags_set_ready(%struct.TYPE_12__* %238)
  %240 = load i32*, i32** %16, align 8
  %241 = call i32 @vlan_parent_signal(i32* %240, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %242 = call i32 (...) @vlan_unlock()
  %243 = load i32*, i32** %13, align 8
  %244 = load i32*, i32** %16, align 8
  %245 = icmp ne i32* %243, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %200
  %247 = load i32*, i32** %13, align 8
  %248 = call i32 @vlan_parent_release(i32* %247)
  br label %249

249:                                              ; preds = %246, %200
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %251 = icmp ne %struct.TYPE_12__* %250, null
  br i1 %251, label %252, label %255

252:                                              ; preds = %249
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %254 = call i32 @ifvlan_release(%struct.TYPE_12__* %253)
  br label %255

255:                                              ; preds = %252, %249
  %256 = load i32, i32* %9, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %266

258:                                              ; preds = %255
  %259 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %260 = load i32, i32* @IFF_UP, align 4
  %261 = load i32, i32* @IFF_UP, align 4
  %262 = call i32 @ifnet_set_flags(%struct.ifnet* %259, i32 %260, i32 %261)
  %263 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %264 = load i32, i32* @SIOCSIFFLAGS, align 4
  %265 = call i32 @ifnet_ioctl(%struct.ifnet* %263, i32 0, i32 %264, i32 0)
  br label %266

266:                                              ; preds = %258, %255
  store i32 0, i32* %4, align 4
  br label %327

267:                                              ; preds = %173, %156, %136, %113, %106, %91, %84
  %268 = call i32 (...) @vlan_assert_lock_held()
  %269 = load i32, i32* %11, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %294

271:                                              ; preds = %267
  %272 = load i32*, i32** %16, align 8
  %273 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %274 = call i32 @vlan_parent_remove_vlan(i32* %272, %struct.TYPE_12__* %273)
  %275 = load i32*, i32** %16, align 8
  %276 = call i64 @vlan_parent_flags_detaching(i32* %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %293, label %278

278:                                              ; preds = %271
  %279 = load i32*, i32** %16, align 8
  %280 = call i64 @vlan_parent_no_vlans(i32* %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %293

282:                                              ; preds = %278
  %283 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %284 = load i32, i32* @IFEF_VLAN, align 4
  %285 = call i32 @ifnet_set_eflags(%struct.ifnet* %283, i32 0, i32 %284)
  %286 = load i32*, i32** %16, align 8
  %287 = load i32, i32* @vlp_parent_list, align 4
  %288 = call i32 @LIST_REMOVE(i32* %286, i32 %287)
  %289 = load i32, i32* %12, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %12, align 4
  %291 = load i32, i32* %12, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %12, align 4
  br label %293

293:                                              ; preds = %282, %278, %271
  br label %294

294:                                              ; preds = %293, %267
  %295 = load i32*, i32** %16, align 8
  %296 = call i32 @vlan_parent_signal(i32* %295, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %297

297:                                              ; preds = %294, %61
  %298 = call i32 (...) @vlan_unlock()
  br label %299

299:                                              ; preds = %303, %297
  %300 = load i32, i32* %12, align 4
  %301 = add nsw i32 %300, -1
  store i32 %301, i32* %12, align 4
  %302 = icmp ne i32 %300, 0
  br i1 %302, label %303, label %306

303:                                              ; preds = %299
  %304 = load i32*, i32** %16, align 8
  %305 = call i32 @vlan_parent_release(i32* %304)
  br label %299

306:                                              ; preds = %299
  %307 = load i32*, i32** %13, align 8
  %308 = load i32*, i32** %16, align 8
  %309 = icmp ne i32* %307, %308
  br i1 %309, label %310, label %313

310:                                              ; preds = %306
  %311 = load i32*, i32** %13, align 8
  %312 = call i32 @vlan_parent_release(i32* %311)
  br label %313

313:                                              ; preds = %310, %306
  %314 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %315 = icmp ne %struct.TYPE_12__* %314, null
  br i1 %315, label %316, label %325

316:                                              ; preds = %313
  %317 = load i32, i32* %11, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %316
  %320 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %321 = call i32 @ifvlan_release(%struct.TYPE_12__* %320)
  br label %322

322:                                              ; preds = %319, %316
  %323 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %324 = call i32 @ifvlan_release(%struct.TYPE_12__* %323)
  br label %325

325:                                              ; preds = %322, %313
  %326 = load i32, i32* %8, align 4
  store i32 %326, i32* %4, align 4
  br label %327

327:                                              ; preds = %325, %266, %43, %23
  %328 = load i32, i32* %4, align 4
  ret i32 %328
}

declare dso_local i32 @vlan_parent_create(%struct.ifnet*, i32**) #1

declare dso_local i32 @vlan_lock(...) #1

declare dso_local %struct.TYPE_12__* @ifnet_get_ifvlan_retained(%struct.ifnet*) #1

declare dso_local i32 @vlan_unlock(...) #1

declare dso_local i32 @ifvlan_release(%struct.TYPE_12__*) #1

declare dso_local i32 @vlan_parent_release(i32*) #1

declare dso_local i32* @parent_list_lookup(%struct.ifnet*) #1

declare dso_local i32 @vlan_parent_retain(i32*) #1

declare dso_local i32* @vlan_parent_lookup_tag(i32*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, i32*, i32) #1

declare dso_local i32 @vlan_parent_wait(i32*, i8*) #1

declare dso_local %struct.TYPE_12__* @ifnet_get_ifvlan(%struct.ifnet*) #1

declare dso_local i64 @vlan_parent_flags_detaching(i32*) #1

declare dso_local i64 @ifvlan_flags_detaching(%struct.TYPE_12__*) #1

declare dso_local i64 @vlan_parent_no_vlans(i32*) #1

declare dso_local i32 @vlan_parent_add_vlan(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @ifvlan_retain(%struct.TYPE_12__*) #1

declare dso_local i32 @ifnet_lock_exclusive(%struct.ifnet*) #1

declare dso_local i32 @ifnet_eflags(%struct.ifnet*) #1

declare dso_local i32 @ifnet_lock_done(%struct.ifnet*) #1

declare dso_local i32 @vlan_attach_protocol(%struct.ifnet*) #1

declare dso_local i32 @multicast_list_program(i32*, %struct.ifnet*, %struct.ifnet*) #1

declare dso_local i32 @vlan_detach_protocol(%struct.ifnet*) #1

declare dso_local i32 @ifnet_set_lladdr_and_type(%struct.ifnet*, i32, i32, i32) #1

declare dso_local i32 @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i64 @vlan_parent_flags_supports_vlan_mtu(i32*) #1

declare dso_local i32 @ifnet_set_mtu(%struct.ifnet*, i64) #1

declare dso_local i32 @ifnet_flags(%struct.ifnet*) #1

declare dso_local i32 @ifnet_set_flags(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @ifnet_offload(%struct.ifnet*) #1

declare dso_local i32 @ifnet_set_offload(%struct.ifnet*, i32) #1

declare dso_local i32 @ifvlan_flags_set_ready(%struct.TYPE_12__*) #1

declare dso_local i32 @vlan_parent_signal(i32*, i8*) #1

declare dso_local i32 @ifnet_ioctl(%struct.ifnet*, i32, i32, i32) #1

declare dso_local i32 @vlan_assert_lock_held(...) #1

declare dso_local i32 @vlan_parent_remove_vlan(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @ifnet_set_eflags(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @LIST_REMOVE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
