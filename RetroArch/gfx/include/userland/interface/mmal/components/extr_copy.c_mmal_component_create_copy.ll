; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_copy.c_mmal_component_create_copy.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_copy.c_mmal_component_create_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_19__**, %struct.TYPE_16__**, %struct.TYPE_13__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__*, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__*, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_20__*)*, i32* }

@MMAL_ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"mmal module\00", align 1
@MMAL_PORT_TYPE_INPUT = common dso_local global i32 0, align 4
@copy_port_enable = common dso_local global i8* null, align 8
@copy_port_disable = common dso_local global i8* null, align 8
@copy_port_flush = common dso_local global i8* null, align 8
@copy_port_send = common dso_local global i8* null, align 8
@copy_input_port_format_commit = common dso_local global i32 0, align 4
@MMAL_PORT_TYPE_OUTPUT = common dso_local global i32 0, align 4
@copy_output_port_format_commit = common dso_local global i32 0, align 4
@copy_do_processing_loop = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.TYPE_20__*)* @mmal_component_create_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mmal_component_create_copy(i8* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %8 = load i64, i64* @MMAL_ENOMEM, align 8
  store i64 %8, i64* %7, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @MMAL_PARAM_UNUSED(i8* %9)
  %11 = call i32* @vcos_malloc(i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %6, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  store i32* %11, i32** %15, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i64, i64* @MMAL_ENOMEM, align 8
  store i64 %19, i64* %3, align 8
  br label %232

20:                                               ; preds = %2
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @memset(i32* %21, i32 0, i32 4)
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  store i32 (%struct.TYPE_20__*)* @copy_component_destroy, i32 (%struct.TYPE_20__*)** %26, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %28 = load i32, i32* @MMAL_PORT_TYPE_INPUT, align 4
  %29 = call i8* @mmal_ports_alloc(%struct.TYPE_20__* %27, i32 1, i32 %28, i32 4)
  %30 = bitcast i8* %29 to %struct.TYPE_16__**
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 3
  store %struct.TYPE_16__** %30, %struct.TYPE_16__*** %32, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %34, align 8
  %36 = icmp ne %struct.TYPE_16__** %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %20
  br label %228

38:                                               ; preds = %20
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load i8*, i8** @copy_port_enable, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %44, i64 0
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 5
  store i8* %41, i8** %49, align 8
  %50 = load i8*, i8** @copy_port_disable, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %53, i64 0
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 4
  store i8* %50, i8** %58, align 8
  %59 = load i8*, i8** @copy_port_flush, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %62, i64 0
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 3
  store i8* %59, i8** %67, align 8
  %68 = load i8*, i8** @copy_port_send, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %71, i64 0
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 2
  store i8* %68, i8** %76, align 8
  %77 = load i32, i32* @copy_input_port_format_commit, align 4
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %80, i64 0
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 1
  store i32 %77, i32* %85, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %88, i64 0
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  store i32 1, i32* %91, align 8
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %94, i64 0
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  %98 = call i8* (...) @mmal_queue_create()
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %101, i64 0
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  store i8* %98, i8** %108, align 8
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %111, i64 0
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %38
  br label %228

122:                                              ; preds = %38
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %124 = load i32, i32* @MMAL_PORT_TYPE_OUTPUT, align 4
  %125 = call i8* @mmal_ports_alloc(%struct.TYPE_20__* %123, i32 1, i32 %124, i32 4)
  %126 = bitcast i8* %125 to %struct.TYPE_19__**
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 2
  store %struct.TYPE_19__** %126, %struct.TYPE_19__*** %128, align 8
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %130, align 8
  %132 = icmp ne %struct.TYPE_19__** %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %122
  br label %228

134:                                              ; preds = %122
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 1
  store i32 1, i32* %136, align 4
  %137 = load i8*, i8** @copy_port_enable, align 8
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %140, i64 0
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 5
  store i8* %137, i8** %145, align 8
  %146 = load i8*, i8** @copy_port_disable, align 8
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %149, i64 0
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 4
  store i8* %146, i8** %154, align 8
  %155 = load i8*, i8** @copy_port_flush, align 8
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %158, i64 0
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 3
  store i8* %155, i8** %163, align 8
  %164 = load i8*, i8** @copy_port_send, align 8
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %167, i64 0
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 2
  store i8* %164, i8** %172, align 8
  %173 = load i32, i32* @copy_output_port_format_commit, align 4
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %176, i64 0
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 1
  store i32 %173, i32* %181, align 8
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %184, i64 0
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 0
  store i32 1, i32* %187, align 8
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 2
  %190 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %190, i64 0
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 2
  store i64 0, i64* %193, align 8
  %194 = call i8* (...) @mmal_queue_create()
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %197, i64 0
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 0
  store i8* %194, i8** %204, align 8
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 2
  %207 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %207, i64 0
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %218, label %217

217:                                              ; preds = %134
  br label %228

218:                                              ; preds = %134
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %220 = load i32, i32* @copy_do_processing_loop, align 4
  %221 = call i64 @mmal_component_action_register(%struct.TYPE_20__* %219, i32 %220)
  store i64 %221, i64* %7, align 8
  %222 = load i64, i64* %7, align 8
  %223 = load i64, i64* @MMAL_SUCCESS, align 8
  %224 = icmp ne i64 %222, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %218
  br label %228

226:                                              ; preds = %218
  %227 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %227, i64* %3, align 8
  br label %232

228:                                              ; preds = %225, %217, %133, %121, %37
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %230 = call i32 @copy_component_destroy(%struct.TYPE_20__* %229)
  %231 = load i64, i64* %7, align 8
  store i64 %231, i64* %3, align 8
  br label %232

232:                                              ; preds = %228, %226, %18
  %233 = load i64, i64* %3, align 8
  ret i64 %233
}

declare dso_local i32 @MMAL_PARAM_UNUSED(i8*) #1

declare dso_local i32* @vcos_malloc(i32, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @copy_component_destroy(%struct.TYPE_20__*) #1

declare dso_local i8* @mmal_ports_alloc(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i8* @mmal_queue_create(...) #1

declare dso_local i64 @mmal_component_action_register(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
