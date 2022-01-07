; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_sleep.c_get_time_ms.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_sleep.c_get_time_ms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, float }
%struct.TYPE_5__ = type { float, float }

@tv_stop = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@tv_start = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float ()* @get_time_ms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @get_time_ms() #0 {
  %1 = alloca float, align 4
  %2 = call i32 @gettimeofday(%struct.TYPE_4__* @tv_stop, i32* null)
  %3 = load float, float* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tv_stop, i32 0, i32 0), align 4
  %4 = load float, float* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tv_start, i32 0, i32 0), align 4
  %5 = fsub float %3, %4
  %6 = fmul float %5, 1.000000e+03
  %7 = load float, float* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tv_stop, i32 0, i32 1), align 4
  %8 = load float, float* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tv_start, i32 0, i32 1), align 4
  %9 = fsub float %7, %8
  %10 = fmul float %9, 0x3F50624DE0000000
  %11 = fadd float %6, %10
  store float %11, float* %1, align 4
  %12 = load float, float* %1, align 4
  %13 = call float @fabs(float %12)
  ret float %13
}

declare dso_local i32 @gettimeofday(%struct.TYPE_4__*, i32*) #1

declare dso_local float @fabs(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
