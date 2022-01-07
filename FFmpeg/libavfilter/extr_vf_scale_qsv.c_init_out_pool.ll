; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_scale_qsv.c_init_out_pool.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_scale_qsv.c_init_out_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_18__**, %struct.TYPE_24__**, %struct.TYPE_21__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_24__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_23__ = type { i32, i32, i8*, i8*, i32, %struct.TYPE_22__*, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"No hw context provided on input\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AV_PIX_FMT_NONE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@AV_PIX_FMT_QSV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, i32, i32)* @init_out_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_out_pool(%struct.TYPE_25__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %8, align 8
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %24, i64 0
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  store %struct.TYPE_24__* %26, %struct.TYPE_24__** %9, align 8
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %29, i64 0
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %34 = icmp ne %struct.TYPE_17__* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %3
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %37 = load i32, i32* @AV_LOG_ERROR, align 4
  %38 = call i32 @av_log(%struct.TYPE_25__* %36, i32 %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = call i32 @AVERROR(i32 %39)
  store i32 %40, i32* %4, align 4
  br label %158

41:                                               ; preds = %3
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %44, i64 0
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %51, %struct.TYPE_23__** %10, align 8
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 5
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %53, align 8
  store %struct.TYPE_22__* %54, %struct.TYPE_22__** %12, align 8
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %14, align 4
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @AV_PIX_FMT_NONE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %41
  %64 = load i32, i32* %14, align 4
  %65 = zext i32 %64 to i64
  br label %70

66:                                               ; preds = %41
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  br label %70

70:                                               ; preds = %66, %63
  %71 = phi i64 [ %65, %63 ], [ %69, %66 ]
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %15, align 4
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = call %struct.TYPE_16__* @av_hwframe_ctx_alloc(i32 %75)
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 0
  store %struct.TYPE_16__* %76, %struct.TYPE_16__** %78, align 8
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %80, align 8
  %82 = icmp ne %struct.TYPE_16__* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %70
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = call i32 @AVERROR(i32 %84)
  store i32 %85, i32* %4, align 4
  br label %158

86:                                               ; preds = %70
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %92, %struct.TYPE_23__** %11, align 8
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 5
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %94, align 8
  store %struct.TYPE_22__* %95, %struct.TYPE_22__** %13, align 8
  %96 = load i32, i32* @AV_PIX_FMT_QSV, align 4
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i8* @FFALIGN(i32 %99, i32 16)
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 3
  store i8* %100, i8** %102, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i8* @FFALIGN(i32 %103, i32 16)
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 2
  store i8* %104, i8** %106, align 8
  %107 = load i32, i32* %15, align 4
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 1
  store i32 4, i32* %111, align 4
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %119 = call i32 @ff_filter_init_hw_frames(%struct.TYPE_25__* %117, %struct.TYPE_24__* %118, i32 32)
  store i32 %119, i32* %17, align 4
  %120 = load i32, i32* %17, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %86
  %123 = load i32, i32* %17, align 4
  store i32 %123, i32* %4, align 4
  br label %158

124:                                              ; preds = %86
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %126, align 8
  %128 = call i32 @av_hwframe_ctx_init(%struct.TYPE_16__* %127)
  store i32 %128, i32* %17, align 4
  %129 = load i32, i32* %17, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = load i32, i32* %17, align 4
  store i32 %132, i32* %4, align 4
  br label %158

133:                                              ; preds = %124
  store i32 0, i32* %16, align 4
  br label %134

134:                                              ; preds = %154, %133
  %135 = load i32, i32* %16, align 4
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %140, label %157

140:                                              ; preds = %134
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %142, align 8
  %144 = load i32, i32* %16, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 0
  store %struct.TYPE_20__* %147, %struct.TYPE_20__** %18, align 8
  %148 = load i32, i32* %6, align 4
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* %7, align 4
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  br label %154

154:                                              ; preds = %140
  %155 = load i32, i32* %16, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %16, align 4
  br label %134

157:                                              ; preds = %134
  store i32 0, i32* %4, align 4
  br label %158

158:                                              ; preds = %157, %131, %122, %83, %35
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i32 @av_log(%struct.TYPE_25__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_16__* @av_hwframe_ctx_alloc(i32) #1

declare dso_local i8* @FFALIGN(i32, i32) #1

declare dso_local i32 @ff_filter_init_hw_frames(%struct.TYPE_25__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @av_hwframe_ctx_init(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
