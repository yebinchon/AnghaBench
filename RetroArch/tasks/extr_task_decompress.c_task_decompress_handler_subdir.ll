; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_decompress.c_task_decompress_handler_subdir.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_decompress.c_task_decompress_handler_subdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }

@file_decompressed_subdir = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @task_decompress_handler_subdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_decompress_handler_subdir(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %5, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %14, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strlcpy(i32 %19, i32 %22, i32 4)
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @file_decompressed_subdir, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = call i32 @file_archive_parse_file_iterate(i32* %25, i32* %4, i32 %28, i32 %31, i32 %32, %struct.TYPE_12__* %35)
  store i32 %36, i32* %3, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = call i32 @file_archive_parse_file_progress(i32* %39)
  %41 = call i32 @task_set_progress(%struct.TYPE_10__* %37, i32 %40)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %43 = call i64 @task_get_cancelled(%struct.TYPE_10__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %1
  %46 = load i32, i32* %3, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %45, %1
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @task_set_error(%struct.TYPE_10__* %49, i32 %52)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = call i32 @file_archive_parse_file_iterate_stop(i32* %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %59 = call i32 @task_decompress_handler_finished(%struct.TYPE_10__* %57, %struct.TYPE_11__* %58)
  br label %60

60:                                               ; preds = %48, %45
  ret void
}

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @file_archive_parse_file_iterate(i32*, i32*, i32, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @task_set_progress(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @file_archive_parse_file_progress(i32*) #1

declare dso_local i64 @task_get_cancelled(%struct.TYPE_10__*) #1

declare dso_local i32 @task_set_error(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @file_archive_parse_file_iterate_stop(i32*) #1

declare dso_local i32 @task_decompress_handler_finished(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
