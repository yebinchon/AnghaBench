; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_artificial_camera.c_artificial_camera_do_processing.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_artificial_camera.c_artificial_camera_do_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_24__**, %struct.TYPE_19__* }
%struct.TYPE_24__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i32, %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { i32, i64* }
%struct.TYPE_19__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_27__ = type { i64, i64, i64, %struct.TYPE_23__*, i64 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }

@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"buffer too small (%i/%i)\00", align 1
@MMAL_EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"invalid buffer (%p, %p)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*)* @artificial_camera_do_processing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @artificial_camera_do_processing(%struct.TYPE_25__* %0) #0 {
  %2 = alloca %struct.TYPE_25__*, align 8
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %2, align 8
  %7 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  store %struct.TYPE_26__* %11, %struct.TYPE_26__** %3, align 8
  %12 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MMAL_SUCCESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %200

18:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %195, %18
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %198

25:                                               ; preds = %19
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %28, i64 %30
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %31, align 8
  store %struct.TYPE_24__* %32, %struct.TYPE_24__** %6, align 8
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.TYPE_27__* @mmal_queue_get(i32 %39)
  store %struct.TYPE_27__* %40, %struct.TYPE_27__** %4, align 8
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %42 = icmp ne %struct.TYPE_27__* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %25
  br label %195

44:                                               ; preds = %25
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %47, %54
  br i1 %55, label %56, label %86

56:                                               ; preds = %44
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.TYPE_27__*
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.TYPE_27__* %60, i64 %67)
  %69 = load i64, i64* @MMAL_EINVAL, align 8
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %80 = call i32 @mmal_queue_put_back(i32 %78, %struct.TYPE_27__* %79)
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @mmal_event_error_send(%struct.TYPE_25__* %81, i64 %84)
  br label %200

86:                                               ; preds = %44
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %88 = call i64 @mmal_buffer_header_mem_lock(%struct.TYPE_27__* %87)
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @MMAL_SUCCESS, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %116

96:                                               ; preds = %86
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_27__* %97, i64 %100)
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %110 = call i32 @mmal_queue_put_back(i32 %108, %struct.TYPE_27__* %109)
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @mmal_event_error_send(%struct.TYPE_25__* %111, i64 %114)
  br label %200

116:                                              ; preds = %86
  %117 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %117, i32 0, i32 4
  store i64 0, i64* %118, align 8
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %126, i32 0, i32 2
  store i64 %125, i64* %127, align 8
  %128 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %128, i32 0, i32 3
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 2
  %138 = bitcast %struct.TYPE_22__* %131 to i8*
  %139 = bitcast %struct.TYPE_22__* %137 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %138, i8* align 8 %139, i64 16, i1 false)
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @memset(i64 %142, i32 255, i64 %145)
  %147 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp sgt i32 %152, 1
  br i1 %153, label %154, label %189

154:                                              ; preds = %116
  %155 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %158, i32 0, i32 3
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 1
  %163 = load i64*, i64** %162, align 8
  %164 = getelementptr inbounds i64, i64* %163, i64 1
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %157, %165
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %172, align 8
  %175 = sub nsw i32 127, %173
  %176 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %179, i32 0, i32 3
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 1
  %184 = load i64*, i64** %183, align 8
  %185 = getelementptr inbounds i64, i64* %184, i64 1
  %186 = load i64, i64* %185, align 8
  %187 = sub nsw i64 %178, %186
  %188 = call i32 @memset(i64 %166, i32 %175, i64 %187)
  br label %189

189:                                              ; preds = %154, %116
  %190 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %191 = call i32 @mmal_buffer_header_mem_unlock(%struct.TYPE_27__* %190)
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %193 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %194 = call i32 @mmal_port_buffer_header_callback(%struct.TYPE_24__* %192, %struct.TYPE_27__* %193)
  br label %195

195:                                              ; preds = %189, %43
  %196 = load i32, i32* %5, align 4
  %197 = add i32 %196, 1
  store i32 %197, i32* %5, align 4
  br label %19

198:                                              ; preds = %19
  %199 = call i32 @vcos_sleep(i32 10)
  br label %200

200:                                              ; preds = %198, %96, %56, %17
  ret void
}

declare dso_local %struct.TYPE_27__* @mmal_queue_get(i32) #1

declare dso_local i32 @LOG_ERROR(i8*, %struct.TYPE_27__*, i64) #1

declare dso_local i32 @mmal_queue_put_back(i32, %struct.TYPE_27__*) #1

declare dso_local i32 @mmal_event_error_send(%struct.TYPE_25__*, i64) #1

declare dso_local i64 @mmal_buffer_header_mem_lock(%struct.TYPE_27__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @mmal_buffer_header_mem_unlock(%struct.TYPE_27__*) #1

declare dso_local i32 @mmal_port_buffer_header_callback(%struct.TYPE_24__*, %struct.TYPE_27__*) #1

declare dso_local i32 @vcos_sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
