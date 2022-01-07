; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/io/extr_io_pktfile.c_vc_container_io_pktfile_open.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/io/extr_io_pktfile.c_vc_container_io_pktfile_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32* }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@VC_CONTAINER_IO_MODE_WRITE = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@io_pktfile_close = common dso_local global i32 0, align 4
@io_pktfile_read = common dso_local global i32 0, align 4
@io_pktfile_write = common dso_local global i32 0, align 4
@VC_CONTAINER_IO_CAPS_CANT_SEEK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vc_container_io_pktfile_open(%struct.TYPE_7__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %12, i64* %8, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %9, align 8
  store i32* null, i32** %10, align 8
  store i32 1, i32* %11, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @VC_CONTAINER_PARAM_UNUSED(i8* %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i32* @open_file(%struct.TYPE_7__* %15, i64 %16, i64* %8)
  store i32* %17, i32** %10, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %68

22:                                               ; preds = %3
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @VC_CONTAINER_IO_MODE_WRITE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32*, i32** %10, align 8
  %28 = call i64 @write_byte_order(i32* %27)
  store i64 %28, i64* %8, align 8
  br label %32

29:                                               ; preds = %22
  %30 = load i32*, i32** %10, align 8
  %31 = call i64 @read_byte_order(i32* %30, i32* %11)
  store i64 %31, i64* %8, align 8
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %68

37:                                               ; preds = %32
  %38 = call %struct.TYPE_8__* @malloc(i32 16)
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %9, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %40 = icmp ne %struct.TYPE_8__* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %42, i64* %8, align 8
  br label %68

43:                                               ; preds = %37
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %45 = call i32 @memset(%struct.TYPE_8__* %44, i32 0, i32 16)
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 4
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %48, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  store i32* %49, i32** %51, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @io_pktfile_close, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @io_pktfile_read, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @io_pktfile_write, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @VC_CONTAINER_IO_CAPS_CANT_SEEK, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %67, i64* %4, align 8
  br label %76

68:                                               ; preds = %41, %36, %21
  %69 = load i32*, i32** %10, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @fclose(i32* %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i64, i64* %8, align 8
  store i64 %75, i64* %4, align 8
  br label %76

76:                                               ; preds = %74, %43
  %77 = load i64, i64* %4, align 8
  ret i64 %77
}

declare dso_local i32 @VC_CONTAINER_PARAM_UNUSED(i8*) #1

declare dso_local i32* @open_file(%struct.TYPE_7__*, i64, i64*) #1

declare dso_local i64 @write_byte_order(i32*) #1

declare dso_local i64 @read_byte_order(i32*, i32*) #1

declare dso_local %struct.TYPE_8__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
