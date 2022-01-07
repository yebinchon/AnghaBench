; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers.c_vc_container_open_reader_with_io.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers.c_vc_container_open_reader_with_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__*, i32*, i32 }
%struct.TYPE_10__ = type { %struct.VC_CONTAINER_IO_T*, i32, i32, i32 }
%struct.VC_CONTAINER_IO_T = type { i32, i32, i32, i32 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"invalid i/o instance: %p\00", align 1
@VC_CONTAINER_ERROR_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"container\00", align 1
@VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @vc_container_open_reader_with_io(%struct.VC_CONTAINER_IO_T* %0, i8* %1, i64* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.VC_CONTAINER_IO_T*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i8*, align 8
  store %struct.VC_CONTAINER_IO_T* %0, %struct.VC_CONTAINER_IO_T** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %14, i64* %11, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %12, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = call i32 @VC_CONTAINER_PARAM_UNUSED(i8* %15)
  %17 = load i8*, i8** %10, align 8
  %18 = call i32 @VC_CONTAINER_PARAM_UNUSED(i8* %17)
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @VC_CONTAINER_PARAM_UNUSED(i8* %19)
  %21 = load %struct.VC_CONTAINER_IO_T*, %struct.VC_CONTAINER_IO_T** %6, align 8
  %22 = icmp ne %struct.VC_CONTAINER_IO_T* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %5
  %24 = load %struct.VC_CONTAINER_IO_T*, %struct.VC_CONTAINER_IO_T** %6, align 8
  %25 = getelementptr inbounds %struct.VC_CONTAINER_IO_T, %struct.VC_CONTAINER_IO_T* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.VC_CONTAINER_IO_T*, %struct.VC_CONTAINER_IO_T** %6, align 8
  %30 = getelementptr inbounds %struct.VC_CONTAINER_IO_T, %struct.VC_CONTAINER_IO_T* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28, %23, %5
  %34 = load %struct.VC_CONTAINER_IO_T*, %struct.VC_CONTAINER_IO_T** %6, align 8
  %35 = call i32 @LOG_ERROR(i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.VC_CONTAINER_IO_T* %34)
  %36 = load i64, i64* @VC_CONTAINER_ERROR_INVALID_ARGUMENT, align 8
  store i64 %36, i64* %11, align 8
  br label %129

37:                                               ; preds = %28
  %38 = call %struct.TYPE_9__* @malloc(i32 52)
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** %12, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %40 = icmp ne %struct.TYPE_9__* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %42, i64* %11, align 8
  br label %129

43:                                               ; preds = %37
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %45 = call i32 @memset(%struct.TYPE_9__* %44, i32 0, i32 52)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i64 1
  %48 = bitcast %struct.TYPE_9__* %47 to %struct.TYPE_10__*
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store %struct.TYPE_10__* %48, %struct.TYPE_10__** %50, align 8
  %51 = call i32 (...) @vc_container_log_get_default_verbosity()
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 3
  store i32 %51, i32* %55, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i64 1
  %60 = bitcast %struct.TYPE_10__* %59 to i32*
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  store i32* %60, i32** %62, align 8
  %63 = load %struct.VC_CONTAINER_IO_T*, %struct.VC_CONTAINER_IO_T** %6, align 8
  %64 = getelementptr inbounds %struct.VC_CONTAINER_IO_T, %struct.VC_CONTAINER_IO_T* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.VC_CONTAINER_IO_T*, %struct.VC_CONTAINER_IO_T** %6, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  store %struct.VC_CONTAINER_IO_T* %68, %struct.VC_CONTAINER_IO_T** %72, align 8
  %73 = load %struct.VC_CONTAINER_IO_T*, %struct.VC_CONTAINER_IO_T** %6, align 8
  %74 = getelementptr inbounds %struct.VC_CONTAINER_IO_T, %struct.VC_CONTAINER_IO_T* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 2
  store i32 %75, i32* %79, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @vc_uri_path_extension(i32 %84)
  store i8* %85, i8** %13, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @vc_uri_find_query(i32 %90, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %13)
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %93 = load i8*, i8** %13, align 8
  %94 = call i64 @vc_container_load_reader(%struct.TYPE_9__* %92, i8* %93)
  store i64 %94, i64* %11, align 8
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %43
  br label %129

99:                                               ; preds = %43
  %100 = call i32 @VC_FOURCC(i8 zeroext 100, i8 signext 114, i8 signext 109, i8 signext 32)
  %101 = call i32 @VC_FOURCC(i8 zeroext 117, i8 signext 110, i8 signext 107, i8 signext 110)
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %103 = call i32 @vc_container_filter_open(i32 %100, i32 %101, %struct.TYPE_9__* %102, i64* %11)
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  store i32 %103, i32* %107, align 8
  %108 = load i64, i64* %11, align 8
  %109 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %99
  %112 = load i64, i64* %11, align 8
  %113 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %129

116:                                              ; preds = %111
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  store i32* null, i32** %118, align 8
  %119 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %119, i64* %11, align 8
  br label %120

120:                                              ; preds = %116, %99
  br label %121

121:                                              ; preds = %139, %120
  %122 = load i64*, i64** %8, align 8
  %123 = icmp ne i64* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i64, i64* %11, align 8
  %126 = load i64*, i64** %8, align 8
  store i64 %125, i64* %126, align 8
  br label %127

127:                                              ; preds = %124, %121
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  ret %struct.TYPE_9__* %128

129:                                              ; preds = %115, %98, %41, %33
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %131 = icmp ne %struct.TYPE_9__* %130, null
  br i1 %131, label %132, label %139

132:                                              ; preds = %129
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  store %struct.VC_CONTAINER_IO_T* null, %struct.VC_CONTAINER_IO_T** %136, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %138 = call i32 @vc_container_close(%struct.TYPE_9__* %137)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %12, align 8
  br label %139

139:                                              ; preds = %132, %129
  br label %121
}

declare dso_local i32 @VC_CONTAINER_PARAM_UNUSED(i8*) #1

declare dso_local i32 @LOG_ERROR(i32, i8*, %struct.VC_CONTAINER_IO_T*) #1

declare dso_local %struct.TYPE_9__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @vc_container_log_get_default_verbosity(...) #1

declare dso_local i8* @vc_uri_path_extension(i32) #1

declare dso_local i32 @vc_uri_find_query(i32, i32, i8*, i8**) #1

declare dso_local i64 @vc_container_load_reader(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @vc_container_filter_open(i32, i32, %struct.TYPE_9__*, i64*) #1

declare dso_local i32 @VC_FOURCC(i8 zeroext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @vc_container_close(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
