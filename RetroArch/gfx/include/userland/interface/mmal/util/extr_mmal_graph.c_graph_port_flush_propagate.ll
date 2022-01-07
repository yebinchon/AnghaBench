; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_graph_port_flush_propagate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_graph_port_flush_propagate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_14__** }
%struct.TYPE_14__ = type { %struct.TYPE_15__*, i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_13__** }

@.str = private unnamed_addr constant [23 x i8] c"graph: %p, port %s(%p)\00", align 1
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@MMAL_PORT_TYPE_OUTPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_16__*, %struct.TYPE_15__*)* @graph_port_flush_propagate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @graph_port_flush_propagate(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %6, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %19 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.TYPE_16__* %14, i32 %17, %struct.TYPE_15__* %18)
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = call i64 @mmal_port_flush(%struct.TYPE_15__* %20)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @MMAL_SUCCESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i64, i64* %7, align 8
  store i64 %26, i64* %3, align 8
  br label %178

27:                                               ; preds = %2
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MMAL_PORT_TYPE_OUTPUT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %34, i64* %3, align 8
  br label %178

35:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %173, %35
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ult i32 %37, %40
  br i1 %41, label %42, label %176

42:                                               ; preds = %36
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %45, i64 %47
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MMAL_PORT_TYPE_OUTPUT, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %173

55:                                               ; preds = %42
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %58, i64 %60
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %55
  br label %173

67:                                               ; preds = %55
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %94, %67
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ult i32 %69, %72
  br i1 %73, label %74, label %97

74:                                               ; preds = %68
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %77, i64 %79
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %86, i64 %88
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %89, align 8
  %91 = icmp eq %struct.TYPE_13__* %83, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %74
  br label %97

93:                                               ; preds = %74
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %9, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %68

97:                                               ; preds = %92, %68
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %98, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %173

104:                                              ; preds = %97
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %109, i64 %111
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %112, align 8
  %114 = call i32 @graph_component_topology_ports_linked(%struct.TYPE_16__* %105, %struct.TYPE_15__* %106, %struct.TYPE_13__* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %104
  br label %173

117:                                              ; preds = %104
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %120, i64 %122
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %156

128:                                              ; preds = %117
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %131, i64 %133
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = call i32* @mmal_queue_get(i64 %137)
  store i32* %138, i32** %10, align 8
  br label %139

139:                                              ; preds = %142, %128
  %140 = load i32*, i32** %10, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %155

142:                                              ; preds = %139
  %143 = load i32*, i32** %10, align 8
  %144 = call i32 @mmal_buffer_header_release(i32* %143)
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %147, i64 %149
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = call i32* @mmal_queue_get(i64 %153)
  store i32* %154, i32** %10, align 8
  br label %139

155:                                              ; preds = %139
  br label %156

156:                                              ; preds = %155, %117
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %160, i64 %162
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %165, align 8
  %167 = call i64 @graph_port_flush_propagate(%struct.TYPE_16__* %157, %struct.TYPE_15__* %166)
  store i64 %167, i64* %7, align 8
  %168 = load i64, i64* %7, align 8
  %169 = load i64, i64* @MMAL_SUCCESS, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %156
  br label %176

172:                                              ; preds = %156
  br label %173

173:                                              ; preds = %172, %116, %103, %66, %54
  %174 = load i32, i32* %8, align 4
  %175 = add i32 %174, 1
  store i32 %175, i32* %8, align 4
  br label %36

176:                                              ; preds = %171, %36
  %177 = load i64, i64* %7, align 8
  store i64 %177, i64* %3, align 8
  br label %178

178:                                              ; preds = %176, %33, %25
  %179 = load i64, i64* %3, align 8
  ret i64 %179
}

declare dso_local i32 @LOG_TRACE(i8*, %struct.TYPE_16__*, i32, %struct.TYPE_15__*) #1

declare dso_local i64 @mmal_port_flush(%struct.TYPE_15__*) #1

declare dso_local i32 @graph_component_topology_ports_linked(%struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_13__*) #1

declare dso_local i32* @mmal_queue_get(i64) #1

declare dso_local i32 @mmal_buffer_header_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
