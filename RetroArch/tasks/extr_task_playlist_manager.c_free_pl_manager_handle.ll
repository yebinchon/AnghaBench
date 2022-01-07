; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_playlist_manager.c_free_pl_manager_handle.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_playlist_manager.c_free_pl_manager_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, %struct.TYPE_5__*, %struct.TYPE_5__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @free_pl_manager_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_pl_manager_handle(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = icmp ne %struct.TYPE_5__* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %47

6:                                                ; preds = %1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = call i32 @string_is_empty(%struct.TYPE_5__* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %6
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = call i32 @free(%struct.TYPE_5__* %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %18, align 8
  br label %19

19:                                               ; preds = %12, %6
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = call i32 @string_is_empty(%struct.TYPE_5__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = call i32 @free(%struct.TYPE_5__* %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %31, align 8
  br label %32

32:                                               ; preds = %25, %19
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @playlist_free(i32* %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %37, %32
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %46 = call i32 @free(%struct.TYPE_5__* %45)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %47

47:                                               ; preds = %44, %5
  ret void
}

declare dso_local i32 @string_is_empty(%struct.TYPE_5__*) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

declare dso_local i32 @playlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
