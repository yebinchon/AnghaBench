; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_decompress.c_task_decompress_handler_target_file.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_decompress.c_task_decompress_handler_target_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@file_decompressed_target_file = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @task_decompress_handler_target_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_decompress_handler_target_file(%struct.TYPE_10__* %0) #0 {
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
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @strlcpy(i32 %14, i32 %17, i32 4)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @file_decompressed_target_file, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = call i32 @file_archive_parse_file_iterate(i32* %20, i32* %3, i32 %23, i32 %26, i32 %27, %struct.TYPE_12__* %30)
  store i32 %31, i32* %4, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = call i32 @file_archive_parse_file_progress(i32* %34)
  %36 = call i32 @task_set_progress(%struct.TYPE_10__* %32, i32 %35)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %38 = call i64 @task_get_cancelled(%struct.TYPE_10__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %1
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %40, %1
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @task_set_error(%struct.TYPE_10__* %44, i32 %47)
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = call i32 @file_archive_parse_file_iterate_stop(i32* %50)
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %54 = call i32 @task_decompress_handler_finished(%struct.TYPE_10__* %52, %struct.TYPE_11__* %53)
  br label %55

55:                                               ; preds = %43, %40
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
