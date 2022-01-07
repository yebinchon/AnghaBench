; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sched_multiq.c_sched_multiq_choose_thread.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sched_multiq.c_sched_multiq_choose_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i64 }
%struct.TYPE_19__ = type { i32, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_18__* }

@FALSE = common dso_local global i64 0, align 8
@THREAD_NULL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@KDEBUG_TRACE = common dso_local global i32 0, align 4
@DBG_MACH_SCHED = common dso_local global i32 0, align 4
@MACH_MULTIQ_DEQUEUE = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@MACH_MULTIQ_BOUND = common dso_local global i32 0, align 4
@SCHED_HEADQ = common dso_local global i32 0, align 4
@AST_PREEMPTION = common dso_local global i32 0, align 4
@drain_depth_limit = common dso_local global i64 0, align 8
@drain_ceiling = common dso_local global i64 0, align 8
@drain_band_limit = common dso_local global i64 0, align 8
@MACH_MULTIQ_GROUP = common dso_local global i32 0, align 4
@MACH_MULTIQ_GLOBAL = common dso_local global i32 0, align 4
@deep_drain = common dso_local global i64 0, align 8
@multiq_sanity_check = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @sched_multiq_choose_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sched_multiq_choose_thread(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.TYPE_20__* @multiq_main_entryq(i32 %15)
  store %struct.TYPE_20__* %16, %struct.TYPE_20__** %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.TYPE_19__* @multiq_bound_runq(i32 %17)
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %9, align 8
  %19 = load i64, i64* @FALSE, align 8
  store i64 %19, i64* %10, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @THREAD_NULL, align 4
  store i32 %32, i32* %4, align 4
  br label %190

33:                                               ; preds = %25, %3
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %33
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sge i32 %46, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i64, i64* @TRUE, align 8
  store i64 %52, i64* %10, align 8
  br label %54

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %51
  br label %72

55:                                               ; preds = %38, %33
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i64, i64* @TRUE, align 8
  store i64 %61, i64* %10, align 8
  br label %71

62:                                               ; preds = %55
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @THREAD_NULL, align 4
  store i32 %69, i32* %4, align 4
  br label %190

70:                                               ; preds = %67
  br label %71

71:                                               ; preds = %70, %60
  br label %72

72:                                               ; preds = %71, %54
  %73 = load i64, i64* %10, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %95

75:                                               ; preds = %72
  %76 = load i32, i32* @KDEBUG_TRACE, align 4
  %77 = load i32, i32* @DBG_MACH_SCHED, align 4
  %78 = load i32, i32* @MACH_MULTIQ_DEQUEUE, align 4
  %79 = call i32 @MACHDBG_CODE(i32 %77, i32 %78)
  %80 = load i32, i32* @DBG_FUNC_NONE, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @MACH_MULTIQ_BOUND, align 4
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %76, i32 %81, i32 %82, i64 %86, i64 %90, i32 0, i32 0)
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %93 = load i32, i32* @SCHED_HEADQ, align 4
  %94 = call i32 @run_queue_dequeue(%struct.TYPE_19__* %92, i32 %93)
  store i32 %94, i32* %4, align 4
  br label %190

95:                                               ; preds = %72
  %96 = call %struct.TYPE_16__* (...) @current_thread()
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %97, align 8
  store %struct.TYPE_18__* %98, %struct.TYPE_18__** %11, align 8
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %165

104:                                              ; preds = %95
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @AST_PREEMPTION, align 4
  %107 = and i32 %105, %106
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %165

109:                                              ; preds = %104
  %110 = load i64, i64* @TRUE, align 8
  store i64 %110, i64* %12, align 8
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  store i64 %114, i64* %13, align 8
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %14, align 8
  %119 = load i64, i64* %13, align 8
  %120 = load i64, i64* %14, align 8
  %121 = icmp sgt i64 %119, %120
  br i1 %121, label %122, label %147

122:                                              ; preds = %109
  %123 = load i64, i64* %13, align 8
  %124 = load i64, i64* @drain_depth_limit, align 8
  %125 = icmp sgt i64 %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %122
  %127 = load i64, i64* %14, align 8
  %128 = load i64, i64* @drain_depth_limit, align 8
  %129 = icmp sle i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load i64, i64* @FALSE, align 8
  store i64 %131, i64* %12, align 8
  br label %132

132:                                              ; preds = %130, %126, %122
  %133 = load i64, i64* %13, align 8
  %134 = load i64, i64* @drain_ceiling, align 8
  %135 = icmp sge i64 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = load i64, i64* @FALSE, align 8
  store i64 %137, i64* %12, align 8
  br label %138

138:                                              ; preds = %136, %132
  %139 = load i64, i64* %13, align 8
  %140 = load i64, i64* %14, align 8
  %141 = sub nsw i64 %139, %140
  %142 = load i64, i64* @drain_band_limit, align 8
  %143 = icmp sge i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %138
  %145 = load i64, i64* @FALSE, align 8
  store i64 %145, i64* %12, align 8
  br label %146

146:                                              ; preds = %144, %138
  br label %147

147:                                              ; preds = %146, %109
  %148 = load i64, i64* %12, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %164

150:                                              ; preds = %147
  %151 = load i32, i32* @KDEBUG_TRACE, align 4
  %152 = load i32, i32* @DBG_MACH_SCHED, align 4
  %153 = load i32, i32* @MACH_MULTIQ_DEQUEUE, align 4
  %154 = call i32 @MACHDBG_CODE(i32 %152, i32 %153)
  %155 = load i32, i32* @DBG_FUNC_NONE, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @MACH_MULTIQ_GROUP, align 4
  %158 = load i64, i64* %13, align 8
  %159 = load i64, i64* %14, align 8
  %160 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %151, i32 %156, i32 %157, i64 %158, i64 %159, i32 0, i32 0)
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %163 = call i32 @sched_group_dequeue_thread(%struct.TYPE_20__* %161, %struct.TYPE_18__* %162)
  store i32 %163, i32* %4, align 4
  br label %190

164:                                              ; preds = %147
  br label %165

165:                                              ; preds = %164, %104, %95
  %166 = load i32, i32* @KDEBUG_TRACE, align 4
  %167 = load i32, i32* @DBG_MACH_SCHED, align 4
  %168 = load i32, i32* @MACH_MULTIQ_DEQUEUE, align 4
  %169 = call i32 @MACHDBG_CODE(i32 %167, i32 %168)
  %170 = load i32, i32* @DBG_FUNC_NONE, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* @MACH_MULTIQ_GLOBAL, align 4
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %166, i32 %171, i32 %172, i64 %176, i64 %180, i32 0, i32 0)
  %182 = load i64, i64* @deep_drain, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %165
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %186 = call i32 @sched_global_deep_drain_dequeue_thread(%struct.TYPE_20__* %185)
  store i32 %186, i32* %4, align 4
  br label %190

187:                                              ; preds = %165
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %189 = call i32 @sched_global_dequeue_thread(%struct.TYPE_20__* %188)
  store i32 %189, i32* %4, align 4
  br label %190

190:                                              ; preds = %187, %184, %150, %75, %68, %31
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

declare dso_local %struct.TYPE_20__* @multiq_main_entryq(i32) #1

declare dso_local %struct.TYPE_19__* @multiq_bound_runq(i32) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT_IST(i32, i32, i32, i64, i64, i32, i32) #1

declare dso_local i32 @MACHDBG_CODE(i32, i32) #1

declare dso_local i32 @run_queue_dequeue(%struct.TYPE_19__*, i32) #1

declare dso_local %struct.TYPE_16__* @current_thread(...) #1

declare dso_local i32 @sched_group_dequeue_thread(%struct.TYPE_20__*, %struct.TYPE_18__*) #1

declare dso_local i32 @sched_global_deep_drain_dequeue_thread(%struct.TYPE_20__*) #1

declare dso_local i32 @sched_global_dequeue_thread(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
