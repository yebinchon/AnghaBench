; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/test/examples/extr_example_graph.c_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/test/examples/extr_example_graph.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"invalid arguments\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to create graph\00", align 1
@MMAL_COMPONENT_DEFAULT_CONTAINER_READER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"failed to create reader\00", align 1
@MMAL_COMPONENT_DEFAULT_VIDEO_DECODER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to create decoder\00", align 1
@MMAL_COMPONENT_DEFAULT_VIDEO_RENDERER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"failed to create renderer\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"failed to set uri\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"failed to connect reader to decoder\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"failed to connect decoder to renderer\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"start playback\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"failed to enable graph\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"stop playback\0A\00", align 1
@MMAL_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %7, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %10, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %114

16:                                               ; preds = %2
  %17 = call i32 (...) @bcm_host_init()
  %18 = call i64 @mmal_graph_create(i32** %7, i32 0)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @CHECK_STATUS(i64 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* @MMAL_COMPONENT_DEFAULT_CONTAINER_READER, align 4
  %23 = call i64 @mmal_graph_new_component(i32* %21, i32 %22, %struct.TYPE_4__** %8)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @CHECK_STATUS(i64 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* @MMAL_COMPONENT_DEFAULT_VIDEO_DECODER, align 4
  %28 = call i64 @mmal_graph_new_component(i32* %26, i32 %27, %struct.TYPE_4__** %9)
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @CHECK_STATUS(i64 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* @MMAL_COMPONENT_DEFAULT_VIDEO_RENDERER, align 4
  %33 = call i64 @mmal_graph_new_component(i32* %31, i32 %32, %struct.TYPE_4__** %10)
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @CHECK_STATUS(i64 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @mmal_util_port_set_uri(i32 %38, i8* %41)
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @CHECK_STATUS(i64 %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @mmal_graph_new_connection(i32* %45, i32 %50, i32 %55, i32 0, i32* null)
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @CHECK_STATUS(i64 %57, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %59 = load i32*, i32** %7, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @mmal_graph_new_connection(i32* %59, i32 %64, i32 %69, i32 0, i32* null)
  store i64 %70, i64* %6, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @CHECK_STATUS(i64 %71, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %73 = load i32, i32* @stderr, align 4
  %74 = call i32 @fprintf(i32 %73, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %75 = load i32*, i32** %7, align 8
  %76 = call i64 @mmal_graph_enable(i32* %75, i32* null, i32* null)
  store i64 %76, i64* %6, align 8
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @CHECK_STATUS(i64 %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %79 = call i32 @sleep(i32 5)
  %80 = load i32, i32* @stderr, align 4
  %81 = call i32 @fprintf(i32 %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @mmal_graph_disable(i32* %82)
  br label %84

84:                                               ; preds = %16
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %86 = icmp ne %struct.TYPE_4__* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %89 = call i32 @mmal_component_release(%struct.TYPE_4__* %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %92 = icmp ne %struct.TYPE_4__* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %95 = call i32 @mmal_component_release(%struct.TYPE_4__* %94)
  br label %96

96:                                               ; preds = %93, %90
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %98 = icmp ne %struct.TYPE_4__* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %101 = call i32 @mmal_component_release(%struct.TYPE_4__* %100)
  br label %102

102:                                              ; preds = %99, %96
  %103 = load i32*, i32** %7, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32*, i32** %7, align 8
  %107 = call i32 @mmal_graph_destroy(i32* %106)
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i64, i64* %6, align 8
  %110 = load i64, i64* @MMAL_SUCCESS, align 8
  %111 = icmp eq i64 %109, %110
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i32 0, i32 -1
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %108, %13
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @bcm_host_init(...) #1

declare dso_local i64 @mmal_graph_create(i32**, i32) #1

declare dso_local i32 @CHECK_STATUS(i64, i8*) #1

declare dso_local i64 @mmal_graph_new_component(i32*, i32, %struct.TYPE_4__**) #1

declare dso_local i64 @mmal_util_port_set_uri(i32, i8*) #1

declare dso_local i64 @mmal_graph_new_connection(i32*, i32, i32, i32, i32*) #1

declare dso_local i64 @mmal_graph_enable(i32*, i32*, i32*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @mmal_graph_disable(i32*) #1

declare dso_local i32 @mmal_component_release(%struct.TYPE_4__*) #1

declare dso_local i32 @mmal_graph_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
