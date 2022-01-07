; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_kill_top_process.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_kill_top_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32 }
%struct.TYPE_14__ = type { i64 }

@PROC_NULL = common dso_local global %struct.TYPE_13__* null, align 8
@FALSE = common dso_local global i64 0, align 8
@JETSAM_PRIORITY_IDLE = common dso_local global i64 0, align 8
@DBG_BSD_MEMSTAT = common dso_local global i32 0, align 4
@BSD_MEMSTAT_JETSAM = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@memorystatus_available_pages = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@JETSAM_SORT_DEFAULT = common dso_local global i32 0, align 4
@kMemorystatusKilledZoneMapExhaustion = common dso_local global i64 0, align 8
@JETSAM_PRIORITY_MAX = common dso_local global i64 0, align 8
@max_kill_priority = common dso_local global i64 0, align 8
@P_MEMSTAT_ERROR = common dso_local global i32 0, align 4
@P_MEMSTAT_TERMINATED = common dso_local global i32 0, align 4
@kMemorystatusKilledVnodes = common dso_local global i64 0, align 8
@memorystatus_jetsam_snapshot_count = common dso_local global i64 0, align 8
@memorystatus_idle_snapshot = common dso_local global i64 0, align 8
@memorystatus_jetsam_snapshot = common dso_local global %struct.TYPE_14__* null, align 8
@DBG_FUNC_END = common dso_local global i32 0, align 4
@JETSAM_PRIORITY_FOREGROUND = common dso_local global i64 0, align 8
@P_MEMSTAT_DIAG_SUSPENDED = common dso_local global i32 0, align 4
@P_MEMSTAT_LOCKED = common dso_local global i32 0, align 4
@kPolicyDiagnoseActive = common dso_local global i32 0, align 4
@memorystatus_jetsam_policy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i32, i64*, i64*)* @memorystatus_kill_top_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @memorystatus_kill_top_process(i64 %0, i64 %1, i64 %2, i32 %3, i64* %4, i64* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  store i64* %5, i64** %12, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** @PROC_NULL, align 8
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %14, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** @PROC_NULL, align 8
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %15, align 8
  %25 = load i64, i64* @FALSE, align 8
  store i64 %25, i64* %16, align 8
  %26 = load i64, i64* @FALSE, align 8
  store i64 %26, i64* %17, align 8
  %27 = load i64, i64* @FALSE, align 8
  store i64 %27, i64* %18, align 8
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* %19, align 8
  store i32 0, i32* %20, align 4
  %29 = load i64, i64* @JETSAM_PRIORITY_IDLE, align 8
  store i64 %29, i64* %22, align 8
  %30 = load i32, i32* @DBG_BSD_MEMSTAT, align 4
  %31 = load i32, i32* @BSD_MEMSTAT_JETSAM, align 4
  %32 = call i32 @BSDDBG_CODE(i32 %30, i32 %31)
  %33 = load i32, i32* @DBG_FUNC_START, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @memorystatus_available_pages, align 4
  %36 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %34, i32 %35, i32 0, i32 0, i32 0, i32 0)
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @TRUE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %6
  %41 = load i64, i64* @JETSAM_PRIORITY_IDLE, align 8
  %42 = load i32, i32* @JETSAM_SORT_DEFAULT, align 4
  %43 = call i32 @memorystatus_sort_bucket(i64 %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %6
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @kMemorystatusKilledZoneMapExhaustion, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i64, i64* @JETSAM_PRIORITY_MAX, align 8
  store i64 %49, i64* %22, align 8
  br label %52

50:                                               ; preds = %44
  %51 = load i64, i64* @max_kill_priority, align 8
  store i64 %51, i64* %22, align 8
  br label %52

52:                                               ; preds = %50, %48
  %53 = load i64, i64* @TRUE, align 8
  store i64 %53, i64* %17, align 8
  %54 = call i32 (...) @proc_list_lock()
  %55 = load i64, i64* @TRUE, align 8
  %56 = call %struct.TYPE_13__* @memorystatus_get_first_proc_locked(i32* %20, i64 %55)
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %15, align 8
  br label %57

57:                                               ; preds = %164, %109, %96, %87, %52
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %59 = icmp ne %struct.TYPE_13__* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %22, align 8
  %65 = icmp sle i64 %63, %64
  br label %66

66:                                               ; preds = %60, %57
  %67 = phi i1 [ false, %57 ], [ %65, %60 ]
  br i1 %67, label %68, label %184

68:                                               ; preds = %66
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  store %struct.TYPE_13__* %69, %struct.TYPE_13__** %14, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %71 = load i64, i64* @TRUE, align 8
  %72 = call %struct.TYPE_13__* @memorystatus_get_next_proc_locked(i32* %20, %struct.TYPE_13__* %70, i64 %71)
  store %struct.TYPE_13__* %72, %struct.TYPE_13__** %15, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %13, align 4
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %21, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @P_MEMSTAT_ERROR, align 4
  %83 = load i32, i32* @P_MEMSTAT_TERMINATED, align 4
  %84 = or i32 %82, %83
  %85 = and i32 %81, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %68
  br label %57

88:                                               ; preds = %68
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* @kMemorystatusKilledVnodes, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %94 = call %struct.TYPE_13__* (...) @current_proc()
  %95 = icmp eq %struct.TYPE_13__* %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %57

97:                                               ; preds = %92
  br label %98

98:                                               ; preds = %97, %88
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %100 = call %struct.TYPE_13__* @proc_ref_locked(%struct.TYPE_13__* %99)
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %102 = icmp eq %struct.TYPE_13__* %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load i32, i32* @P_MEMSTAT_TERMINATED, align 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %112

109:                                              ; preds = %98
  store i32 0, i32* %20, align 4
  %110 = load i64, i64* @TRUE, align 8
  %111 = call %struct.TYPE_13__* @memorystatus_get_first_proc_locked(i32* %20, i64 %110)
  store %struct.TYPE_13__* %111, %struct.TYPE_13__** %15, align 8
  br label %57

112:                                              ; preds = %103
  %113 = load i64, i64* @memorystatus_jetsam_snapshot_count, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %134

115:                                              ; preds = %112
  %116 = load i64, i64* %17, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %131, label %118

118:                                              ; preds = %115
  %119 = load i64, i64* @memorystatus_idle_snapshot, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %131, label %121

121:                                              ; preds = %118
  %122 = load i64*, i64** %11, align 8
  %123 = icmp ne i64* %122, null
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = load i64*, i64** %11, align 8
  %126 = icmp ne i64* %125, null
  br i1 %126, label %127, label %134

127:                                              ; preds = %124
  %128 = load i64, i64* %21, align 8
  %129 = load i64, i64* @JETSAM_PRIORITY_IDLE, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %127, %121, %118, %115
  %132 = call i32 @memorystatus_init_jetsam_snapshot_locked(i32* null, i32 0)
  %133 = load i64, i64* @TRUE, align 8
  store i64 %133, i64* %16, align 8
  br label %134

134:                                              ; preds = %131, %127, %124, %112
  %135 = call i32 (...) @proc_list_unlock()
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %137 = load i64, i64* %9, align 8
  %138 = load i32, i32* %10, align 4
  %139 = call i64 @memorystatus_kill_proc(%struct.TYPE_13__* %136, i64 %137, i32 %138, i64* %18)
  store i64 %139, i64* %19, align 8
  %140 = load i64, i64* %19, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %164

142:                                              ; preds = %134
  %143 = load i64, i64* %18, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %142
  %146 = load i64*, i64** %11, align 8
  %147 = icmp ne i64* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i64, i64* %21, align 8
  %150 = load i64*, i64** %11, align 8
  store i64 %149, i64* %150, align 8
  br label %151

151:                                              ; preds = %148, %145
  br label %161

152:                                              ; preds = %142
  %153 = call i32 (...) @proc_list_lock()
  %154 = load i32, i32* @P_MEMSTAT_TERMINATED, align 4
  %155 = xor i32 %154, -1
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = and i32 %158, %155
  store i32 %159, i32* %157, align 8
  %160 = call i32 (...) @proc_list_unlock()
  br label %161

161:                                              ; preds = %152, %151
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %163 = call i32 @proc_rele(%struct.TYPE_13__* %162)
  br label %186

164:                                              ; preds = %134
  %165 = call i32 (...) @proc_list_lock()
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %167 = call i32 @proc_rele_locked(%struct.TYPE_13__* %166)
  %168 = load i32, i32* @P_MEMSTAT_TERMINATED, align 4
  %169 = xor i32 %168, -1
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = and i32 %172, %169
  store i32 %173, i32* %171, align 8
  %174 = load i32, i32* @P_MEMSTAT_ERROR, align 4
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 8
  %179 = load i64*, i64** %12, align 8
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %180, 1
  store i64 %181, i64* %179, align 8
  store i32 0, i32* %20, align 4
  %182 = load i64, i64* @TRUE, align 8
  %183 = call %struct.TYPE_13__* @memorystatus_get_first_proc_locked(i32* %20, i64 %182)
  store %struct.TYPE_13__* %183, %struct.TYPE_13__** %15, align 8
  br label %57

184:                                              ; preds = %66
  %185 = call i32 (...) @proc_list_unlock()
  br label %186

186:                                              ; preds = %184, %161
  %187 = load i32, i32* %10, align 4
  %188 = call i32 @os_reason_free(i32 %187)
  %189 = load i64, i64* %16, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %186
  %192 = load i64, i64* %18, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %199, label %194

194:                                              ; preds = %191
  %195 = call i32 (...) @proc_list_lock()
  store i64 0, i64* @memorystatus_jetsam_snapshot_count, align 8
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** @memorystatus_jetsam_snapshot, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 0
  store i64 0, i64* %197, align 8
  %198 = call i32 (...) @proc_list_unlock()
  br label %199

199:                                              ; preds = %194, %191, %186
  %200 = load i32, i32* @DBG_BSD_MEMSTAT, align 4
  %201 = load i32, i32* @BSD_MEMSTAT_JETSAM, align 4
  %202 = call i32 @BSDDBG_CODE(i32 %200, i32 %201)
  %203 = load i32, i32* @DBG_FUNC_END, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @memorystatus_available_pages, align 4
  %206 = load i64, i64* %18, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %199
  %209 = load i32, i32* %13, align 4
  br label %211

210:                                              ; preds = %199
  br label %211

211:                                              ; preds = %210, %208
  %212 = phi i32 [ %209, %208 ], [ 0, %210 ]
  %213 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %204, i32 %205, i32 %212, i32 0, i32 0, i32 0)
  %214 = load i64, i64* %18, align 8
  ret i64 %214
}

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BSDDBG_CODE(i32, i32) #1

declare dso_local i32 @memorystatus_sort_bucket(i64, i32) #1

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local %struct.TYPE_13__* @memorystatus_get_first_proc_locked(i32*, i64) #1

declare dso_local %struct.TYPE_13__* @memorystatus_get_next_proc_locked(i32*, %struct.TYPE_13__*, i64) #1

declare dso_local %struct.TYPE_13__* @current_proc(...) #1

declare dso_local %struct.TYPE_13__* @proc_ref_locked(%struct.TYPE_13__*) #1

declare dso_local i32 @memorystatus_init_jetsam_snapshot_locked(i32*, i32) #1

declare dso_local i32 @proc_list_unlock(...) #1

declare dso_local i64 @memorystatus_kill_proc(%struct.TYPE_13__*, i64, i32, i64*) #1

declare dso_local i32 @proc_rele(%struct.TYPE_13__*) #1

declare dso_local i32 @proc_rele_locked(%struct.TYPE_13__*) #1

declare dso_local i32 @os_reason_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
