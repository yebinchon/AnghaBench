; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_update.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32, i32, i32, i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [74 x i8] c"memorystatus_update: changing (%s) pid %d: priority %d, user_data 0x%llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@DBG_BSD_MEMSTAT = common dso_local global i32 0, align 4
@BSD_MEMSTAT_UPDATE = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@JETSAM_PRIORITY_DEFAULT = common dso_local global i32 0, align 4
@system_procs_aging_band = common dso_local global i32 0, align 4
@applications_aging_band = common dso_local global i32 0, align 4
@JETSAM_PRIORITY_IDLE = common dso_local global i32 0, align 4
@JETSAM_PRIORITY_IDLE_HEAD = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@MEMSTAT_BUCKET_COUNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@P_MEMSTAT_INTERNAL = common dso_local global i32 0, align 4
@P_MEMSTAT_PRIORITYUPDATED = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [90 x i8] c"memorystatus_update: effective change specified for pid %d, but change already occurred.\0A\00", align 1
@P_MEMSTAT_TERMINATED = common dso_local global i32 0, align 4
@P_LIST_EXITED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [98 x i8] c"memorystatus_update(enter): pid %d, priority %d, dirty=0x%x, Active(%dMB %s), Inactive(%dMB, %s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"F \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"NF\00", align 1
@FALSE = common dso_local global i64 0, align 8
@memorystatus_highwater_enabled = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [92 x i8] c"memorystatus_update: init: limit on pid %d (%dMB %s) targeting priority(%d) dirty?=0x%x %s\0A\00", align 1
@P_MEMSTAT_FATAL_MEMLIMIT = common dso_local global i32 0, align 4
@P_DIRTY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"isdirty\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"isclean\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@jetsam_aging_policy = common dso_local global i64 0, align 8
@kJetsamAgingPolicyLegacy = common dso_local global i64 0, align 8
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memorystatus_update(%struct.TYPE_11__* %0, i32 %1, i32 %2, i64 %3, i64 %4, i32 %5, i64 %6, i32 %7, i64 %8) #0 {
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  store i64 %8, i64* %18, align 8
  store i64 0, i64* %20, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %9
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  br label %34

33:                                               ; preds = %9
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %33 ]
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 (i32, i8*, ...) @MEMORYSTATUS_DEBUG(i32 1, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i8* %35, i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* @DBG_BSD_MEMSTAT, align 4
  %43 = load i32, i32* @BSD_MEMSTAT_UPDATE, align 4
  %44 = call i32 @BSDDBG_CODE(i32 %42, i32 %43)
  %45 = load i32, i32* @DBG_FUNC_START, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i64, i64* %13, align 8
  %53 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %46, i32 %49, i32 %50, i32 %51, i64 %52, i32 0)
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %58

56:                                               ; preds = %34
  %57 = load i32, i32* @JETSAM_PRIORITY_DEFAULT, align 4
  store i32 %57, i32* %11, align 4
  br label %87

58:                                               ; preds = %34
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @system_procs_aging_band, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @applications_aging_band, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62, %58
  %67 = load i32, i32* @JETSAM_PRIORITY_IDLE, align 4
  store i32 %67, i32* %11, align 4
  br label %86

68:                                               ; preds = %62
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @JETSAM_PRIORITY_IDLE_HEAD, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* @JETSAM_PRIORITY_IDLE, align 4
  store i32 %73, i32* %11, align 4
  %74 = load i64, i64* @TRUE, align 8
  store i64 %74, i64* %20, align 8
  br label %85

75:                                               ; preds = %68
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @MEMSTAT_BUCKET_COUNT, align 4
  %81 = icmp sge i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78, %75
  %83 = load i32, i32* @EINVAL, align 4
  store i32 %83, i32* %19, align 4
  br label %301

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84, %72
  br label %86

86:                                               ; preds = %85, %66
  br label %87

87:                                               ; preds = %86, %56
  %88 = call i32 (...) @proc_list_lock()
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @P_MEMSTAT_INTERNAL, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load i64, i64* %13, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %87
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @P_MEMSTAT_PRIORITYUPDATED, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %100
  %108 = load i32, i32* @EALREADY, align 4
  store i32 %108, i32* %19, align 4
  %109 = call i32 (...) @proc_list_unlock()
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (i32, i8*, ...) @MEMORYSTATUS_DEBUG(i32 1, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  br label %301

114:                                              ; preds = %100, %87
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @P_MEMSTAT_TERMINATED, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %128, label %121

121:                                              ; preds = %114
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @P_LIST_EXITED, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %121, %114
  %129 = load i32, i32* @EBUSY, align 4
  store i32 %129, i32* %19, align 4
  %130 = call i32 (...) @proc_list_unlock()
  br label %301

131:                                              ; preds = %121
  %132 = load i32, i32* @P_MEMSTAT_PRIORITYUPDATED, align 4
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  %137 = load i32, i32* %12, align 4
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 8
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* %11, align 4
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 4
  store i32 %140, i32* %142, align 4
  %143 = load i64, i64* %14, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %266

145:                                              ; preds = %131
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %11, align 4
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %15, align 4
  %154 = load i64, i64* %16, align 8
  %155 = icmp ne i64 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %158 = load i32, i32* %17, align 4
  %159 = load i64, i64* %18, align 8
  %160 = icmp ne i64 %159, 0
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %163 = call i32 (i32, i8*, ...) @MEMORYSTATUS_DEBUG(i32 3, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.3, i64 0, i64 0), i32 %148, i32 %149, i32 %152, i32 %153, i8* %157, i32 %158, i8* %162)
  %164 = load i32, i32* %15, align 4
  %165 = icmp sle i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %145
  %167 = load i32, i32* %15, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  store i32 -1, i32* %15, align 4
  br label %170

170:                                              ; preds = %169, %166
  %171 = load i64, i64* @TRUE, align 8
  store i64 %171, i64* %16, align 8
  br label %172

172:                                              ; preds = %170, %145
  %173 = load i32, i32* %17, align 4
  %174 = icmp sle i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %172
  store i32 -1, i32* %17, align 4
  %176 = load i64, i64* @TRUE, align 8
  store i64 %176, i64* %18, align 8
  br label %177

177:                                              ; preds = %175, %172
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %179 = load i32, i32* %15, align 4
  %180 = load i64, i64* %16, align 8
  %181 = call i32 @SET_ACTIVE_LIMITS_LOCKED(%struct.TYPE_11__* %178, i32 %179, i64 %180)
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %183 = load i32, i32* %17, align 4
  %184 = load i64, i64* %18, align 8
  %185 = call i32 @SET_INACTIVE_LIMITS_LOCKED(%struct.TYPE_11__* %182, i32 %183, i64 %184)
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %187 = call i64 @proc_jetsam_state_is_active_locked(%struct.TYPE_11__* %186)
  %188 = load i64, i64* @TRUE, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %195

190:                                              ; preds = %177
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %192 = load i64, i64* %21, align 8
  %193 = call i32 @CACHE_ACTIVE_LIMITS_LOCKED(%struct.TYPE_11__* %191, i64 %192)
  %194 = load i64, i64* @TRUE, align 8
  store i64 %194, i64* %22, align 8
  br label %200

195:                                              ; preds = %177
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %197 = load i64, i64* %21, align 8
  %198 = call i32 @CACHE_INACTIVE_LIMITS_LOCKED(%struct.TYPE_11__* %196, i64 %197)
  %199 = load i64, i64* @FALSE, align 8
  store i64 %199, i64* %22, align 8
  br label %200

200:                                              ; preds = %195, %190
  %201 = load i64, i64* @memorystatus_highwater_enabled, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %265

203:                                              ; preds = %200
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 7
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 6
  %209 = load i64, i64* %208, align 8
  %210 = icmp sgt i64 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %203
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 6
  %214 = load i64, i64* %213, align 8
  br label %216

215:                                              ; preds = %203
  br label %216

216:                                              ; preds = %215, %211
  %217 = phi i64 [ %214, %211 ], [ -1, %215 ]
  %218 = trunc i64 %217 to i32
  %219 = load i64, i64* %22, align 8
  %220 = load i64, i64* %21, align 8
  %221 = call i32 @task_set_phys_footprint_limit_internal(i32 %206, i32 %218, i32* null, i64 %219, i64 %220)
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 6
  %227 = load i64, i64* %226, align 8
  %228 = icmp sgt i64 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %216
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 6
  %232 = load i64, i64* %231, align 8
  br label %234

233:                                              ; preds = %216
  br label %234

234:                                              ; preds = %233, %229
  %235 = phi i64 [ %232, %229 ], [ -1, %233 ]
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @P_MEMSTAT_FATAL_MEMLIMIT, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  %242 = zext i1 %241 to i64
  %243 = select i1 %241, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %244 = load i32, i32* %11, align 4
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 5
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 5
  %250 = load i32, i32* %249, align 8
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %261

252:                                              ; preds = %234
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @P_DIRTY, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  %259 = zext i1 %258 to i64
  %260 = select i1 %258, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)
  br label %262

261:                                              ; preds = %234
  br label %262

262:                                              ; preds = %261, %252
  %263 = phi i8* [ %260, %252 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), %261 ]
  %264 = call i32 (i32, i8*, ...) @MEMORYSTATUS_DEBUG(i32 3, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.6, i64 0, i64 0), i32 %224, i64 %235, i8* %243, i32 %244, i32 %247, i8* %263)
  br label %265

265:                                              ; preds = %262, %200
  br label %266

266:                                              ; preds = %265, %131
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %268 = call i64 @isProcessInAgingBands(%struct.TYPE_11__* %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %279

270:                                              ; preds = %266
  %271 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %272 = load i64, i64* @TRUE, align 8
  %273 = call i32 @memorystatus_invalidate_idle_demotion_locked(%struct.TYPE_11__* %271, i64 %272)
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %275 = load i32, i32* @JETSAM_PRIORITY_IDLE, align 4
  %276 = load i64, i64* @FALSE, align 8
  %277 = load i64, i64* @TRUE, align 8
  %278 = call i32 @memorystatus_update_priority_locked(%struct.TYPE_11__* %274, i32 %275, i64 %276, i64 %277)
  br label %294

279:                                              ; preds = %266
  %280 = load i64, i64* @jetsam_aging_policy, align 8
  %281 = load i64, i64* @kJetsamAgingPolicyLegacy, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %293

283:                                              ; preds = %279
  %284 = load i32, i32* %11, align 4
  %285 = load i32, i32* @JETSAM_PRIORITY_IDLE, align 4
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %287, label %293

287:                                              ; preds = %283
  %288 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %289 = load i32, i32* %11, align 4
  %290 = load i64, i64* %20, align 8
  %291 = load i64, i64* @TRUE, align 8
  %292 = call i32 @memorystatus_update_priority_locked(%struct.TYPE_11__* %288, i32 %289, i64 %290, i64 %291)
  br label %293

293:                                              ; preds = %287, %283, %279
  br label %294

294:                                              ; preds = %293, %270
  %295 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %296 = load i32, i32* %11, align 4
  %297 = load i64, i64* %20, align 8
  %298 = load i64, i64* @FALSE, align 8
  %299 = call i32 @memorystatus_update_priority_locked(%struct.TYPE_11__* %295, i32 %296, i64 %297, i64 %298)
  %300 = call i32 (...) @proc_list_unlock()
  store i32 0, i32* %19, align 4
  br label %301

301:                                              ; preds = %294, %128, %107, %82
  %302 = load i32, i32* @DBG_BSD_MEMSTAT, align 4
  %303 = load i32, i32* @BSD_MEMSTAT_UPDATE, align 4
  %304 = call i32 @BSDDBG_CODE(i32 %302, i32 %303)
  %305 = load i32, i32* @DBG_FUNC_END, align 4
  %306 = or i32 %304, %305
  %307 = load i32, i32* %19, align 4
  %308 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %306, i32 %307, i32 0, i32 0, i64 0, i32 0)
  %309 = load i32, i32* %19, align 4
  ret i32 %309
}

declare dso_local i32 @MEMORYSTATUS_DEBUG(i32, i8*, ...) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @BSDDBG_CODE(i32, i32) #1

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @proc_list_unlock(...) #1

declare dso_local i32 @SET_ACTIVE_LIMITS_LOCKED(%struct.TYPE_11__*, i32, i64) #1

declare dso_local i32 @SET_INACTIVE_LIMITS_LOCKED(%struct.TYPE_11__*, i32, i64) #1

declare dso_local i64 @proc_jetsam_state_is_active_locked(%struct.TYPE_11__*) #1

declare dso_local i32 @CACHE_ACTIVE_LIMITS_LOCKED(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @CACHE_INACTIVE_LIMITS_LOCKED(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @task_set_phys_footprint_limit_internal(i32, i32, i32*, i64, i64) #1

declare dso_local i64 @isProcessInAgingBands(%struct.TYPE_11__*) #1

declare dso_local i32 @memorystatus_invalidate_idle_demotion_locked(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @memorystatus_update_priority_locked(%struct.TYPE_11__*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
