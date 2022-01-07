; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_filters.c_vc_container_filter_open.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_filters.c_vc_container_filter_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32* }

@VC_CONTAINER_ERROR_NOT_FOUND = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @vc_container_filter_open(i32 %0, i32 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64* %3, i64** %8, align 8
  %12 = load i64, i64* @VC_CONTAINER_ERROR_NOT_FOUND, align 8
  store i64 %12, i64* %9, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  store i32* null, i32** %11, align 8
  %13 = call %struct.TYPE_7__* @malloc(i32 20)
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %10, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %17, i64* %9, align 8
  br label %46

18:                                               ; preds = %4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %20 = call i32 @memset(%struct.TYPE_7__* %19, i32 0, i32 20)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i64 1
  %23 = bitcast %struct.TYPE_7__* %22 to i32*
  store i32* %23, i32** %11, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  store i32* %23, i32** %25, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @vc_container_filter_load(%struct.TYPE_7__* %29, i32 %30, i32 %31)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %18
  br label %46

37:                                               ; preds = %18
  br label %38

38:                                               ; preds = %52, %37
  %39 = load i64*, i64** %8, align 8
  %40 = icmp ne i64* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i64, i64* %9, align 8
  %43 = load i64*, i64** %8, align 8
  store i64 %42, i64* %43, align 8
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  ret %struct.TYPE_7__* %45

46:                                               ; preds = %36, %16
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %48 = icmp ne %struct.TYPE_7__* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %51 = call i32 @free(%struct.TYPE_7__* %50)
  br label %52

52:                                               ; preds = %49, %46
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  br label %38
}

declare dso_local %struct.TYPE_7__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @vc_container_filter_load(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
