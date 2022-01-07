; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_kill_elevated_process.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_kill_elevated_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i8*, i32 }
%struct.TYPE_14__ = type { i64 }

@PROC_NULL = common dso_local global %struct.TYPE_13__* null, align 8
@FALSE = common dso_local global i64 0, align 8
@DBG_BSD_MEMSTAT = common dso_local global i32 0, align 4
@BSD_MEMSTAT_JETSAM = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@memorystatus_available_pages = common dso_local global i64 0, align 8
@P_MEMSTAT_USE_ELEVATED_INACTIVE_BAND = common dso_local global i32 0, align 4
@P_MEMSTAT_ERROR = common dso_local global i32 0, align 4
@P_MEMSTAT_TERMINATED = common dso_local global i32 0, align 4
@memorystatus_jetsam_snapshot_count = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@OS_LOG_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [112 x i8] c"%lu.%03d memorystatus: killing_top_process_elevated%d pid %d [%s] (%s %d) - memorystatus_available_pages: %llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@memorystatus_kill_cause_name = common dso_local global i32* null, align 8
@memorystatus_jetsam_snapshot = common dso_local global %struct.TYPE_14__* null, align 8
@DBG_FUNC_END = common dso_local global i32 0, align 4
@P_MEMSTAT_FROZEN = common dso_local global i32 0, align 4
@P_MEMSTAT_LOCKED = common dso_local global i32 0, align 4
@memorystatus_freeze_jetsam_band = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32, i32, i32, i64*)* @memorystatus_kill_elevated_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @memorystatus_kill_elevated_process(i64 %0, i32 %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64* %4, i64** %10, align 8
  store i32 0, i32* %11, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** @PROC_NULL, align 8
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %12, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** @PROC_NULL, align 8
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %13, align 8
  %24 = load i64, i64* @FALSE, align 8
  store i64 %24, i64* %14, align 8
  %25 = load i64, i64* @FALSE, align 8
  store i64 %25, i64* %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %26 = load i32, i32* @DBG_BSD_MEMSTAT, align 4
  %27 = load i32, i32* @BSD_MEMSTAT_JETSAM, align 4
  %28 = call i32 @BSDDBG_CODE(i32 %26, i32 %27)
  %29 = load i32, i32* @DBG_FUNC_START, align 4
  %30 = or i32 %28, %29
  %31 = load i64, i64* @memorystatus_available_pages, align 8
  %32 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %30, i64 %31, i32 0, i32 0, i32 0, i32 0)
  %33 = call i32 (...) @proc_list_lock()
  %34 = load i64, i64* @FALSE, align 8
  %35 = call %struct.TYPE_13__* @memorystatus_get_first_proc_locked(i32* %8, i64 %34)
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %13, align 8
  br label %36

36:                                               ; preds = %152, %66, %56, %5
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %38 = icmp ne %struct.TYPE_13__* %37, null
  br i1 %38, label %39, label %155

39:                                               ; preds = %36
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %12, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %42 = load i64, i64* @FALSE, align 8
  %43 = call %struct.TYPE_13__* @memorystatus_get_next_proc_locked(i32* %8, %struct.TYPE_13__* %41, i64 %42)
  store %struct.TYPE_13__* %43, %struct.TYPE_13__** %13, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %11, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %17, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @P_MEMSTAT_USE_ELEVATED_INACTIVE_BAND, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %39
  br label %36

57:                                               ; preds = %39
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @P_MEMSTAT_ERROR, align 4
  %62 = load i32, i32* @P_MEMSTAT_TERMINATED, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %60, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %36

67:                                               ; preds = %57
  %68 = load i64, i64* @memorystatus_jetsam_snapshot_count, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = call i32 @memorystatus_init_jetsam_snapshot_locked(i32* null, i32 0)
  %72 = load i64, i64* @TRUE, align 8
  store i64 %72, i64* %14, align 8
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i32, i32* @P_MEMSTAT_TERMINATED, align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = call i32 (...) @mach_absolute_time()
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* %18, align 4
  %81 = call i32 @absolutetime_to_microtime(i32 %80, i64* %19, i32* %20)
  %82 = load i32, i32* %20, align 4
  %83 = sdiv i32 %82, 1000
  %84 = sext i32 %83 to i64
  store i64 %84, i64* %21, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %86 = load i64, i64* %6, align 8
  %87 = load i32, i32* %18, align 4
  %88 = call i32 @memorystatus_update_jetsam_snapshot_entry_locked(%struct.TYPE_13__* %85, i64 %86, i32 %87)
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %90 = call %struct.TYPE_13__* @proc_ref_locked(%struct.TYPE_13__* %89)
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %92 = icmp eq %struct.TYPE_13__* %90, %91
  br i1 %92, label %93, label %152

93:                                               ; preds = %73
  %94 = call i32 (...) @proc_list_unlock()
  %95 = load i32, i32* @OS_LOG_DEFAULT, align 4
  %96 = load i64, i64* %19, align 8
  %97 = load i64, i64* %21, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %93
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 2
  %109 = load i8*, i8** %108, align 8
  br label %111

110:                                              ; preds = %93
  br label %111

111:                                              ; preds = %110, %106
  %112 = phi i8* [ %109, %106 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %110 ]
  %113 = load i32*, i32** @memorystatus_kill_cause_name, align 8
  %114 = load i64, i64* %6, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i64, i64* %17, align 8
  %118 = load i64, i64* @memorystatus_available_pages, align 8
  %119 = trunc i64 %118 to i32
  %120 = call i32 @os_log_with_startup_serial(i32 %95, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str, i64 0, i64 0), i64 %96, i64 %97, i32 %98, i32 %99, i8* %112, i32 %116, i64 %117, i32 %119)
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @os_reason_ref(i32 %121)
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %124 = load i64, i64* %6, align 8
  %125 = load i32, i32* %7, align 4
  %126 = call i64 @memorystatus_do_kill(%struct.TYPE_13__* %123, i64 %124, i32 %125)
  store i64 %126, i64* %15, align 8
  %127 = load i64, i64* %15, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %111
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %131 = call i32 @proc_rele(%struct.TYPE_13__* %130)
  %132 = load i32, i32* %16, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %16, align 4
  br label %157

134:                                              ; preds = %111
  %135 = call i32 (...) @proc_list_lock()
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %137 = call i32 @proc_rele_locked(%struct.TYPE_13__* %136)
  %138 = load i32, i32* @P_MEMSTAT_TERMINATED, align 4
  %139 = xor i32 %138, -1
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = and i32 %142, %139
  store i32 %143, i32* %141, align 8
  %144 = load i32, i32* @P_MEMSTAT_ERROR, align 4
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 8
  %149 = load i64*, i64** %10, align 8
  %150 = load i64, i64* %149, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %149, align 8
  br label %152

152:                                              ; preds = %134, %73
  %153 = load i64, i64* @FALSE, align 8
  %154 = call %struct.TYPE_13__* @memorystatus_get_first_proc_locked(i32* %8, i64 %153)
  store %struct.TYPE_13__* %154, %struct.TYPE_13__** %13, align 8
  br label %36

155:                                              ; preds = %36
  %156 = call i32 (...) @proc_list_unlock()
  br label %157

157:                                              ; preds = %155, %129
  %158 = load i32, i32* %7, align 4
  %159 = call i32 @os_reason_free(i32 %158)
  %160 = load i64, i64* %14, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %157
  %163 = load i32, i32* %16, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %162
  %166 = call i32 (...) @proc_list_lock()
  store i64 0, i64* @memorystatus_jetsam_snapshot_count, align 8
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** @memorystatus_jetsam_snapshot, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  store i64 0, i64* %168, align 8
  %169 = call i32 (...) @proc_list_unlock()
  br label %170

170:                                              ; preds = %165, %162, %157
  %171 = load i32, i32* @DBG_BSD_MEMSTAT, align 4
  %172 = load i32, i32* @BSD_MEMSTAT_JETSAM, align 4
  %173 = call i32 @BSDDBG_CODE(i32 %171, i32 %172)
  %174 = load i32, i32* @DBG_FUNC_END, align 4
  %175 = or i32 %173, %174
  %176 = load i64, i64* @memorystatus_available_pages, align 8
  %177 = load i64, i64* %15, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %170
  %180 = load i32, i32* %11, align 4
  br label %182

181:                                              ; preds = %170
  br label %182

182:                                              ; preds = %181, %179
  %183 = phi i32 [ %180, %179 ], [ 0, %181 ]
  %184 = load i32, i32* %16, align 4
  %185 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %175, i64 %176, i32 %183, i32 %184, i32 0, i32 0)
  %186 = load i64, i64* %15, align 8
  ret i64 %186
}

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @BSDDBG_CODE(i32, i32) #1

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local %struct.TYPE_13__* @memorystatus_get_first_proc_locked(i32*, i64) #1

declare dso_local %struct.TYPE_13__* @memorystatus_get_next_proc_locked(i32*, %struct.TYPE_13__*, i64) #1

declare dso_local i32 @memorystatus_init_jetsam_snapshot_locked(i32*, i32) #1

declare dso_local i32 @mach_absolute_time(...) #1

declare dso_local i32 @absolutetime_to_microtime(i32, i64*, i32*) #1

declare dso_local i32 @memorystatus_update_jetsam_snapshot_entry_locked(%struct.TYPE_13__*, i64, i32) #1

declare dso_local %struct.TYPE_13__* @proc_ref_locked(%struct.TYPE_13__*) #1

declare dso_local i32 @proc_list_unlock(...) #1

declare dso_local i32 @os_log_with_startup_serial(i32, i8*, i64, i64, i32, i32, i8*, i32, i64, i32) #1

declare dso_local i32 @os_reason_ref(i32) #1

declare dso_local i64 @memorystatus_do_kill(%struct.TYPE_13__*, i64, i32) #1

declare dso_local i32 @proc_rele(%struct.TYPE_13__*) #1

declare dso_local i32 @proc_rele_locked(%struct.TYPE_13__*) #1

declare dso_local i32 @os_reason_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
