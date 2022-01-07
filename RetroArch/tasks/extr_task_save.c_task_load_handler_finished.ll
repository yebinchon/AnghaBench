; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_save.c_task_load_handler_finished.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_save.c_task_load_handler_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__* }

@.str = private unnamed_addr constant [14 x i8] c"Task canceled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*)* @task_load_handler_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_load_handler_finished(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store i32* null, i32** %5, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @task_set_finished(i32* %6, i32 1)
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = call i32 @intfstream_close(%struct.TYPE_6__* %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = call i32 @free(%struct.TYPE_6__* %19)
  br label %21

21:                                               ; preds = %12, %2
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @task_get_error(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  %26 = load i32*, i32** %3, align 8
  %27 = call i64 @task_get_cancelled(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @strdup(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %32 = call i32 @task_set_error(i32* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %25, %21
  %34 = call i64 @calloc(i32 1, i32 4)
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %5, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %48

39:                                               ; preds = %33
  %40 = load i32*, i32** %5, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = call i32 @memcpy(i32* %40, %struct.TYPE_6__* %41, i32 4)
  %43 = load i32*, i32** %3, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @task_set_data(i32* %43, i32* %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = call i32 @free(%struct.TYPE_6__* %46)
  br label %48

48:                                               ; preds = %39, %38
  ret void
}

declare dso_local i32 @task_set_finished(i32*, i32) #1

declare dso_local i32 @intfstream_close(%struct.TYPE_6__*) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

declare dso_local i32 @task_get_error(i32*) #1

declare dso_local i64 @task_get_cancelled(i32*) #1

declare dso_local i32 @task_set_error(i32*, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @task_set_data(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
