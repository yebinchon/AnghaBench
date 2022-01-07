; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/io/extr_io_net.c_vc_container_io_net_open.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/io/extr_io_net.c_vc_container_io_net_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 (%struct.TYPE_5__*)*, i32*, i32 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_URI_NOT_FOUND = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@io_net_read = common dso_local global i32 0, align 4
@io_net_write = common dso_local global i32 0, align 4
@io_net_control = common dso_local global i32 0, align 4
@VC_CONTAINER_IO_CAPS_CANT_SEEK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vc_container_io_net_open(%struct.TYPE_5__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %11, i64* %8, align 8
  store i32* null, i32** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @VC_CONTAINER_PARAM_UNUSED(i8* %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @io_net_recognise_scheme(i32 %16, i32* %10)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i64, i64* @VC_CONTAINER_ERROR_URI_NOT_FOUND, align 8
  store i64 %20, i64* %8, align 8
  br label %58

21:                                               ; preds = %3
  %22 = call i64 @malloc(i32 4)
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %9, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %27, i64* %8, align 8
  br label %58

28:                                               ; preds = %21
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @memset(i32* %29, i32 0, i32 4)
  %31 = load i32*, i32** %9, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 5
  store i32* %31, i32** %33, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i64 @io_net_open_socket(%struct.TYPE_5__* %34, i32 %35, i32 %36)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  br label %58

42:                                               ; preds = %28
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 4
  store i32 (%struct.TYPE_5__*)* @io_net_close, i32 (%struct.TYPE_5__*)** %44, align 8
  %45 = load i32, i32* @io_net_read, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @io_net_write, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @io_net_control, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @VC_CONTAINER_IO_CAPS_CANT_SEEK, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %57, i64* %4, align 8
  br label %62

58:                                               ; preds = %41, %26, %19
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %60 = call i32 @io_net_close(%struct.TYPE_5__* %59)
  %61 = load i64, i64* %8, align 8
  store i64 %61, i64* %4, align 8
  br label %62

62:                                               ; preds = %58, %42
  %63 = load i64, i64* %4, align 8
  ret i64 %63
}

declare dso_local i32 @VC_CONTAINER_PARAM_UNUSED(i8*) #1

declare dso_local i32 @io_net_recognise_scheme(i32, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @io_net_open_socket(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @io_net_close(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
