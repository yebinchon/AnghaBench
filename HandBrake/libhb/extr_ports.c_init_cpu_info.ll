; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_ports.c_init_cpu_info.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_ports.c_init_cpu_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32*, i8*, i32, i32 }

@hb_cpu_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@HB_CPU_PLATFORM_UNSPECIFIED = common dso_local global i32 0, align 4
@AV_CPU_FLAG_SSE = common dso_local global i32 0, align 4
@HB_CPU_PLATFORM_INTEL_BDW = common dso_local global i32 0, align 4
@HB_CPU_PLATFORM_INTEL_BNL = common dso_local global i32 0, align 4
@HB_CPU_PLATFORM_INTEL_CHT = common dso_local global i32 0, align 4
@HB_CPU_PLATFORM_INTEL_HSW = common dso_local global i32 0, align 4
@HB_CPU_PLATFORM_INTEL_ICL = common dso_local global i32 0, align 4
@HB_CPU_PLATFORM_INTEL_IVB = common dso_local global i32 0, align 4
@HB_CPU_PLATFORM_INTEL_KBL = common dso_local global i32 0, align 4
@HB_CPU_PLATFORM_INTEL_SKL = common dso_local global i32 0, align 4
@HB_CPU_PLATFORM_INTEL_SLM = common dso_local global i32 0, align 4
@HB_CPU_PLATFORM_INTEL_SNB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_cpu_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_cpu_info() #0 {
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hb_cpu_info, i32 0, i32 0), align 8
  %1 = call i32 (...) @init_cpu_count()
  store i32 %1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hb_cpu_info, i32 0, i32 4), align 4
  %2 = load i32, i32* @HB_CPU_PLATFORM_UNSPECIFIED, align 4
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hb_cpu_info, i32 0, i32 3), align 8
  %3 = call i32 (...) @av_get_cpu_flags()
  %4 = load i32, i32* @AV_CPU_FLAG_SSE, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %8

8:                                                ; preds = %7, %0
  ret void
}

declare dso_local i32 @init_cpu_count(...) #1

declare dso_local i32 @av_get_cpu_flags(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
