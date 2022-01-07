; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_dirty_track.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_dirty_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@DBG_BSD_MEMSTAT = common dso_local global i32 0, align 4
@BSD_MEMSTAT_DIRTY_TRACK = common dso_local global i32 0, align 4
@P_LIST_EXITED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@P_MEMSTAT_INTERNAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@PROC_DIRTY_TRACK = common dso_local global i32 0, align 4
@P_DIRTY_TRACK = common dso_local global i32 0, align 4
@PROC_DIRTY_ALLOW_IDLE_EXIT = common dso_local global i32 0, align 4
@P_DIRTY_ALLOW_IDLE_EXIT = common dso_local global i32 0, align 4
@PROC_DIRTY_LAUNCH_IN_PROGRESS = common dso_local global i32 0, align 4
@P_DIRTY_LAUNCH_IN_PROGRESS = common dso_local global i32 0, align 4
@P_DIRTY_AGING_IN_PROGRESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@PROC_DIRTY_DEFER = common dso_local global i32 0, align 4
@PROC_DIRTY_DEFER_ALWAYS = common dso_local global i32 0, align 4
@P_DIRTY_DEFER = common dso_local global i32 0, align 4
@P_DIRTY_DEFER_ALWAYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"memorystatus_on_track_dirty(): set idle-exit %s / defer %s / dirty %s for pid %d\0A\00", align 1
@P_DIRTY_IDLE_EXIT_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@P_DIRTY = common dso_local global i32 0, align 4
@P_DIRTY_IS_DIRTY = common dso_local global i32 0, align 4
@jetsam_aging_policy = common dso_local global i64 0, align 8
@kJetsamAgingPolicyLegacy = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memorystatus_dirty_track(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i64, i64* @FALSE, align 8
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* @FALSE, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* @DBG_BSD_MEMSTAT, align 4
  %15 = load i32, i32* @BSD_MEMSTAT_DIRTY_TRACK, align 4
  %16 = call i32 @BSDDBG_CODE(i32 %14, i32 %15)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %16, i32 %19, i32 %22, i32 %23, i32 0, i32 0)
  %25 = call i32 (...) @proc_list_lock()
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @P_LIST_EXITED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @EBUSY, align 4
  store i32 %33, i32* %9, align 4
  br label %237

34:                                               ; preds = %2
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @P_MEMSTAT_INTERNAL, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @EPERM, align 4
  store i32 %42, i32* %9, align 4
  br label %237

43:                                               ; preds = %34
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @memorystatus_validate_track_flags(%struct.TYPE_7__* %44, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %237

49:                                               ; preds = %43
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @PROC_DIRTY_TRACK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = load i32, i32* @P_DIRTY_TRACK, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %57, %49
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @PROC_DIRTY_ALLOW_IDLE_EXIT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load i32, i32* @P_DIRTY_ALLOW_IDLE_EXIT, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %68, %63
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @PROC_DIRTY_LAUNCH_IN_PROGRESS, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load i32, i32* @P_DIRTY_LAUNCH_IN_PROGRESS, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %74
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @P_DIRTY_AGING_IN_PROGRESS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i64, i64* @TRUE, align 8
  store i64 %91, i64* %7, align 8
  br label %92

92:                                               ; preds = %90, %85
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @PROC_DIRTY_DEFER, align 4
  %95 = load i32, i32* @PROC_DIRTY_DEFER_ALWAYS, align 4
  %96 = or i32 %94, %95
  %97 = and i32 %93, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %133

99:                                               ; preds = %92
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @PROC_DIRTY_DEFER, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %99
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @P_DIRTY_DEFER, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* @P_DIRTY_DEFER, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %109, %104, %99
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @PROC_DIRTY_DEFER_ALWAYS, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %115
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* @P_DIRTY_DEFER_ALWAYS, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %120
  %126 = load i32, i32* @P_DIRTY_DEFER_ALWAYS, align 4
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %125, %120, %115
  %132 = load i64, i64* @TRUE, align 8
  store i64 %132, i64* %8, align 8
  br label %133

133:                                              ; preds = %131, %92
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @P_DIRTY_IDLE_EXIT_ENABLED, align 4
  %138 = and i32 %136, %137
  %139 = load i32, i32* @P_DIRTY_IDLE_EXIT_ENABLED, align 4
  %140 = icmp eq i32 %138, %139
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %143 = load i64, i64* %8, align 8
  %144 = icmp ne i64 %143, 0
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @P_DIRTY, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @MEMORYSTATUS_DEBUG(i32 1, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i8* %142, i8* %146, i8* %154, i32 %157)
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @P_DIRTY_IS_DIRTY, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %203, label %165

165:                                              ; preds = %133
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @P_DIRTY_IDLE_EXIT_ENABLED, align 4
  %170 = and i32 %168, %169
  %171 = load i32, i32* @P_DIRTY_IDLE_EXIT_ENABLED, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %202

173:                                              ; preds = %165
  %174 = load i64, i64* %8, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %173
  %177 = load i64, i64* %7, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %184, label %179

179:                                              ; preds = %176
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %181 = load i64, i64* @TRUE, align 8
  %182 = call i32 @memorystatus_schedule_idle_demotion_locked(%struct.TYPE_7__* %180, i64 %181)
  %183 = load i64, i64* @TRUE, align 8
  store i64 %183, i64* %6, align 8
  br label %201

184:                                              ; preds = %176, %173
  %185 = load i64, i64* %8, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %200, label %187

187:                                              ; preds = %184
  %188 = load i64, i64* %7, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %187
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %192 = load i64, i64* @TRUE, align 8
  %193 = call i32 @memorystatus_invalidate_idle_demotion_locked(%struct.TYPE_7__* %191, i64 %192)
  br label %198

194:                                              ; preds = %187
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %196 = load i64, i64* @TRUE, align 8
  %197 = call i32 @memorystatus_schedule_idle_demotion_locked(%struct.TYPE_7__* %195, i64 %196)
  br label %198

198:                                              ; preds = %194, %190
  %199 = load i64, i64* @TRUE, align 8
  store i64 %199, i64* %6, align 8
  br label %200

200:                                              ; preds = %198, %184
  br label %201

201:                                              ; preds = %200, %179
  br label %202

202:                                              ; preds = %201, %165
  br label %229

203:                                              ; preds = %133
  %204 = load i64, i64* %8, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %214, label %206

206:                                              ; preds = %203
  %207 = load i64, i64* %7, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %206
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %211 = load i64, i64* @TRUE, align 8
  %212 = call i32 @memorystatus_invalidate_idle_demotion_locked(%struct.TYPE_7__* %210, i64 %211)
  %213 = load i64, i64* @TRUE, align 8
  store i64 %213, i64* %6, align 8
  br label %228

214:                                              ; preds = %206, %203
  %215 = load i64, i64* @jetsam_aging_policy, align 8
  %216 = load i64, i64* @kJetsamAgingPolicyLegacy, align 8
  %217 = icmp ne i64 %215, %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %214
  %219 = load i64, i64* @TRUE, align 8
  br label %222

220:                                              ; preds = %214
  %221 = load i64, i64* @FALSE, align 8
  br label %222

222:                                              ; preds = %220, %218
  %223 = phi i64 [ %219, %218 ], [ %221, %220 ]
  store i64 %223, i64* %10, align 8
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %225 = load i64, i64* %10, align 8
  %226 = call i32 @memorystatus_invalidate_idle_demotion_locked(%struct.TYPE_7__* %224, i64 %225)
  %227 = load i64, i64* @TRUE, align 8
  store i64 %227, i64* %6, align 8
  br label %228

228:                                              ; preds = %222, %209
  br label %229

229:                                              ; preds = %228, %202
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %231 = call i32 @memorystatus_update_idle_priority_locked(%struct.TYPE_7__* %230)
  %232 = load i64, i64* %6, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %229
  %235 = call i32 (...) @memorystatus_reschedule_idle_demotion_locked()
  br label %236

236:                                              ; preds = %234, %229
  store i32 0, i32* %9, align 4
  br label %237

237:                                              ; preds = %236, %48, %41, %32
  %238 = call i32 (...) @proc_list_unlock()
  %239 = load i32, i32* %9, align 4
  ret i32 %239
}

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BSDDBG_CODE(i32, i32) #1

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local i32 @memorystatus_validate_track_flags(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @MEMORYSTATUS_DEBUG(i32, i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @memorystatus_schedule_idle_demotion_locked(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @memorystatus_invalidate_idle_demotion_locked(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @memorystatus_update_idle_priority_locked(%struct.TYPE_7__*) #1

declare dso_local i32 @memorystatus_reschedule_idle_demotion_locked(...) #1

declare dso_local i32 @proc_list_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
