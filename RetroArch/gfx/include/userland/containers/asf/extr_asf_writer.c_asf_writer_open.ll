; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/asf/extr_asf_writer.c_asf_writer_open.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/asf/extr_asf_writer.c_asf_writer_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, i64* }

@VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"container\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"asf\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"wmv\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"wma\00", align 1
@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@asf_writer_close = common dso_local global i32 0, align 4
@asf_writer_write = common dso_local global i32 0, align 4
@asf_writer_control = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"asf: error opening stream\00", align 1
@ASF_TRACKS_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @asf_writer_open(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %8 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %8, i64* %4, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call i8* @vc_uri_path_extension(i32 %13)
  store i8* %14, i8** %5, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @vc_uri_find_query(i32 %19, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %5)
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %1
  %24 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %24, i64* %2, align 8
  br label %123

25:                                               ; preds = %1
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @strcasecmp(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load i8*, i8** %5, align 8
  %31 = call i64 @strcasecmp(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @strcasecmp(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %38, i64* %2, align 8
  br label %123

39:                                               ; preds = %33, %29, %25
  %40 = call %struct.TYPE_13__* @malloc(i32 16)
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %6, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %42 = icmp ne %struct.TYPE_13__* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %44, i64* %4, align 8
  br label %83

45:                                               ; preds = %39
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %47 = call i32 @memset(%struct.TYPE_13__* %46, i32 0, i32 16)
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 3
  store %struct.TYPE_13__* %48, %struct.TYPE_13__** %52, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  store i64* %55, i64** %57, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = call i64 @vc_container_writer_extraio_create_null(%struct.TYPE_12__* %58, i32* %60)
  store i64 %61, i64* %4, align 8
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %45
  br label %83

66:                                               ; preds = %45
  %67 = load i32, i32* @asf_writer_close, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  store i32 %67, i32* %71, align 8
  %72 = load i32, i32* @asf_writer_write, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  store i32 %72, i32* %76, align 4
  %77 = load i32, i32* @asf_writer_control, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  store i32 %77, i32* %81, align 8
  %82 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %82, i64* %2, align 8
  br label %123

83:                                               ; preds = %65, %43
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %85 = call i32 @LOG_DEBUG(%struct.TYPE_12__* %84, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %116, %83
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @ASF_TRACKS_MAX, align 4
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %90, label %104

90:                                               ; preds = %86
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = icmp ne i64* %93, null
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br label %104

104:                                              ; preds = %95, %90, %86
  %105 = phi i1 [ false, %90 ], [ false, %86 ], [ %103, %95 ]
  br i1 %105, label %106, label %119

106:                                              ; preds = %104
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @vc_container_free_track(%struct.TYPE_12__* %107, i64 %114)
  br label %116

116:                                              ; preds = %106
  %117 = load i32, i32* %7, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %7, align 4
  br label %86

119:                                              ; preds = %104
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %121 = call i32 @free(%struct.TYPE_13__* %120)
  %122 = load i64, i64* %4, align 8
  store i64 %122, i64* %2, align 8
  br label %123

123:                                              ; preds = %119, %66, %37, %23
  %124 = load i64, i64* %2, align 8
  ret i64 %124
}

declare dso_local i8* @vc_uri_path_extension(i32) #1

declare dso_local i32 @vc_uri_find_query(i32, i32, i8*, i8**) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local %struct.TYPE_13__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @vc_container_writer_extraio_create_null(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @LOG_DEBUG(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @vc_container_free_track(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @free(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
