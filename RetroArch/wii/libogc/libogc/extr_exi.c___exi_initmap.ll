; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exi.c___exi_initmap.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exi.c___exi_initmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i64, i64, i64, i64, i64, i32*, i32*, i32*, i32* }

@_lckdev_queue = common dso_local global i32 0, align 4
@lckdevs = common dso_local global i32 0, align 4
@EXI_LOCK_DEVS = common dso_local global i32 0, align 4
@EXI_MAX_CHANNELS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @__exi_initmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__exi_initmap(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load i32, i32* @lckdevs, align 4
  %6 = load i32, i32* @EXI_LOCK_DEVS, align 4
  %7 = call i32 @__lwp_queue_initialize(i32* @_lckdev_queue, i32 %5, i32 %6, i32 4)
  store i64 0, i64* %3, align 8
  br label %8

8:                                                ; preds = %41, %1
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @EXI_MAX_CHANNELS, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %44

12:                                               ; preds = %8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %14
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %4, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 11
  store i32* null, i32** %17, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 10
  store i32* null, i32** %19, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 9
  store i32* null, i32** %21, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 8
  store i32* null, i32** %23, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 7
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 6
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 5
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = call i32 @__lwp_queue_init_empty(i32* %39)
  br label %41

41:                                               ; preds = %12
  %42 = load i64, i64* %3, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %3, align 8
  br label %8

44:                                               ; preds = %8
  ret void
}

declare dso_local i32 @__lwp_queue_initialize(i32*, i32, i32, i32) #1

declare dso_local i32 @__lwp_queue_init_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
