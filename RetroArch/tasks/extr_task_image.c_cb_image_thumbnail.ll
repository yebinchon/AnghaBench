; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_image.c_cb_image_thumbnail.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_image.c_cb_image_thumbnail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.nbio_image_handle = type { i32, i32, i32* }

@IMAGE_PROCESS_ERROR = common dso_local global i32 0, align 4
@IMAGE_PROCESS_ERROR_END = common dso_local global i32 0, align 4
@IMAGE_PROCESS_END = common dso_local global i32 0, align 4
@cb_image_upload_generic = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @cb_image_thumbnail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_image_thumbnail(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca %struct.nbio_image_handle*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %8, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.nbio_image_handle*
  store %struct.nbio_image_handle* %16, %struct.nbio_image_handle** %9, align 8
  %17 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %9, align 8
  %18 = icmp ne %struct.nbio_image_handle* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %9, align 8
  %21 = call i32 @task_image_process(%struct.nbio_image_handle* %20, i32* %6, i32* %7)
  br label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @IMAGE_PROCESS_ERROR, align 4
  br label %24

24:                                               ; preds = %22, %19
  %25 = phi i32 [ %21, %19 ], [ %23, %22 ]
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @IMAGE_PROCESS_ERROR, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @IMAGE_PROCESS_ERROR_END, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %24
  store i32 -1, i32* %3, align 4
  br label %49

34:                                               ; preds = %29
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @IMAGE_PROCESS_END, align 4
  %37 = icmp ne i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %9, align 8
  %40 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @IMAGE_PROCESS_END, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %9, align 8
  %46 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %9, align 8
  %48 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %47, i32 0, i32 2
  store i32* @cb_image_upload_generic, i32** %48, align 8
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %34, %33
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @task_image_process(%struct.nbio_image_handle*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
