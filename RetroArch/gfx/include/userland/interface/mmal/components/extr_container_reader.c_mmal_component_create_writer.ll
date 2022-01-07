; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_container_reader.c_mmal_component_create_writer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_container_reader.c_mmal_component_create_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_19__*, %struct.TYPE_22__**, %struct.TYPE_15__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_20__*)*, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }

@MMAL_ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"mmal module\00", align 1
@WRITER_PORTS_NUM = common dso_local global i32 0, align 4
@MMAL_PORT_TYPE_INPUT = common dso_local global i32 0, align 4
@container_port_enable = common dso_local global i32 0, align 4
@container_port_disable = common dso_local global i32 0, align 4
@container_port_flush = common dso_local global i32 0, align 4
@container_port_send = common dso_local global i32 0, align 4
@container_port_set_format = common dso_local global i32 0, align 4
@writer_parameter_set = common dso_local global i32 0, align 4
@writer_do_processing = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.TYPE_20__*)* @mmal_component_create_writer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mmal_component_create_writer(i8* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %9 = load i64, i64* @MMAL_ENOMEM, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @MMAL_PARAM_UNUSED(i8* %10)
  %12 = call %struct.TYPE_21__* @vcos_malloc(i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_21__* %12, %struct.TYPE_21__** %6, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  store %struct.TYPE_21__* %12, %struct.TYPE_21__** %16, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %18 = icmp ne %struct.TYPE_21__* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i64, i64* @MMAL_ENOMEM, align 8
  store i64 %20, i64* %3, align 8
  br label %189

21:                                               ; preds = %2
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %23 = call i32 @memset(%struct.TYPE_21__* %22, i32 0, i32 4)
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  store i32 (%struct.TYPE_20__*)* @container_component_destroy, i32 (%struct.TYPE_20__*)** %29, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %31 = load i32, i32* @WRITER_PORTS_NUM, align 4
  %32 = load i32, i32* @MMAL_PORT_TYPE_INPUT, align 4
  %33 = call %struct.TYPE_22__** @mmal_ports_alloc(%struct.TYPE_20__* %30, i32 %31, i32 %32, i32 4)
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 2
  store %struct.TYPE_22__** %33, %struct.TYPE_22__*** %35, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %37, align 8
  %39 = icmp ne %struct.TYPE_22__** %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %21
  br label %185

41:                                               ; preds = %21
  %42 = load i32, i32* @WRITER_PORTS_NUM, align 4
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %165, %41
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ult i32 %46, %49
  br i1 %50, label %51, label %168

51:                                               ; preds = %45
  %52 = load i32, i32* @container_port_enable, align 4
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %55, i64 %57
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 5
  store i32 %52, i32* %62, align 8
  %63 = load i32, i32* @container_port_disable, align 4
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %66, i64 %68
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 4
  store i32 %63, i32* %73, align 4
  %74 = load i32, i32* @container_port_flush, align 4
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %77, i64 %79
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 3
  store i32 %74, i32* %84, align 8
  %85 = load i32, i32* @container_port_send, align 4
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %88, i64 %90
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 2
  store i32 %85, i32* %95, align 4
  %96 = load i32, i32* @container_port_set_format, align 4
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %99, i64 %101
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 1
  store i32 %96, i32* %106, align 8
  %107 = call i32 (...) @mmal_queue_create()
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %110, i64 %112
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 1
  store i32 %107, i32* %119, align 4
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %122, i64 %124
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %51
  br label %185

135:                                              ; preds = %51
  %136 = call i32 @vc_container_format_create(i32 0)
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %139, i64 %141
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 0
  store i32 %136, i32* %148, align 4
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %150, align 8
  %152 = load i32, i32* %8, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %151, i64 %153
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %135
  br label %185

164:                                              ; preds = %135
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %8, align 4
  %167 = add i32 %166, 1
  store i32 %167, i32* %8, align 4
  br label %45

168:                                              ; preds = %45
  %169 = load i32, i32* @writer_parameter_set, align 4
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 0
  store i32 %169, i32* %175, align 4
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %177 = load i32, i32* @writer_do_processing, align 4
  %178 = call i64 @mmal_component_action_register(%struct.TYPE_20__* %176, i32 %177)
  store i64 %178, i64* %7, align 8
  %179 = load i64, i64* %7, align 8
  %180 = load i64, i64* @MMAL_SUCCESS, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %168
  br label %185

183:                                              ; preds = %168
  %184 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %184, i64* %3, align 8
  br label %189

185:                                              ; preds = %182, %163, %134, %40
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %187 = call i32 @container_component_destroy(%struct.TYPE_20__* %186)
  %188 = load i64, i64* %7, align 8
  store i64 %188, i64* %3, align 8
  br label %189

189:                                              ; preds = %185, %183, %19
  %190 = load i64, i64* %3, align 8
  ret i64 %190
}

declare dso_local i32 @MMAL_PARAM_UNUSED(i8*) #1

declare dso_local %struct.TYPE_21__* @vcos_malloc(i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @container_component_destroy(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_22__** @mmal_ports_alloc(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32 @mmal_queue_create(...) #1

declare dso_local i32 @vc_container_format_create(i32) #1

declare dso_local i64 @mmal_component_action_register(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
