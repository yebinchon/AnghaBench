; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_image.c_task_image_cleanup.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_image.c_task_image_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32* }
%struct.nbio_image_handle = type { i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @task_image_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_image_cleanup(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.nbio_image_handle*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = bitcast i32* %6 to %struct.nbio_image_handle*
  store %struct.nbio_image_handle* %7, %struct.nbio_image_handle** %3, align 8
  %8 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %3, align 8
  %9 = icmp ne %struct.nbio_image_handle* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %3, align 8
  %12 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %3, align 8
  %15 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @image_transfer_free(i32* %13, i32 %16)
  %18 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %3, align 8
  %19 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %18, i32 0, i32 1
  store i32* null, i32** %19, align 8
  %20 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %3, align 8
  %21 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %10, %1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @string_is_empty(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @free(i32* %31)
  br label %33

33:                                               ; preds = %28, %22
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @free(i32* %41)
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @nbio_free(i32* %46)
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  store i32* null, i32** %49, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  ret void
}

declare dso_local i32 @image_transfer_free(i32*, i32) #1

declare dso_local i32 @string_is_empty(i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @nbio_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
