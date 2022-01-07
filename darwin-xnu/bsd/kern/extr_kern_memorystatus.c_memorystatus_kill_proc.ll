; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_kill_proc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_kill_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i8*, i32, i32, i64 }

@FALSE = common dso_local global i64 0, align 8
@kMemorystatusKilledVnodes = common dso_local global i64 0, align 8
@kMemorystatusKilledZoneMapExhaustion = common dso_local global i64 0, align 8
@kMemorystatusKilledHiwat = common dso_local global i64 0, align 8
@memorystatus_purge_before_jetsam_success = common dso_local global i32 0, align 4
@OS_LOG_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"memorystatus: purged %llu pages from pid %d [%s] and avoided %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@memorystatus_kill_cause_name = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"killing_highwater_process\00", align 1
@JETSAM_PRIORITY_IDLE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"killing_idle_process\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"killing_top_process\00", align 1
@.str.5 = private unnamed_addr constant [84 x i8] c"%lu.%03d memorystatus: %s pid %d [%s] (%s %d) - memorystatus_available_pages: %llu\0A\00", align 1
@memorystatus_available_pages = common dso_local global i64 0, align 8
@P_MEMSTAT_DIAG_SUSPENDED = common dso_local global i32 0, align 4
@P_MEMSTAT_FOREGROUND = common dso_local global i32 0, align 4
@footprint_in_bytes = common dso_local global i64 0, align 8
@jetsam_diagnostic_suspended_one_active_proc = common dso_local global i32 0, align 4
@kMemorystatusInvalid = common dso_local global i64 0, align 8
@kPolicyDiagnoseActive = common dso_local global i32 0, align 4
@kPolicyDiagnoseFirst = common dso_local global i32 0, align 4
@memorystatus_jetsam_policy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64, i32, i32*)* @memorystatus_kill_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memorystatus_kill_proc(%struct.TYPE_6__* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca [128 x i8], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %22 = load i64, i64* @FALSE, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %16, align 4
  store i64 0, i64* %17, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %10, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @kMemorystatusKilledVnodes, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %106

33:                                               ; preds = %4
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @kMemorystatusKilledZoneMapExhaustion, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %106

37:                                               ; preds = %33
  %38 = load i64, i64* @FALSE, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %18, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @networking_memstatus_callout(%struct.TYPE_6__* %40, i64 %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @vm_purgeable_purge_task_owned(i32 %45)
  store i64 %46, i64* %17, align 8
  %47 = load i64, i64* %17, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %105

49:                                               ; preds = %37
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @kMemorystatusKilledHiwat, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %49
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @get_task_phys_footprint(i32 %56)
  store i64 %57, i64* %19, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = mul i64 %60, 1024
  %62 = mul i64 %61, 1024
  store i64 %62, i64* %20, align 8
  %63 = load i64, i64* %19, align 8
  %64 = load i64, i64* %20, align 8
  %65 = icmp ule i64 %63, %64
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %18, align 4
  br label %72

67:                                               ; preds = %49
  %68 = call i64 (...) @memorystatus_avail_pages_below_pressure()
  %69 = load i64, i64* @FALSE, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %18, align 4
  br label %72

72:                                               ; preds = %67, %53
  %73 = load i32, i32* %18, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %104

75:                                               ; preds = %72
  %76 = load i32, i32* @memorystatus_purge_before_jetsam_success, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* @memorystatus_purge_before_jetsam_success, align 4
  %78 = load i32, i32* @OS_LOG_DEFAULT, align 4
  %79 = load i64, i64* %17, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %75
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  br label %93

92:                                               ; preds = %75
  br label %93

93:                                               ; preds = %92, %88
  %94 = phi i8* [ %91, %88 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %92 ]
  %95 = load i32*, i32** @memorystatus_kill_cause_name, align 8
  %96 = load i64, i64* %7, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i32, i8*, i64, i64, i8*, i32, ...) @os_log_with_startup_serial(i32 %78, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i64 %79, i64 %81, i8* %94, i32 %98)
  %100 = load i64, i64* @FALSE, align 8
  %101 = trunc i64 %100 to i32
  %102 = load i32*, i32** %9, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* @TRUE, align 4
  store i32 %103, i32* %5, align 4
  br label %171

104:                                              ; preds = %72
  br label %105

105:                                              ; preds = %104, %37
  br label %106

106:                                              ; preds = %105, %33, %4
  %107 = call i64 (...) @mach_absolute_time()
  store i64 %107, i64* %12, align 8
  %108 = load i64, i64* %12, align 8
  %109 = call i32 @absolutetime_to_microtime(i64 %108, i64* %13, i32* %14)
  %110 = load i32, i32* %14, align 4
  %111 = sdiv i32 %110, 1000
  %112 = sext i32 %111 to i64
  store i64 %112, i64* %15, align 8
  %113 = call i32 (...) @proc_list_lock()
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %115 = load i64, i64* %7, align 8
  %116 = load i64, i64* %12, align 8
  %117 = call i32 @memorystatus_update_jetsam_snapshot_entry_locked(%struct.TYPE_6__* %114, i64 %115, i64 %116)
  %118 = call i32 (...) @proc_list_unlock()
  %119 = load i64, i64* %7, align 8
  %120 = load i64, i64* @kMemorystatusKilledHiwat, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %106
  %123 = getelementptr inbounds [128 x i8], [128 x i8]* %21, i64 0, i64 0
  %124 = call i32 @strlcpy(i8* %123, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 128)
  br label %136

125:                                              ; preds = %106
  %126 = load i64, i64* %11, align 8
  %127 = load i64, i64* @JETSAM_PRIORITY_IDLE, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = getelementptr inbounds [128 x i8], [128 x i8]* %21, i64 0, i64 0
  %131 = call i32 @strlcpy(i8* %130, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 128)
  br label %135

132:                                              ; preds = %125
  %133 = getelementptr inbounds [128 x i8], [128 x i8]* %21, i64 0, i64 0
  %134 = call i32 @strlcpy(i8* %133, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 128)
  br label %135

135:                                              ; preds = %132, %129
  br label %136

136:                                              ; preds = %135, %122
  %137 = load i32, i32* @OS_LOG_DEFAULT, align 4
  %138 = load i64, i64* %13, align 8
  %139 = load i64, i64* %15, align 8
  %140 = getelementptr inbounds [128 x i8], [128 x i8]* %21, i64 0, i64 0
  %141 = load i32, i32* %10, align 4
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 2
  %144 = load i8*, i8** %143, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %136
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 2
  %151 = load i8*, i8** %150, align 8
  br label %153

152:                                              ; preds = %136
  br label %153

153:                                              ; preds = %152, %148
  %154 = phi i8* [ %151, %148 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %152 ]
  %155 = load i32*, i32** @memorystatus_kill_cause_name, align 8
  %156 = load i64, i64* %7, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i64, i64* %11, align 8
  %160 = load i64, i64* @memorystatus_available_pages, align 8
  %161 = call i32 (i32, i8*, i64, i64, i8*, i32, ...) @os_log_with_startup_serial(i32 %137, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.5, i64 0, i64 0), i64 %138, i64 %139, i8* %140, i32 %141, i8* %154, i32 %158, i64 %159, i64 %160)
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @os_reason_ref(i32 %162)
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %165 = load i64, i64* %7, align 8
  %166 = load i32, i32* %8, align 4
  %167 = call i32 @memorystatus_do_kill(%struct.TYPE_6__* %164, i64 %165, i32 %166)
  store i32 %167, i32* %16, align 4
  %168 = load i32, i32* %16, align 4
  %169 = load i32*, i32** %9, align 8
  store i32 %168, i32* %169, align 4
  %170 = load i32, i32* %16, align 4
  store i32 %170, i32* %5, align 4
  br label %171

171:                                              ; preds = %153, %93
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local i32 @networking_memstatus_callout(%struct.TYPE_6__*, i64) #1

declare dso_local i64 @vm_purgeable_purge_task_owned(i32) #1

declare dso_local i64 @get_task_phys_footprint(i32) #1

declare dso_local i64 @memorystatus_avail_pages_below_pressure(...) #1

declare dso_local i32 @os_log_with_startup_serial(i32, i8*, i64, i64, i8*, i32, ...) #1

declare dso_local i64 @mach_absolute_time(...) #1

declare dso_local i32 @absolutetime_to_microtime(i64, i64*, i32*) #1

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local i32 @memorystatus_update_jetsam_snapshot_entry_locked(%struct.TYPE_6__*, i64, i64) #1

declare dso_local i32 @proc_list_unlock(...) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @os_reason_ref(i32) #1

declare dso_local i32 @memorystatus_do_kill(%struct.TYPE_6__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
