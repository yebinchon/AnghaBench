; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sched_prim.c_sched_vm_group_maintenance.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sched_prim.c_sched_vm_group_maintenance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i64 }

@sched_tick_interval = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@PROCESSOR_NULL = common dso_local global i64 0, align 8
@sched_vm_group_list_lock = common dso_local global i32 0, align 4
@sched_vm_group_thread_count = common dso_local global i32 0, align 4
@sched_vm_group_thread_list = common dso_local global %struct.TYPE_9__** null, align 8
@THREAD_NULL = common dso_local global %struct.TYPE_9__* null, align 8
@TH_RUN = common dso_local global i32 0, align 4
@TH_WAIT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@sched_vm_group_temporarily_unbound = common dso_local global i8* null, align 8
@master_processor = common dso_local global i64 0, align 8
@SCHED_PREEMPT = common dso_local global i32 0, align 4
@SCHED_TAILQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sched_vm_group_maintenance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sched_vm_group_maintenance() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i8*, align 8
  %12 = call i64 (...) @mach_absolute_time()
  store i64 %12, i64* %1, align 8
  %13 = load i64, i64* %1, align 8
  %14 = load i64, i64* @sched_tick_interval, align 8
  %15 = sub nsw i64 %13, %14
  store i64 %15, i64* %2, align 8
  %16 = load i8*, i8** @FALSE, align 8
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** @FALSE, align 8
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** @FALSE, align 8
  store i8* %18, i8** %7, align 8
  %19 = load i64, i64* @PROCESSOR_NULL, align 8
  store i64 %19, i64* %8, align 8
  %20 = call i32 @simple_lock(i32* @sched_vm_group_list_lock)
  %21 = call i32 (...) @splsched()
  store i32 %21, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %82, %0
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @sched_vm_group_thread_count, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %85

26:                                               ; preds = %22
  %27 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sched_vm_group_thread_list, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %27, i64 %29
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %9, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** @THREAD_NULL, align 8
  %34 = icmp ne %struct.TYPE_9__* %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %38 = call i32 @thread_lock(%struct.TYPE_9__* %37)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @TH_RUN, align 4
  %43 = load i32, i32* @TH_WAIT, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = load i32, i32* @TH_RUN, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %72

48:                                               ; preds = %26
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PROCESSOR_NULL, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %2, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i8*, i8** @TRUE, align 8
  store i8* %61, i8** %5, align 8
  br label %71

62:                                               ; preds = %54, %48
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PROCESSOR_NULL, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i8*, i8** @TRUE, align 8
  store i8* %69, i8** %6, align 8
  br label %70

70:                                               ; preds = %68, %62
  br label %71

71:                                               ; preds = %70, %60
  br label %72

72:                                               ; preds = %71, %26
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %74 = call i32 @thread_unlock(%struct.TYPE_9__* %73)
  %75 = load i8*, i8** %5, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i8*, i8** %6, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  br label %85

81:                                               ; preds = %77, %72
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %3, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %3, align 4
  br label %22

85:                                               ; preds = %80, %22
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @splx(i32 %86)
  %88 = load i8*, i8** @sched_vm_group_temporarily_unbound, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load i8*, i8** %5, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = load i8*, i8** @TRUE, align 8
  store i8* %94, i8** %7, align 8
  %95 = load i64, i64* @master_processor, align 8
  store i64 %95, i64* %8, align 8
  %96 = load i8*, i8** @FALSE, align 8
  store i8* %96, i8** @sched_vm_group_temporarily_unbound, align 8
  br label %97

97:                                               ; preds = %93, %90
  br label %109

98:                                               ; preds = %85
  %99 = load i8*, i8** %5, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load i8*, i8** %6, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %108, label %104

104:                                              ; preds = %101
  %105 = load i8*, i8** @TRUE, align 8
  store i8* %105, i8** %7, align 8
  %106 = load i64, i64* @PROCESSOR_NULL, align 8
  store i64 %106, i64* %8, align 8
  %107 = load i8*, i8** @TRUE, align 8
  store i8* %107, i8** @sched_vm_group_temporarily_unbound, align 8
  br label %108

108:                                              ; preds = %104, %101, %98
  br label %109

109:                                              ; preds = %108, %97
  %110 = load i8*, i8** %7, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %178

112:                                              ; preds = %109
  %113 = call i32 (...) @splsched()
  store i32 %113, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %172, %112
  %115 = load i32, i32* %3, align 4
  %116 = load i32, i32* @sched_vm_group_thread_count, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %175

118:                                              ; preds = %114
  %119 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sched_vm_group_thread_list, align 8
  %120 = load i32, i32* %3, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %119, i64 %121
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  store %struct.TYPE_9__* %123, %struct.TYPE_9__** %10, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** @THREAD_NULL, align 8
  %126 = icmp ne %struct.TYPE_9__* %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %130 = call i32 @thread_lock(%struct.TYPE_9__* %129)
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %132 = call i8* @thread_run_queue_remove(%struct.TYPE_9__* %131)
  store i8* %132, i8** %11, align 8
  %133 = load i8*, i8** %11, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %145, label %135

135:                                              ; preds = %118
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @TH_RUN, align 4
  %140 = load i32, i32* @TH_WAIT, align 4
  %141 = or i32 %139, %140
  %142 = and i32 %138, %141
  %143 = load i32, i32* @TH_WAIT, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %135, %118
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %147 = load i64, i64* %8, align 8
  %148 = call i32 @thread_bind_internal(%struct.TYPE_9__* %146, i64 %147)
  br label %160

149:                                              ; preds = %135
  %150 = load i64, i64* %8, align 8
  %151 = load i64, i64* @PROCESSOR_NULL, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %155 = load i64, i64* %8, align 8
  %156 = call i32 @thread_bind_internal(%struct.TYPE_9__* %154, i64 %155)
  br label %159

157:                                              ; preds = %149
  %158 = load i8*, i8** @TRUE, align 8
  store i8* %158, i8** @sched_vm_group_temporarily_unbound, align 8
  br label %159

159:                                              ; preds = %157, %153
  br label %160

160:                                              ; preds = %159, %145
  %161 = load i8*, i8** %11, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %169

163:                                              ; preds = %160
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %165 = load i32, i32* @SCHED_PREEMPT, align 4
  %166 = load i32, i32* @SCHED_TAILQ, align 4
  %167 = or i32 %165, %166
  %168 = call i32 @thread_run_queue_reinsert(%struct.TYPE_9__* %164, i32 %167)
  br label %169

169:                                              ; preds = %163, %160
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %171 = call i32 @thread_unlock(%struct.TYPE_9__* %170)
  br label %172

172:                                              ; preds = %169
  %173 = load i32, i32* %3, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %3, align 4
  br label %114

175:                                              ; preds = %114
  %176 = load i32, i32* %4, align 4
  %177 = call i32 @splx(i32 %176)
  br label %178

178:                                              ; preds = %175, %109
  %179 = call i32 @simple_unlock(i32* @sched_vm_group_list_lock)
  ret void
}

declare dso_local i64 @mach_absolute_time(...) #1

declare dso_local i32 @simple_lock(i32*) #1

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @thread_lock(%struct.TYPE_9__*) #1

declare dso_local i32 @thread_unlock(%struct.TYPE_9__*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i8* @thread_run_queue_remove(%struct.TYPE_9__*) #1

declare dso_local i32 @thread_bind_internal(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @thread_run_queue_reinsert(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @simple_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
