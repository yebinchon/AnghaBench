; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_remap.c_config_output.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_remap.c_config_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i32, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_11__*, %struct.TYPE_14__**, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_12__*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i8*, i8*, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [116 x i8] c"Second input link %s parameters (size %dx%d) do not match the corresponding third input link %s parameters (%dx%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EXT_STOP = common dso_local global i8* null, align 8
@EXT_NULL = common dso_local global i8* null, align 8
@EXT_INFINITY = common dso_local global i8* null, align 8
@process_frame = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @config_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_output(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 5
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %4, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %5, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %19, i64 0
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %6, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %24, i64 1
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %7, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %29, i64 2
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %8, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %1
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %77

47:                                               ; preds = %39, %1
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %49 = load i32, i32* @AV_LOG_ERROR, align 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i64 1
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i64 2
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @av_log(%struct.TYPE_15__* %48, i32 %49, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str, i64 0, i64 0), i32 %55, i64 %58, i64 %61, i32 %67, i64 %70, i64 %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = call i32 @AVERROR(i32 %75)
  store i32 %76, i32* %2, align 4
  br label %180

77:                                               ; preds = %39
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %101 = call i32 @ff_framesync_init(%struct.TYPE_16__* %99, %struct.TYPE_15__* %100, i32 3)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %77
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %2, align 4
  br label %180

106:                                              ; preds = %77
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %109, align 8
  store %struct.TYPE_13__* %110, %struct.TYPE_13__** %9, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 3
  store i32 %113, i32* %116, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i64 1
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 3
  store i32 %119, i32* %122, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i64 2
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 3
  store i32 %125, i32* %128, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i64 0
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  store i32 2, i32* %131, align 8
  %132 = load i8*, i8** @EXT_STOP, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i64 0
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 2
  store i8* %132, i8** %135, align 8
  %136 = load i8*, i8** @EXT_STOP, align 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i64 0
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 1
  store i8* %136, i8** %139, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i64 1
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  store i32 1, i32* %142, align 8
  %143 = load i8*, i8** @EXT_NULL, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i64 1
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 2
  store i8* %143, i8** %146, align 8
  %147 = load i8*, i8** @EXT_INFINITY, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i64 1
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  store i8* %147, i8** %150, align 8
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i64 2
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  store i32 1, i32* %153, align 8
  %154 = load i8*, i8** @EXT_NULL, align 8
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i64 2
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 2
  store i8* %154, i8** %157, align 8
  %158 = load i8*, i8** @EXT_INFINITY, align 8
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i64 2
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 1
  store i8* %158, i8** %161, align 8
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 2
  store %struct.TYPE_12__* %162, %struct.TYPE_12__** %165, align 8
  %166 = load i32, i32* @process_frame, align 4
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 1
  store i32 %166, i32* %169, align 4
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 0
  %172 = call i32 @ff_framesync_configure(%struct.TYPE_16__* %171)
  store i32 %172, i32* %10, align 4
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 2
  store i32 %176, i32* %178, align 8
  %179 = load i32, i32* %10, align 4
  store i32 %179, i32* %2, align 4
  br label %180

180:                                              ; preds = %106, %104, %47
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*, i32, i64, i64, i32, i64, i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_framesync_init(%struct.TYPE_16__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @ff_framesync_configure(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
