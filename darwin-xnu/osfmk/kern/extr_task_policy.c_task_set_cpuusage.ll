; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task_policy.c_task_set_cpuusage.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task_policy.c_task_set_cpuusage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64, i32, i32, i64, i64, i32*, i32, i32 }

@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@TASK_RUSECPU_FLAGS_PERTHR_LIMIT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@PROC_POLICY_CPUMON_DISABLE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@PROC_POLICY_CPUMON_DEFAULTS = common dso_local global i32 0, align 4
@proc_max_cpumon_percentage = common dso_local global i32 0, align 4
@proc_max_cpumon_interval = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.1 = private unnamed_addr constant [85 x i8] c"process %s[%d] denied attempt to escape CPU monitor (missing required entitlement).\0A\00", align 1
@TASK_RUSECPU_FLAGS_PROC_LIMIT = common dso_local global i32 0, align 4
@task_ledgers = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@LEDGER_ACTION_BLOCK = common dso_local global i32 0, align 4
@TASK_RUSECPU_FLAGS_DEADLINE = common dso_local global i32 0, align 4
@task_action_cpuusage = common dso_local global i32 0, align 4
@THREAD_CALL_PRIORITY_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i64, i64, i32, i32)* @task_set_cpuusage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_set_cpuusage(%struct.TYPE_9__* %0, i32 %1, i64 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 8
  %22 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %23 = call i32 @lck_mtx_assert(i32* %21, i32 %22)
  %24 = load i64, i64* %10, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i64, i64* @NSEC_PER_SEC, align 8
  store i64 %27, i64* %10, align 8
  br label %28

28:                                               ; preds = %26, %6
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %156

31:                                               ; preds = %28
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @TASK_RUSECPU_FLAGS_PERTHR_LIMIT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %113

35:                                               ; preds = %31
  %36 = load i64, i64* @FALSE, align 8
  store i64 %36, i64* %16, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @PROC_POLICY_CPUMON_DISABLE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %45 = call i32 @task_disable_cpumon(%struct.TYPE_9__* %44)
  store i32 0, i32* %7, align 4
  br label %217

46:                                               ; preds = %40
  %47 = load i64, i64* @TRUE, align 8
  store i64 %47, i64* %16, align 8
  %48 = load i32, i32* @PROC_POLICY_CPUMON_DEFAULTS, align 4
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %46, %35
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @PROC_POLICY_CPUMON_DEFAULTS, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* @proc_max_cpumon_percentage, align 4
  store i32 %54, i32* %9, align 4
  %55 = load i64, i64* @proc_max_cpumon_interval, align 8
  store i64 %55, i64* %10, align 8
  br label %56

56:                                               ; preds = %53, %49
  %57 = load i32, i32* %9, align 4
  %58 = icmp sgt i32 %57, 100
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 100, i32* %9, align 4
  br label %60

60:                                               ; preds = %59, %56
  %61 = load i64, i64* %10, align 8
  %62 = icmp eq i64 %61, -1
  br i1 %62, label %63, label %77

63:                                               ; preds = %60
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @TASK_RUSECPU_FLAGS_PERTHR_LIMIT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %10, align 8
  br label %76

74:                                               ; preds = %63
  %75 = load i64, i64* @proc_max_cpumon_interval, align 8
  store i64 %75, i64* %10, align 8
  br label %76

76:                                               ; preds = %74, %70
  br label %77

77:                                               ; preds = %76, %60
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @proc_max_cpumon_percentage, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load i32, i32* %13, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i64, i64* @TRUE, align 8
  store i64 %85, i64* %16, align 8
  %86 = load i32, i32* @proc_max_cpumon_percentage, align 4
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %84, %81, %77
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* @proc_max_cpumon_interval, align 8
  %90 = icmp ugt i64 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load i32, i32* %13, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i64, i64* @TRUE, align 8
  store i64 %95, i64* %16, align 8
  %96 = load i64, i64* @proc_max_cpumon_interval, align 8
  store i64 %96, i64* %10, align 8
  br label %97

97:                                               ; preds = %94, %91, %87
  %98 = load i64, i64* %16, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  store i32 0, i32* %17, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %101 = load i8*, i8** %18, align 8
  %102 = load i32, i32* %17, align 4
  %103 = call i32 @printf(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i8* %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %97
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  %108 = load i64, i64* %10, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %112 = call i32 @task_enable_cpumon_locked(%struct.TYPE_9__* %111)
  br label %155

113:                                              ; preds = %31
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* @TASK_RUSECPU_FLAGS_PROC_LIMIT, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %154

117:                                              ; preds = %113
  %118 = load i32, i32* @TASK_RUSECPU_FLAGS_PROC_LIMIT, align 4
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  %126 = load i64, i64* %10, align 8
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 4
  store i64 %126, i64* %128, align 8
  %129 = load i64, i64* %10, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = mul i64 %129, %131
  %133 = udiv i64 %132, 100
  store i64 %133, i64* %15, align 8
  %134 = load i64, i64* %15, align 8
  %135 = call i32 @nanoseconds_to_absolutetime(i64 %134, i64* %14)
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @task_ledgers, i32 0, i32 0), align 4
  %140 = load i64, i64* %14, align 8
  %141 = call i32 @ledger_set_limit(i32 %138, i32 %139, i64 %140, i32 0)
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @task_ledgers, i32 0, i32 0), align 4
  %146 = load i64, i64* %10, align 8
  %147 = call i32 @ledger_set_period(i32 %144, i32 %145, i64 %146)
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @task_ledgers, i32 0, i32 0), align 4
  %152 = load i32, i32* @LEDGER_ACTION_BLOCK, align 4
  %153 = call i32 @ledger_set_action(i32 %150, i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %117, %113
  br label %155

155:                                              ; preds = %154, %104
  br label %156

156:                                              ; preds = %155, %28
  %157 = load i64, i64* %11, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %216

159:                                              ; preds = %156
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* @TASK_RUSECPU_FLAGS_DEADLINE, align 4
  %162 = icmp eq i32 %160, %161
  %163 = zext i1 %162 to i32
  %164 = call i32 @assert(i32 %163)
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 6
  %167 = load i32*, i32** %166, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %169, label %178

169:                                              ; preds = %159
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %171 = call i32 @task_unlock(%struct.TYPE_9__* %170)
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 6
  %174 = load i32*, i32** %173, align 8
  %175 = call i32 @thread_call_cancel_wait(i32* %174)
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %177 = call i32 @task_lock(%struct.TYPE_9__* %176)
  br label %178

178:                                              ; preds = %169, %159
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 6
  %181 = load i32*, i32** %180, align 8
  %182 = icmp eq i32* %181, null
  br i1 %182, label %183, label %191

183:                                              ; preds = %178
  %184 = load i32, i32* @task_action_cpuusage, align 4
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %186 = ptrtoint %struct.TYPE_9__* %185 to i32
  %187 = load i32, i32* @THREAD_CALL_PRIORITY_KERNEL, align 4
  %188 = call i32* @thread_call_allocate_with_priority(i32 %184, i32 %186, i32 %187)
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 6
  store i32* %188, i32** %190, align 8
  br label %191

191:                                              ; preds = %183, %178
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 6
  %194 = load i32*, i32** %193, align 8
  %195 = icmp ne i32* %194, null
  br i1 %195, label %196, label %215

196:                                              ; preds = %191
  store i64 0, i64* %19, align 8
  %197 = load i32, i32* @TASK_RUSECPU_FLAGS_DEADLINE, align 4
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 8
  %202 = load i64, i64* %11, align 8
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 5
  store i64 %202, i64* %204, align 8
  %205 = load i64, i64* %11, align 8
  %206 = call i32 @nanoseconds_to_absolutetime(i64 %205, i64* %14)
  %207 = load i64, i64* %14, align 8
  store i64 %207, i64* %19, align 8
  %208 = load i64, i64* %19, align 8
  %209 = call i32 @clock_absolutetime_interval_to_deadline(i64 %208, i64* %14)
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 6
  %212 = load i32*, i32** %211, align 8
  %213 = load i64, i64* %14, align 8
  %214 = call i32 @thread_call_enter_delayed(i32* %212, i64 %213)
  br label %215

215:                                              ; preds = %196, %191
  br label %216

216:                                              ; preds = %215, %156
  store i32 0, i32* %7, align 4
  br label %217

217:                                              ; preds = %216, %43
  %218 = load i32, i32* %7, align 4
  ret i32 %218
}

declare dso_local i32 @lck_mtx_assert(i32*, i32) #1

declare dso_local i32 @task_disable_cpumon(%struct.TYPE_9__*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @task_enable_cpumon_locked(%struct.TYPE_9__*) #1

declare dso_local i32 @nanoseconds_to_absolutetime(i64, i64*) #1

declare dso_local i32 @ledger_set_limit(i32, i32, i64, i32) #1

declare dso_local i32 @ledger_set_period(i32, i32, i64) #1

declare dso_local i32 @ledger_set_action(i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @task_unlock(%struct.TYPE_9__*) #1

declare dso_local i32 @thread_call_cancel_wait(i32*) #1

declare dso_local i32 @task_lock(%struct.TYPE_9__*) #1

declare dso_local i32* @thread_call_allocate_with_priority(i32, i32, i32) #1

declare dso_local i32 @clock_absolutetime_interval_to_deadline(i64, i64*) #1

declare dso_local i32 @thread_call_enter_delayed(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
