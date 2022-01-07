; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/client/brcmjpeg/extr_brcmjpeg.c_brcmjpeg_configure_decoder.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/client/brcmjpeg/extr_brcmjpeg.c_brcmjpeg_configure_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_14__*, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_19__**, i8* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__*, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_21__ = type { i64, i32 }

@MMAL_SUCCESS = common dso_local global i8* null, align 8
@BRCMJPEG_SUCCESS = common dso_local global i32 0, align 4
@MMAL_ENCODING_I420 = common dso_local global i64 0, align 8
@MMAL_ENCODING_I422 = common dso_local global i64 0, align 8
@MMAL_ENCODING_RGBA = common dso_local global i64 0, align 8
@MMAL_EINVAL = common dso_local global i8* null, align 8
@OUTPUT_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"format not supported\00", align 1
@EXECUTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to disable output port\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to commit output port format\00", align 1
@MMAL_WRAPPER_FLAG_PAYLOAD_USE_SHARED_MEMORY = common dso_local global i32 0, align 4
@MMAL_WRAPPER_FLAG_PAYLOAD_ALLOCATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to enable output port\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"decoder configured (%4.4s:%ux%u|%ux%u)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_21__*)* @brcmjpeg_configure_decoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmjpeg_configure_decoder(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %10 = load i8*, i8** @MMAL_SUCCESS, align 8
  store i8* %10, i8** %6, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @brcmjpeg_pixfmt_to_encoding(i32 %13)
  store i64 %14, i64* %7, align 8
  %15 = load i32, i32* @BRCMJPEG_SUCCESS, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @MMAL_ENCODING_I420, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @MMAL_ENCODING_I422, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @MMAL_ENCODING_RGBA, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i8*, i8** @MMAL_EINVAL, align 8
  store i8* %28, i8** %6, align 8
  br label %29

29:                                               ; preds = %27, %23, %19, %2
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* @OUTPUT_FORMAT, align 4
  %32 = call i32 @CHECK_MMAL_STATUS(i8* %30, i32 %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load i8*, i8** @MMAL_SUCCESS, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  store i8* %35, i8** %39, align 8
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %44, i64 0
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %45, align 8
  store %struct.TYPE_19__* %46, %struct.TYPE_19__** %8, align 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %29
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %53 = call i8* @mmal_wrapper_port_disable(%struct.TYPE_19__* %52)
  store i8* %53, i8** %6, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* @EXECUTE, align 4
  %56 = call i32 @CHECK_MMAL_STATUS(i8* %54, i32 %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %51, %29
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  store i64 %58, i64* %62, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  store i64 0, i64* %92, align 8
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %94 = call i8* @mmal_port_format_commit(%struct.TYPE_19__* %93)
  store i8* %94, i8** %6, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = load i32, i32* @OUTPUT_FORMAT, align 4
  %97 = call i32 @CHECK_MMAL_STATUS(i8* %95, i32 %96, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %57
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %106 = load i32, i32* @MMAL_WRAPPER_FLAG_PAYLOAD_USE_SHARED_MEMORY, align 4
  %107 = call i8* @mmal_wrapper_port_enable(%struct.TYPE_19__* %105, i32 %106)
  store i8* %107, i8** %6, align 8
  br label %112

108:                                              ; preds = %57
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %110 = load i32, i32* @MMAL_WRAPPER_FLAG_PAYLOAD_ALLOCATE, align 4
  %111 = call i8* @mmal_wrapper_port_enable(%struct.TYPE_19__* %109, i32 %110)
  store i8* %111, i8** %6, align 8
  br label %112

112:                                              ; preds = %108, %104
  %113 = load i8*, i8** %6, align 8
  %114 = load i32, i32* @EXECUTE, align 4
  %115 = call i32 @CHECK_MMAL_STATUS(i8* %113, i32 %114, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  %120 = bitcast i64* %119 to i8*
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @LOG_DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %120, i64 %129, i64 %138, i64 %146, i64 %154)
  %156 = load i32, i32* @BRCMJPEG_SUCCESS, align 4
  store i32 %156, i32* %3, align 4
  br label %159

157:                                              ; No predecessors!
  %158 = load i32, i32* %9, align 4
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %157, %112
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i64 @brcmjpeg_pixfmt_to_encoding(i32) #1

declare dso_local i32 @CHECK_MMAL_STATUS(i8*, i32, i8*) #1

declare dso_local i8* @mmal_wrapper_port_disable(%struct.TYPE_19__*) #1

declare dso_local i8* @mmal_port_format_commit(%struct.TYPE_19__*) #1

declare dso_local i8* @mmal_wrapper_port_enable(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @LOG_DEBUG(i8*, i8*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
