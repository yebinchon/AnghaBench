; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_dirty_set.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_dirty_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i64, i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"memorystatus_dirty_set(): %d %d 0x%x 0x%x\0A\00", align 1
@DBG_BSD_MEMSTAT = common dso_local global i32 0, align 4
@BSD_MEMSTAT_DIRTY_SET = common dso_local global i32 0, align 4
@P_LIST_EXITED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@P_MEMSTAT_INTERNAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@P_DIRTY_IS_DIRTY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@P_DIRTY_TRACK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@P_DIRTY_TERMINATED = common dso_local global i32 0, align 4
@P_DIRTY = common dso_local global i32 0, align 4
@P_DIRTY_SHUTDOWN = common dso_local global i32 0, align 4
@P_DIRTY_MARKED = common dso_local global i32 0, align 4
@memorystatus_dirty_count = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@P_DIRTY_IDLE_EXIT_ENABLED = common dso_local global i32 0, align 4
@jetsam_aging_policy = common dso_local global i64 0, align 8
@kJetsamAgingPolicyLegacy = common dso_local global i64 0, align 8
@P_DIRTY_DEFER_ALWAYS = common dso_local global i32 0, align 4
@P_DIRTY_AGING_IN_PROGRESS = common dso_local global i32 0, align 4
@memorystatus_highwater_enabled = common dso_local global i64 0, align 8
@P_DIRTY_ALLOW_IDLE_EXIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [83 x i8] c"memorystatus_dirty_set: new limit on pid %d (%dMB %s) priority(%d) dirty?=0x%x %s\0A\00", align 1
@P_MEMSTAT_FATAL_MEMLIMIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"F \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"NF\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"isdirty\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"isclean\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SIGKILL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memorystatus_dirty_set(%struct.TYPE_13__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i32, i8*, i32, i32, i8*, i32, ...) @MEMORYSTATUS_DEBUG(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24, i8* %26, i32 %29)
  %31 = load i32, i32* @DBG_BSD_MEMSTAT, align 4
  %32 = load i32, i32* @BSD_MEMSTAT_DIRTY_SET, align 4
  %33 = call i32 @BSDDBG_CODE(i32 %31, i32 %32)
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %33, i32 %36, i32 %37, i64 %38, i32 0, i32 0)
  %40 = call i32 (...) @proc_list_lock()
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @P_LIST_EXITED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %3
  %48 = load i32, i32* @EBUSY, align 4
  store i32 %48, i32* %7, align 4
  br label %419

49:                                               ; preds = %3
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @P_MEMSTAT_INTERNAL, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @EPERM, align 4
  store i32 %57, i32* %7, align 4
  br label %419

58:                                               ; preds = %49
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @P_DIRTY_IS_DIRTY, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* @TRUE, align 4
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %65, %58
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @P_DIRTY_TRACK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* @EINVAL, align 4
  store i32 %75, i32* %7, align 4
  br label %171

76:                                               ; preds = %67
  %77 = load i64, i64* %6, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @P_DIRTY_TERMINATED, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i32, i32* @EBUSY, align 4
  store i32 %87, i32* %7, align 4
  br label %170

88:                                               ; preds = %79, %76
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @TRUE, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i32, i32* @P_DIRTY, align 4
  br label %96

94:                                               ; preds = %88
  %95 = load i32, i32* @P_DIRTY_SHUTDOWN, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  store i32 %97, i32* %12, align 4
  %98 = load i64, i64* %6, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %117

100:                                              ; preds = %96
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %12, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %117, label %107

107:                                              ; preds = %100
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* @P_DIRTY_MARKED, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  %115 = load i32, i32* @memorystatus_dirty_count, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* @memorystatus_dirty_count, align 4
  store i32 0, i32* %7, align 4
  br label %169

117:                                              ; preds = %100, %96
  %118 = load i64, i64* %6, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %166

120:                                              ; preds = %117
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %12, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %166

127:                                              ; preds = %120
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* @P_DIRTY_SHUTDOWN, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %144

131:                                              ; preds = %127
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @P_DIRTY, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %131
  %139 = load i32, i32* @P_DIRTY_TERMINATED, align 4
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 8
  store i32 1, i32* %8, align 4
  br label %157

144:                                              ; preds = %131, %127
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* @P_DIRTY, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %144
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @P_DIRTY_TERMINATED, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %148
  store i32 1, i32* %8, align 4
  br label %156

156:                                              ; preds = %155, %148, %144
  br label %157

157:                                              ; preds = %156, %138
  %158 = load i32, i32* %12, align 4
  %159 = xor i32 %158, -1
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = and i32 %162, %159
  store i32 %163, i32* %161, align 8
  %164 = load i32, i32* @memorystatus_dirty_count, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* @memorystatus_dirty_count, align 4
  store i32 0, i32* %7, align 4
  br label %168

166:                                              ; preds = %120, %117
  %167 = load i32, i32* @EALREADY, align 4
  store i32 %167, i32* %7, align 4
  br label %168

168:                                              ; preds = %166, %157
  br label %169

169:                                              ; preds = %168, %107
  br label %170

170:                                              ; preds = %169, %86
  br label %171

171:                                              ; preds = %170, %74
  %172 = load i32, i32* %7, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  br label %419

175:                                              ; preds = %171
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @P_DIRTY_IS_DIRTY, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %175
  %183 = load i32, i32* @TRUE, align 4
  store i32 %183, i32* %11, align 4
  br label %184

184:                                              ; preds = %182, %175
  %185 = load i32, i32* %10, align 4
  %186 = load i32, i32* @TRUE, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %184
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* @FALSE, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %200, label %192

192:                                              ; preds = %188, %184
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* @FALSE, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %401

196:                                              ; preds = %192
  %197 = load i32, i32* %11, align 4
  %198 = load i32, i32* @TRUE, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %401

200:                                              ; preds = %196, %188
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @P_DIRTY_IDLE_EXIT_ENABLED, align 4
  %205 = and i32 %203, %204
  %206 = load i32, i32* @P_DIRTY_IDLE_EXIT_ENABLED, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %286

208:                                              ; preds = %200
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @P_DIRTY_IS_DIRTY, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %229

215:                                              ; preds = %208
  %216 = load i64, i64* @jetsam_aging_policy, align 8
  %217 = load i64, i64* @kJetsamAgingPolicyLegacy, align 8
  %218 = icmp ne i64 %216, %217
  br i1 %218, label %219, label %221

219:                                              ; preds = %215
  %220 = load i32, i32* @TRUE, align 4
  br label %223

221:                                              ; preds = %215
  %222 = load i32, i32* @FALSE, align 4
  br label %223

223:                                              ; preds = %221, %219
  %224 = phi i32 [ %220, %219 ], [ %222, %221 ]
  store i32 %224, i32* %13, align 4
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %226 = load i32, i32* %13, align 4
  %227 = call i32 @memorystatus_invalidate_idle_demotion_locked(%struct.TYPE_13__* %225, i32 %226)
  %228 = load i32, i32* @TRUE, align 4
  store i32 %228, i32* %9, align 4
  br label %285

229:                                              ; preds = %208
  %230 = load i64, i64* @jetsam_aging_policy, align 8
  %231 = load i64, i64* @kJetsamAgingPolicyLegacy, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %279

233:                                              ; preds = %229
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @P_DIRTY_DEFER_ALWAYS, align 4
  %238 = and i32 %236, %237
  %239 = load i32, i32* @FALSE, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %241, label %252

241:                                              ; preds = %233
  %242 = call i64 (...) @mach_absolute_time()
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 3
  %245 = load i64, i64* %244, align 8
  %246 = icmp sge i64 %242, %245
  br i1 %246, label %247, label %252

247:                                              ; preds = %241
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %249 = load i32, i32* @TRUE, align 4
  %250 = call i32 @memorystatus_invalidate_idle_demotion_locked(%struct.TYPE_13__* %248, i32 %249)
  %251 = load i32, i32* @TRUE, align 4
  store i32 %251, i32* %9, align 4
  br label %278

252:                                              ; preds = %241, %233
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @P_DIRTY_DEFER_ALWAYS, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %252
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %261 = load i32, i32* @TRUE, align 4
  %262 = call i32 @memorystatus_schedule_idle_demotion_locked(%struct.TYPE_13__* %260, i32 %261)
  %263 = load i32, i32* @TRUE, align 4
  store i32 %263, i32* %9, align 4
  br label %277

264:                                              ; preds = %252
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @P_DIRTY_AGING_IN_PROGRESS, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %276

271:                                              ; preds = %264
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %273 = load i32, i32* @FALSE, align 4
  %274 = call i32 @memorystatus_schedule_idle_demotion_locked(%struct.TYPE_13__* %272, i32 %273)
  %275 = load i32, i32* @TRUE, align 4
  store i32 %275, i32* %9, align 4
  br label %276

276:                                              ; preds = %271, %264
  br label %277

277:                                              ; preds = %276, %259
  br label %278

278:                                              ; preds = %277, %247
  br label %284

279:                                              ; preds = %229
  %280 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %281 = load i32, i32* @TRUE, align 4
  %282 = call i32 @memorystatus_schedule_idle_demotion_locked(%struct.TYPE_13__* %280, i32 %281)
  %283 = load i32, i32* @TRUE, align 4
  store i32 %283, i32* %9, align 4
  br label %284

284:                                              ; preds = %279, %278
  br label %285

285:                                              ; preds = %284, %223
  br label %286

286:                                              ; preds = %285, %200
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %288 = call i32 @memorystatus_update_idle_priority_locked(%struct.TYPE_13__* %287)
  %289 = load i64, i64* @memorystatus_highwater_enabled, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %395

291:                                              ; preds = %286
  %292 = load i32, i32* @TRUE, align 4
  store i32 %292, i32* %14, align 4
  %293 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %294 = call i32 @proc_jetsam_state_is_active_locked(%struct.TYPE_13__* %293)
  %295 = load i32, i32* @TRUE, align 4
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %297, label %303

297:                                              ; preds = %291
  %298 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %299 = load i32, i32* %16, align 4
  %300 = call i32 @CACHE_ACTIVE_LIMITS_LOCKED(%struct.TYPE_13__* %298, i32 %299)
  %301 = load i32, i32* @TRUE, align 4
  store i32 %301, i32* %15, align 4
  %302 = load i32, i32* @TRUE, align 4
  store i32 %302, i32* %14, align 4
  br label %319

303:                                              ; preds = %291
  %304 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* @P_DIRTY_ALLOW_IDLE_EXIT, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %303
  %311 = load i32, i32* @FALSE, align 4
  store i32 %311, i32* %14, align 4
  br label %318

312:                                              ; preds = %303
  %313 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %314 = load i32, i32* %16, align 4
  %315 = call i32 @CACHE_INACTIVE_LIMITS_LOCKED(%struct.TYPE_13__* %313, i32 %314)
  %316 = load i32, i32* @FALSE, align 4
  store i32 %316, i32* %15, align 4
  %317 = load i32, i32* @TRUE, align 4
  store i32 %317, i32* %14, align 4
  br label %318

318:                                              ; preds = %312, %310
  br label %319

319:                                              ; preds = %318, %297
  %320 = load i32, i32* %14, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %394

322:                                              ; preds = %319
  %323 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %324 = call %struct.TYPE_13__* @proc_ref_locked(%struct.TYPE_13__* %323)
  %325 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %326 = icmp eq %struct.TYPE_13__* %324, %325
  br i1 %326, label %327, label %394

327:                                              ; preds = %322
  %328 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %329 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %328, i32 0, i32 4
  %330 = load i32, i32* %329, align 8
  %331 = icmp sgt i32 %330, 0
  br i1 %331, label %332, label %336

332:                                              ; preds = %327
  %333 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %333, i32 0, i32 4
  %335 = load i32, i32* %334, align 8
  store i32 %335, i32* %17, align 4
  br label %337

336:                                              ; preds = %327
  store i32 -1, i32* %17, align 4
  br label %337

337:                                              ; preds = %336, %332
  %338 = call i32 (...) @proc_list_unlock()
  %339 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %339, i32 0, i32 7
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* %17, align 4
  %343 = load i32, i32* %15, align 4
  %344 = load i32, i32* %16, align 4
  %345 = call i32 @task_set_phys_footprint_limit_internal(i32 %341, i32 %342, i32* null, i32 %343, i32 %344)
  %346 = call i32 (...) @proc_list_lock()
  %347 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %348 = call i32 @proc_rele_locked(%struct.TYPE_13__* %347)
  %349 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %349, i32 0, i32 6
  %351 = load i32, i32* %350, align 8
  %352 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %352, i32 0, i32 4
  %354 = load i32, i32* %353, align 8
  %355 = icmp sgt i32 %354, 0
  br i1 %355, label %356, label %360

356:                                              ; preds = %337
  %357 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %358 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %357, i32 0, i32 4
  %359 = load i32, i32* %358, align 8
  br label %361

360:                                              ; preds = %337
  br label %361

361:                                              ; preds = %360, %356
  %362 = phi i32 [ %359, %356 ], [ -1, %360 ]
  %363 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %364 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %363, i32 0, i32 2
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* @P_MEMSTAT_FATAL_MEMLIMIT, align 4
  %367 = and i32 %365, %366
  %368 = icmp ne i32 %367, 0
  %369 = zext i1 %368 to i64
  %370 = select i1 %368, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %371 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %372 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %371, i32 0, i32 5
  %373 = load i32, i32* %372, align 4
  %374 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %378 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %390

381:                                              ; preds = %361
  %382 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %383 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = load i32, i32* @P_DIRTY, align 4
  %386 = and i32 %384, %385
  %387 = icmp ne i32 %386, 0
  %388 = zext i1 %387 to i64
  %389 = select i1 %387, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  br label %391

390:                                              ; preds = %361
  br label %391

391:                                              ; preds = %390, %381
  %392 = phi i8* [ %389, %381 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %390 ]
  %393 = call i32 (i32, i8*, i32, i32, i8*, i32, ...) @MEMORYSTATUS_DEBUG(i32 3, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %351, i32 %362, i8* %370, i32 %373, i32 %376, i8* %392)
  br label %394

394:                                              ; preds = %391, %322, %319
  br label %395

395:                                              ; preds = %394, %286
  %396 = load i32, i32* %9, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %400

398:                                              ; preds = %395
  %399 = call i32 (...) @memorystatus_reschedule_idle_demotion_locked()
  br label %400

400:                                              ; preds = %398, %395
  br label %401

401:                                              ; preds = %400, %196, %192
  %402 = load i32, i32* %8, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %418

404:                                              ; preds = %401
  %405 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %406 = call %struct.TYPE_13__* @proc_ref_locked(%struct.TYPE_13__* %405)
  %407 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %408 = icmp eq %struct.TYPE_13__* %406, %407
  br i1 %408, label %409, label %417

409:                                              ; preds = %404
  %410 = call i32 (...) @proc_list_unlock()
  %411 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %412 = load i32, i32* @SIGKILL, align 4
  %413 = call i32 @psignal(%struct.TYPE_13__* %411, i32 %412)
  %414 = call i32 (...) @proc_list_lock()
  %415 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %416 = call i32 @proc_rele_locked(%struct.TYPE_13__* %415)
  br label %417

417:                                              ; preds = %409, %404
  br label %418

418:                                              ; preds = %417, %401
  br label %419

419:                                              ; preds = %418, %174, %56, %47
  %420 = call i32 (...) @proc_list_unlock()
  %421 = load i32, i32* %7, align 4
  ret i32 %421
}

declare dso_local i32 @MEMORYSTATUS_DEBUG(i32, i8*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @BSDDBG_CODE(i32, i32) #1

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local i32 @memorystatus_invalidate_idle_demotion_locked(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @mach_absolute_time(...) #1

declare dso_local i32 @memorystatus_schedule_idle_demotion_locked(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @memorystatus_update_idle_priority_locked(%struct.TYPE_13__*) #1

declare dso_local i32 @proc_jetsam_state_is_active_locked(%struct.TYPE_13__*) #1

declare dso_local i32 @CACHE_ACTIVE_LIMITS_LOCKED(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @CACHE_INACTIVE_LIMITS_LOCKED(%struct.TYPE_13__*, i32) #1

declare dso_local %struct.TYPE_13__* @proc_ref_locked(%struct.TYPE_13__*) #1

declare dso_local i32 @proc_list_unlock(...) #1

declare dso_local i32 @task_set_phys_footprint_limit_internal(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @proc_rele_locked(%struct.TYPE_13__*) #1

declare dso_local i32 @memorystatus_reschedule_idle_demotion_locked(...) #1

declare dso_local i32 @psignal(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
