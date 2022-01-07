; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_mmal_component_create_from_graph.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_mmal_component_create_from_graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, i32, %struct.TYPE_35__*, %struct.TYPE_33__*, %struct.TYPE_25__**, %struct.TYPE_25__**, %struct.TYPE_25__** }
%struct.TYPE_35__ = type { i32, %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i32, i32 }
%struct.TYPE_33__ = type { i32, i32, i32 (%struct.TYPE_24__*)*, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, %struct.TYPE_32__**, %struct.TYPE_24__*, %struct.TYPE_31__**, %struct.TYPE_30__**, %struct.TYPE_28__** }
%struct.TYPE_32__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i8* }
%struct.TYPE_31__ = type { i8*, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_28__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_25__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i8*, i8*, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@MMAL_ENOMEM = common dso_local global i64 0, align 8
@graph_port_control_parameter_get = common dso_local global i32 0, align 4
@graph_port_control_parameter_set = common dso_local global i32 0, align 4
@MMAL_PORT_TYPE_INPUT = common dso_local global i32 0, align 4
@graph_port_enable = common dso_local global i8* null, align 8
@graph_port_disable = common dso_local global i8* null, align 8
@graph_port_flush = common dso_local global i8* null, align 8
@graph_port_send = common dso_local global i8* null, align 8
@graph_port_format_commit = common dso_local global i8* null, align 8
@graph_port_parameter_get = common dso_local global i8* null, align 8
@graph_port_parameter_set = common dso_local global i8* null, align 8
@graph_port_connect = common dso_local global i8* null, align 8
@graph_port_payload_alloc = common dso_local global i8* null, align 8
@graph_port_payload_free = common dso_local global i8* null, align 8
@MMAL_TRUE = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@MMAL_PORT_TYPE_OUTPUT = common dso_local global i32 0, align 4
@graph_do_processing_loop = common dso_local global i32 0, align 4
@graph_component_connection_cb = common dso_local global i32 0, align 4
@graph_component_enable = common dso_local global i32 0, align 4
@graph_component_disable = common dso_local global i32 0, align 4
@graph_component_control_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"could not enable port %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.TYPE_24__*)* @mmal_component_create_from_graph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mmal_component_create_from_graph(i8* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  %9 = load i64, i64* @MMAL_ENOMEM, align 8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  store %struct.TYPE_23__* %14, %struct.TYPE_23__** %7, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @MMAL_PARAM_UNUSED(i8* %15)
  %17 = load i32, i32* @graph_port_control_parameter_get, align 4
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %22, i32 0, i32 1
  store i32 %17, i32* %23, align 4
  %24 = load i32, i32* @graph_port_control_parameter_set, align 4
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_35__*, %struct.TYPE_35__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_34__*, %struct.TYPE_34__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %29, i32 0, i32 0
  store i32 %24, i32* %30, align 4
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %2
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MMAL_PORT_TYPE_INPUT, align 4
  %41 = call i8* @mmal_ports_alloc(%struct.TYPE_24__* %36, i32 %39, i32 %40, i32 0)
  %42 = bitcast i8* %41 to %struct.TYPE_25__**
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 7
  store %struct.TYPE_25__** %42, %struct.TYPE_25__*** %44, align 8
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 7
  %47 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %46, align 8
  %48 = icmp ne %struct.TYPE_25__** %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %35
  br label %648

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50, %2
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %205, %51
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ult i32 %58, %61
  br i1 %62, label %63, label %208

63:                                               ; preds = %57
  %64 = load i8*, i8** @graph_port_enable, align 8
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 7
  %67 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %67, i64 %69
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 9
  store i8* %64, i8** %74, align 8
  %75 = load i8*, i8** @graph_port_disable, align 8
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 7
  %78 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %78, i64 %80
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 8
  store i8* %75, i8** %85, align 8
  %86 = load i8*, i8** @graph_port_flush, align 8
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 7
  %89 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %89, i64 %91
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 7
  store i8* %86, i8** %96, align 8
  %97 = load i8*, i8** @graph_port_send, align 8
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 7
  %100 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %100, i64 %102
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 6
  store i8* %97, i8** %107, align 8
  %108 = load i8*, i8** @graph_port_format_commit, align 8
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 7
  %111 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %111, i64 %113
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 5
  store i8* %108, i8** %118, align 8
  %119 = load i8*, i8** @graph_port_parameter_get, align 8
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 7
  %122 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %122, i64 %124
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 4
  store i8* %119, i8** %129, align 8
  %130 = load i8*, i8** @graph_port_parameter_set, align 8
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 7
  %133 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %133, i64 %135
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 3
  store i8* %130, i8** %140, align 8
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 9
  %143 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %142, align 8
  %144 = load i32, i32* %8, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %143, i64 %145
  %147 = load %struct.TYPE_28__*, %struct.TYPE_28__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %167

153:                                              ; preds = %63
  br i1 false, label %154, label %167

154:                                              ; preds = %153
  %155 = load i8*, i8** @graph_port_connect, align 8
  %156 = bitcast i8* %155 to i32*
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %157, i32 0, i32 7
  %159 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %158, align 8
  %160 = load i32, i32* %8, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %159, i64 %161
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 2
  store i32* %156, i32** %166, align 8
  br label %167

167:                                              ; preds = %154, %153, %63
  %168 = load i8*, i8** @graph_port_payload_alloc, align 8
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %169, i32 0, i32 7
  %171 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %171, i64 %173
  %175 = load %struct.TYPE_25__*, %struct.TYPE_25__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 1
  store i8* %168, i8** %178, align 8
  %179 = load i8*, i8** @graph_port_payload_free, align 8
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 7
  %182 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %181, align 8
  %183 = load i32, i32* %8, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %182, i64 %184
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 0
  store i8* %179, i8** %189, align 8
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 7
  %193 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %192, align 8
  %194 = load i32, i32* %8, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %193, i64 %195
  %197 = load %struct.TYPE_25__*, %struct.TYPE_25__** %196, align 8
  %198 = load i32, i32* @MMAL_TRUE, align 4
  %199 = call i64 @graph_port_update(%struct.TYPE_23__* %190, %struct.TYPE_25__* %197, i32 %198)
  store i64 %199, i64* %6, align 8
  %200 = load i64, i64* %6, align 8
  %201 = load i64, i64* @MMAL_SUCCESS, align 8
  %202 = icmp ne i64 %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %167
  br label %648

204:                                              ; preds = %167
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %8, align 4
  %207 = add i32 %206, 1
  store i32 %207, i32* %8, align 4
  br label %57

208:                                              ; preds = %57
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %229

213:                                              ; preds = %208
  %214 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %215 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @MMAL_PORT_TYPE_OUTPUT, align 4
  %219 = call i8* @mmal_ports_alloc(%struct.TYPE_24__* %214, i32 %217, i32 %218, i32 0)
  %220 = bitcast i8* %219 to %struct.TYPE_25__**
  %221 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %221, i32 0, i32 6
  store %struct.TYPE_25__** %220, %struct.TYPE_25__*** %222, align 8
  %223 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %223, i32 0, i32 6
  %225 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %224, align 8
  %226 = icmp ne %struct.TYPE_25__** %225, null
  br i1 %226, label %228, label %227

227:                                              ; preds = %213
  br label %648

228:                                              ; preds = %213
  br label %229

229:                                              ; preds = %228, %208
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %233, i32 0, i32 1
  store i32 %232, i32* %234, align 4
  store i32 0, i32* %8, align 4
  br label %235

235:                                              ; preds = %383, %229
  %236 = load i32, i32* %8, align 4
  %237 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = icmp ult i32 %236, %239
  br i1 %240, label %241, label %386

241:                                              ; preds = %235
  %242 = load i8*, i8** @graph_port_enable, align 8
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i32 0, i32 6
  %245 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %244, align 8
  %246 = load i32, i32* %8, align 4
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %245, i64 %247
  %249 = load %struct.TYPE_25__*, %struct.TYPE_25__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_22__*, %struct.TYPE_22__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %251, i32 0, i32 9
  store i8* %242, i8** %252, align 8
  %253 = load i8*, i8** @graph_port_disable, align 8
  %254 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %254, i32 0, i32 6
  %256 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %255, align 8
  %257 = load i32, i32* %8, align 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %256, i64 %258
  %260 = load %struct.TYPE_25__*, %struct.TYPE_25__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_22__*, %struct.TYPE_22__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %262, i32 0, i32 8
  store i8* %253, i8** %263, align 8
  %264 = load i8*, i8** @graph_port_flush, align 8
  %265 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %265, i32 0, i32 6
  %267 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %266, align 8
  %268 = load i32, i32* %8, align 4
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %267, i64 %269
  %271 = load %struct.TYPE_25__*, %struct.TYPE_25__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %271, i32 0, i32 0
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %273, i32 0, i32 7
  store i8* %264, i8** %274, align 8
  %275 = load i8*, i8** @graph_port_send, align 8
  %276 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %276, i32 0, i32 6
  %278 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %277, align 8
  %279 = load i32, i32* %8, align 4
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %278, i64 %280
  %282 = load %struct.TYPE_25__*, %struct.TYPE_25__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %282, i32 0, i32 0
  %284 = load %struct.TYPE_22__*, %struct.TYPE_22__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %284, i32 0, i32 6
  store i8* %275, i8** %285, align 8
  %286 = load i8*, i8** @graph_port_format_commit, align 8
  %287 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %287, i32 0, i32 6
  %289 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %288, align 8
  %290 = load i32, i32* %8, align 4
  %291 = zext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %289, i64 %291
  %293 = load %struct.TYPE_25__*, %struct.TYPE_25__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %293, i32 0, i32 0
  %295 = load %struct.TYPE_22__*, %struct.TYPE_22__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %295, i32 0, i32 5
  store i8* %286, i8** %296, align 8
  %297 = load i8*, i8** @graph_port_parameter_get, align 8
  %298 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %298, i32 0, i32 6
  %300 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %299, align 8
  %301 = load i32, i32* %8, align 4
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %300, i64 %302
  %304 = load %struct.TYPE_25__*, %struct.TYPE_25__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %304, i32 0, i32 0
  %306 = load %struct.TYPE_22__*, %struct.TYPE_22__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %306, i32 0, i32 4
  store i8* %297, i8** %307, align 8
  %308 = load i8*, i8** @graph_port_parameter_set, align 8
  %309 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %309, i32 0, i32 6
  %311 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %310, align 8
  %312 = load i32, i32* %8, align 4
  %313 = zext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %311, i64 %313
  %315 = load %struct.TYPE_25__*, %struct.TYPE_25__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %315, i32 0, i32 0
  %317 = load %struct.TYPE_22__*, %struct.TYPE_22__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %317, i32 0, i32 3
  store i8* %308, i8** %318, align 8
  %319 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %320 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %319, i32 0, i32 8
  %321 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %320, align 8
  %322 = load i32, i32* %8, align 4
  %323 = zext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %321, i64 %323
  %325 = load %struct.TYPE_30__*, %struct.TYPE_30__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %325, i32 0, i32 0
  %327 = load %struct.TYPE_29__*, %struct.TYPE_29__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %345

331:                                              ; preds = %241
  br i1 false, label %332, label %345

332:                                              ; preds = %331
  %333 = load i8*, i8** @graph_port_connect, align 8
  %334 = bitcast i8* %333 to i32*
  %335 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %335, i32 0, i32 6
  %337 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %336, align 8
  %338 = load i32, i32* %8, align 4
  %339 = zext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %337, i64 %339
  %341 = load %struct.TYPE_25__*, %struct.TYPE_25__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %341, i32 0, i32 0
  %343 = load %struct.TYPE_22__*, %struct.TYPE_22__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %343, i32 0, i32 2
  store i32* %334, i32** %344, align 8
  br label %345

345:                                              ; preds = %332, %331, %241
  %346 = load i8*, i8** @graph_port_payload_alloc, align 8
  %347 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %347, i32 0, i32 6
  %349 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %348, align 8
  %350 = load i32, i32* %8, align 4
  %351 = zext i32 %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %349, i64 %351
  %353 = load %struct.TYPE_25__*, %struct.TYPE_25__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %353, i32 0, i32 0
  %355 = load %struct.TYPE_22__*, %struct.TYPE_22__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %355, i32 0, i32 1
  store i8* %346, i8** %356, align 8
  %357 = load i8*, i8** @graph_port_payload_free, align 8
  %358 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %359 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %358, i32 0, i32 6
  %360 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %359, align 8
  %361 = load i32, i32* %8, align 4
  %362 = zext i32 %361 to i64
  %363 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %360, i64 %362
  %364 = load %struct.TYPE_25__*, %struct.TYPE_25__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %364, i32 0, i32 0
  %366 = load %struct.TYPE_22__*, %struct.TYPE_22__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %366, i32 0, i32 0
  store i8* %357, i8** %367, align 8
  %368 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %369 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %370 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %369, i32 0, i32 6
  %371 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %370, align 8
  %372 = load i32, i32* %8, align 4
  %373 = zext i32 %372 to i64
  %374 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %371, i64 %373
  %375 = load %struct.TYPE_25__*, %struct.TYPE_25__** %374, align 8
  %376 = load i32, i32* @MMAL_TRUE, align 4
  %377 = call i64 @graph_port_update(%struct.TYPE_23__* %368, %struct.TYPE_25__* %375, i32 %376)
  store i64 %377, i64* %6, align 8
  %378 = load i64, i64* %6, align 8
  %379 = load i64, i64* @MMAL_SUCCESS, align 8
  %380 = icmp ne i64 %378, %379
  br i1 %380, label %381, label %382

381:                                              ; preds = %345
  br label %648

382:                                              ; preds = %345
  br label %383

383:                                              ; preds = %382
  %384 = load i32, i32* %8, align 4
  %385 = add i32 %384, 1
  store i32 %385, i32* %8, align 4
  br label %235

386:                                              ; preds = %235
  %387 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %388 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 8
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %406

391:                                              ; preds = %386
  %392 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %393 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %394 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %393, i32 0, i32 2
  %395 = load i32, i32* %394, align 8
  %396 = call %struct.TYPE_25__** @mmal_ports_clock_alloc(%struct.TYPE_24__* %392, i32 %395, i32 0, i32* null)
  %397 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %398 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %397, i32 0, i32 5
  store %struct.TYPE_25__** %396, %struct.TYPE_25__*** %398, align 8
  %399 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %400 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %399, i32 0, i32 5
  %401 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %400, align 8
  %402 = icmp ne %struct.TYPE_25__** %401, null
  br i1 %402, label %405, label %403

403:                                              ; preds = %391
  %404 = load i64, i64* @MMAL_ENOMEM, align 8
  store i64 %404, i64* %6, align 8
  br label %648

405:                                              ; preds = %391
  br label %406

406:                                              ; preds = %405, %386
  %407 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %408 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %407, i32 0, i32 2
  %409 = load i32, i32* %408, align 8
  %410 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %411 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %410, i32 0, i32 2
  store i32 %409, i32* %411, align 8
  store i32 0, i32* %8, align 4
  br label %412

412:                                              ; preds = %543, %406
  %413 = load i32, i32* %8, align 4
  %414 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %415 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %414, i32 0, i32 2
  %416 = load i32, i32* %415, align 8
  %417 = icmp ult i32 %413, %416
  br i1 %417, label %418, label %546

418:                                              ; preds = %412
  %419 = load i8*, i8** @graph_port_enable, align 8
  %420 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %421 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %420, i32 0, i32 5
  %422 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %421, align 8
  %423 = load i32, i32* %8, align 4
  %424 = zext i32 %423 to i64
  %425 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %422, i64 %424
  %426 = load %struct.TYPE_25__*, %struct.TYPE_25__** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %426, i32 0, i32 0
  %428 = load %struct.TYPE_22__*, %struct.TYPE_22__** %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %428, i32 0, i32 9
  store i8* %419, i8** %429, align 8
  %430 = load i8*, i8** @graph_port_disable, align 8
  %431 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %432 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %431, i32 0, i32 5
  %433 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %432, align 8
  %434 = load i32, i32* %8, align 4
  %435 = zext i32 %434 to i64
  %436 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %433, i64 %435
  %437 = load %struct.TYPE_25__*, %struct.TYPE_25__** %436, align 8
  %438 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %437, i32 0, i32 0
  %439 = load %struct.TYPE_22__*, %struct.TYPE_22__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %439, i32 0, i32 8
  store i8* %430, i8** %440, align 8
  %441 = load i8*, i8** @graph_port_flush, align 8
  %442 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %443 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %442, i32 0, i32 5
  %444 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %443, align 8
  %445 = load i32, i32* %8, align 4
  %446 = zext i32 %445 to i64
  %447 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %444, i64 %446
  %448 = load %struct.TYPE_25__*, %struct.TYPE_25__** %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %448, i32 0, i32 0
  %450 = load %struct.TYPE_22__*, %struct.TYPE_22__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %450, i32 0, i32 7
  store i8* %441, i8** %451, align 8
  %452 = load i8*, i8** @graph_port_send, align 8
  %453 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %454 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %453, i32 0, i32 5
  %455 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %454, align 8
  %456 = load i32, i32* %8, align 4
  %457 = zext i32 %456 to i64
  %458 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %455, i64 %457
  %459 = load %struct.TYPE_25__*, %struct.TYPE_25__** %458, align 8
  %460 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %459, i32 0, i32 0
  %461 = load %struct.TYPE_22__*, %struct.TYPE_22__** %460, align 8
  %462 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %461, i32 0, i32 6
  store i8* %452, i8** %462, align 8
  %463 = load i8*, i8** @graph_port_format_commit, align 8
  %464 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %465 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %464, i32 0, i32 5
  %466 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %465, align 8
  %467 = load i32, i32* %8, align 4
  %468 = zext i32 %467 to i64
  %469 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %466, i64 %468
  %470 = load %struct.TYPE_25__*, %struct.TYPE_25__** %469, align 8
  %471 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %470, i32 0, i32 0
  %472 = load %struct.TYPE_22__*, %struct.TYPE_22__** %471, align 8
  %473 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %472, i32 0, i32 5
  store i8* %463, i8** %473, align 8
  %474 = load i8*, i8** @graph_port_parameter_get, align 8
  %475 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %476 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %475, i32 0, i32 5
  %477 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %476, align 8
  %478 = load i32, i32* %8, align 4
  %479 = zext i32 %478 to i64
  %480 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %477, i64 %479
  %481 = load %struct.TYPE_25__*, %struct.TYPE_25__** %480, align 8
  %482 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %481, i32 0, i32 0
  %483 = load %struct.TYPE_22__*, %struct.TYPE_22__** %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %483, i32 0, i32 4
  store i8* %474, i8** %484, align 8
  %485 = load i8*, i8** @graph_port_parameter_set, align 8
  %486 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %487 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %486, i32 0, i32 5
  %488 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %487, align 8
  %489 = load i32, i32* %8, align 4
  %490 = zext i32 %489 to i64
  %491 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %488, i64 %490
  %492 = load %struct.TYPE_25__*, %struct.TYPE_25__** %491, align 8
  %493 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %492, i32 0, i32 0
  %494 = load %struct.TYPE_22__*, %struct.TYPE_22__** %493, align 8
  %495 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %494, i32 0, i32 3
  store i8* %485, i8** %495, align 8
  %496 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %497 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %496, i32 0, i32 5
  %498 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %497, align 8
  %499 = load i32, i32* %8, align 4
  %500 = zext i32 %499 to i64
  %501 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %498, i64 %500
  %502 = load %struct.TYPE_25__*, %struct.TYPE_25__** %501, align 8
  %503 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %502, i32 0, i32 0
  %504 = load %struct.TYPE_22__*, %struct.TYPE_22__** %503, align 8
  %505 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %504, i32 0, i32 2
  store i32* null, i32** %505, align 8
  %506 = load i8*, i8** @graph_port_payload_alloc, align 8
  %507 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %508 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %507, i32 0, i32 5
  %509 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %508, align 8
  %510 = load i32, i32* %8, align 4
  %511 = zext i32 %510 to i64
  %512 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %509, i64 %511
  %513 = load %struct.TYPE_25__*, %struct.TYPE_25__** %512, align 8
  %514 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %513, i32 0, i32 0
  %515 = load %struct.TYPE_22__*, %struct.TYPE_22__** %514, align 8
  %516 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %515, i32 0, i32 1
  store i8* %506, i8** %516, align 8
  %517 = load i8*, i8** @graph_port_payload_free, align 8
  %518 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %519 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %518, i32 0, i32 5
  %520 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %519, align 8
  %521 = load i32, i32* %8, align 4
  %522 = zext i32 %521 to i64
  %523 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %520, i64 %522
  %524 = load %struct.TYPE_25__*, %struct.TYPE_25__** %523, align 8
  %525 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %524, i32 0, i32 0
  %526 = load %struct.TYPE_22__*, %struct.TYPE_22__** %525, align 8
  %527 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %526, i32 0, i32 0
  store i8* %517, i8** %527, align 8
  %528 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %529 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %530 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %529, i32 0, i32 5
  %531 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %530, align 8
  %532 = load i32, i32* %8, align 4
  %533 = zext i32 %532 to i64
  %534 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %531, i64 %533
  %535 = load %struct.TYPE_25__*, %struct.TYPE_25__** %534, align 8
  %536 = load i32, i32* @MMAL_TRUE, align 4
  %537 = call i64 @graph_port_update(%struct.TYPE_23__* %528, %struct.TYPE_25__* %535, i32 %536)
  store i64 %537, i64* %6, align 8
  %538 = load i64, i64* %6, align 8
  %539 = load i64, i64* @MMAL_SUCCESS, align 8
  %540 = icmp ne i64 %538, %539
  br i1 %540, label %541, label %542

541:                                              ; preds = %418
  br label %648

542:                                              ; preds = %418
  br label %543

543:                                              ; preds = %542
  %544 = load i32, i32* %8, align 4
  %545 = add i32 %544, 1
  store i32 %545, i32* %8, align 4
  br label %412

546:                                              ; preds = %412
  %547 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %548 = load i32, i32* @graph_do_processing_loop, align 4
  %549 = call i64 @mmal_component_action_register(%struct.TYPE_24__* %547, i32 %548)
  store i64 %549, i64* %6, align 8
  %550 = load i64, i64* %6, align 8
  %551 = load i64, i64* @MMAL_SUCCESS, align 8
  %552 = icmp ne i64 %550, %551
  br i1 %552, label %553, label %554

553:                                              ; preds = %546
  br label %648

554:                                              ; preds = %546
  store i32 0, i32* %8, align 4
  br label %555

555:                                              ; preds = %581, %554
  %556 = load i32, i32* %8, align 4
  %557 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %558 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %557, i32 0, i32 3
  %559 = load i32, i32* %558, align 4
  %560 = icmp ult i32 %556, %559
  br i1 %560, label %561, label %584

561:                                              ; preds = %555
  %562 = load i32, i32* @graph_component_connection_cb, align 4
  %563 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %564 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %563, i32 0, i32 7
  %565 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %564, align 8
  %566 = load i32, i32* %8, align 4
  %567 = zext i32 %566 to i64
  %568 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %565, i64 %567
  %569 = load %struct.TYPE_31__*, %struct.TYPE_31__** %568, align 8
  %570 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %569, i32 0, i32 1
  store i32 %562, i32* %570, align 8
  %571 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %572 = bitcast %struct.TYPE_24__* %571 to i8*
  %573 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %574 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %573, i32 0, i32 7
  %575 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %574, align 8
  %576 = load i32, i32* %8, align 4
  %577 = zext i32 %576 to i64
  %578 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %575, i64 %577
  %579 = load %struct.TYPE_31__*, %struct.TYPE_31__** %578, align 8
  %580 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %579, i32 0, i32 0
  store i8* %572, i8** %580, align 8
  br label %581

581:                                              ; preds = %561
  %582 = load i32, i32* %8, align 4
  %583 = add i32 %582, 1
  store i32 %583, i32* %8, align 4
  br label %555

584:                                              ; preds = %555
  %585 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %586 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %585, i32 0, i32 4
  %587 = load %struct.TYPE_33__*, %struct.TYPE_33__** %586, align 8
  %588 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %587, i32 0, i32 2
  store i32 (%struct.TYPE_24__*)* @graph_component_destroy, i32 (%struct.TYPE_24__*)** %588, align 8
  %589 = load i32, i32* @graph_component_enable, align 4
  %590 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %591 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %590, i32 0, i32 4
  %592 = load %struct.TYPE_33__*, %struct.TYPE_33__** %591, align 8
  %593 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %592, i32 0, i32 1
  store i32 %589, i32* %593, align 4
  %594 = load i32, i32* @graph_component_disable, align 4
  %595 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %596 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %595, i32 0, i32 4
  %597 = load %struct.TYPE_33__*, %struct.TYPE_33__** %596, align 8
  %598 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %597, i32 0, i32 0
  store i32 %594, i32* %598, align 8
  %599 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %600 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %601 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %600, i32 0, i32 6
  store %struct.TYPE_24__* %599, %struct.TYPE_24__** %601, align 8
  store i32 0, i32* %8, align 4
  br label %602

602:                                              ; preds = %643, %584
  %603 = load i32, i32* %8, align 4
  %604 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %605 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %604, i32 0, i32 4
  %606 = load i32, i32* %605, align 8
  %607 = icmp ult i32 %603, %606
  br i1 %607, label %608, label %646

608:                                              ; preds = %602
  %609 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %610 = bitcast %struct.TYPE_24__* %609 to i8*
  %611 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %612 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %611, i32 0, i32 5
  %613 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %612, align 8
  %614 = load i32, i32* %8, align 4
  %615 = zext i32 %614 to i64
  %616 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %613, i64 %615
  %617 = load %struct.TYPE_32__*, %struct.TYPE_32__** %616, align 8
  %618 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %617, i32 0, i32 0
  %619 = load %struct.TYPE_26__*, %struct.TYPE_26__** %618, align 8
  %620 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %619, i32 0, i32 0
  store i8* %610, i8** %620, align 8
  %621 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %622 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %621, i32 0, i32 5
  %623 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %622, align 8
  %624 = load i32, i32* %8, align 4
  %625 = zext i32 %624 to i64
  %626 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %623, i64 %625
  %627 = load %struct.TYPE_32__*, %struct.TYPE_32__** %626, align 8
  %628 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %627, i32 0, i32 0
  %629 = load %struct.TYPE_26__*, %struct.TYPE_26__** %628, align 8
  %630 = load i32, i32* @graph_component_control_cb, align 4
  %631 = call i64 @mmal_port_enable(%struct.TYPE_26__* %629, i32 %630)
  store i64 %631, i64* %6, align 8
  %632 = load i64, i64* %6, align 8
  %633 = load i64, i64* @MMAL_SUCCESS, align 8
  %634 = icmp ne i64 %632, %633
  br i1 %634, label %635, label %642

635:                                              ; preds = %608
  %636 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %637 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %636, i32 0, i32 3
  %638 = load %struct.TYPE_35__*, %struct.TYPE_35__** %637, align 8
  %639 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %638, i32 0, i32 0
  %640 = load i32, i32* %639, align 8
  %641 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %640)
  br label %642

642:                                              ; preds = %635, %608
  br label %643

643:                                              ; preds = %642
  %644 = load i32, i32* %8, align 4
  %645 = add i32 %644, 1
  store i32 %645, i32* %8, align 4
  br label %602

646:                                              ; preds = %602
  %647 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %647, i64* %3, align 8
  br label %652

648:                                              ; preds = %553, %541, %403, %381, %227, %203, %49
  %649 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %650 = call i32 @graph_component_destroy(%struct.TYPE_24__* %649)
  %651 = load i64, i64* %6, align 8
  store i64 %651, i64* %3, align 8
  br label %652

652:                                              ; preds = %648, %646
  %653 = load i64, i64* %3, align 8
  ret i64 %653
}

declare dso_local i32 @MMAL_PARAM_UNUSED(i8*) #1

declare dso_local i8* @mmal_ports_alloc(%struct.TYPE_24__*, i32, i32, i32) #1

declare dso_local i64 @graph_port_update(%struct.TYPE_23__*, %struct.TYPE_25__*, i32) #1

declare dso_local %struct.TYPE_25__** @mmal_ports_clock_alloc(%struct.TYPE_24__*, i32, i32, i32*) #1

declare dso_local i64 @mmal_component_action_register(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @graph_component_destroy(%struct.TYPE_24__*) #1

declare dso_local i64 @mmal_port_enable(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @LOG_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
