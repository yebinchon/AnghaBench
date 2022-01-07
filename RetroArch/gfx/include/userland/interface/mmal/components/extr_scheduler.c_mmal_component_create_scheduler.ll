; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_scheduler.c_mmal_component_create_scheduler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_scheduler.c_mmal_component_create_scheduler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, i32, %struct.TYPE_20__**, %struct.TYPE_17__**, %struct.TYPE_14__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__*, i32, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__*, i8*, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__*, i32, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, i8*, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_15__ = type { i32, i8* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_21__*)*, i32* }

@MMAL_ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"mmal module\00", align 1
@SCHEDULER_INPUT_PORTS_NUM = common dso_local global i8* null, align 8
@MMAL_PORT_TYPE_INPUT = common dso_local global i32 0, align 4
@scheduler_port_enable = common dso_local global i8* null, align 8
@scheduler_port_disable = common dso_local global i8* null, align 8
@scheduler_port_flush = common dso_local global i8* null, align 8
@scheduler_port_send = common dso_local global i8* null, align 8
@scheduler_input_port_format_commit = common dso_local global i32 0, align 4
@scheduler_port_parameter_set = common dso_local global i8* null, align 8
@MMAL_PORT_CAPABILITY_SUPPORTS_EVENT_FORMAT_CHANGE = common dso_local global i32 0, align 4
@MMAL_TIME_UNKNOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c".copy\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"disable passthrough on output ports\00", align 1
@SCHEDULER_OUTPUT_PORTS_NUM = common dso_local global i8* null, align 8
@MMAL_PORT_TYPE_OUTPUT = common dso_local global i32 0, align 4
@scheduler_output_port_format_commit = common dso_local global i32 0, align 4
@MMAL_PORT_CAPABILITY_PASSTHROUGH = common dso_local global i32 0, align 4
@SCHEDULER_CLOCK_PORTS_NUM = common dso_local global i32 0, align 4
@scheduler_component_action = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.TYPE_21__*)* @mmal_component_create_scheduler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mmal_component_create_scheduler(i8* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %10 = load i64, i64* @MMAL_ENOMEM, align 8
  store i64 %10, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %11 = call i32* @vcos_calloc(i32 1, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %6, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 6
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  store i32* %11, i32** %15, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i64, i64* @MMAL_ENOMEM, align 8
  store i64 %19, i64* %3, align 8
  br label %373

20:                                               ; preds = %2
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 6
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  store i32 (%struct.TYPE_21__*)* @scheduler_component_destroy, i32 (%struct.TYPE_21__*)** %24, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %26 = load i8*, i8** @SCHEDULER_INPUT_PORTS_NUM, align 8
  %27 = load i32, i32* @MMAL_PORT_TYPE_INPUT, align 4
  %28 = call i8* @mmal_ports_alloc(%struct.TYPE_21__* %25, i8* %26, i32 %27, i32 4)
  %29 = bitcast i8* %28 to %struct.TYPE_17__**
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 5
  store %struct.TYPE_17__** %29, %struct.TYPE_17__*** %31, align 8
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 5
  %34 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %33, align 8
  %35 = icmp ne %struct.TYPE_17__** %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %20
  br label %369

37:                                               ; preds = %20
  %38 = load i8*, i8** @SCHEDULER_INPUT_PORTS_NUM, align 8
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %182, %37
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ult i32 %43, %46
  br i1 %47, label %48, label %185

48:                                               ; preds = %42
  %49 = load i8*, i8** @scheduler_port_enable, align 8
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 5
  %52 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %52, i64 %54
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 6
  store i8* %49, i8** %59, align 8
  %60 = load i8*, i8** @scheduler_port_disable, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 5
  %63 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %63, i64 %65
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 5
  store i8* %60, i8** %70, align 8
  %71 = load i8*, i8** @scheduler_port_flush, align 8
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 5
  %74 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %74, i64 %76
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 4
  store i8* %71, i8** %81, align 8
  %82 = load i8*, i8** @scheduler_port_send, align 8
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 5
  %85 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %85, i64 %87
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 3
  store i8* %82, i8** %92, align 8
  %93 = load i32, i32* @scheduler_input_port_format_commit, align 4
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 5
  %96 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %96, i64 %98
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 2
  store i32 %93, i32* %103, align 8
  %104 = load i8*, i8** @scheduler_port_parameter_set, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 5
  %107 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %107, i64 %109
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  store i8* %104, i8** %114, align 8
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 5
  %117 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %117, i64 %119
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  store i32 1, i32* %122, align 8
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 5
  %125 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %125, i64 %127
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 3
  store i64 0, i64* %130, align 8
  %131 = load i32, i32* @MMAL_PORT_CAPABILITY_SUPPORTS_EVENT_FORMAT_CHANGE, align 4
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 5
  %134 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %134, i64 %136
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 2
  store i32 %131, i32* %139, align 8
  %140 = call i8* (...) @mmal_queue_create()
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 5
  %143 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %142, align 8
  %144 = load i32, i32* %9, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %143, i64 %145
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 1
  store i8* %140, i8** %152, align 8
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 5
  %155 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %154, align 8
  %156 = load i32, i32* %9, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %155, i64 %157
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %168, label %167

167:                                              ; preds = %48
  br label %369

168:                                              ; preds = %48
  %169 = load i32, i32* @MMAL_TIME_UNKNOWN, align 4
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 5
  %172 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %171, align 8
  %173 = load i32, i32* %9, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %172, i64 %174
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 0
  store i32 %169, i32* %181, align 8
  br label %182

182:                                              ; preds = %168
  %183 = load i32, i32* %9, align 4
  %184 = add i32 %183, 1
  store i32 %184, i32* %9, align 4
  br label %42

185:                                              ; preds = %42
  %186 = load i8*, i8** %4, align 8
  %187 = call i64 @strstr(i8* %186, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %185
  %190 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %191

191:                                              ; preds = %189, %185
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %193 = load i8*, i8** @SCHEDULER_OUTPUT_PORTS_NUM, align 8
  %194 = load i32, i32* @MMAL_PORT_TYPE_OUTPUT, align 4
  %195 = call i8* @mmal_ports_alloc(%struct.TYPE_21__* %192, i8* %193, i32 %194, i32 4)
  %196 = bitcast i8* %195 to %struct.TYPE_20__**
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 4
  store %struct.TYPE_20__** %196, %struct.TYPE_20__*** %198, align 8
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 4
  %201 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %200, align 8
  %202 = icmp ne %struct.TYPE_20__** %201, null
  br i1 %202, label %204, label %203

203:                                              ; preds = %191
  br label %369

204:                                              ; preds = %191
  %205 = load i8*, i8** @SCHEDULER_OUTPUT_PORTS_NUM, align 8
  %206 = ptrtoint i8* %205 to i32
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 4
  store i32 0, i32* %9, align 4
  br label %209

209:                                              ; preds = %342, %204
  %210 = load i32, i32* %9, align 4
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = icmp ult i32 %210, %213
  br i1 %214, label %215, label %345

215:                                              ; preds = %209
  %216 = load i8*, i8** @scheduler_port_enable, align 8
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 4
  %219 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %218, align 8
  %220 = load i32, i32* %9, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %219, i64 %221
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 6
  store i8* %216, i8** %226, align 8
  %227 = load i8*, i8** @scheduler_port_disable, align 8
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i32 0, i32 4
  %230 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %229, align 8
  %231 = load i32, i32* %9, align 4
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %230, i64 %232
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 1
  %236 = load %struct.TYPE_19__*, %struct.TYPE_19__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %236, i32 0, i32 5
  store i8* %227, i8** %237, align 8
  %238 = load i8*, i8** @scheduler_port_flush, align 8
  %239 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %239, i32 0, i32 4
  %241 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %240, align 8
  %242 = load i32, i32* %9, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %241, i64 %243
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_19__*, %struct.TYPE_19__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %247, i32 0, i32 4
  store i8* %238, i8** %248, align 8
  %249 = load i8*, i8** @scheduler_port_send, align 8
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 4
  %252 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %251, align 8
  %253 = load i32, i32* %9, align 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %252, i64 %254
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_19__*, %struct.TYPE_19__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %258, i32 0, i32 3
  store i8* %249, i8** %259, align 8
  %260 = load i32, i32* @scheduler_output_port_format_commit, align 4
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %261, i32 0, i32 4
  %263 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %262, align 8
  %264 = load i32, i32* %9, align 4
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %263, i64 %265
  %267 = load %struct.TYPE_20__*, %struct.TYPE_20__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %267, i32 0, i32 1
  %269 = load %struct.TYPE_19__*, %struct.TYPE_19__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %269, i32 0, i32 2
  store i32 %260, i32* %270, align 8
  %271 = load i8*, i8** @scheduler_port_parameter_set, align 8
  %272 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %272, i32 0, i32 4
  %274 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %273, align 8
  %275 = load i32, i32* %9, align 4
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %274, i64 %276
  %278 = load %struct.TYPE_20__*, %struct.TYPE_20__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %278, i32 0, i32 1
  %280 = load %struct.TYPE_19__*, %struct.TYPE_19__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %280, i32 0, i32 1
  store i8* %271, i8** %281, align 8
  %282 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %282, i32 0, i32 4
  %284 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %283, align 8
  %285 = load i32, i32* %9, align 4
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %284, i64 %286
  %288 = load %struct.TYPE_20__*, %struct.TYPE_20__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %288, i32 0, i32 0
  store i32 1, i32* %289, align 8
  %290 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %290, i32 0, i32 4
  %292 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %291, align 8
  %293 = load i32, i32* %9, align 4
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %292, i64 %294
  %296 = load %struct.TYPE_20__*, %struct.TYPE_20__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %296, i32 0, i32 3
  store i64 0, i64* %297, align 8
  %298 = load i32, i32* %8, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %215
  br label %303

301:                                              ; preds = %215
  %302 = load i32, i32* @MMAL_PORT_CAPABILITY_PASSTHROUGH, align 4
  br label %303

303:                                              ; preds = %301, %300
  %304 = phi i32 [ 0, %300 ], [ %302, %301 ]
  %305 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %305, i32 0, i32 4
  %307 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %306, align 8
  %308 = load i32, i32* %9, align 4
  %309 = zext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %307, i64 %309
  %311 = load %struct.TYPE_20__*, %struct.TYPE_20__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %311, i32 0, i32 2
  store i32 %304, i32* %312, align 8
  %313 = call i8* (...) @mmal_queue_create()
  %314 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %314, i32 0, i32 4
  %316 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %315, align 8
  %317 = load i32, i32* %9, align 4
  %318 = zext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %316, i64 %318
  %320 = load %struct.TYPE_20__*, %struct.TYPE_20__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %320, i32 0, i32 1
  %322 = load %struct.TYPE_19__*, %struct.TYPE_19__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %322, i32 0, i32 0
  %324 = load %struct.TYPE_18__*, %struct.TYPE_18__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %324, i32 0, i32 0
  store i8* %313, i8** %325, align 8
  %326 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %326, i32 0, i32 4
  %328 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %327, align 8
  %329 = load i32, i32* %9, align 4
  %330 = zext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %328, i64 %330
  %332 = load %struct.TYPE_20__*, %struct.TYPE_20__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %332, i32 0, i32 1
  %334 = load %struct.TYPE_19__*, %struct.TYPE_19__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %334, i32 0, i32 0
  %336 = load %struct.TYPE_18__*, %struct.TYPE_18__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %336, i32 0, i32 0
  %338 = load i8*, i8** %337, align 8
  %339 = icmp ne i8* %338, null
  br i1 %339, label %341, label %340

340:                                              ; preds = %303
  br label %369

341:                                              ; preds = %303
  br label %342

342:                                              ; preds = %341
  %343 = load i32, i32* %9, align 4
  %344 = add i32 %343, 1
  store i32 %344, i32* %9, align 4
  br label %209

345:                                              ; preds = %209
  %346 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %347 = load i32, i32* @SCHEDULER_CLOCK_PORTS_NUM, align 4
  %348 = call i32 @mmal_ports_clock_alloc(%struct.TYPE_21__* %346, i32 %347, i32 0, i32* null)
  %349 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %350 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %349, i32 0, i32 3
  store i32 %348, i32* %350, align 4
  %351 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %351, i32 0, i32 3
  %353 = load i32, i32* %352, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %356, label %355

355:                                              ; preds = %345
  br label %369

356:                                              ; preds = %345
  %357 = load i32, i32* @SCHEDULER_CLOCK_PORTS_NUM, align 4
  %358 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %359 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %358, i32 0, i32 2
  store i32 %357, i32* %359, align 8
  %360 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %361 = load i32, i32* @scheduler_component_action, align 4
  %362 = call i64 @mmal_component_action_register(%struct.TYPE_21__* %360, i32 %361)
  store i64 %362, i64* %7, align 8
  %363 = load i64, i64* %7, align 8
  %364 = load i64, i64* @MMAL_SUCCESS, align 8
  %365 = icmp ne i64 %363, %364
  br i1 %365, label %366, label %367

366:                                              ; preds = %356
  br label %369

367:                                              ; preds = %356
  %368 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %368, i64* %3, align 8
  br label %373

369:                                              ; preds = %366, %355, %340, %203, %167, %36
  %370 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %371 = call i32 @scheduler_component_destroy(%struct.TYPE_21__* %370)
  %372 = load i64, i64* %7, align 8
  store i64 %372, i64* %3, align 8
  br label %373

373:                                              ; preds = %369, %367, %18
  %374 = load i64, i64* %3, align 8
  ret i64 %374
}

declare dso_local i32* @vcos_calloc(i32, i32, i8*) #1

declare dso_local i32 @scheduler_component_destroy(%struct.TYPE_21__*) #1

declare dso_local i8* @mmal_ports_alloc(%struct.TYPE_21__*, i8*, i32, i32) #1

declare dso_local i8* @mmal_queue_create(...) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @LOG_TRACE(i8*) #1

declare dso_local i32 @mmal_ports_clock_alloc(%struct.TYPE_21__*, i32, i32, i32*) #1

declare dso_local i64 @mmal_component_action_register(%struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
