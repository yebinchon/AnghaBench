; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_route_to_gwroute.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_route_to_gwroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.rtentry = type { i32, i64, %struct.TYPE_6__, %struct.rtentry*, %struct.TYPE_7__*, %struct.rtentry*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sockaddr_storage = type { i32 }

@RTF_UP = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@RTF_GATEWAY = common dso_local global i32 0, align 4
@rnh_lock = common dso_local global i32 0, align 4
@RTF_WASCLONED = common dso_local global i32 0, align 4
@RTF_REJECT = common dso_local global i32 0, align 4
@EHOSTDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @route_to_gwroute(%struct.sockaddr* %0, %struct.rtentry* %1, %struct.rtentry** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.rtentry*, align 8
  %7 = alloca %struct.rtentry**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rtentry*, align 8
  %10 = alloca %struct.rtentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.rtentry*, align 8
  %15 = alloca %struct.sockaddr_storage, align 4
  %16 = alloca %struct.sockaddr*, align 8
  %17 = alloca %struct.rtentry*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %5, align 8
  store %struct.rtentry* %1, %struct.rtentry** %6, align 8
  store %struct.rtentry** %2, %struct.rtentry*** %7, align 8
  %18 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  store %struct.rtentry* %18, %struct.rtentry** %9, align 8
  %19 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  store %struct.rtentry* %19, %struct.rtentry** %10, align 8
  store i32 0, i32* %11, align 4
  %20 = load %struct.rtentry**, %struct.rtentry*** %7, align 8
  store %struct.rtentry* null, %struct.rtentry** %20, align 8
  %21 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %22 = icmp eq %struct.rtentry* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %383

24:                                               ; preds = %3
  %25 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %26 = call i32 @RT_LOCK_SPIN(%struct.rtentry* %25)
  %27 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %28 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %27, i32 0, i32 6
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  %32 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %33 = call i32 @RT_ADDREF_LOCKED(%struct.rtentry* %32)
  %34 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %35 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @RTF_UP, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %64, label %40

40:                                               ; preds = %24
  %41 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %42 = call i32 @RT_REMREF_LOCKED(%struct.rtentry* %41)
  %43 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %44 = call i32 @RT_UNLOCK(%struct.rtentry* %43)
  %45 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %46 = ptrtoint %struct.sockaddr* %45 to i64
  %47 = inttoptr i64 %46 to %struct.sockaddr*
  %48 = load i32, i32* %12, align 4
  %49 = call %struct.rtentry* @rtalloc1_scoped(%struct.sockaddr* %47, i32 1, i32 0, i32 %48)
  store %struct.rtentry* %49, %struct.rtentry** %9, align 8
  store %struct.rtentry* %49, %struct.rtentry** %10, align 8
  %50 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %51 = icmp ne %struct.rtentry* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %40
  %53 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %54 = call i32 @RT_LOCK_SPIN(%struct.rtentry* %53)
  %55 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %56 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %55, i32 0, i32 6
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %12, align 4
  br label %63

60:                                               ; preds = %40
  %61 = load i32, i32* @EHOSTUNREACH, align 4
  %62 = call i32 @senderr(i32 %61)
  br label %63

63:                                               ; preds = %60, %52
  br label %64

64:                                               ; preds = %63, %24
  %65 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %66 = call i32 @RT_LOCK_ASSERT_HELD(%struct.rtentry* %65)
  %67 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %68 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @RTF_GATEWAY, align 4
  %71 = and i32 %69, %70
  store i32 %71, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %296

73:                                               ; preds = %64
  %74 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %75 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %74, i32 0, i32 5
  %76 = load %struct.rtentry*, %struct.rtentry** %75, align 8
  store %struct.rtentry* %76, %struct.rtentry** %14, align 8
  %77 = bitcast %struct.sockaddr_storage* %15 to %struct.sockaddr*
  store %struct.sockaddr* %77, %struct.sockaddr** %16, align 8
  %78 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %79 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %80 = icmp eq %struct.rtentry* %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @VERIFY(i32 %81)
  %83 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %84 = call i32 @RT_ADDREF_LOCKED(%struct.rtentry* %83)
  %85 = load %struct.rtentry*, %struct.rtentry** %14, align 8
  %86 = icmp eq %struct.rtentry* %85, null
  br i1 %86, label %87, label %101

87:                                               ; preds = %73
  %88 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %89 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %88, i32 0, i32 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %92 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %93 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %92, i32 0, i32 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @MIN(i32 4, i32 %96)
  %98 = call i32 @bcopy(%struct.TYPE_7__* %90, %struct.sockaddr* %91, i32 %97)
  %99 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %100 = call i32 @RT_UNLOCK(%struct.rtentry* %99)
  br label %132

101:                                              ; preds = %73
  %102 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %103 = call i32 @RT_CONVERT_LOCK(%struct.rtentry* %102)
  %104 = load %struct.rtentry*, %struct.rtentry** %14, align 8
  %105 = call i32 @RT_LOCK_SPIN(%struct.rtentry* %104)
  %106 = load %struct.rtentry*, %struct.rtentry** %14, align 8
  %107 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @RTF_UP, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %209, label %112

112:                                              ; preds = %101
  %113 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %114 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %113, i32 0, i32 5
  store %struct.rtentry* null, %struct.rtentry** %114, align 8
  %115 = load %struct.rtentry*, %struct.rtentry** %14, align 8
  %116 = call i32 @RT_UNLOCK(%struct.rtentry* %115)
  %117 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %118 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %117, i32 0, i32 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %121 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %122 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %121, i32 0, i32 4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @MIN(i32 4, i32 %125)
  %127 = call i32 @bcopy(%struct.TYPE_7__* %119, %struct.sockaddr* %120, i32 %126)
  %128 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %129 = call i32 @RT_UNLOCK(%struct.rtentry* %128)
  %130 = load %struct.rtentry*, %struct.rtentry** %14, align 8
  %131 = call i32 @rtfree(%struct.rtentry* %130)
  br label %132

132:                                              ; preds = %112, %87
  %133 = load i32, i32* @rnh_lock, align 4
  %134 = call i32 @lck_mtx_lock(i32 %133)
  %135 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %136 = load i32, i32* %12, align 4
  %137 = call %struct.rtentry* @rtalloc1_scoped_locked(%struct.sockaddr* %135, i32 1, i32 0, i32 %136)
  store %struct.rtentry* %137, %struct.rtentry** %14, align 8
  %138 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %139 = call i32 @RT_LOCK(%struct.rtentry* %138)
  %140 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %141 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @RTF_UP, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %160

146:                                              ; preds = %132
  %147 = load %struct.rtentry*, %struct.rtentry** %14, align 8
  %148 = icmp eq %struct.rtentry* %147, null
  br i1 %148, label %160, label %149

149:                                              ; preds = %146
  %150 = load %struct.rtentry*, %struct.rtentry** %14, align 8
  %151 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %152 = icmp eq %struct.rtentry* %150, %151
  br i1 %152, label %160, label %153

153:                                              ; preds = %149
  %154 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %155 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %156 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %155, i32 0, i32 4
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %156, align 8
  %158 = call i32 @equal(%struct.sockaddr* %154, %struct.TYPE_7__* %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %187, label %160

160:                                              ; preds = %153, %149, %146, %132
  %161 = load %struct.rtentry*, %struct.rtentry** %14, align 8
  %162 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %163 = icmp eq %struct.rtentry* %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  %165 = load %struct.rtentry*, %struct.rtentry** %14, align 8
  %166 = call i32 @RT_REMREF_LOCKED(%struct.rtentry* %165)
  store %struct.rtentry* null, %struct.rtentry** %14, align 8
  br label %167

167:                                              ; preds = %164, %160
  %168 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %169 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %170 = icmp eq %struct.rtentry* %168, %169
  %171 = zext i1 %170 to i32
  %172 = call i32 @VERIFY(i32 %171)
  %173 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %174 = call i32 @RT_REMREF_LOCKED(%struct.rtentry* %173)
  store %struct.rtentry* null, %struct.rtentry** %10, align 8
  %175 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %176 = call i32 @RT_UNLOCK(%struct.rtentry* %175)
  %177 = load %struct.rtentry*, %struct.rtentry** %14, align 8
  %178 = icmp ne %struct.rtentry* %177, null
  br i1 %178, label %179, label %182

179:                                              ; preds = %167
  %180 = load %struct.rtentry*, %struct.rtentry** %14, align 8
  %181 = call i32 @rtfree_locked(%struct.rtentry* %180)
  br label %182

182:                                              ; preds = %179, %167
  %183 = load i32, i32* @rnh_lock, align 4
  %184 = call i32 @lck_mtx_unlock(i32 %183)
  %185 = load i32, i32* @EHOSTUNREACH, align 4
  %186 = call i32 @senderr(i32 %185)
  br label %187

187:                                              ; preds = %182, %153
  %188 = load %struct.rtentry*, %struct.rtentry** %14, align 8
  %189 = icmp ne %struct.rtentry* %188, null
  %190 = zext i1 %189 to i32
  %191 = call i32 @VERIFY(i32 %190)
  %192 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %193 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %194 = call i32 @rt_key(%struct.rtentry* %193)
  %195 = load %struct.rtentry*, %struct.rtentry** %14, align 8
  %196 = call i32 @rt_set_gwroute(%struct.rtentry* %192, i32 %194, %struct.rtentry* %195)
  %197 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %198 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %199 = icmp eq %struct.rtentry* %197, %198
  %200 = zext i1 %199 to i32
  %201 = call i32 @VERIFY(i32 %200)
  %202 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %203 = call i32 @RT_REMREF_LOCKED(%struct.rtentry* %202)
  %204 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %205 = call i32 @RT_UNLOCK(%struct.rtentry* %204)
  %206 = load i32, i32* @rnh_lock, align 4
  %207 = call i32 @lck_mtx_unlock(i32 %206)
  %208 = load %struct.rtentry*, %struct.rtentry** %14, align 8
  store %struct.rtentry* %208, %struct.rtentry** %9, align 8
  br label %224

209:                                              ; preds = %101
  %210 = load %struct.rtentry*, %struct.rtentry** %14, align 8
  %211 = call i32 @RT_ADDREF_LOCKED(%struct.rtentry* %210)
  %212 = load %struct.rtentry*, %struct.rtentry** %14, align 8
  %213 = call i32 @RT_UNLOCK(%struct.rtentry* %212)
  %214 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %215 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %216 = icmp eq %struct.rtentry* %214, %215
  %217 = zext i1 %216 to i32
  %218 = call i32 @VERIFY(i32 %217)
  %219 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %220 = call i32 @RT_REMREF_LOCKED(%struct.rtentry* %219)
  %221 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %222 = call i32 @RT_UNLOCK(%struct.rtentry* %221)
  %223 = load %struct.rtentry*, %struct.rtentry** %14, align 8
  store %struct.rtentry* %223, %struct.rtentry** %9, align 8
  br label %224

224:                                              ; preds = %209, %187
  %225 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %226 = load %struct.rtentry*, %struct.rtentry** %14, align 8
  %227 = icmp eq %struct.rtentry* %225, %226
  br i1 %227, label %228, label %232

228:                                              ; preds = %224
  %229 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %230 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %231 = icmp ne %struct.rtentry* %229, %230
  br label %232

232:                                              ; preds = %228, %224
  %233 = phi i1 [ false, %224 ], [ %231, %228 ]
  %234 = zext i1 %233 to i32
  %235 = call i32 @VERIFY(i32 %234)
  %236 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %237 = call i32 @RT_LOCK_SPIN(%struct.rtentry* %236)
  %238 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %239 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @RTF_WASCLONED, align 4
  %242 = load i32, i32* @RTF_UP, align 4
  %243 = or i32 %241, %242
  %244 = and i32 %240, %243
  %245 = load i32, i32* @RTF_WASCLONED, align 4
  %246 = load i32, i32* @RTF_UP, align 4
  %247 = or i32 %245, %246
  %248 = icmp eq i32 %244, %247
  br i1 %248, label %249, label %268

249:                                              ; preds = %232
  %250 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %251 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %250, i32 0, i32 3
  %252 = load %struct.rtentry*, %struct.rtentry** %251, align 8
  store %struct.rtentry* %252, %struct.rtentry** %17, align 8
  %253 = load %struct.rtentry*, %struct.rtentry** %17, align 8
  %254 = icmp ne %struct.rtentry* %253, null
  %255 = zext i1 %254 to i32
  %256 = call i32 @VERIFY(i32 %255)
  %257 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %258 = call i32 @RT_CONVERT_LOCK(%struct.rtentry* %257)
  %259 = load %struct.rtentry*, %struct.rtentry** %17, align 8
  %260 = call i32 @RT_ADDREF(%struct.rtentry* %259)
  %261 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %262 = call i32 @RT_UNLOCK(%struct.rtentry* %261)
  %263 = load %struct.rtentry*, %struct.rtentry** %17, align 8
  %264 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %265 = call i32 @rt_revalidate_gwroute(%struct.rtentry* %263, %struct.rtentry* %264)
  %266 = load %struct.rtentry*, %struct.rtentry** %17, align 8
  %267 = call i32 @RT_REMREF(%struct.rtentry* %266)
  br label %271

268:                                              ; preds = %232
  %269 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %270 = call i32 @RT_UNLOCK(%struct.rtentry* %269)
  br label %271

271:                                              ; preds = %268, %249
  %272 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %273 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %274 = icmp eq %struct.rtentry* %272, %273
  br i1 %274, label %275, label %278

275:                                              ; preds = %271
  %276 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %277 = call i32 @RT_REMREF(%struct.rtentry* %276)
  br label %281

278:                                              ; preds = %271
  %279 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %280 = call i32 @rtfree(%struct.rtentry* %279)
  br label %281

281:                                              ; preds = %278, %275
  store %struct.rtentry* null, %struct.rtentry** %10, align 8
  %282 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %283 = call i32 @RT_LOCK_SPIN(%struct.rtentry* %282)
  %284 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %285 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @RTF_UP, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %295, label %290

290:                                              ; preds = %281
  %291 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %292 = call i32 @RT_UNLOCK(%struct.rtentry* %291)
  %293 = load i32, i32* @EHOSTUNREACH, align 4
  %294 = call i32 @senderr(i32 %293)
  br label %295

295:                                              ; preds = %290, %281
  br label %296

296:                                              ; preds = %295, %64
  %297 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %298 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* @RTF_REJECT, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %356

303:                                              ; preds = %296
  %304 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %305 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %304, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  %307 = icmp eq i64 %306, 0
  br i1 %307, label %314, label %308

308:                                              ; preds = %303
  %309 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %310 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %309, i32 0, i32 2
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = icmp ne i64 %312, 0
  br label %314

314:                                              ; preds = %308, %303
  %315 = phi i1 [ true, %303 ], [ %313, %308 ]
  %316 = zext i1 %315 to i32
  %317 = call i32 @VERIFY(i32 %316)
  %318 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %319 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %318, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %328, label %322

322:                                              ; preds = %314
  %323 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %324 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %323, i32 0, i32 2
  %325 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = icmp eq i64 %326, 0
  br label %328

328:                                              ; preds = %322, %314
  %329 = phi i1 [ true, %314 ], [ %327, %322 ]
  %330 = zext i1 %329 to i32
  %331 = call i32 @VERIFY(i32 %330)
  %332 = call i64 (...) @net_uptime()
  store i64 %332, i64* %8, align 8
  %333 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %334 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %333, i32 0, i32 1
  %335 = load i64, i64* %334, align 8
  %336 = icmp eq i64 %335, 0
  br i1 %336, label %343, label %337

337:                                              ; preds = %328
  %338 = load i64, i64* %8, align 8
  %339 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %340 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %339, i32 0, i32 1
  %341 = load i64, i64* %340, align 8
  %342 = icmp slt i64 %338, %341
  br i1 %342, label %343, label %355

343:                                              ; preds = %337, %328
  %344 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %345 = call i32 @RT_UNLOCK(%struct.rtentry* %344)
  %346 = load i32, i32* %13, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %350, label %348

348:                                              ; preds = %343
  %349 = load i32, i32* @EHOSTDOWN, align 4
  br label %352

350:                                              ; preds = %343
  %351 = load i32, i32* @EHOSTUNREACH, align 4
  br label %352

352:                                              ; preds = %350, %348
  %353 = phi i32 [ %349, %348 ], [ %351, %350 ]
  %354 = call i32 @senderr(i32 %353)
  br label %355

355:                                              ; preds = %352, %337
  br label %356

356:                                              ; preds = %355, %296
  %357 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %358 = call i32 @RT_CONVERT_LOCK(%struct.rtentry* %357)
  %359 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %360 = load %struct.rtentry**, %struct.rtentry*** %7, align 8
  store %struct.rtentry* %359, %struct.rtentry** %360, align 8
  store i32 0, i32* %4, align 4
  br label %383

361:                                              ; No predecessors!
  %362 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %363 = icmp ne %struct.rtentry* %362, null
  br i1 %363, label %364, label %381

364:                                              ; preds = %361
  %365 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %366 = call i32 @RT_LOCK_SPIN(%struct.rtentry* %365)
  %367 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %368 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %369 = icmp eq %struct.rtentry* %367, %368
  br i1 %369, label %370, label %375

370:                                              ; preds = %364
  %371 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %372 = call i32 @RT_REMREF_LOCKED(%struct.rtentry* %371)
  %373 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %374 = call i32 @RT_UNLOCK(%struct.rtentry* %373)
  br label %380

375:                                              ; preds = %364
  %376 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %377 = call i32 @RT_UNLOCK(%struct.rtentry* %376)
  %378 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %379 = call i32 @rtfree(%struct.rtentry* %378)
  br label %380

380:                                              ; preds = %375, %370
  br label %381

381:                                              ; preds = %380, %361
  %382 = load i32, i32* %11, align 4
  store i32 %382, i32* %4, align 4
  br label %383

383:                                              ; preds = %381, %356, %23
  %384 = load i32, i32* %4, align 4
  ret i32 %384
}

declare dso_local i32 @RT_LOCK_SPIN(%struct.rtentry*) #1

declare dso_local i32 @RT_ADDREF_LOCKED(%struct.rtentry*) #1

declare dso_local i32 @RT_REMREF_LOCKED(%struct.rtentry*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local %struct.rtentry* @rtalloc1_scoped(%struct.sockaddr*, i32, i32, i32) #1

declare dso_local i32 @senderr(i32) #1

declare dso_local i32 @RT_LOCK_ASSERT_HELD(%struct.rtentry*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @bcopy(%struct.TYPE_7__*, %struct.sockaddr*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @RT_CONVERT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @rtfree(%struct.rtentry*) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local %struct.rtentry* @rtalloc1_scoped_locked(%struct.sockaddr*, i32, i32, i32) #1

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @equal(%struct.sockaddr*, %struct.TYPE_7__*) #1

declare dso_local i32 @rtfree_locked(%struct.rtentry*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @rt_set_gwroute(%struct.rtentry*, i32, %struct.rtentry*) #1

declare dso_local i32 @rt_key(%struct.rtentry*) #1

declare dso_local i32 @RT_ADDREF(%struct.rtentry*) #1

declare dso_local i32 @rt_revalidate_gwroute(%struct.rtentry*, %struct.rtentry*) #1

declare dso_local i32 @RT_REMREF(%struct.rtentry*) #1

declare dso_local i64 @net_uptime(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
