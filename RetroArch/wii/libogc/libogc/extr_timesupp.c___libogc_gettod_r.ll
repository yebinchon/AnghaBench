; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_timesupp.c___libogc_gettod_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_timesupp.c___libogc_gettod_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }
%struct.timeval = type { i32, i32 }
%struct.timezone = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__libogc_gettod_r(%struct._reent* %0, %struct.timeval* %1, %struct.timezone* %2) #0 {
  %4 = alloca %struct._reent*, align 8
  %5 = alloca %struct.timeval*, align 8
  %6 = alloca %struct.timezone*, align 8
  store %struct._reent* %0, %struct._reent** %4, align 8
  store %struct.timeval* %1, %struct.timeval** %5, align 8
  store %struct.timezone* %2, %struct.timezone** %6, align 8
  %7 = load %struct.timeval*, %struct.timeval** %5, align 8
  %8 = icmp ne %struct.timeval* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = call i32 @time(i32* null)
  %11 = load %struct.timeval*, %struct.timeval** %5, align 8
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = call i32 (...) @gettick()
  %14 = call i32 @ticks_to_microsecs(i32 %13)
  %15 = srem i32 %14, 1000000
  %16 = load %struct.timeval*, %struct.timeval** %5, align 8
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %18

18:                                               ; preds = %9, %3
  %19 = load %struct.timezone*, %struct.timezone** %6, align 8
  %20 = icmp ne %struct.timezone* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load %struct.timezone*, %struct.timezone** %6, align 8
  %23 = getelementptr inbounds %struct.timezone, %struct.timezone* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.timezone*, %struct.timezone** %6, align 8
  %25 = getelementptr inbounds %struct.timezone, %struct.timezone* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %21, %18
  ret i32 0
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @ticks_to_microsecs(i32) #1

declare dso_local i32 @gettick(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
