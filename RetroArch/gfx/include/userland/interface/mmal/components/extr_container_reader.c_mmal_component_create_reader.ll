; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_container_reader.c_mmal_component_create_reader.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_container_reader.c_mmal_component_create_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_18__**, %struct.TYPE_12__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_17__*)*, i32* }

@MMAL_ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"mmal module\00", align 1
@MMAL_PORT_TYPE_OUTPUT = common dso_local global i32 0, align 4
@container_port_enable = common dso_local global i32 0, align 4
@container_port_disable = common dso_local global i32 0, align 4
@container_port_flush = common dso_local global i32 0, align 4
@container_port_send = common dso_local global i32 0, align 4
@reader_parameter_set = common dso_local global i32 0, align 4
@reader_do_processing = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.TYPE_17__*)* @mmal_component_create_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mmal_component_create_reader(i8* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %10 = load i64, i64* @MMAL_ENOMEM, align 8
  store i64 %10, i64* %9, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @MMAL_PARAM_UNUSED(i8* %11)
  %13 = call i32* @vcos_malloc(i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %6, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  store i32* %13, i32** %17, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i64, i64* @MMAL_ENOMEM, align 8
  store i64 %21, i64* %3, align 8
  br label %146

22:                                               ; preds = %2
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @memset(i32* %23, i32 0, i32 4)
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  store i32 (%struct.TYPE_17__*)* @container_component_destroy, i32 (%struct.TYPE_17__*)** %28, align 8
  store i32 3, i32* %7, align 4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @MMAL_PORT_TYPE_OUTPUT, align 4
  %32 = call %struct.TYPE_18__** @mmal_ports_alloc(%struct.TYPE_17__* %29, i32 %30, i32 %31, i32 4)
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 2
  store %struct.TYPE_18__** %32, %struct.TYPE_18__*** %34, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %36, align 8
  %38 = icmp ne %struct.TYPE_18__** %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %22
  br label %142

40:                                               ; preds = %22
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %122, %40
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %125

48:                                               ; preds = %44
  %49 = load i32, i32* @container_port_enable, align 4
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %52, i64 %54
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 4
  store i32 %49, i32* %59, align 4
  %60 = load i32, i32* @container_port_disable, align 4
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %63, i64 %65
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 3
  store i32 %60, i32* %70, align 8
  %71 = load i32, i32* @container_port_flush, align 4
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %74, i64 %76
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 2
  store i32 %71, i32* %81, align 4
  %82 = load i32, i32* @container_port_send, align 4
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %85, i64 %87
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  store i32 %82, i32* %92, align 8
  %93 = call i32 (...) @mmal_queue_create()
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %96, i64 %98
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  store i32 %93, i32* %105, align 4
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %108, i64 %110
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %48
  br label %142

121:                                              ; preds = %48
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %8, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %44

125:                                              ; preds = %44
  %126 = load i32, i32* @reader_parameter_set, align 4
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  store i32 %126, i32* %132, align 4
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %134 = load i32, i32* @reader_do_processing, align 4
  %135 = call i64 @mmal_component_action_register(%struct.TYPE_17__* %133, i32 %134)
  store i64 %135, i64* %9, align 8
  %136 = load i64, i64* %9, align 8
  %137 = load i64, i64* @MMAL_SUCCESS, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %125
  br label %142

140:                                              ; preds = %125
  %141 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %141, i64* %3, align 8
  br label %146

142:                                              ; preds = %139, %120, %39
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %144 = call i32 @container_component_destroy(%struct.TYPE_17__* %143)
  %145 = load i64, i64* %9, align 8
  store i64 %145, i64* %3, align 8
  br label %146

146:                                              ; preds = %142, %140, %20
  %147 = load i64, i64* %3, align 8
  ret i64 %147
}

declare dso_local i32 @MMAL_PARAM_UNUSED(i8*) #1

declare dso_local i32* @vcos_malloc(i32, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @container_component_destroy(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_18__** @mmal_ports_alloc(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @mmal_queue_create(...) #1

declare dso_local i64 @mmal_component_action_register(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
