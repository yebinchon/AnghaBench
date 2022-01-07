; ModuleID = '/home/carl/AnghaBench/TDengine/src/os/windows/src/extr_twintime.c_gettimeofday.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/os/windows/src/extr_twintime.c_gettimeofday.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i32 }
%struct.timezone = type { i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gettimeofday(%struct.timeval* %0, %struct.timezone* %1) #0 {
  %3 = alloca %struct.timeval*, align 8
  %4 = alloca %struct.timezone*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__, align 4
  store %struct.timeval* %0, %struct.timeval** %3, align 8
  store %struct.timezone* %1, %struct.timezone** %4, align 8
  %7 = call i64 @time(i32* null)
  store i64 %7, i64* %5, align 8
  %8 = call i32 @GetLocalTime(%struct.TYPE_3__* %6)
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.timeval*, %struct.timeval** %3, align 8
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %13, 1000
  %15 = load %struct.timeval*, %struct.timeval** %3, align 8
  %16 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  ret i32 0
}

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @GetLocalTime(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
