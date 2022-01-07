; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/avi/extr_avi_writer.c_avi_writer_open.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/avi/extr_avi_writer.c_avi_writer_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32*, i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_18__*, i32*, %struct.TYPE_15__, i32, i32 }
%struct.TYPE_15__ = type { i64 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"container\00", align 1
@VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"avi\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"divx\00", align 1
@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@AVI_FRAME_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"RIFF ID\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"fileSize\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"fileType\00", align 1
@avi_writer_close = common dso_local global i32 0, align 4
@avi_writer_write = common dso_local global i32 0, align 4
@avi_writer_control = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"error opening stream\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @avi_writer_open(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call i8* @vc_uri_path_extension(i32 %11)
  store i8* %12, i8** %4, align 8
  %13 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %13, i64* %5, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %6, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @vc_uri_find_query(i32 %18, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %4)
  %20 = load i8*, i8** %4, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %1
  %23 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %23, i64* %2, align 8
  br label %147

24:                                               ; preds = %1
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 @strcasecmp(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i8*, i8** %4, align 8
  %30 = call i64 @strcasecmp(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %33, i64* %2, align 8
  br label %147

34:                                               ; preds = %28, %24
  %35 = call i8* @malloc(i32 32)
  %36 = bitcast i8* %35 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %36, %struct.TYPE_18__** %6, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %38 = icmp ne %struct.TYPE_18__* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %40, i64* %5, align 8
  br label %123

41:                                               ; preds = %34
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %43 = call i32 @memset(%struct.TYPE_18__* %42, i32 0, i32 32)
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 3
  store %struct.TYPE_18__* %44, %struct.TYPE_18__** %48, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 4
  %52 = call i64 @vc_container_writer_extraio_create_null(%struct.TYPE_17__* %49, i32* %51)
  store i64 %52, i64* %5, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %41
  br label %123

57:                                               ; preds = %41
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %59 = call i64 @STREAM_SEEKABLE(%struct.TYPE_17__* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 3
  %65 = call i64 @vc_container_writer_extraio_create_temp(%struct.TYPE_17__* %62, i32* %64)
  store i64 %65, i64* %5, align 8
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %123

70:                                               ; preds = %61
  br label %84

71:                                               ; preds = %57
  %72 = load i32, i32* @AVI_FRAME_BUFFER_SIZE, align 4
  %73 = call i8* @malloc(i32 %72)
  %74 = bitcast i8* %73 to %struct.TYPE_18__*
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  store %struct.TYPE_18__* %74, %struct.TYPE_18__** %76, align 8
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %78, align 8
  %80 = icmp ne %struct.TYPE_18__* %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %71
  %82 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %82, i64* %5, align 8
  br label %123

83:                                               ; preds = %71
  br label %84

84:                                               ; preds = %83, %70
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  store i64 0, i64* %87, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  store i32* %90, i32** %92, align 8
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %94 = call i32 @VC_FOURCC(i8 signext 82, i8 signext 73, i8 signext 70, i8 signext 70)
  %95 = call i32 @WRITE_FOURCC(%struct.TYPE_17__* %93, i32 %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %97 = call i32 @WRITE_U32(%struct.TYPE_17__* %96, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %99 = call i32 @VC_FOURCC(i8 signext 65, i8 signext 86, i8 signext 73, i8 signext 32)
  %100 = call i32 @WRITE_FOURCC(%struct.TYPE_17__* %98, i32 %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %102 = call i64 @STREAM_STATUS(%struct.TYPE_17__* %101)
  store i64 %102, i64* %5, align 8
  %103 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %84
  br label %123

106:                                              ; preds = %84
  %107 = load i32, i32* @avi_writer_close, align 4
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 2
  store i32 %107, i32* %111, align 8
  %112 = load i32, i32* @avi_writer_write, align 4
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 1
  store i32 %112, i32* %116, align 4
  %117 = load i32, i32* @avi_writer_control, align 4
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  store i32 %117, i32* %121, align 8
  %122 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %122, i64* %2, align 8
  br label %147

123:                                              ; preds = %105, %81, %69, %56, %39
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %125 = call i32 @LOG_DEBUG(%struct.TYPE_17__* %124, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 1
  store i64 0, i64* %127, align 8
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  store i32* null, i32** %129, align 8
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %131 = icmp ne %struct.TYPE_18__* %130, null
  br i1 %131, label %132, label %145

132:                                              ; preds = %123
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %134, align 8
  %136 = icmp ne %struct.TYPE_18__* %135, null
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %139, align 8
  %141 = call i32 @free(%struct.TYPE_18__* %140)
  br label %142

142:                                              ; preds = %137, %132
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %144 = call i32 @free(%struct.TYPE_18__* %143)
  br label %145

145:                                              ; preds = %142, %123
  %146 = load i64, i64* %5, align 8
  store i64 %146, i64* %2, align 8
  br label %147

147:                                              ; preds = %145, %106, %32, %22
  %148 = load i64, i64* %2, align 8
  ret i64 %148
}

declare dso_local i8* @vc_uri_path_extension(i32) #1

declare dso_local i32 @vc_uri_find_query(i32, i32, i8*, i8**) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i64 @vc_container_writer_extraio_create_null(%struct.TYPE_17__*, i32*) #1

declare dso_local i64 @STREAM_SEEKABLE(%struct.TYPE_17__*) #1

declare dso_local i64 @vc_container_writer_extraio_create_temp(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @WRITE_FOURCC(%struct.TYPE_17__*, i32, i8*) #1

declare dso_local i32 @VC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @WRITE_U32(%struct.TYPE_17__*, i32, i8*) #1

declare dso_local i64 @STREAM_STATUS(%struct.TYPE_17__*) #1

declare dso_local i32 @LOG_DEBUG(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @free(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
