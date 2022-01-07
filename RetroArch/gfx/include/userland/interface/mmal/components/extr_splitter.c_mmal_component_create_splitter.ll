; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_splitter.c_mmal_component_create_splitter.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_splitter.c_mmal_component_create_splitter.c"
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
@MMAL_PORT_TYPE_INPUT = common dso_local global i32 0, align 4
@splitter_port_enable = common dso_local global i8* null, align 8
@splitter_port_disable = common dso_local global i8* null, align 8
@splitter_port_flush = common dso_local global i8* null, align 8
@splitter_port_send = common dso_local global i8* null, align 8
@splitter_port_format_commit = common dso_local global i8* null, align 8
@splitter_port_parameter_set = common dso_local global i8* null, align 8
@SPLITTER_OUTPUT_PORTS_NUM = common dso_local global i32 0, align 4
@MMAL_PORT_TYPE_OUTPUT = common dso_local global i32 0, align 4
@MMAL_PORT_CAPABILITY_PASSTHROUGH = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_19__*)* @mmal_component_create_splitter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmal_component_create_splitter(i8* %0, %struct.TYPE_19__* %1) #0 {
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
  br label %285

21:                                               ; preds = %2
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @memset(i32* %22, i32 0, i32 4)
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  store i32 (%struct.TYPE_19__*)* @splitter_component_destroy, i32 (%struct.TYPE_19__*)** %27, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %29 = load i32, i32* @MMAL_PORT_TYPE_INPUT, align 4
  %30 = call i8* @mmal_ports_alloc(%struct.TYPE_19__* %28, i32 1, i32 %29, i32 4)
  %31 = bitcast i8* %30 to %struct.TYPE_15__**
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 3
  store %struct.TYPE_15__** %31, %struct.TYPE_15__*** %33, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %35, align 8
  %37 = icmp ne %struct.TYPE_15__** %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %21
  br label %281

39:                                               ; preds = %21
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load i8*, i8** @splitter_port_enable, align 8
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %45, i64 0
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 6
  store i8* %42, i8** %50, align 8
  %51 = load i8*, i8** @splitter_port_disable, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %54, i64 0
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 5
  store i8* %51, i8** %59, align 8
  %60 = load i8*, i8** @splitter_port_flush, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %63, i64 0
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 4
  store i8* %60, i8** %68, align 8
  %69 = load i8*, i8** @splitter_port_send, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %72, i64 0
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 3
  store i8* %69, i8** %77, align 8
  %78 = load i8*, i8** @splitter_port_format_commit, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %81, i64 0
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 2
  store i8* %78, i8** %86, align 8
  %87 = load i8*, i8** @splitter_port_parameter_set, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %90, i64 0
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  store i8* %87, i8** %95, align 8
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %98, i64 0
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  store i32 1, i32* %101, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %104, i64 0
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 2
  store i64 0, i64* %107, align 8
  %108 = call i8* (...) @mmal_queue_create()
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %111, i64 0
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  store i8* %108, i8** %118, align 8
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %121, i64 0
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %39
  br label %281

132:                                              ; preds = %39
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %134 = load i32, i32* @SPLITTER_OUTPUT_PORTS_NUM, align 4
  %135 = load i32, i32* @MMAL_PORT_TYPE_OUTPUT, align 4
  %136 = call i8* @mmal_ports_alloc(%struct.TYPE_19__* %133, i32 %134, i32 %135, i32 4)
  %137 = bitcast i8* %136 to %struct.TYPE_18__**
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 2
  store %struct.TYPE_18__** %137, %struct.TYPE_18__*** %139, align 8
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %141, align 8
  %143 = icmp ne %struct.TYPE_18__** %142, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %132
  br label %281

145:                                              ; preds = %132
  %146 = load i32, i32* @SPLITTER_OUTPUT_PORTS_NUM, align 4
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  store i32 0, i32* %8, align 4
  br label %149

149:                                              ; preds = %276, %145
  %150 = load i32, i32* %8, align 4
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp ult i32 %150, %153
  br i1 %154, label %155, label %279

155:                                              ; preds = %149
  %156 = load i8*, i8** @splitter_port_enable, align 8
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %158, align 8
  %160 = load i32, i32* %8, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %159, i64 %161
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 6
  store i8* %156, i8** %166, align 8
  %167 = load i8*, i8** @splitter_port_disable, align 8
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %170, i64 %172
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 5
  store i8* %167, i8** %177, align 8
  %178 = load i8*, i8** @splitter_port_flush, align 8
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %180, align 8
  %182 = load i32, i32* %8, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %181, i64 %183
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 4
  store i8* %178, i8** %188, align 8
  %189 = load i8*, i8** @splitter_port_send, align 8
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 2
  %192 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %191, align 8
  %193 = load i32, i32* %8, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %192, i64 %194
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 3
  store i8* %189, i8** %199, align 8
  %200 = load i8*, i8** @splitter_port_format_commit, align 8
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 2
  %203 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %202, align 8
  %204 = load i32, i32* %8, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %203, i64 %205
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 2
  store i8* %200, i8** %210, align 8
  %211 = load i8*, i8** @splitter_port_parameter_set, align 8
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 2
  %214 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %213, align 8
  %215 = load i32, i32* %8, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %214, i64 %216
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 1
  store i8* %211, i8** %221, align 8
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 2
  %224 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %223, align 8
  %225 = load i32, i32* %8, align 4
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %224, i64 %226
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 0
  store i32 1, i32* %229, align 8
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 2
  %232 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %231, align 8
  %233 = load i32, i32* %8, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %232, i64 %234
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 3
  store i64 0, i64* %237, align 8
  %238 = load i32, i32* @MMAL_PORT_CAPABILITY_PASSTHROUGH, align 4
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %239, i32 0, i32 2
  %241 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %240, align 8
  %242 = load i32, i32* %8, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %241, i64 %243
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 2
  store i32 %238, i32* %246, align 8
  %247 = call i8* (...) @mmal_queue_create()
  %248 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %248, i32 0, i32 2
  %250 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %249, align 8
  %251 = load i32, i32* %8, align 4
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %250, i64 %252
  %254 = load %struct.TYPE_18__*, %struct.TYPE_18__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %254, i32 0, i32 1
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 0
  store i8* %247, i8** %259, align 8
  %260 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %260, i32 0, i32 2
  %262 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %261, align 8
  %263 = load i32, i32* %8, align 4
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %262, i64 %264
  %266 = load %struct.TYPE_18__*, %struct.TYPE_18__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %266, i32 0, i32 1
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 0
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 0
  %272 = load i8*, i8** %271, align 8
  %273 = icmp ne i8* %272, null
  br i1 %273, label %275, label %274

274:                                              ; preds = %155
  br label %281

275:                                              ; preds = %155
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %8, align 4
  %278 = add i32 %277, 1
  store i32 %278, i32* %8, align 4
  br label %149

279:                                              ; preds = %149
  %280 = load i32, i32* @MMAL_SUCCESS, align 4
  store i32 %280, i32* %3, align 4
  br label %285

281:                                              ; preds = %274, %144, %131, %38
  %282 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %283 = call i32 @splitter_component_destroy(%struct.TYPE_19__* %282)
  %284 = load i32, i32* %7, align 4
  store i32 %284, i32* %3, align 4
  br label %285

285:                                              ; preds = %281, %279, %19
  %286 = load i32, i32* %3, align 4
  ret i32 %286
}

declare dso_local i32 @MMAL_PARAM_UNUSED(i8*) #1

declare dso_local i32* @vcos_malloc(i32, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @splitter_component_destroy(%struct.TYPE_19__*) #1

declare dso_local i8* @mmal_ports_alloc(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i8* @mmal_queue_create(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
