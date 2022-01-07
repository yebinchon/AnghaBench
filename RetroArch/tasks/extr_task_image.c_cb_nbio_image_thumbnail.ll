; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_image.c_cb_nbio_image_thumbnail.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_image.c_cb_nbio_image_thumbnail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.nbio_image_handle = type { i64, i32, i32, i32, i32, i8*, i32*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { float }

@IMAGE_STATUS_TRANSFER = common dso_local global i32 0, align 4
@cb_image_thumbnail = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @cb_nbio_image_thumbnail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_nbio_image_thumbnail(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.nbio_image_handle*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca float, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* null, i8** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %7, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.nbio_image_handle*
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %16
  %23 = phi %struct.nbio_image_handle* [ %20, %16 ], [ null, %21 ]
  store %struct.nbio_image_handle* %23, %struct.nbio_image_handle** %8, align 8
  %24 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %8, align 8
  %25 = icmp ne %struct.nbio_image_handle* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %8, align 8
  %28 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32* @image_transfer_new(i32 %29)
  br label %32

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %26
  %33 = phi i32* [ %30, %26 ], [ null, %31 ]
  %34 = bitcast i32* %33 to i8*
  store i8* %34, i8** %9, align 8
  %35 = call %struct.TYPE_7__* (...) @config_get_ptr()
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %10, align 8
  store float 0.000000e+00, float* %11, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  store i32 -1, i32* %3, align 4
  br label %101

39:                                               ; preds = %32
  %40 = load i32, i32* @IMAGE_STATUS_TRANSFER, align 4
  %41 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %8, align 8
  %42 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %8, align 8
  %45 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %44, i32 0, i32 5
  store i8* %43, i8** %45, align 8
  %46 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %8, align 8
  %47 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %46, i32 0, i32 6
  store i32* @cb_image_thumbnail, i32** %47, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @nbio_get_ptr(i32 %50, i64* %5)
  store i8* %51, i8** %6, align 8
  %52 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %8, align 8
  %53 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %52, i32 0, i32 5
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %8, align 8
  %56 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @image_transfer_set_buffer_ptr(i8* %54, i32 %57, i8* %58, i64 %59)
  %61 = load i64, i64* %5, align 8
  %62 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %8, align 8
  %63 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %65 = icmp ne %struct.TYPE_7__* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %39
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load float, float* %69, align 4
  store float %70, float* %11, align 4
  br label %71

71:                                               ; preds = %66, %39
  %72 = load float, float* %11, align 4
  %73 = fcmp ole float %72, 0.000000e+00
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store float 6.000000e+01, float* %11, align 4
  br label %75

75:                                               ; preds = %74, %71
  %76 = load float, float* %11, align 4
  %77 = fpext float %76 to double
  %78 = fdiv double 1.000000e+00, %77
  %79 = fmul double %78, 1.000000e+06
  %80 = fptoui double %79 to i32
  %81 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %8, align 8
  %82 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %8, align 8
  %84 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %83, i32 0, i32 5
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %8, align 8
  %87 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @image_transfer_start(i8* %85, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %75
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %93 = call i32 @task_image_cleanup(%struct.TYPE_8__* %92)
  store i32 -1, i32* %3, align 4
  br label %101

94:                                               ; preds = %75
  %95 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %8, align 8
  %96 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %95, i32 0, i32 2
  store i32 0, i32* %96, align 4
  %97 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %8, align 8
  %98 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %97, i32 0, i32 3
  store i32 0, i32* %98, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %94, %91, %38
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32* @image_transfer_new(i32) #1

declare dso_local %struct.TYPE_7__* @config_get_ptr(...) #1

declare dso_local i8* @nbio_get_ptr(i32, i64*) #1

declare dso_local i32 @image_transfer_set_buffer_ptr(i8*, i32, i8*, i64) #1

declare dso_local i32 @image_transfer_start(i8*, i32) #1

declare dso_local i32 @task_image_cleanup(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
