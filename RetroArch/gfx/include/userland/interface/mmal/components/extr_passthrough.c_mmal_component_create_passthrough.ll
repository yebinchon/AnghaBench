; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_passthrough.c_mmal_component_create_passthrough.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_passthrough.c_mmal_component_create_passthrough.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_18__**, %struct.TYPE_15__**, %struct.TYPE_12__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__*, i32, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_19__*)*, i32* }

@MMAL_ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"mmal module\00", align 1
@PASSTHROUGH_PORTS_NUM = common dso_local global i8* null, align 8
@MMAL_PORT_TYPE_INPUT = common dso_local global i32 0, align 4
@passthrough_port_enable = common dso_local global i8* null, align 8
@passthrough_port_disable = common dso_local global i8* null, align 8
@passthrough_port_flush = common dso_local global i8* null, align 8
@passthrough_port_send = common dso_local global i8* null, align 8
@passthrough_port_format_commit = common dso_local global i8* null, align 8
@passthrough_port_parameter_set = common dso_local global i8* null, align 8
@MMAL_PORT_TYPE_OUTPUT = common dso_local global i32 0, align 4
@MMAL_PORT_CAPABILITY_PASSTHROUGH = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_19__*)* @mmal_component_create_passthrough to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmal_component_create_passthrough(i8* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %9 = load i32, i32* @MMAL_ENOMEM, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @MMAL_PARAM_UNUSED(i8* %10)
  %12 = call i32* @vcos_malloc(i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %6, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  store i32* %12, i32** %16, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @MMAL_ENOMEM, align 4
  store i32 %20, i32* %3, align 4
  br label %320

21:                                               ; preds = %2
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @memset(i32* %22, i32 0, i32 4)
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  store i32 (%struct.TYPE_19__*)* @passthrough_component_destroy, i32 (%struct.TYPE_19__*)** %27, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %29 = load i8*, i8** @PASSTHROUGH_PORTS_NUM, align 8
  %30 = load i32, i32* @MMAL_PORT_TYPE_INPUT, align 4
  %31 = call i8* @mmal_ports_alloc(%struct.TYPE_19__* %28, i8* %29, i32 %30, i32 4)
  %32 = bitcast i8* %31 to %struct.TYPE_15__**
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 3
  store %struct.TYPE_15__** %32, %struct.TYPE_15__*** %34, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %36, align 8
  %38 = icmp ne %struct.TYPE_15__** %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %21
  br label %316

40:                                               ; preds = %21
  %41 = load i8*, i8** @PASSTHROUGH_PORTS_NUM, align 8
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %163, %40
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ult i32 %46, %49
  br i1 %50, label %51, label %166

51:                                               ; preds = %45
  %52 = load i8*, i8** @passthrough_port_enable, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %55, i64 %57
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 6
  store i8* %52, i8** %62, align 8
  %63 = load i8*, i8** @passthrough_port_disable, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %66, i64 %68
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 5
  store i8* %63, i8** %73, align 8
  %74 = load i8*, i8** @passthrough_port_flush, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %77, i64 %79
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 4
  store i8* %74, i8** %84, align 8
  %85 = load i8*, i8** @passthrough_port_send, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %88, i64 %90
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 3
  store i8* %85, i8** %95, align 8
  %96 = load i8*, i8** @passthrough_port_format_commit, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %99, i64 %101
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 2
  store i8* %96, i8** %106, align 8
  %107 = load i8*, i8** @passthrough_port_parameter_set, align 8
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %110, i64 %112
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 1
  store i8* %107, i8** %117, align 8
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %120, i64 %122
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  store i32 1, i32* %125, align 8
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 3
  %128 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %128, i64 %130
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 2
  store i64 0, i64* %133, align 8
  %134 = call i8* (...) @mmal_queue_create()
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 3
  %137 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %137, i64 %139
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  store i8* %134, i8** %146, align 8
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %149, i64 %151
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %162, label %161

161:                                              ; preds = %51
  br label %316

162:                                              ; preds = %51
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %8, align 4
  %165 = add i32 %164, 1
  store i32 %165, i32* %8, align 4
  br label %45

166:                                              ; preds = %45
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %168 = load i8*, i8** @PASSTHROUGH_PORTS_NUM, align 8
  %169 = load i32, i32* @MMAL_PORT_TYPE_OUTPUT, align 4
  %170 = call i8* @mmal_ports_alloc(%struct.TYPE_19__* %167, i8* %168, i32 %169, i32 4)
  %171 = bitcast i8* %170 to %struct.TYPE_18__**
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 2
  store %struct.TYPE_18__** %171, %struct.TYPE_18__*** %173, align 8
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %175, align 8
  %177 = icmp ne %struct.TYPE_18__** %176, null
  br i1 %177, label %179, label %178

178:                                              ; preds = %166
  br label %316

179:                                              ; preds = %166
  %180 = load i8*, i8** @PASSTHROUGH_PORTS_NUM, align 8
  %181 = ptrtoint i8* %180 to i32
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 4
  store i32 0, i32* %8, align 4
  br label %184

184:                                              ; preds = %311, %179
  %185 = load i32, i32* %8, align 4
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp ult i32 %185, %188
  br i1 %189, label %190, label %314

190:                                              ; preds = %184
  %191 = load i8*, i8** @passthrough_port_enable, align 8
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 2
  %194 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %193, align 8
  %195 = load i32, i32* %8, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %194, i64 %196
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 6
  store i8* %191, i8** %201, align 8
  %202 = load i8*, i8** @passthrough_port_disable, align 8
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 2
  %205 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %204, align 8
  %206 = load i32, i32* %8, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %205, i64 %207
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 5
  store i8* %202, i8** %212, align 8
  %213 = load i8*, i8** @passthrough_port_flush, align 8
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 2
  %216 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %215, align 8
  %217 = load i32, i32* %8, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %216, i64 %218
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 4
  store i8* %213, i8** %223, align 8
  %224 = load i8*, i8** @passthrough_port_send, align 8
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 2
  %227 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %226, align 8
  %228 = load i32, i32* %8, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %227, i64 %229
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 3
  store i8* %224, i8** %234, align 8
  %235 = load i8*, i8** @passthrough_port_format_commit, align 8
  %236 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %236, i32 0, i32 2
  %238 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %237, align 8
  %239 = load i32, i32* %8, align 4
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %238, i64 %240
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i32 0, i32 1
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 2
  store i8* %235, i8** %245, align 8
  %246 = load i8*, i8** @passthrough_port_parameter_set, align 8
  %247 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %247, i32 0, i32 2
  %249 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %248, align 8
  %250 = load i32, i32* %8, align 4
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %249, i64 %251
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_17__*, %struct.TYPE_17__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 1
  store i8* %246, i8** %256, align 8
  %257 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %257, i32 0, i32 2
  %259 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %258, align 8
  %260 = load i32, i32* %8, align 4
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %259, i64 %261
  %263 = load %struct.TYPE_18__*, %struct.TYPE_18__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i32 0, i32 0
  store i32 1, i32* %264, align 8
  %265 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %265, i32 0, i32 2
  %267 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %266, align 8
  %268 = load i32, i32* %8, align 4
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %267, i64 %269
  %271 = load %struct.TYPE_18__*, %struct.TYPE_18__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i32 0, i32 3
  store i64 0, i64* %272, align 8
  %273 = load i32, i32* @MMAL_PORT_CAPABILITY_PASSTHROUGH, align 4
  %274 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %274, i32 0, i32 2
  %276 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %275, align 8
  %277 = load i32, i32* %8, align 4
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %276, i64 %278
  %280 = load %struct.TYPE_18__*, %struct.TYPE_18__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %280, i32 0, i32 2
  store i32 %273, i32* %281, align 8
  %282 = call i8* (...) @mmal_queue_create()
  %283 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %283, i32 0, i32 2
  %285 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %284, align 8
  %286 = load i32, i32* %8, align 4
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %285, i64 %287
  %289 = load %struct.TYPE_18__*, %struct.TYPE_18__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %289, i32 0, i32 1
  %291 = load %struct.TYPE_17__*, %struct.TYPE_17__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %291, i32 0, i32 0
  %293 = load %struct.TYPE_16__*, %struct.TYPE_16__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %293, i32 0, i32 0
  store i8* %282, i8** %294, align 8
  %295 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %295, i32 0, i32 2
  %297 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %296, align 8
  %298 = load i32, i32* %8, align 4
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %297, i64 %299
  %301 = load %struct.TYPE_18__*, %struct.TYPE_18__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %301, i32 0, i32 1
  %303 = load %struct.TYPE_17__*, %struct.TYPE_17__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %303, i32 0, i32 0
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 0
  %307 = load i8*, i8** %306, align 8
  %308 = icmp ne i8* %307, null
  br i1 %308, label %310, label %309

309:                                              ; preds = %190
  br label %316

310:                                              ; preds = %190
  br label %311

311:                                              ; preds = %310
  %312 = load i32, i32* %8, align 4
  %313 = add i32 %312, 1
  store i32 %313, i32* %8, align 4
  br label %184

314:                                              ; preds = %184
  %315 = load i32, i32* @MMAL_SUCCESS, align 4
  store i32 %315, i32* %3, align 4
  br label %320

316:                                              ; preds = %309, %178, %161, %39
  %317 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %318 = call i32 @passthrough_component_destroy(%struct.TYPE_19__* %317)
  %319 = load i32, i32* %7, align 4
  store i32 %319, i32* %3, align 4
  br label %320

320:                                              ; preds = %316, %314, %19
  %321 = load i32, i32* %3, align 4
  ret i32 %321
}

declare dso_local i32 @MMAL_PARAM_UNUSED(i8*) #1

declare dso_local i32* @vcos_malloc(i32, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @passthrough_component_destroy(%struct.TYPE_19__*) #1

declare dso_local i8* @mmal_ports_alloc(%struct.TYPE_19__*, i8*, i32, i32) #1

declare dso_local i8* @mmal_queue_create(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
