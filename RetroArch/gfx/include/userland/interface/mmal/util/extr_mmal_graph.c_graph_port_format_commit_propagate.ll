; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_graph_port_format_commit_propagate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_graph_port_format_commit_propagate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_14__** }
%struct.TYPE_14__ = type { %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i32, i64, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__** }

@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"graph: %p, port %s(%p)\00", align 1
@MMAL_PORT_TYPE_OUTPUT = common dso_local global i64 0, align 8
@MMAL_PORT_TYPE_CLOCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_16__*, %struct.TYPE_15__*)* @graph_port_format_commit_propagate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @graph_port_format_commit_propagate(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 4
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %6, align 8
  %15 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.TYPE_16__* %16, i32 %19, %struct.TYPE_15__* %20)
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MMAL_PORT_TYPE_OUTPUT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %2
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MMAL_PORT_TYPE_CLOCK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27, %2
  %34 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %34, i64* %3, align 8
  br label %159

35:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %154, %35
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ult i32 %37, %40
  br i1 %41, label %42, label %157

42:                                               ; preds = %36
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %45, i64 %47
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %154

54:                                               ; preds = %42
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %81, %54
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ult i32 %56, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %55
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %64, i64 %66
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %73, i64 %75
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %76, align 8
  %78 = icmp eq %struct.TYPE_15__* %70, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %61
  br label %84

80:                                               ; preds = %61
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %9, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %55

84:                                               ; preds = %79, %55
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %154

91:                                               ; preds = %84
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %96, i64 %98
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %99, align 8
  %101 = call i32 @graph_component_topology_ports_linked(%struct.TYPE_16__* %92, %struct.TYPE_15__* %93, %struct.TYPE_15__* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %91
  br label %154

104:                                              ; preds = %91
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %107, i64 %109
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %112, align 8
  store %struct.TYPE_15__* %113, %struct.TYPE_15__** %10, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %116, i64 %118
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %121, align 8
  store %struct.TYPE_15__* %122, %struct.TYPE_15__** %11, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i64 @mmal_format_full_copy(i32 %125, i32 %128)
  store i64 %129, i64* %7, align 8
  %130 = load i64, i64* %7, align 8
  %131 = load i64, i64* @MMAL_SUCCESS, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %104
  br label %157

134:                                              ; preds = %104
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %136 = call i64 @mmal_port_format_commit(%struct.TYPE_15__* %135)
  store i64 %136, i64* %7, align 8
  %137 = load i64, i64* %7, align 8
  %138 = load i64, i64* @MMAL_SUCCESS, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  br label %157

141:                                              ; preds = %134
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %143 = call i32 @mmal_log_dump_port(%struct.TYPE_15__* %142)
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %145 = call i32 @mmal_log_dump_port(%struct.TYPE_15__* %144)
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %148 = call i64 @graph_port_format_commit_propagate(%struct.TYPE_16__* %146, %struct.TYPE_15__* %147)
  store i64 %148, i64* %7, align 8
  %149 = load i64, i64* %7, align 8
  %150 = load i64, i64* @MMAL_SUCCESS, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %141
  br label %157

153:                                              ; preds = %141
  br label %154

154:                                              ; preds = %153, %103, %90, %53
  %155 = load i32, i32* %8, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %8, align 4
  br label %36

157:                                              ; preds = %152, %140, %133, %36
  %158 = load i64, i64* %7, align 8
  store i64 %158, i64* %3, align 8
  br label %159

159:                                              ; preds = %157, %33
  %160 = load i64, i64* %3, align 8
  ret i64 %160
}

declare dso_local i32 @LOG_TRACE(i8*, %struct.TYPE_16__*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @graph_component_topology_ports_linked(%struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i64 @mmal_format_full_copy(i32, i32) #1

declare dso_local i64 @mmal_port_format_commit(%struct.TYPE_15__*) #1

declare dso_local i32 @mmal_log_dump_port(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
