; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_detach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, i64, i32*, i64, i32, i64, i64, i32*, i32*, %struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_22__, %struct.TYPE_22__, %struct.TYPE_22__, %struct.TYPE_24__, %struct.TYPE_23__, i32, i32 }
%struct.TYPE_22__ = type { %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.TYPE_24__ = type { i32*, i32* }
%struct.TYPE_23__ = type { i32*, i32* }
%struct.nd_ifinfo = type { i32 }
%struct.dlil_ifnet = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@rnh_lock = common dso_local global i32* null, align 8
@IFRF_ATTACHED = common dso_local global i32 0, align 4
@IFRF_DETACHING = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@IFRF_EMBRYONIC = common dso_local global i32 0, align 4
@dlil_verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"%s: detaching\0A\00", align 1
@IFEF_TXSTART = common dso_local global i32 0, align 4
@IFEF_ECN_DISABLE = common dso_local global i32 0, align 4
@IFEF_ECN_ENABLE = common dso_local global i32 0, align 4
@IFEF_CLAT46 = common dso_local global i32 0, align 4
@ifindex2ifnet = common dso_local global %struct.TYPE_25__** null, align 8
@ifnet_head = common dso_local global i32 0, align 4
@if_link = common dso_local global i32 0, align 4
@IFEF_IPV4_ROUTER = common dso_local global i32 0, align 4
@IFEF_IPV6_ROUTER = common dso_local global i32 0, align 4
@lo_ifp = common dso_local global %struct.TYPE_25__* null, align 8
@IFNET_LQM_THRESH_OFF = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_NETAGENT = common dso_local global i32 0, align 4
@KEV_DL_SUBCLASS = common dso_local global i32 0, align 4
@KEV_DL_IF_DETACHING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifnet_detach(%struct.TYPE_25__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.nd_ifinfo*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store %struct.nd_ifinfo* null, %struct.nd_ifinfo** %5, align 8
  %6 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %7 = icmp eq %struct.TYPE_25__* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  store i32 %9, i32* %2, align 4
  br label %308

10:                                               ; preds = %1
  %11 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %12 = call %struct.nd_ifinfo* @ND_IFINFO(%struct.TYPE_25__* %11)
  store %struct.nd_ifinfo* %12, %struct.nd_ifinfo** %5, align 8
  %13 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %5, align 8
  %14 = icmp ne %struct.nd_ifinfo* null, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i32, i32* @FALSE, align 4
  %17 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %5, align 8
  %18 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %15, %10
  %20 = load i32*, i32** @rnh_lock, align 8
  %21 = call i32 @lck_mtx_lock(i32* %20)
  %22 = call i32 (...) @ifnet_head_lock_exclusive()
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %24 = call i32 @ifnet_lock_exclusive(%struct.TYPE_25__* %23)
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %26 = call i32 @ifnet_set_idle_flags_locked(%struct.TYPE_25__* %25, i32 0, i32 -1)
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 20
  %29 = call i32 @lck_mtx_lock_spin(i32* %28)
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IFRF_ATTACHED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %19
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 20
  %39 = call i32 @lck_mtx_unlock(i32* %38)
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %41 = call i32 @ifnet_lock_done(%struct.TYPE_25__* %40)
  %42 = call i32 (...) @ifnet_head_done()
  %43 = load i32*, i32** @rnh_lock, align 8
  %44 = call i32 @lck_mtx_unlock(i32* %43)
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %2, align 4
  br label %308

46:                                               ; preds = %19
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @IFRF_DETACHING, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %46
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 20
  %56 = call i32 @lck_mtx_unlock(i32* %55)
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %58 = call i32 @ifnet_lock_done(%struct.TYPE_25__* %57)
  %59 = call i32 (...) @ifnet_head_done()
  %60 = load i32*, i32** @rnh_lock, align 8
  %61 = call i32 @lck_mtx_unlock(i32* %60)
  %62 = load i32, i32* @ENXIO, align 4
  store i32 %62, i32* %2, align 4
  br label %308

63:                                               ; preds = %46
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @IFRF_EMBRYONIC, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i32 @VERIFY(i32 %72)
  %74 = load i32, i32* @IFRF_ATTACHED, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load i32, i32* @IFRF_DETACHING, align 4
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 20
  %87 = call i32 @lck_mtx_unlock(i32* %86)
  %88 = load i64, i64* @dlil_verbose, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %64
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %92 = call i8* @if_name(%struct.TYPE_25__* %91)
  %93 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %92)
  br label %94

94:                                               ; preds = %90, %64
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @IFEF_TXSTART, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %94
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 19
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @ifnet_flowadv(i32 %104)
  br label %106

106:                                              ; preds = %101, %94
  %107 = load i32, i32* @IFEF_ECN_DISABLE, align 4
  %108 = xor i32 %107, -1
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load i32, i32* @IFEF_ECN_ENABLE, align 4
  %114 = xor i32 %113, -1
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, %114
  store i32 %118, i32* %116, align 4
  %119 = load i32, i32* @IFEF_CLAT46, align 4
  %120 = xor i32 %119, -1
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, %120
  store i32 %124, i32* %122, align 4
  %125 = load %struct.TYPE_25__**, %struct.TYPE_25__*** @ifindex2ifnet, align 8
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %125, i64 %128
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %129, align 8
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %132 = icmp eq %struct.TYPE_25__* %130, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @VERIFY(i32 %133)
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %136 = load i32, i32* @if_link, align 4
  %137 = call i32 @TAILQ_REMOVE(i32* @ifnet_head, %struct.TYPE_25__* %135, i32 %136)
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 18
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 1
  store i32* null, i32** %140, align 8
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 18
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 0
  store i32* null, i32** %143, align 8
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %144, i32 0, i32 17
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %155, label %149

149:                                              ; preds = %106
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 17
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %149, %106
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %157 = call i32 @ifnet_remove_from_ordered_list(%struct.TYPE_25__* %156)
  br label %158

158:                                              ; preds = %155, %149
  %159 = load %struct.TYPE_25__**, %struct.TYPE_25__*** @ifindex2ifnet, align 8
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %159, i64 %162
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %163, align 8
  %164 = load i32, i32* @IFEF_IPV4_ROUTER, align 4
  %165 = load i32, i32* @IFEF_IPV6_ROUTER, align 4
  %166 = or i32 %164, %165
  %167 = xor i32 %166, -1
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, %167
  store i32 %171, i32* %169, align 4
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %173 = bitcast %struct.TYPE_25__* %172 to %struct.dlil_ifnet*
  %174 = getelementptr inbounds %struct.dlil_ifnet, %struct.dlil_ifnet* %173, i32 0, i32 0
  %175 = call i32 @ctrace_record(i32* %174)
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i32 0, i32 16
  %178 = call i32 @bzero(%struct.TYPE_22__* %177, i32 8)
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 15
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %180, i32 0, i32 0
  %182 = load %struct.ifnet*, %struct.ifnet** %181, align 8
  store %struct.ifnet* %182, %struct.ifnet** %4, align 8
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %183, i32 0, i32 15
  %185 = call i32 @bzero(%struct.TYPE_22__* %184, i32 8)
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 14
  %188 = call i32 @bzero(%struct.TYPE_22__* %187, i32 8)
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %190 = call i32 @ifnet_lock_done(%struct.TYPE_25__* %189)
  %191 = call i32 (...) @ifnet_head_done()
  %192 = load i32*, i32** @rnh_lock, align 8
  %193 = call i32 @lck_mtx_unlock(i32* %192)
  %194 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %195 = icmp ne %struct.ifnet* %194, null
  br i1 %195, label %196, label %199

196:                                              ; preds = %158
  %197 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %198 = call i32 @ifnet_release(%struct.ifnet* %197)
  br label %199

199:                                              ; preds = %196, %158
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** @lo_ifp, align 8
  %202 = icmp ne %struct.TYPE_25__* %200, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %199
  %204 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %205 = load i32, i32* @IFNET_LQM_THRESH_OFF, align 4
  %206 = call i32 @if_lqm_update(%struct.TYPE_25__* %204, i32 %205, i32 0)
  br label %207

207:                                              ; preds = %203, %199
  %208 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %208, i32 0, i32 13
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %209, align 8
  %211 = icmp ne %struct.TYPE_22__* %210, null
  br i1 %211, label %212, label %217

212:                                              ; preds = %207
  %213 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %213, i32 0, i32 13
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %214, align 8
  %216 = call i32 @bzero(%struct.TYPE_22__* %215, i32 8)
  br label %217

217:                                              ; preds = %212, %207
  %218 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %218, i32 0, i32 12
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %219, align 8
  %221 = icmp ne %struct.TYPE_22__* %220, null
  br i1 %221, label %222, label %227

222:                                              ; preds = %217
  %223 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %223, i32 0, i32 12
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %224, align 8
  %226 = call i32 @bzero(%struct.TYPE_22__* %225, i32 8)
  br label %227

227:                                              ; preds = %222, %217
  %228 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %228, i32 0, i32 11
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %229, align 8
  %231 = icmp ne %struct.TYPE_22__* %230, null
  br i1 %231, label %232, label %237

232:                                              ; preds = %227
  %233 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %233, i32 0, i32 11
  %235 = load %struct.TYPE_22__*, %struct.TYPE_22__** %234, align 8
  %236 = call i32 @bzero(%struct.TYPE_22__* %235, i32 8)
  br label %237

237:                                              ; preds = %232, %227
  %238 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %238, i32 0, i32 10
  %240 = load %struct.TYPE_22__*, %struct.TYPE_22__** %239, align 8
  %241 = icmp ne %struct.TYPE_22__* %240, null
  br i1 %241, label %242, label %247

242:                                              ; preds = %237
  %243 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %243, i32 0, i32 10
  %245 = load %struct.TYPE_22__*, %struct.TYPE_22__** %244, align 8
  %246 = call i32 @bzero(%struct.TYPE_22__* %245, i32 8)
  br label %247

247:                                              ; preds = %242, %237
  %248 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %248, i32 0, i32 9
  %250 = load i32*, i32** %249, align 8
  %251 = icmp ne i32* %250, null
  br i1 %251, label %252, label %260

252:                                              ; preds = %247
  %253 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %253, i32 0, i32 9
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* @M_TEMP, align 4
  %257 = call i32 @FREE(i32* %255, i32 %256)
  %258 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %258, i32 0, i32 9
  store i32* null, i32** %259, align 8
  br label %260

260:                                              ; preds = %252, %247
  %261 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %261, i32 0, i32 8
  %263 = load i32*, i32** %262, align 8
  %264 = icmp ne i32* %263, null
  br i1 %264, label %265, label %273

265:                                              ; preds = %260
  %266 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %266, i32 0, i32 8
  %268 = load i32*, i32** %267, align 8
  %269 = load i32, i32* @M_NETAGENT, align 4
  %270 = call i32 @FREE(i32* %268, i32 %269)
  %271 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %271, i32 0, i32 8
  store i32* null, i32** %272, align 8
  br label %273

273:                                              ; preds = %265, %260
  %274 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %274, i32 0, i32 7
  store i64 0, i64* %275, align 8
  %276 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %277 = call i32 @bpfdetach(%struct.TYPE_25__* %276)
  %278 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %279 = call i32 @if_down(%struct.TYPE_25__* %278)
  %280 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %280, i32 0, i32 5
  %282 = call i32 @lck_mtx_lock(i32* %281)
  %283 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %283, i32 0, i32 6
  store i64 0, i64* %284, align 8
  %285 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %285, i32 0, i32 5
  %287 = call i32 @lck_mtx_unlock(i32* %286)
  %288 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %288, i32 0, i32 4
  store i64 0, i64* %289, align 8
  %290 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %291 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %290, i32 0, i32 3
  %292 = load i32*, i32** %291, align 8
  %293 = icmp ne i32* %292, null
  %294 = zext i1 %293 to i32
  %295 = call i32 @VERIFY(i32 %294)
  %296 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %296, i32 0, i32 3
  %298 = load i32*, i32** %297, align 8
  %299 = call i32 @thread_call_cancel_wait(i32* %298)
  %300 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %301 = load i32, i32* @KEV_DL_SUBCLASS, align 4
  %302 = load i32, i32* @KEV_DL_IF_DETACHING, align 4
  %303 = call i32 @dlil_post_msg(%struct.TYPE_25__* %300, i32 %301, i32 %302, i32* null, i32 0)
  %304 = call i32 (...) @dlil_if_lock()
  %305 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %306 = call i32 @ifnet_detaching_enqueue(%struct.TYPE_25__* %305)
  %307 = call i32 (...) @dlil_if_unlock()
  store i32 0, i32* %2, align 4
  br label %308

308:                                              ; preds = %273, %53, %36, %8
  %309 = load i32, i32* %2, align 4
  ret i32 %309
}

declare dso_local %struct.nd_ifinfo* @ND_IFINFO(%struct.TYPE_25__*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @ifnet_head_lock_exclusive(...) #1

declare dso_local i32 @ifnet_lock_exclusive(%struct.TYPE_25__*) #1

declare dso_local i32 @ifnet_set_idle_flags_locked(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @lck_mtx_lock_spin(i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @ifnet_lock_done(%struct.TYPE_25__*) #1

declare dso_local i32 @ifnet_head_done(...) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @if_name(%struct.TYPE_25__*) #1

declare dso_local i32 @ifnet_flowadv(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @ifnet_remove_from_ordered_list(%struct.TYPE_25__*) #1

declare dso_local i32 @ctrace_record(i32*) #1

declare dso_local i32 @bzero(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ifnet_release(%struct.ifnet*) #1

declare dso_local i32 @if_lqm_update(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @FREE(i32*, i32) #1

declare dso_local i32 @bpfdetach(%struct.TYPE_25__*) #1

declare dso_local i32 @if_down(%struct.TYPE_25__*) #1

declare dso_local i32 @thread_call_cancel_wait(i32*) #1

declare dso_local i32 @dlil_post_msg(%struct.TYPE_25__*, i32, i32, i32*, i32) #1

declare dso_local i32 @dlil_if_lock(...) #1

declare dso_local i32 @ifnet_detaching_enqueue(%struct.TYPE_25__*) #1

declare dso_local i32 @dlil_if_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
