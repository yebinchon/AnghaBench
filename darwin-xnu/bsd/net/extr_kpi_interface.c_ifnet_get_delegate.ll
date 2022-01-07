; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_get_delegate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_get_delegate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }

@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifnet_get_delegate(%struct.TYPE_11__* %0, %struct.TYPE_11__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__**, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__** %1, %struct.TYPE_11__*** %5, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %7 = icmp eq %struct.TYPE_11__* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  %10 = icmp eq %struct.TYPE_11__** %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %8, %2
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %3, align 4
  br label %44

13:                                               ; preds = %8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = call i32 @ifnet_is_attached(%struct.TYPE_11__* %14, i32 1)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %3, align 4
  br label %44

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = call i32 @ifnet_lock_shared(%struct.TYPE_11__* %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = icmp ne %struct.TYPE_11__* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = call i32 @ifnet_reference(%struct.TYPE_11__* %32)
  br label %34

34:                                               ; preds = %28, %20
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %39, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = call i32 @ifnet_lock_done(%struct.TYPE_11__* %40)
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = call i32 @ifnet_decr_iorefcnt(%struct.TYPE_11__* %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %34, %17, %11
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @ifnet_is_attached(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ifnet_lock_shared(%struct.TYPE_11__*) #1

declare dso_local i32 @ifnet_reference(%struct.TYPE_11__*) #1

declare dso_local i32 @ifnet_lock_done(%struct.TYPE_11__*) #1

declare dso_local i32 @ifnet_decr_iorefcnt(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
