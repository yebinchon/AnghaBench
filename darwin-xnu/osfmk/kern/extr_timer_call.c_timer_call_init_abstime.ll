; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_timer_call.c_timer_call_init_abstime.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_timer_call.c_timer_call_init_abstime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i64*, i32*, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PAST_DEADLINE_TIMER_ADJUSTMENT_NS = common dso_local global i32 0, align 4
@past_deadline_timer_adjustment = common dso_local global i64 0, align 8
@tcoal_prio_params = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@NUM_LATENCY_QOS_TIERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @timer_call_init_abstime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_call_init_abstime() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = call %struct.TYPE_4__* (...) @timer_call_get_priority_params()
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %3, align 8
  %5 = load i32, i32* @PAST_DEADLINE_TIMER_ADJUSTMENT_NS, align 4
  %6 = call i32 @nanoseconds_to_absolutetime(i32 %5, i64* @past_deadline_timer_adjustment)
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 15
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @nanoseconds_to_absolutetime(i32 %9, i64* %2)
  %11 = load i64, i64* %2, align 8
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tcoal_prio_params, i32 0, i32 15), align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 14
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @nanoseconds_to_absolutetime(i32 %15, i64* %2)
  %17 = load i64, i64* %2, align 8
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tcoal_prio_params, i32 0, i32 14), align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 13
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @nanoseconds_to_absolutetime(i32 %21, i64* %2)
  %23 = load i64, i64* %2, align 8
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tcoal_prio_params, i32 0, i32 13), align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 12
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tcoal_prio_params, i32 0, i32 12), align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 11
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tcoal_prio_params, i32 0, i32 11), align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 10
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tcoal_prio_params, i32 0, i32 10), align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tcoal_prio_params, i32 0, i32 9), align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tcoal_prio_params, i32 0, i32 8), align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @nanoseconds_to_absolutetime(i32 %42, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tcoal_prio_params, i32 0, i32 7))
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @nanoseconds_to_absolutetime(i32 %46, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tcoal_prio_params, i32 0, i32 6))
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @nanoseconds_to_absolutetime(i32 %50, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tcoal_prio_params, i32 0, i32 5))
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @nanoseconds_to_absolutetime(i32 %54, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tcoal_prio_params, i32 0, i32 4))
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @nanoseconds_to_absolutetime(i32 %58, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tcoal_prio_params, i32 0, i32 3))
  store i32 0, i32* %1, align 4
  br label %60

60:                                               ; preds = %99, %0
  %61 = load i32, i32* %1, align 4
  %62 = load i32, i32* @NUM_LATENCY_QOS_TIERS, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %102

64:                                               ; preds = %60
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %1, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tcoal_prio_params, i32 0, i32 2), align 8
  %73 = load i32, i32* %1, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %71, i32* %75, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %1, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tcoal_prio_params, i32 0, i32 1), align 8
  %84 = load i32, i32* %1, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = call i32 @nanoseconds_to_absolutetime(i32 %82, i64* %86)
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %1, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tcoal_prio_params, i32 0, i32 0), align 8
  %96 = load i32, i32* %1, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %94, i32* %98, align 4
  br label %99

99:                                               ; preds = %64
  %100 = load i32, i32* %1, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %1, align 4
  br label %60

102:                                              ; preds = %60
  ret void
}

declare dso_local %struct.TYPE_4__* @timer_call_get_priority_params(...) #1

declare dso_local i32 @nanoseconds_to_absolutetime(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
