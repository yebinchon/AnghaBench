; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_spdif.c_mmal_component_create_spdif.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_spdif.c_mmal_component_create_spdif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_18__**, %struct.TYPE_26__**, %struct.TYPE_20__* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, %struct.TYPE_17__*, %struct.TYPE_24__* }
%struct.TYPE_17__ = type { %struct.TYPE_28__*, i8*, i8* }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__*, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_23__ = type { i8* }
%struct.TYPE_26__ = type { i32, i32, i32, i32, %struct.TYPE_25__*, %struct.TYPE_22__* }
%struct.TYPE_25__ = type { i8*, i8* }
%struct.TYPE_22__ = type { %struct.TYPE_21__*, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_21__ = type { i8* }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_19__*)*, i32* }

@MMAL_ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"mmal module\00", align 1
@MMAL_PORT_TYPE_INPUT = common dso_local global i32 0, align 4
@spdif_port_enable = common dso_local global i8* null, align 8
@spdif_port_disable = common dso_local global i8* null, align 8
@spdif_port_flush = common dso_local global i8* null, align 8
@spdif_port_send = common dso_local global i8* null, align 8
@spdif_input_port_format_commit = common dso_local global i32 0, align 4
@MMAL_PORT_TYPE_OUTPUT = common dso_local global i32 0, align 4
@spdif_output_port_format_commit = common dso_local global i32 0, align 4
@spdif_do_processing_loop = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@MMAL_ES_TYPE_AUDIO = common dso_local global i8* null, align 8
@MMAL_ENCODING_AC3 = common dso_local global i8* null, align 8
@INPUT_MIN_BUFFER_SIZE = common dso_local global i32 0, align 4
@INPUT_MIN_BUFFER_NUM = common dso_local global i32 0, align 4
@OUTPUT_MIN_BUFFER_SIZE = common dso_local global i32 0, align 4
@OUTPUT_MIN_BUFFER_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.TYPE_19__*)* @mmal_component_create_spdif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mmal_component_create_spdif(i8* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %8 = load i64, i64* @MMAL_ENOMEM, align 8
  store i64 %8, i64* %7, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @MMAL_PARAM_UNUSED(i8* %9)
  %11 = call i32* @vcos_malloc(i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %6, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 4
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 1
  store i32* %11, i32** %15, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i64, i64* @MMAL_ENOMEM, align 8
  store i64 %19, i64* %3, align 8
  br label %318

20:                                               ; preds = %2
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @memset(i32* %21, i32 0, i32 4)
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  store i32 (%struct.TYPE_19__*)* @spdif_component_destroy, i32 (%struct.TYPE_19__*)** %26, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %28 = load i32, i32* @MMAL_PORT_TYPE_INPUT, align 4
  %29 = call i8* @mmal_ports_alloc(%struct.TYPE_19__* %27, i32 1, i32 %28, i32 4)
  %30 = bitcast i8* %29 to %struct.TYPE_26__**
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 3
  store %struct.TYPE_26__** %30, %struct.TYPE_26__*** %32, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %34, align 8
  %36 = icmp ne %struct.TYPE_26__** %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %20
  br label %314

38:                                               ; preds = %20
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load i8*, i8** @spdif_port_enable, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %44, i64 0
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 5
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 5
  store i8* %41, i8** %49, align 8
  %50 = load i8*, i8** @spdif_port_disable, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %53, i64 0
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 5
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 4
  store i8* %50, i8** %58, align 8
  %59 = load i8*, i8** @spdif_port_flush, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %62, i64 0
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 5
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 3
  store i8* %59, i8** %67, align 8
  %68 = load i8*, i8** @spdif_port_send, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %71, i64 0
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 5
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 2
  store i8* %68, i8** %76, align 8
  %77 = load i32, i32* @spdif_input_port_format_commit, align 4
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %80, i64 0
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 5
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 1
  store i32 %77, i32* %85, align 8
  %86 = call i8* (...) @mmal_queue_create()
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %89, i64 0
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 5
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  store i8* %86, i8** %96, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %99, i64 0
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 5
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %38
  br label %314

110:                                              ; preds = %38
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %112 = load i32, i32* @MMAL_PORT_TYPE_OUTPUT, align 4
  %113 = call i8* @mmal_ports_alloc(%struct.TYPE_19__* %111, i32 1, i32 %112, i32 4)
  %114 = bitcast i8* %113 to %struct.TYPE_18__**
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 2
  store %struct.TYPE_18__** %114, %struct.TYPE_18__*** %116, align 8
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %118, align 8
  %120 = icmp ne %struct.TYPE_18__** %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %110
  br label %314

122:                                              ; preds = %110
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 1
  store i32 1, i32* %124, align 4
  %125 = load i8*, i8** @spdif_port_enable, align 8
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %128, i64 0
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 5
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 5
  store i8* %125, i8** %133, align 8
  %134 = load i8*, i8** @spdif_port_disable, align 8
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %137, i64 0
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 5
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 4
  store i8* %134, i8** %142, align 8
  %143 = load i8*, i8** @spdif_port_flush, align 8
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %146, i64 0
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 5
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 3
  store i8* %143, i8** %151, align 8
  %152 = load i8*, i8** @spdif_port_send, align 8
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %155, i64 0
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 5
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 2
  store i8* %152, i8** %160, align 8
  %161 = load i32, i32* @spdif_output_port_format_commit, align 4
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %164, i64 0
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 5
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 1
  store i32 %161, i32* %169, align 8
  %170 = call i8* (...) @mmal_queue_create()
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %173, i64 0
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 5
  %177 = load %struct.TYPE_24__*, %struct.TYPE_24__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 0
  store i8* %170, i8** %180, align 8
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 2
  %183 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %183, i64 0
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 5
  %187 = load %struct.TYPE_24__*, %struct.TYPE_24__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %194, label %193

193:                                              ; preds = %122
  br label %314

194:                                              ; preds = %122
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %196 = load i32, i32* @spdif_do_processing_loop, align 4
  %197 = call i64 @mmal_component_action_register(%struct.TYPE_19__* %195, i32 %196)
  store i64 %197, i64* %7, align 8
  %198 = load i64, i64* %7, align 8
  %199 = load i64, i64* @MMAL_SUCCESS, align 8
  %200 = icmp ne i64 %198, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %194
  br label %314

202:                                              ; preds = %194
  %203 = load i8*, i8** @MMAL_ES_TYPE_AUDIO, align 8
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 3
  %206 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %206, i64 0
  %208 = load %struct.TYPE_26__*, %struct.TYPE_26__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %208, i32 0, i32 4
  %210 = load %struct.TYPE_25__*, %struct.TYPE_25__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %210, i32 0, i32 1
  store i8* %203, i8** %211, align 8
  %212 = load i8*, i8** @MMAL_ENCODING_AC3, align 8
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 3
  %215 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %215, i64 0
  %217 = load %struct.TYPE_26__*, %struct.TYPE_26__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %217, i32 0, i32 4
  %219 = load %struct.TYPE_25__*, %struct.TYPE_25__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %219, i32 0, i32 0
  store i8* %212, i8** %220, align 8
  %221 = load i32, i32* @INPUT_MIN_BUFFER_SIZE, align 4
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 3
  %224 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %224, i64 0
  %226 = load %struct.TYPE_26__*, %struct.TYPE_26__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %226, i32 0, i32 2
  store i32 %221, i32* %227, align 8
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i32 0, i32 3
  %230 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %230, i64 0
  %232 = load %struct.TYPE_26__*, %struct.TYPE_26__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %232, i32 0, i32 3
  store i32 %221, i32* %233, align 4
  %234 = load i32, i32* @INPUT_MIN_BUFFER_NUM, align 4
  %235 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 3
  %237 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %237, i64 0
  %239 = load %struct.TYPE_26__*, %struct.TYPE_26__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %239, i32 0, i32 0
  store i32 %234, i32* %240, align 8
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %241, i32 0, i32 3
  %243 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %243, i64 0
  %245 = load %struct.TYPE_26__*, %struct.TYPE_26__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %245, i32 0, i32 1
  store i32 %234, i32* %246, align 4
  %247 = load i8*, i8** @MMAL_ES_TYPE_AUDIO, align 8
  %248 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %248, i32 0, i32 2
  %250 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %250, i64 0
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 4
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 2
  store i8* %247, i8** %255, align 8
  %256 = load i8*, i8** @MMAL_ENCODING_AC3, align 8
  %257 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %257, i32 0, i32 2
  %259 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %259, i64 0
  %261 = load %struct.TYPE_18__*, %struct.TYPE_18__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %261, i32 0, i32 4
  %263 = load %struct.TYPE_17__*, %struct.TYPE_17__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %263, i32 0, i32 1
  store i8* %256, i8** %264, align 8
  %265 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %265, i32 0, i32 2
  %267 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %267, i64 0
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i32 0, i32 4
  %271 = load %struct.TYPE_17__*, %struct.TYPE_17__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %271, i32 0, i32 0
  %273 = load %struct.TYPE_28__*, %struct.TYPE_28__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %274, i32 0, i32 0
  store i32 2, i32* %275, align 4
  %276 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %276, i32 0, i32 2
  %278 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %278, i64 0
  %280 = load %struct.TYPE_18__*, %struct.TYPE_18__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %280, i32 0, i32 4
  %282 = load %struct.TYPE_17__*, %struct.TYPE_17__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %282, i32 0, i32 0
  %284 = load %struct.TYPE_28__*, %struct.TYPE_28__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %285, i32 0, i32 1
  store i32 16, i32* %286, align 4
  %287 = load i32, i32* @OUTPUT_MIN_BUFFER_SIZE, align 4
  %288 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %288, i32 0, i32 2
  %290 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %290, i64 0
  %292 = load %struct.TYPE_18__*, %struct.TYPE_18__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %292, i32 0, i32 2
  store i32 %287, i32* %293, align 8
  %294 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %294, i32 0, i32 2
  %296 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %296, i64 0
  %298 = load %struct.TYPE_18__*, %struct.TYPE_18__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %298, i32 0, i32 3
  store i32 %287, i32* %299, align 4
  %300 = load i32, i32* @OUTPUT_MIN_BUFFER_NUM, align 4
  %301 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %301, i32 0, i32 2
  %303 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %303, i64 0
  %305 = load %struct.TYPE_18__*, %struct.TYPE_18__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %305, i32 0, i32 0
  store i32 %300, i32* %306, align 8
  %307 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %307, i32 0, i32 2
  %309 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %309, i64 0
  %311 = load %struct.TYPE_18__*, %struct.TYPE_18__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %311, i32 0, i32 1
  store i32 %300, i32* %312, align 4
  %313 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %313, i64* %3, align 8
  br label %318

314:                                              ; preds = %201, %193, %121, %109, %37
  %315 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %316 = call i32 @spdif_component_destroy(%struct.TYPE_19__* %315)
  %317 = load i64, i64* %7, align 8
  store i64 %317, i64* %3, align 8
  br label %318

318:                                              ; preds = %314, %202, %18
  %319 = load i64, i64* %3, align 8
  ret i64 %319
}

declare dso_local i32 @MMAL_PARAM_UNUSED(i8*) #1

declare dso_local i32* @vcos_malloc(i32, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @spdif_component_destroy(%struct.TYPE_19__*) #1

declare dso_local i8* @mmal_ports_alloc(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i8* @mmal_queue_create(...) #1

declare dso_local i64 @mmal_component_action_register(%struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
