; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_image.c_cb_image_upload_generic.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_image.c_cb_image_upload_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.nbio_image_handle = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @cb_image_upload_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_image_upload_generic(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca %struct.nbio_image_handle*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %10, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.nbio_image_handle*
  store %struct.nbio_image_handle* %17, %struct.nbio_image_handle** %11, align 8
  %18 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %11, align 8
  %19 = icmp ne %struct.nbio_image_handle* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %46

21:                                               ; preds = %2
  %22 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %11, align 8
  %23 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %26 [
    i32 129, label %25
    i32 128, label %25
  ]

25:                                               ; preds = %21, %21
  store i32 -1, i32* %3, align 4
  br label %46

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %11, align 8
  %29 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %28, i32 0, i32 4
  %30 = call i32 @image_texture_set_color_shifts(i32* %6, i32* %7, i32* %8, i32* %9, i32* %29)
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %11, align 8
  %36 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %35, i32 0, i32 4
  %37 = call i32 @image_texture_color_convert(i32 %31, i32 %32, i32 %33, i32 %34, i32* %36)
  %38 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %11, align 8
  %39 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %11, align 8
  %41 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %40, i32 0, i32 2
  store i32 1, i32* %41, align 4
  %42 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %11, align 8
  %43 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %42, i32 0, i32 3
  store i32 1, i32* %43, align 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %27, %25, %20
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @image_texture_set_color_shifts(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @image_texture_color_convert(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
