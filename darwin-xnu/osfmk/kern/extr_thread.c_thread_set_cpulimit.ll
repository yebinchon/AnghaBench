; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread.c_thread_set_cpulimit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread.c_thread_set_cpulimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }

@THREAD_CPULIMIT_DISABLE = common dso_local global i32 0, align 4
@LEDGER_NULL = common dso_local global i64 0, align 8
@thread_ledgers = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@LEDGER_LIMIT_INFINITY = common dso_local global i32 0, align 4
@LEDGER_ACTION_IGNORE = common dso_local global i32 0, align 4
@TH_OPT_PROC_CPULIMIT = common dso_local global i32 0, align 4
@TH_OPT_PRVT_CPULIMIT = common dso_local global i32 0, align 4
@MINIMUM_CPULIMIT_INTERVAL_MS = common dso_local global i32 0, align 4
@NSEC_PER_MSEC = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@thread_ledger_template = common dso_local global i32 0, align 4
@LEDGER_CREATE_INACTIVE_ENTRIES = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@cpumon_ustackshots_trigger_pct = common dso_local global i32 0, align 4
@THREAD_CPULIMIT_EXCEPTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"CPU usage monitor activated, but blocking thread limit exists\00", align 1
@LEDGER_ACTION_BLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread_set_cpulimit(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = call %struct.TYPE_4__* (...) @current_thread()
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sle i32 %13, 100
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @THREAD_CPULIMIT_DISABLE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LEDGER_NULL, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %20
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @thread_ledgers, i32 0, i32 0), align 4
  %32 = load i32, i32* @LEDGER_LIMIT_INFINITY, align 4
  %33 = call i32 @ledger_set_limit(i64 %30, i32 %31, i32 %32, i32 0)
  %34 = load i64, i64* %9, align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @thread_ledgers, i32 0, i32 0), align 4
  %36 = load i32, i32* @LEDGER_ACTION_IGNORE, align 4
  %37 = call i32 @ledger_set_action(i64 %34, i32 %35, i32 %36)
  %38 = load i32, i32* @TH_OPT_PROC_CPULIMIT, align 4
  %39 = load i32, i32* @TH_OPT_PRVT_CPULIMIT, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %26, %20
  store i32 0, i32* %4, align 4
  br label %131

47:                                               ; preds = %3
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @MINIMUM_CPULIMIT_INTERVAL_MS, align 4
  %50 = load i32, i32* @NSEC_PER_MSEC, align 4
  %51 = mul nsw i32 %49, %50
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %54, i32* %4, align 4
  br label %131

55:                                               ; preds = %47
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* @LEDGER_NULL, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %55
  %63 = load i32, i32* @thread_ledger_template, align 4
  %64 = load i32, i32* @LEDGER_CREATE_INACTIVE_ENTRIES, align 4
  %65 = call i64 @ledger_instantiate(i32 %63, i32 %64)
  store i64 %65, i64* %9, align 8
  %66 = load i64, i64* @LEDGER_NULL, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %69, i32* %4, align 4
  br label %131

70:                                               ; preds = %62
  %71 = load i64, i64* %9, align 8
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @thread_ledgers, i32 0, i32 0), align 4
  %73 = call i32 @ledger_entry_setactive(i64 %71, i32 %72)
  %74 = load i64, i64* %9, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %70, %55
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %6, align 4
  %80 = mul nsw i32 %78, %79
  %81 = sdiv i32 %80, 100
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @nanoseconds_to_absolutetime(i32 %82, i32* %11)
  %84 = load i64, i64* %9, align 8
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @thread_ledgers, i32 0, i32 0), align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @cpumon_ustackshots_trigger_pct, align 4
  %88 = call i32 @ledger_set_limit(i64 %84, i32 %85, i32 %86, i32 %87)
  %89 = load i64, i64* %9, align 8
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @thread_ledgers, i32 0, i32 0), align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @ledger_set_period(i64 %89, i32 %90, i32 %91)
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @THREAD_CPULIMIT_EXCEPTION, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %77
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @TH_OPT_PRVT_CPULIMIT, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = call i32 @panic(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %96
  %106 = load i32, i32* @TH_OPT_PROC_CPULIMIT, align 4
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %130

111:                                              ; preds = %77
  %112 = load i32, i32* @TH_OPT_PROC_CPULIMIT, align 4
  %113 = xor i32 %112, -1
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = and i32 %116, %113
  store i32 %117, i32* %115, align 8
  %118 = load i32, i32* @TH_OPT_PRVT_CPULIMIT, align 4
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  %123 = load i64, i64* %9, align 8
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @thread_ledgers, i32 0, i32 0), align 4
  %125 = call i32 @ledger_disable_callback(i64 %123, i32 %124)
  %126 = load i64, i64* %9, align 8
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @thread_ledgers, i32 0, i32 0), align 4
  %128 = load i32, i32* @LEDGER_ACTION_BLOCK, align 4
  %129 = call i32 @ledger_set_action(i64 %126, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %111, %105
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %130, %68, %53, %46
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local %struct.TYPE_4__* @current_thread(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ledger_set_limit(i64, i32, i32, i32) #1

declare dso_local i32 @ledger_set_action(i64, i32, i32) #1

declare dso_local i64 @ledger_instantiate(i32, i32) #1

declare dso_local i32 @ledger_entry_setactive(i64, i32) #1

declare dso_local i32 @nanoseconds_to_absolutetime(i32, i32*) #1

declare dso_local i32 @ledger_set_period(i64, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @ledger_disable_callback(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
