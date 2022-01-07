; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/extr_mach_timebase_info.c_mach_timebase_info.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/extr_mach_timebase_info.c_mach_timebase_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }

@mach_timebase_info.cached_info = internal global %struct.TYPE_6__ zeroinitializer, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mach_timebase_info(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mach_timebase_info.cached_info, i32 0, i32 0), align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mach_timebase_info.cached_info, i32 0, i32 1), align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %7, %1
  %11 = call i64 @mach_timebase_info_trap(%struct.TYPE_6__* @mach_timebase_info.cached_info)
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @KERN_SUCCESS, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i64, i64* %4, align 8
  store i64 %16, i64* %2, align 8
  br label %26

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17, %7
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mach_timebase_info.cached_info, i32 0, i32 0), align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mach_timebase_info.cached_info, i32 0, i32 1), align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %25, i64* %2, align 8
  br label %26

26:                                               ; preds = %18, %15
  %27 = load i64, i64* %2, align 8
  ret i64 %27
}

declare dso_local i64 @mach_timebase_info_trap(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
