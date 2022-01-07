; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_window.c_pushSelectionToManager.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_window.c_pushSelectionToManager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@_glfw = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@None = common dso_local global i32 0, align 4
@CurrentTime = common dso_local global i32 0, align 4
@isSelectionEvent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @pushSelectionToManager to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pushSelectionToManager(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_15__, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 1), align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 2), align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 0), align 4
  %7 = load i32, i32* @None, align 4
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CurrentTime, align 4
  %13 = call i32 @XConvertSelection(i32 %4, i32 %5, i32 %6, i32 %7, i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %36, %1
  br label %15

15:                                               ; preds = %35, %14
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 1), align 4
  %17 = load i32, i32* @isSelectionEvent, align 4
  %18 = call i64 @XCheckIfEvent(i32 %16, %struct.TYPE_15__* %3, i32 %17, i32* null)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %35 [
    i32 128, label %23
    i32 130, label %25
    i32 129, label %27
  ]

23:                                               ; preds = %20
  %24 = call i32 @handleSelectionRequest(%struct.TYPE_15__* %3)
  br label %35

25:                                               ; preds = %20
  %26 = call i32 @handleSelectionClear(%struct.TYPE_15__* %3)
  br label %35

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 0), align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  ret void

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %20, %34, %25, %23
  br label %15

36:                                               ; preds = %15
  %37 = call i32 @selectDisplayConnection(i32* null)
  br label %14
}

declare dso_local i32 @XConvertSelection(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @XCheckIfEvent(i32, %struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @handleSelectionRequest(%struct.TYPE_15__*) #1

declare dso_local i32 @handleSelectionClear(%struct.TYPE_15__*) #1

declare dso_local i32 @selectDisplayConnection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
