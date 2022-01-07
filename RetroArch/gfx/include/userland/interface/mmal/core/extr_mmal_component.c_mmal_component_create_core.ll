; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_component.c_mmal_component_create_core.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_component.c_mmal_component_create_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i8*, i32, i32, i32, i32, %struct.TYPE_16__**, %struct.TYPE_16__**, %struct.TYPE_16__**, %struct.TYPE_16__**, %struct.TYPE_16__*, i64, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i32, i64, i32, i32, i64, i64, i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.MMAL_COMPONENT_MODULE_T*, i32 }
%struct.MMAL_COMPONENT_MODULE_T = type { i32 }
%struct.TYPE_19__ = type { i32 }

@MMAL_ENOMEM = common dso_local global i32 0, align 4
@MMAL_EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"mmal component\00", align 1
@VCOS_THREAD_PRI_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"mmal component lock\00", align 1
@VCOS_SUCCESS = common dso_local global i64 0, align 8
@mmal_core_lock = common dso_local global i32 0, align 4
@mmal_core_instance_count = common dso_local global i32 0, align 4
@MMAL_PORT_TYPE_CONTROL = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i32 0, align 4
@MMAL_ENOSYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"could not find component '%s'\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"could not create component '%s' (%i)\00", align 1
@MMAL_CONTROL_PORT_BUFFERS_MIN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"could not create event pool (%d, %d)\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"mmal ports\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"could not create list of ports\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"created '%s' %d %p\00", align 1
@MMAL_PORT_TYPE_INPUT = common dso_local global i32 0, align 4
@MMAL_PORT_TYPE_OUTPUT = common dso_local global i32 0, align 4
@MMAL_PORT_TYPE_CLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32 (i8*, %struct.TYPE_17__*)*, %struct.MMAL_COMPONENT_MODULE_T*, %struct.TYPE_17__**)* @mmal_component_create_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmal_component_create_core(i8* %0, i32 (i8*, %struct.TYPE_17__*)* %1, %struct.MMAL_COMPONENT_MODULE_T* %2, %struct.TYPE_17__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32 (i8*, %struct.TYPE_17__*)*, align 8
  %8 = alloca %struct.MMAL_COMPONENT_MODULE_T*, align 8
  %9 = alloca %struct.TYPE_17__**, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca %struct.TYPE_16__*, align 8
  %19 = alloca %struct.TYPE_16__*, align 8
  %20 = alloca %struct.TYPE_16__*, align 8
  store i8* %0, i8** %6, align 8
  store i32 (i8*, %struct.TYPE_17__*)* %1, i32 (i8*, %struct.TYPE_17__*)** %7, align 8
  store %struct.MMAL_COMPONENT_MODULE_T* %2, %struct.MMAL_COMPONENT_MODULE_T** %8, align 8
  store %struct.TYPE_17__** %3, %struct.TYPE_17__*** %9, align 8
  %21 = load i32, i32* @MMAL_ENOMEM, align 4
  store i32 %21, i32* %11, align 4
  store i32 84, i32* %12, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %14, align 4
  %25 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %26 = icmp ne %struct.TYPE_17__** %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @MMAL_EINVAL, align 4
  store i32 %28, i32* %5, align 4
  br label %527

29:                                               ; preds = %4
  %30 = call i32 (...) @mmal_core_init()
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %14, align 4
  %33 = add i32 %31, %32
  %34 = call %struct.TYPE_17__* @vcos_calloc(i32 1, i32 %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  store %struct.TYPE_17__* %34, %struct.TYPE_17__** %35, align 8
  %36 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %36, align 8
  %38 = icmp ne %struct.TYPE_17__* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* @MMAL_ENOMEM, align 4
  store i32 %40, i32* %5, align 4
  br label %527

41:                                               ; preds = %29
  %42 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i64 1
  %45 = bitcast %struct.TYPE_17__* %44 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %45, %struct.TYPE_19__** %10, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %47 = bitcast %struct.TYPE_19__* %46 to %struct.TYPE_18__*
  %48 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 11
  store %struct.TYPE_18__* %47, %struct.TYPE_18__** %50, align 8
  %51 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 11
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %53, align 8
  %55 = bitcast %struct.TYPE_18__* %54 to %struct.TYPE_19__*
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i64 1
  %57 = bitcast %struct.TYPE_19__* %56 to i8*
  store i8* %57, i8** %16, align 8
  %58 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  store i8* %57, i8** %60, align 8
  %61 = load i8*, i8** %16, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @memcpy(i8* %61, i8* %62, i32 %63)
  %65 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 11
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load i32, i32* @VCOS_THREAD_PRI_NORMAL, align 4
  %71 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 11
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 3
  store i32 %70, i32* %75, align 8
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = call i64 @vcos_mutex_create(i32* %77, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i64, i64* @VCOS_SUCCESS, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %41
  %82 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %82, align 8
  %84 = call i32 @vcos_free(%struct.TYPE_17__* %83)
  %85 = load i32, i32* @MMAL_ENOMEM, align 4
  store i32 %85, i32* %5, align 4
  br label %527

86:                                               ; preds = %41
  %87 = call i32 @vcos_mutex_lock(i32* @mmal_core_lock)
  %88 = load i32, i32* @mmal_core_instance_count, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* @mmal_core_instance_count, align 4
  %90 = sext i32 %88 to i64
  %91 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 10
  store i64 %90, i64* %93, align 8
  %94 = call i32 @vcos_mutex_unlock(i32* @mmal_core_lock)
  %95 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %95, align 8
  %97 = load i32, i32* @MMAL_PORT_TYPE_CONTROL, align 4
  %98 = call %struct.TYPE_16__* @mmal_port_alloc(%struct.TYPE_17__* %96, i32 %97, i32 0)
  %99 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 9
  store %struct.TYPE_16__* %98, %struct.TYPE_16__** %101, align 8
  %102 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 9
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %104, align 8
  %106 = icmp ne %struct.TYPE_16__* %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %86
  br label %521

108:                                              ; preds = %86
  %109 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 9
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %111, align 8
  %113 = call i32 @mmal_component_init_control_port(%struct.TYPE_16__* %112)
  %114 = load %struct.MMAL_COMPONENT_MODULE_T*, %struct.MMAL_COMPONENT_MODULE_T** %8, align 8
  %115 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 11
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 2
  store %struct.MMAL_COMPONENT_MODULE_T* %114, %struct.MMAL_COMPONENT_MODULE_T** %119, align 8
  %120 = load i32 (i8*, %struct.TYPE_17__*)*, i32 (i8*, %struct.TYPE_17__*)** %7, align 8
  %121 = icmp ne i32 (i8*, %struct.TYPE_17__*)* %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %108
  store i32 (i8*, %struct.TYPE_17__*)* @mmal_component_supplier_create, i32 (i8*, %struct.TYPE_17__*)** %7, align 8
  br label %123

123:                                              ; preds = %122, %108
  %124 = load i32 (i8*, %struct.TYPE_17__*)*, i32 (i8*, %struct.TYPE_17__*)** %7, align 8
  %125 = load i8*, i8** %6, align 8
  %126 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %126, align 8
  %128 = call i32 %124(i8* %125, %struct.TYPE_17__* %127)
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* @MMAL_SUCCESS, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %144

132:                                              ; preds = %123
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* @MMAL_ENOSYS, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load i8*, i8** %6, align 8
  %138 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %137)
  br label %143

139:                                              ; preds = %132
  %140 = load i8*, i8** %6, align 8
  %141 = load i32, i32* %11, align 4
  %142 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %140, i32 %141)
  br label %143

143:                                              ; preds = %139, %136
  br label %521

144:                                              ; preds = %123
  %145 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 9
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = icmp ult i64 %151, 12
  br i1 %152, label %153, label %159

153:                                              ; preds = %144
  %154 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 9
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  store i32 12, i32* %158, align 8
  br label %159

159:                                              ; preds = %153, %144
  %160 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 9
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @MMAL_CONTROL_PORT_BUFFERS_MIN, align 8
  %167 = icmp slt i64 %165, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %159
  %169 = load i64, i64* @MMAL_CONTROL_PORT_BUFFERS_MIN, align 8
  %170 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 9
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 1
  store i64 %169, i64* %174, align 8
  br label %175

175:                                              ; preds = %168, %159
  %176 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 9
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 9
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @mmal_pool_create(i64 %181, i32 %187)
  %189 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 11
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 1
  store i32 %188, i32* %193, align 4
  %194 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 11
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %216, label %201

201:                                              ; preds = %175
  %202 = load i32, i32* @MMAL_ENOMEM, align 4
  store i32 %202, i32* %11, align 4
  %203 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 9
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 9
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %208, i32 %214)
  br label %521

216:                                              ; preds = %175
  %217 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = add i32 %220, %224
  %226 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 4
  %230 = add i32 %225, %229
  %231 = add i32 %230, 1
  %232 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 1
  store i32 %231, i32* %234, align 8
  %235 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = zext i32 %238 to i64
  %240 = mul i64 %239, 8
  %241 = trunc i64 %240 to i32
  %242 = call %struct.TYPE_16__** @vcos_malloc(i32 %241, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %243 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 5
  store %struct.TYPE_16__** %242, %struct.TYPE_16__*** %245, align 8
  %246 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %247, i32 0, i32 5
  %249 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %248, align 8
  %250 = icmp ne %struct.TYPE_16__** %249, null
  br i1 %250, label %254, label %251

251:                                              ; preds = %216
  %252 = load i32, i32* @MMAL_ENOMEM, align 4
  store i32 %252, i32* %11, align 4
  %253 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %521

254:                                              ; preds = %216
  store i32 0, i32* %15, align 4
  %255 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 9
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %257, align 8
  %259 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 5
  %262 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %261, align 8
  %263 = load i32, i32* %15, align 4
  %264 = add i32 %263, 1
  store i32 %264, i32* %15, align 4
  %265 = zext i32 %263 to i64
  %266 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %262, i64 %265
  store %struct.TYPE_16__* %258, %struct.TYPE_16__** %266, align 8
  store i32 0, i32* %13, align 4
  br label %267

267:                                              ; preds = %291, %254
  %268 = load i32, i32* %13, align 4
  %269 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %270 = load %struct.TYPE_17__*, %struct.TYPE_17__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = icmp ult i32 %268, %272
  br i1 %273, label %274, label %294

274:                                              ; preds = %267
  %275 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %276 = load %struct.TYPE_17__*, %struct.TYPE_17__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %276, i32 0, i32 8
  %278 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %277, align 8
  %279 = load i32, i32* %13, align 4
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %278, i64 %280
  %282 = load %struct.TYPE_16__*, %struct.TYPE_16__** %281, align 8
  %283 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %284 = load %struct.TYPE_17__*, %struct.TYPE_17__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %284, i32 0, i32 5
  %286 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %285, align 8
  %287 = load i32, i32* %15, align 4
  %288 = add i32 %287, 1
  store i32 %288, i32* %15, align 4
  %289 = zext i32 %287 to i64
  %290 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %286, i64 %289
  store %struct.TYPE_16__* %282, %struct.TYPE_16__** %290, align 8
  br label %291

291:                                              ; preds = %274
  %292 = load i32, i32* %13, align 4
  %293 = add i32 %292, 1
  store i32 %293, i32* %13, align 4
  br label %267

294:                                              ; preds = %267
  store i32 0, i32* %13, align 4
  br label %295

295:                                              ; preds = %319, %294
  %296 = load i32, i32* %13, align 4
  %297 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %298 = load %struct.TYPE_17__*, %struct.TYPE_17__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 8
  %301 = icmp ult i32 %296, %300
  br i1 %301, label %302, label %322

302:                                              ; preds = %295
  %303 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %304 = load %struct.TYPE_17__*, %struct.TYPE_17__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i32 0, i32 7
  %306 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %305, align 8
  %307 = load i32, i32* %13, align 4
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %306, i64 %308
  %310 = load %struct.TYPE_16__*, %struct.TYPE_16__** %309, align 8
  %311 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %312 = load %struct.TYPE_17__*, %struct.TYPE_17__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %312, i32 0, i32 5
  %314 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %313, align 8
  %315 = load i32, i32* %15, align 4
  %316 = add i32 %315, 1
  store i32 %316, i32* %15, align 4
  %317 = zext i32 %315 to i64
  %318 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %314, i64 %317
  store %struct.TYPE_16__* %310, %struct.TYPE_16__** %318, align 8
  br label %319

319:                                              ; preds = %302
  %320 = load i32, i32* %13, align 4
  %321 = add i32 %320, 1
  store i32 %321, i32* %13, align 4
  br label %295

322:                                              ; preds = %295
  store i32 0, i32* %13, align 4
  br label %323

323:                                              ; preds = %347, %322
  %324 = load i32, i32* %13, align 4
  %325 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %326 = load %struct.TYPE_17__*, %struct.TYPE_17__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %326, i32 0, i32 4
  %328 = load i32, i32* %327, align 4
  %329 = icmp ult i32 %324, %328
  br i1 %329, label %330, label %350

330:                                              ; preds = %323
  %331 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %332 = load %struct.TYPE_17__*, %struct.TYPE_17__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %332, i32 0, i32 6
  %334 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %333, align 8
  %335 = load i32, i32* %13, align 4
  %336 = zext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %334, i64 %336
  %338 = load %struct.TYPE_16__*, %struct.TYPE_16__** %337, align 8
  %339 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %340 = load %struct.TYPE_17__*, %struct.TYPE_17__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %340, i32 0, i32 5
  %342 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %341, align 8
  %343 = load i32, i32* %15, align 4
  %344 = add i32 %343, 1
  store i32 %344, i32* %15, align 4
  %345 = zext i32 %343 to i64
  %346 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %342, i64 %345
  store %struct.TYPE_16__* %338, %struct.TYPE_16__** %346, align 8
  br label %347

347:                                              ; preds = %330
  %348 = load i32, i32* %13, align 4
  %349 = add i32 %348, 1
  store i32 %349, i32* %13, align 4
  br label %323

350:                                              ; preds = %323
  store i32 0, i32* %13, align 4
  br label %351

351:                                              ; preds = %369, %350
  %352 = load i32, i32* %13, align 4
  %353 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %354 = load %struct.TYPE_17__*, %struct.TYPE_17__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 8
  %357 = icmp ult i32 %352, %356
  br i1 %357, label %358, label %372

358:                                              ; preds = %351
  %359 = load i32, i32* %13, align 4
  %360 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %361 = load %struct.TYPE_17__*, %struct.TYPE_17__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %361, i32 0, i32 5
  %363 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %362, align 8
  %364 = load i32, i32* %13, align 4
  %365 = zext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %363, i64 %365
  %367 = load %struct.TYPE_16__*, %struct.TYPE_16__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %367, i32 0, i32 2
  store i32 %359, i32* %368, align 8
  br label %369

369:                                              ; preds = %358
  %370 = load i32, i32* %13, align 4
  %371 = add i32 %370, 1
  store i32 %371, i32* %13, align 4
  br label %351

372:                                              ; preds = %351
  %373 = load i8*, i8** %6, align 8
  %374 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %375 = load %struct.TYPE_17__*, %struct.TYPE_17__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %375, i32 0, i32 10
  %377 = load i64, i64* %376, align 8
  %378 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %379 = load %struct.TYPE_17__*, %struct.TYPE_17__** %378, align 8
  %380 = call i32 @LOG_INFO(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %373, i64 %377, %struct.TYPE_17__* %379)
  %381 = load i32, i32* @MMAL_PORT_TYPE_CONTROL, align 4
  %382 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %383 = load %struct.TYPE_17__*, %struct.TYPE_17__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %383, i32 0, i32 9
  %385 = load %struct.TYPE_16__*, %struct.TYPE_16__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %385, i32 0, i32 6
  store i32 %381, i32* %386, align 8
  %387 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %388 = load %struct.TYPE_17__*, %struct.TYPE_17__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %388, i32 0, i32 9
  %390 = load %struct.TYPE_16__*, %struct.TYPE_16__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %390, i32 0, i32 3
  store i32 0, i32* %391, align 4
  store i32 0, i32* %13, align 4
  br label %392

392:                                              ; preds = %414, %372
  %393 = load i32, i32* %13, align 4
  %394 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %395 = load %struct.TYPE_17__*, %struct.TYPE_17__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %395, i32 0, i32 2
  %397 = load i32, i32* %396, align 4
  %398 = icmp ult i32 %393, %397
  br i1 %398, label %399, label %417

399:                                              ; preds = %392
  %400 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %401 = load %struct.TYPE_17__*, %struct.TYPE_17__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %401, i32 0, i32 8
  %403 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %402, align 8
  %404 = load i32, i32* %13, align 4
  %405 = zext i32 %404 to i64
  %406 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %403, i64 %405
  %407 = load %struct.TYPE_16__*, %struct.TYPE_16__** %406, align 8
  store %struct.TYPE_16__* %407, %struct.TYPE_16__** %17, align 8
  %408 = load i32, i32* @MMAL_PORT_TYPE_INPUT, align 4
  %409 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %410 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %409, i32 0, i32 6
  store i32 %408, i32* %410, align 8
  %411 = load i32, i32* %13, align 4
  %412 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %413 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %412, i32 0, i32 3
  store i32 %411, i32* %413, align 4
  br label %414

414:                                              ; preds = %399
  %415 = load i32, i32* %13, align 4
  %416 = add i32 %415, 1
  store i32 %416, i32* %13, align 4
  br label %392

417:                                              ; preds = %392
  store i32 0, i32* %13, align 4
  br label %418

418:                                              ; preds = %440, %417
  %419 = load i32, i32* %13, align 4
  %420 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %421 = load %struct.TYPE_17__*, %struct.TYPE_17__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %421, i32 0, i32 3
  %423 = load i32, i32* %422, align 8
  %424 = icmp ult i32 %419, %423
  br i1 %424, label %425, label %443

425:                                              ; preds = %418
  %426 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %427 = load %struct.TYPE_17__*, %struct.TYPE_17__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %427, i32 0, i32 7
  %429 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %428, align 8
  %430 = load i32, i32* %13, align 4
  %431 = zext i32 %430 to i64
  %432 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %429, i64 %431
  %433 = load %struct.TYPE_16__*, %struct.TYPE_16__** %432, align 8
  store %struct.TYPE_16__* %433, %struct.TYPE_16__** %18, align 8
  %434 = load i32, i32* @MMAL_PORT_TYPE_OUTPUT, align 4
  %435 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %436 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %435, i32 0, i32 6
  store i32 %434, i32* %436, align 8
  %437 = load i32, i32* %13, align 4
  %438 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %439 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %438, i32 0, i32 3
  store i32 %437, i32* %439, align 4
  br label %440

440:                                              ; preds = %425
  %441 = load i32, i32* %13, align 4
  %442 = add i32 %441, 1
  store i32 %442, i32* %13, align 4
  br label %418

443:                                              ; preds = %418
  store i32 0, i32* %13, align 4
  br label %444

444:                                              ; preds = %466, %443
  %445 = load i32, i32* %13, align 4
  %446 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %447 = load %struct.TYPE_17__*, %struct.TYPE_17__** %446, align 8
  %448 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %447, i32 0, i32 4
  %449 = load i32, i32* %448, align 4
  %450 = icmp ult i32 %445, %449
  br i1 %450, label %451, label %469

451:                                              ; preds = %444
  %452 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %453 = load %struct.TYPE_17__*, %struct.TYPE_17__** %452, align 8
  %454 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %453, i32 0, i32 6
  %455 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %454, align 8
  %456 = load i32, i32* %13, align 4
  %457 = zext i32 %456 to i64
  %458 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %455, i64 %457
  %459 = load %struct.TYPE_16__*, %struct.TYPE_16__** %458, align 8
  store %struct.TYPE_16__* %459, %struct.TYPE_16__** %19, align 8
  %460 = load i32, i32* @MMAL_PORT_TYPE_CLOCK, align 4
  %461 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %462 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %461, i32 0, i32 6
  store i32 %460, i32* %462, align 8
  %463 = load i32, i32* %13, align 4
  %464 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %465 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %464, i32 0, i32 3
  store i32 %463, i32* %465, align 4
  br label %466

466:                                              ; preds = %451
  %467 = load i32, i32* %13, align 4
  %468 = add i32 %467, 1
  store i32 %468, i32* %13, align 4
  br label %444

469:                                              ; preds = %444
  store i32 0, i32* %13, align 4
  br label %470

470:                                              ; preds = %516, %469
  %471 = load i32, i32* %13, align 4
  %472 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %473 = load %struct.TYPE_17__*, %struct.TYPE_17__** %472, align 8
  %474 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %473, i32 0, i32 1
  %475 = load i32, i32* %474, align 8
  %476 = icmp ult i32 %471, %475
  br i1 %476, label %477, label %519

477:                                              ; preds = %470
  %478 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %479 = load %struct.TYPE_17__*, %struct.TYPE_17__** %478, align 8
  %480 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %479, i32 0, i32 5
  %481 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %480, align 8
  %482 = load i32, i32* %13, align 4
  %483 = zext i32 %482 to i64
  %484 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %481, i64 %483
  %485 = load %struct.TYPE_16__*, %struct.TYPE_16__** %484, align 8
  store %struct.TYPE_16__* %485, %struct.TYPE_16__** %20, align 8
  %486 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %487 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %486, i32 0, i32 4
  %488 = load i64, i64* %487, align 8
  %489 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %490 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 8
  %492 = sext i32 %491 to i64
  %493 = icmp slt i64 %488, %492
  br i1 %493, label %494, label %501

494:                                              ; preds = %477
  %495 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %496 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %495, i32 0, i32 0
  %497 = load i32, i32* %496, align 8
  %498 = sext i32 %497 to i64
  %499 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %500 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %499, i32 0, i32 4
  store i64 %498, i64* %500, align 8
  br label %501

501:                                              ; preds = %494, %477
  %502 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %503 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %502, i32 0, i32 5
  %504 = load i64, i64* %503, align 8
  %505 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %506 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %505, i32 0, i32 1
  %507 = load i64, i64* %506, align 8
  %508 = icmp slt i64 %504, %507
  br i1 %508, label %509, label %515

509:                                              ; preds = %501
  %510 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %511 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %510, i32 0, i32 1
  %512 = load i64, i64* %511, align 8
  %513 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %514 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %513, i32 0, i32 5
  store i64 %512, i64* %514, align 8
  br label %515

515:                                              ; preds = %509, %501
  br label %516

516:                                              ; preds = %515
  %517 = load i32, i32* %13, align 4
  %518 = add i32 %517, 1
  store i32 %518, i32* %13, align 4
  br label %470

519:                                              ; preds = %470
  %520 = load i32, i32* @MMAL_SUCCESS, align 4
  store i32 %520, i32* %5, align 4
  br label %527

521:                                              ; preds = %251, %201, %143, %107
  %522 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %523 = load %struct.TYPE_17__*, %struct.TYPE_17__** %522, align 8
  %524 = call i32 @mmal_component_destroy_internal(%struct.TYPE_17__* %523)
  %525 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %525, align 8
  %526 = load i32, i32* %11, align 4
  store i32 %526, i32* %5, align 4
  br label %527

527:                                              ; preds = %521, %519, %81, %39, %27
  %528 = load i32, i32* %5, align 4
  ret i32 %528
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mmal_core_init(...) #1

declare dso_local %struct.TYPE_17__* @vcos_calloc(i32, i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @vcos_mutex_create(i32*, i8*) #1

declare dso_local i32 @vcos_free(%struct.TYPE_17__*) #1

declare dso_local i32 @vcos_mutex_lock(i32*) #1

declare dso_local i32 @vcos_mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_16__* @mmal_port_alloc(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @mmal_component_init_control_port(%struct.TYPE_16__*) #1

declare dso_local i32 @mmal_component_supplier_create(i8*, %struct.TYPE_17__*) #1

declare dso_local i32 @LOG_ERROR(i8*, ...) #1

declare dso_local i32 @mmal_pool_create(i64, i32) #1

declare dso_local %struct.TYPE_16__** @vcos_malloc(i32, i8*) #1

declare dso_local i32 @LOG_INFO(i8*, i8*, i64, %struct.TYPE_17__*) #1

declare dso_local i32 @mmal_component_destroy_internal(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
