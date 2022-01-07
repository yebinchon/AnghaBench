; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_kill_hiwat_proc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_kill_hiwat_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i64, i32, i32 }
%struct.TYPE_13__ = type { i64 }

@PROC_NULL = common dso_local global %struct.TYPE_12__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@OS_REASON_NULL = common dso_local global i64 0, align 8
@DBG_BSD_MEMSTAT = common dso_local global i32 0, align 4
@BSD_MEMSTAT_JETSAM_HIWAT = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@memorystatus_available_pages = common dso_local global i32 0, align 4
@OS_REASON_JETSAM = common dso_local global i32 0, align 4
@JETSAM_REASON_MEMORY_HIGHWATER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"memorystatus_kill_hiwat_proc: failed to allocate exit reason\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@P_MEMSTAT_ERROR = common dso_local global i32 0, align 4
@P_MEMSTAT_TERMINATED = common dso_local global i32 0, align 4
@memorystatus_jetsam_snapshot_count = common dso_local global i64 0, align 8
@kMemorystatusKilledHiwat = common dso_local global i32 0, align 4
@memorystatus_jetsam_snapshot = common dso_local global %struct.TYPE_13__* null, align 8
@DBG_FUNC_END = common dso_local global i32 0, align 4
@P_MEMSTAT_DIAG_SUSPENDED = common dso_local global i32 0, align 4
@P_MEMSTAT_LOCKED = common dso_local global i32 0, align 4
@kPolicyDiagnoseActive = common dso_local global i32 0, align 4
@memorystatus_jetsam_policy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @memorystatus_kill_hiwat_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memorystatus_kill_hiwat_proc(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** @PROC_NULL, align 8
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %6, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** @PROC_NULL, align 8
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %7, align 8
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %22 = load i64, i64* @OS_REASON_NULL, align 8
  store i64 %22, i64* %13, align 8
  %23 = load i32, i32* @DBG_BSD_MEMSTAT, align 4
  %24 = load i32, i32* @BSD_MEMSTAT_JETSAM_HIWAT, align 4
  %25 = call i32 @BSDDBG_CODE(i32 %23, i32 %24)
  %26 = load i32, i32* @DBG_FUNC_START, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @memorystatus_available_pages, align 4
  %29 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %27, i32 %28, i32 0, i32 0, i32 0, i32 0)
  %30 = load i32, i32* @OS_REASON_JETSAM, align 4
  %31 = load i32, i32* @JETSAM_REASON_MEMORY_HIGHWATER, align 4
  %32 = call i64 @os_reason_create(i32 %30, i32 %31)
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* @OS_REASON_NULL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = call i32 @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %2
  %39 = call i32 (...) @proc_list_lock()
  %40 = load i32, i32* @TRUE, align 4
  %41 = call %struct.TYPE_12__* @memorystatus_get_first_proc_locked(i32* %11, i32 %40)
  store %struct.TYPE_12__* %41, %struct.TYPE_12__** %7, align 8
  br label %42

42:                                               ; preds = %154, %106, %87, %70, %64, %38
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %44 = icmp ne %struct.TYPE_12__* %43, null
  br i1 %44, label %45, label %155

45:                                               ; preds = %42
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %46, %struct.TYPE_12__** %6, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = load i32, i32* @TRUE, align 4
  %49 = call %struct.TYPE_12__* @memorystatus_get_next_proc_locked(i32* %11, %struct.TYPE_12__* %47, i32 %48)
  store %struct.TYPE_12__* %49, %struct.TYPE_12__** %7, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %5, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %12, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @P_MEMSTAT_ERROR, align 4
  %60 = load i32, i32* @P_MEMSTAT_TERMINATED, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %45
  br label %42

65:                                               ; preds = %45
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp sle i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %42

71:                                               ; preds = %65
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @get_task_phys_footprint(i32 %74)
  store i64 %75, i64* %14, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = mul i64 %78, 1024
  %80 = mul i64 %79, 1024
  store i64 %80, i64* %15, align 8
  %81 = load i64, i64* %14, align 8
  %82 = load i64, i64* %15, align 8
  %83 = icmp ule i64 %81, %82
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %71
  br label %42

88:                                               ; preds = %71
  %89 = load i64, i64* @memorystatus_jetsam_snapshot_count, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = call i32 @memorystatus_init_jetsam_snapshot_locked(i32* null, i32 0)
  %93 = load i32, i32* @TRUE, align 4
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %91, %88
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %96 = call %struct.TYPE_12__* @proc_ref_locked(%struct.TYPE_12__* %95)
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %98 = icmp eq %struct.TYPE_12__* %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load i32, i32* @P_MEMSTAT_TERMINATED, align 4
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  %105 = call i32 (...) @proc_list_unlock()
  br label %109

106:                                              ; preds = %94
  store i32 0, i32* %11, align 4
  %107 = load i32, i32* @TRUE, align 4
  %108 = call %struct.TYPE_12__* @memorystatus_get_first_proc_locked(i32* %11, i32 %107)
  store %struct.TYPE_12__* %108, %struct.TYPE_12__** %7, align 8
  br label %42

109:                                              ; preds = %99
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %111 = load i32, i32* @kMemorystatusKilledHiwat, align 4
  %112 = load i64, i64* %13, align 8
  %113 = call i32 @memorystatus_kill_proc(%struct.TYPE_12__* %110, i32 %111, i64 %112, i32* %9)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %134

116:                                              ; preds = %109
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @FALSE, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %116
  %121 = load i32, i32* @TRUE, align 4
  %122 = load i32*, i32** %4, align 8
  store i32 %121, i32* %122, align 4
  %123 = call i32 (...) @proc_list_lock()
  %124 = load i32, i32* @P_MEMSTAT_TERMINATED, align 4
  %125 = xor i32 %124, -1
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, %125
  store i32 %129, i32* %127, align 4
  %130 = call i32 (...) @proc_list_unlock()
  br label %131

131:                                              ; preds = %120, %116
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %133 = call i32 @proc_rele(%struct.TYPE_12__* %132)
  br label %157

134:                                              ; preds = %109
  %135 = call i32 (...) @proc_list_lock()
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %137 = call i32 @proc_rele_locked(%struct.TYPE_12__* %136)
  %138 = load i32, i32* @P_MEMSTAT_TERMINATED, align 4
  %139 = xor i32 %138, -1
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, %139
  store i32 %143, i32* %141, align 4
  %144 = load i32, i32* @P_MEMSTAT_ERROR, align 4
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 4
  %149 = load i32*, i32** %3, align 8
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 4
  store i32 0, i32* %11, align 4
  %152 = load i32, i32* @TRUE, align 4
  %153 = call %struct.TYPE_12__* @memorystatus_get_first_proc_locked(i32* %11, i32 %152)
  store %struct.TYPE_12__* %153, %struct.TYPE_12__** %7, align 8
  br label %154

154:                                              ; preds = %134
  br label %42

155:                                              ; preds = %42
  %156 = call i32 (...) @proc_list_unlock()
  br label %157

157:                                              ; preds = %155, %131
  %158 = load i64, i64* %13, align 8
  %159 = call i32 @os_reason_free(i64 %158)
  %160 = load i32, i32* %8, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %157
  %163 = load i32, i32* %9, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %170, label %165

165:                                              ; preds = %162
  %166 = call i32 (...) @proc_list_lock()
  store i64 0, i64* @memorystatus_jetsam_snapshot_count, align 8
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** @memorystatus_jetsam_snapshot, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  store i64 0, i64* %168, align 8
  %169 = call i32 (...) @proc_list_unlock()
  br label %170

170:                                              ; preds = %165, %162, %157
  %171 = load i32, i32* @DBG_BSD_MEMSTAT, align 4
  %172 = load i32, i32* @BSD_MEMSTAT_JETSAM_HIWAT, align 4
  %173 = call i32 @BSDDBG_CODE(i32 %171, i32 %172)
  %174 = load i32, i32* @DBG_FUNC_END, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* @memorystatus_available_pages, align 4
  %177 = load i32, i32* %9, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %170
  %180 = load i32, i32* %5, align 4
  br label %182

181:                                              ; preds = %170
  br label %182

182:                                              ; preds = %181, %179
  %183 = phi i32 [ %180, %179 ], [ 0, %181 ]
  %184 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %175, i32 %176, i32 %183, i32 0, i32 0, i32 0)
  %185 = load i32, i32* %9, align 4
  ret i32 %185
}

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BSDDBG_CODE(i32, i32) #1

declare dso_local i64 @os_reason_create(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local %struct.TYPE_12__* @memorystatus_get_first_proc_locked(i32*, i32) #1

declare dso_local %struct.TYPE_12__* @memorystatus_get_next_proc_locked(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i64 @get_task_phys_footprint(i32) #1

declare dso_local i32 @memorystatus_init_jetsam_snapshot_locked(i32*, i32) #1

declare dso_local %struct.TYPE_12__* @proc_ref_locked(%struct.TYPE_12__*) #1

declare dso_local i32 @proc_list_unlock(...) #1

declare dso_local i32 @memorystatus_kill_proc(%struct.TYPE_12__*, i32, i64, i32*) #1

declare dso_local i32 @proc_rele(%struct.TYPE_12__*) #1

declare dso_local i32 @proc_rele_locked(%struct.TYPE_12__*) #1

declare dso_local i32 @os_reason_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
