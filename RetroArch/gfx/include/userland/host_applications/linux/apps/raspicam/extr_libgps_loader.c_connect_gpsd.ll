; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_libgps_loader.c_connect_gpsd.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_libgps_loader.c_connect_gpsd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 (i32, i32, i32*)*, i32, i32 (i32*, i32, i32*)*, i32, i32, i32* }

@WATCH_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @connect_gpsd(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 6
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %40

9:                                                ; preds = %1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %39, label %14

14:                                               ; preds = %9
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i64 (i32, i32, i32*)*, i64 (i32, i32, i32*)** %16, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = call i64 %17(i32 %20, i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %14
  store i32 -1, i32* %2, align 4
  br label %40

29:                                               ; preds = %14
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  %34 = load i32 (i32*, i32, i32*)*, i32 (i32*, i32, i32*)** %33, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* @WATCH_ENABLE, align 4
  %38 = call i32 %34(i32* %36, i32 %37, i32* null)
  br label %39

39:                                               ; preds = %29, %9
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %28, %8
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
