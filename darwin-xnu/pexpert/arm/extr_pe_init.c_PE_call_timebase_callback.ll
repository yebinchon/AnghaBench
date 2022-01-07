; ModuleID = '/home/carl/AnghaBench/darwin-xnu/pexpert/arm/extr_pe_init.c_PE_call_timebase_callback.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/pexpert/arm/extr_pe_init.c_PE_call_timebase_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.timebase_freq_t = type { i32, i32 }

@gPEClockFrequencyInfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PE_call_timebase_callback() #0 {
  %1 = alloca %struct.timebase_freq_t, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 0), align 4
  %3 = getelementptr inbounds %struct.timebase_freq_t, %struct.timebase_freq_t* %1, i32 0, i32 1
  store i32 %2, i32* %3, align 4
  %4 = getelementptr inbounds %struct.timebase_freq_t, %struct.timebase_freq_t* %1, i32 0, i32 0
  store i32 1, i32* %4, align 4
  br i1 true, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @gTimebaseCallback(%struct.timebase_freq_t* %1)
  br label %7

7:                                                ; preds = %5, %0
  ret void
}

declare dso_local i32 @gTimebaseCallback(%struct.timebase_freq_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
