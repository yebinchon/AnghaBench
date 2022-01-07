; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rcv/extr_rcv_reader.c_rcv_reader_seek.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rcv/extr_rcv_reader.c_rcv_reader_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64, i64 }

@VC_CONTAINER_ERROR_FAILED = common dso_local global i64 0, align 8
@VC_CONTAINER_SEEK_FLAG_FORWARD = common dso_local global i32 0, align 4
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i32*, i32, i32)* @rcv_reader_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rcv_reader_seek(%struct.TYPE_8__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i64, i64* @VC_CONTAINER_ERROR_FAILED, align 8
  store i64 %16, i64* %12, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %13, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @VC_CONTAINER_PARAM_UNUSED(i32 %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @VC_CONTAINER_SEEK_FLAG_FORWARD, align 4
  %34 = and i32 %32, %33
  %35 = call i64 @vc_container_index_get(i64 %31, i32 %34, i32* %11, i32* %10, i32* %9)
  store i64 %35, i64* %12, align 8
  br label %36

36:                                               ; preds = %28, %4
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %40
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32*, i32** %6, align 8
  store i32 %48, i32* %49, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i64 @SEEK(%struct.TYPE_8__* %50, i32 %51)
  store i64 %52, i64* %12, align 8
  br label %60

53:                                               ; preds = %40, %36
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @VC_CONTAINER_SEEK_FLAG_FORWARD, align 4
  %58 = and i32 %56, %57
  %59 = call i64 @rcv_seek_nearest_keyframe(%struct.TYPE_8__* %54, i32* %55, i32 %58)
  store i64 %59, i64* %12, align 8
  br label %60

60:                                               ; preds = %53, %43
  %61 = load i64, i64* %12, align 8
  ret i64 %61
}

declare dso_local i32 @VC_CONTAINER_PARAM_UNUSED(i32) #1

declare dso_local i64 @vc_container_index_get(i64, i32, i32*, i32*, i32*) #1

declare dso_local i64 @SEEK(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @rcv_seek_nearest_keyframe(%struct.TYPE_8__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
