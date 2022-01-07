; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers.c_vc_container_open_writer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers.c_vc_container_open_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i64, i32 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@VC_CONTAINER_IO_MODE_WRITE = common dso_local global i32 0, align 4
@WRITER_SPACE_SAFETY_MARGIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"not enough space available to open a writer\00", align 1
@VC_CONTAINER_ERROR_OUT_OF_RESOURCES = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"container\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @vc_container_open_writer(i8* %0, i64* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %13, i64* %9, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %10, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @VC_CONTAINER_PARAM_UNUSED(i8* %14)
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @VC_CONTAINER_PARAM_UNUSED(i8* %16)
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* @VC_CONTAINER_IO_MODE_WRITE, align 4
  %20 = call %struct.TYPE_14__* @vc_container_io_open(i8* %18, i32 %19, i64* %9)
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %11, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %22 = icmp ne %struct.TYPE_14__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %98

24:                                               ; preds = %4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @WRITER_SPACE_SAFETY_MARGIN, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %37 = call i32 @LOG_DEBUG(%struct.TYPE_12__* %36, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %38 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_RESOURCES, align 8
  store i64 %38, i64* %9, align 8
  br label %98

39:                                               ; preds = %29, %24
  %40 = call %struct.TYPE_12__* @malloc(i32 32)
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %10, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %42 = icmp ne %struct.TYPE_12__* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %44, i64* %9, align 8
  br label %98

45:                                               ; preds = %39
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %47 = call i32 @memset(%struct.TYPE_12__* %46, i32 0, i32 32)
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i64 1
  %50 = bitcast %struct.TYPE_12__* %49 to %struct.TYPE_13__*
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  store %struct.TYPE_13__* %50, %struct.TYPE_13__** %52, align 8
  %53 = call i32 (...) @vc_container_log_get_default_verbosity()
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 2
  store i32 %53, i32* %57, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  store %struct.TYPE_14__* %58, %struct.TYPE_14__** %62, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %11, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i8* @vc_uri_path_extension(i32 %74)
  store i8* %75, i8** %12, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @vc_uri_find_query(i32 %80, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %12)
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = call i64 @vc_container_load_writer(%struct.TYPE_12__* %82, i8* %83)
  store i64 %84, i64* %9, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %45
  br label %98

89:                                               ; preds = %45
  br label %90

90:                                               ; preds = %110, %89
  %91 = load i64*, i64** %6, align 8
  %92 = icmp ne i64* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i64, i64* %9, align 8
  %95 = load i64*, i64** %6, align 8
  store i64 %94, i64* %95, align 8
  br label %96

96:                                               ; preds = %93, %90
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  ret %struct.TYPE_12__* %97

98:                                               ; preds = %88, %43, %35, %23
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %100 = icmp ne %struct.TYPE_14__* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %103 = call i32 @vc_container_io_close(%struct.TYPE_14__* %102)
  br label %104

104:                                              ; preds = %101, %98
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %106 = icmp ne %struct.TYPE_12__* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %109 = call i32 @vc_container_close(%struct.TYPE_12__* %108)
  br label %110

110:                                              ; preds = %107, %104
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %10, align 8
  br label %90
}

declare dso_local i32 @VC_CONTAINER_PARAM_UNUSED(i8*) #1

declare dso_local %struct.TYPE_14__* @vc_container_io_open(i8*, i32, i64*) #1

declare dso_local i32 @LOG_DEBUG(%struct.TYPE_12__*, i8*) #1

declare dso_local %struct.TYPE_12__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @vc_container_log_get_default_verbosity(...) #1

declare dso_local i8* @vc_uri_path_extension(i32) #1

declare dso_local i32 @vc_uri_find_query(i32, i32, i8*, i8**) #1

declare dso_local i64 @vc_container_load_writer(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @vc_container_io_close(%struct.TYPE_14__*) #1

declare dso_local i32 @vc_container_close(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
