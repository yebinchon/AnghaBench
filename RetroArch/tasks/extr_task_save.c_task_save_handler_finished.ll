; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_save.c_task_save_handler_finished.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_save.c_task_save_handler_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_9__*, i64, %struct.TYPE_9__* }

@.str = private unnamed_addr constant [14 x i8] c"Task canceled\00", align 1
@undo_save_buf = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_9__*)* @task_save_handler_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_save_handler_finished(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %5, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @task_set_finished(i32* %6, i32 1)
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = call i32 @intfstream_close(%struct.TYPE_9__* %10)
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = call i32 @free(%struct.TYPE_9__* %14)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @task_get_error(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %2
  %20 = load i32*, i32** %3, align 8
  %21 = call i64 @task_get_cancelled(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @strdup(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @task_set_error(i32* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %19, %2
  %28 = call i64 @calloc(i32 1, i32 24)
  %29 = inttoptr i64 %28 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %5, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = call i32 @memcpy(%struct.TYPE_9__* %30, %struct.TYPE_9__* %31, i32 24)
  %33 = load i32*, i32** %3, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = call i32 @task_set_data(i32* %33, %struct.TYPE_9__* %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = icmp ne %struct.TYPE_9__* %38, null
  br i1 %39, label %40, label %59

40:                                               ; preds = %27
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @undo_save_buf, i32 0, i32 0), align 8
  %50 = icmp eq %struct.TYPE_9__* %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store %struct.TYPE_9__* null, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @undo_save_buf, i32 0, i32 0), align 8
  br label %52

52:                                               ; preds = %51, %45, %40
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = call i32 @free(%struct.TYPE_9__* %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %58, align 8
  br label %59

59:                                               ; preds = %52, %27
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = call i32 @free(%struct.TYPE_9__* %60)
  ret void
}

declare dso_local i32 @task_set_finished(i32*, i32) #1

declare dso_local i32 @intfstream_close(%struct.TYPE_9__*) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

declare dso_local i32 @task_get_error(i32*) #1

declare dso_local i64 @task_get_cancelled(i32*) #1

declare dso_local i32 @task_set_error(i32*, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_9__*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @task_set_data(i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
