; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_component_wrapper.c_mmal_wrapper_port_disable.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_component_wrapper.c_mmal_wrapper_port_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32, i32, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32**, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%p, %s\00", align 1
@MMAL_PORT_TYPE_INPUT = common dso_local global i64 0, align 8
@MMAL_PORT_TYPE_OUTPUT = common dso_local global i64 0, align 8
@MMAL_EINVAL = common dso_local global i64 0, align 8
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"could not disable port\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"coul dnot release all buffers\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mmal_wrapper_port_disable(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %4, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %5, align 8
  %17 = call i64 (...) @vcos_getmicrosecs()
  store i64 %17, i64* %6, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %18, i32 %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MMAL_PORT_TYPE_INPUT, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %1
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MMAL_PORT_TYPE_OUTPUT, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %35, i64* %2, align 8
  br label %104

36:                                               ; preds = %28, %1
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %42, i64* %2, align 8
  br label %104

43:                                               ; preds = %36
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = call i64 @mmal_port_disable(%struct.TYPE_10__* %44)
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @MMAL_SUCCESS, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i64, i64* %7, align 8
  store i64 %51, i64* %2, align 8
  br label %104

52:                                               ; preds = %43
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MMAL_PORT_TYPE_OUTPUT, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %97

58:                                               ; preds = %52
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %60, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %61, i64 %64
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  store %struct.TYPE_11__* %66, %struct.TYPE_11__** %8, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32**, i32*** %68, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32*, i32** %69, i64 %72
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %9, align 8
  br label %75

75:                                               ; preds = %79, %58
  %76 = load i32*, i32** %9, align 8
  %77 = call i32* @mmal_queue_get(i32* %76)
  store i32* %77, i32** %10, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32*, i32** %10, align 8
  %81 = call i32 @mmal_buffer_header_release(i32* %80)
  br label %75

82:                                               ; preds = %75
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @mmal_queue_length(i32 %85)
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %86, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @vcos_verify(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %82
  %95 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %82
  br label %97

97:                                               ; preds = %96, %52
  %98 = call i64 (...) @vcos_getmicrosecs()
  %99 = load i64, i64* %6, align 8
  %100 = sub nsw i64 %98, %99
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load i64, i64* %7, align 8
  store i64 %103, i64* %2, align 8
  br label %104

104:                                              ; preds = %97, %49, %41, %34
  %105 = load i64, i64* %2, align 8
  ret i64 %105
}

declare dso_local i64 @vcos_getmicrosecs(...) #1

declare dso_local i32 @LOG_TRACE(i8*, %struct.TYPE_8__*, i32) #1

declare dso_local i64 @mmal_port_disable(%struct.TYPE_10__*) #1

declare dso_local i32 @LOG_ERROR(i8*) #1

declare dso_local i32* @mmal_queue_get(i32*) #1

declare dso_local i32 @mmal_buffer_header_release(i32*) #1

declare dso_local i32 @vcos_verify(i32) #1

declare dso_local i64 @mmal_queue_length(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
