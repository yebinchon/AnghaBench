; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_mir_window.c__glfwDeleteEventQueueMir.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_mir_window.c__glfwDeleteEventQueueMir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }

@entries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwDeleteEventQueueMir(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %6 = icmp ne %struct.TYPE_11__* %5, null
  br i1 %6, label %7, label %32

7:                                                ; preds = %1
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %3, align 8
  br label %12

12:                                               ; preds = %15, %7
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = icmp ne %struct.TYPE_12__* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %4, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %23 = load i32, i32* @entries, align 4
  %24 = call i32 @TAILQ_REMOVE(%struct.TYPE_13__* %21, %struct.TYPE_12__* %22, i32 %23)
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = call i32 @deleteNode(%struct.TYPE_11__* %25, %struct.TYPE_12__* %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %3, align 8
  br label %12

29:                                               ; preds = %12
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %31 = call i32 @free(%struct.TYPE_11__* %30)
  br label %32

32:                                               ; preds = %29, %1
  ret void
}

declare dso_local i32 @TAILQ_REMOVE(%struct.TYPE_13__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @deleteNode(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
