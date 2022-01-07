; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/vc/extr_mmal_vc_api.c_mmal_vc_port_info_get.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/vc/extr_mmal_vc_api.c_mmal_vc_port_info_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_16__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_16__ = type { i32, i32, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i64, i32, i32, %struct.TYPE_16__, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"get port info (%i:%i)\00", align 1
@MMAL_WORKER_PORT_INFO_GET = common dso_local global i32 0, align 4
@MMAL_FALSE = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to get port info (%i:%i): %s\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"couldn't allocate extradata %i\00", align 1
@MMAL_ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*)* @mmal_vc_port_info_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mmal_vc_port_info_get(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_12__, align 4
  %6 = alloca %struct.TYPE_13__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 12
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %4, align 8
  store i64 72, i64* %7, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 3
  store i32 %16, i32* %17, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 11
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 2
  store i32 %20, i32* %21, align 4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 10
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 11
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 10
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31)
  %33 = call i32 (...) @mmal_vc_get_client()
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %35 = load i32, i32* @MMAL_WORKER_PORT_INFO_GET, align 4
  %36 = load i32, i32* @MMAL_FALSE, align 4
  %37 = call i64 @mmal_vc_sendwait_message(i32 %33, i32* %34, i32 16, i32 %35, %struct.TYPE_13__* %6, i64* %7, i32 %36)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @MMAL_SUCCESS, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %1
  %42 = load i64, i64* %7, align 8
  %43 = icmp eq i64 %42, 72
  %44 = zext i1 %43 to i32
  %45 = call i32 @vcos_assert(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %8, align 8
  br label %48

48:                                               ; preds = %41, %1
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* @MMAL_SUCCESS, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 11
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 10
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @mmal_status_to_string(i64 %59)
  %61 = call i32 (i8*, i32, ...) @LOG_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %58, i32 %60)
  %62 = load i64, i64* %8, align 8
  store i64 %62, i64* %2, align 8
  br label %188

63:                                               ; preds = %48
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 9
  store i32 %70, i32* %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 8
  store i32 %75, i32* %77, align 4
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 7
  store i32 %80, i32* %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 4
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 4
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 2
  store i32* %124, i32** %126, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 3
  %131 = bitcast %struct.TYPE_16__* %129 to i8*
  %132 = bitcast %struct.TYPE_16__* %130 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %131, i8* align 8 %132, i64 16, i1 false)
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  store i32 %134, i32* %139, align 4
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %186

146:                                              ; preds = %63
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %148, align 8
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i64 @mmal_format_extradata_alloc(%struct.TYPE_16__* %149, i32 %154)
  store i64 %155, i64* %8, align 8
  %156 = load i64, i64* %8, align 8
  %157 = load i64, i64* @MMAL_SUCCESS, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %172

159:                                              ; preds = %146
  %160 = call i32 @vcos_assert(i32 0)
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  store i32 0, i32* %164, align 8
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 (i8*, i32, ...) @LOG_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %169)
  %171 = load i64, i64* @MMAL_ENOMEM, align 8
  store i64 %171, i64* %2, align 8
  br label %188

172:                                              ; preds = %146
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @memcpy(i32 %177, i32 %179, i32 %184)
  br label %186

186:                                              ; preds = %172, %63
  %187 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %187, i64* %2, align 8
  br label %188

188:                                              ; preds = %186, %159, %52
  %189 = load i64, i64* %2, align 8
  ret i64 %189
}

declare dso_local i32 @LOG_TRACE(i8*, i32, i32) #1

declare dso_local i64 @mmal_vc_sendwait_message(i32, i32*, i32, i32, %struct.TYPE_13__*, i64*, i32) #1

declare dso_local i32 @mmal_vc_get_client(...) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @LOG_ERROR(i8*, i32, ...) #1

declare dso_local i32 @mmal_status_to_string(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @mmal_format_extradata_alloc(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
