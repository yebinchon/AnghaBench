; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_thumbnail_cuda.c_config_props.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_thumbnail_cuda.c_config_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_20__**, %struct.TYPE_19__**, %struct.TYPE_21__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 (i32*)*, i32 (i32*, i32)*, i32 (i32*, i32, i8*)*, i32 (i32*, i8*)*, i32 (i32)* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_15__* }

@vf_thumbnail_cuda_ptx = external dso_local global [0 x i8], align 1
@.str = private unnamed_addr constant [16 x i8] c"Thumbnail_uchar\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Thumbnail_uchar2\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Thumbnail_ushort\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Thumbnail_ushort2\00", align 1
@HIST_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Unsupported input format: %s\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*)* @config_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_props(%struct.TYPE_24__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  %12 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %4, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %5, align 8
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %23, %struct.TYPE_23__** %6, align 8
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %7, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %9, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %35, align 8
  store %struct.TYPE_22__* %36, %struct.TYPE_22__** %10, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 8
  store %struct.TYPE_15__* %37, %struct.TYPE_15__** %39, align 8
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 9
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 4
  %49 = load i32 (i32)*, i32 (i32)** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 %49(i32 %50)
  %52 = call i32 @CHECK_CU(i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %1
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %2, align 4
  br label %203

57:                                               ; preds = %1
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 3
  %60 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %59, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 3
  %63 = call i32 %60(i32* %62, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @vf_thumbnail_cuda_ptx, i64 0, i64 0))
  %64 = call i32 @CHECK_CU(i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %2, align 4
  br label %203

69:                                               ; preds = %57
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 2
  %72 = load i32 (i32*, i32, i8*)*, i32 (i32*, i32, i8*)** %71, align 8
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 7
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 %72(i32* %74, i32 %77, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %79 = call i32 @CHECK_CU(i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %69
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %2, align 4
  br label %203

84:                                               ; preds = %69
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 2
  %87 = load i32 (i32*, i32, i8*)*, i32 (i32*, i32, i8*)** %86, align 8
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 6
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 %87(i32* %89, i32 %92, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %94 = call i32 @CHECK_CU(i32 %93)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %84
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %2, align 4
  br label %203

99:                                               ; preds = %84
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 2
  %102 = load i32 (i32*, i32, i8*)*, i32 (i32*, i32, i8*)** %101, align 8
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 5
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 %102(i32* %104, i32 %107, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %109 = call i32 @CHECK_CU(i32 %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %99
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %2, align 4
  br label %203

114:                                              ; preds = %99
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 2
  %117 = load i32 (i32*, i32, i8*)*, i32 (i32*, i32, i8*)** %116, align 8
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 4
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = call i32 %117(i32* %119, i32 %122, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %124 = call i32 @CHECK_CU(i32 %123)
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %114
  %128 = load i32, i32* %11, align 4
  store i32 %128, i32* %2, align 4
  br label %203

129:                                              ; preds = %114
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 1
  %132 = load i32 (i32*, i32)*, i32 (i32*, i32)** %131, align 8
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 2
  %135 = load i32, i32* @HIST_SIZE, align 4
  %136 = sext i32 %135 to i64
  %137 = mul i64 %136, 4
  %138 = trunc i64 %137 to i32
  %139 = call i32 %132(i32* %134, i32 %138)
  %140 = call i32 @CHECK_CU(i32 %139)
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %129
  %144 = load i32, i32* %11, align 4
  store i32 %144, i32* %2, align 4
  br label %203

145:                                              ; preds = %129
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 0
  %148 = load i32 (i32*)*, i32 (i32*)** %147, align 8
  %149 = call i32 %148(i32* %8)
  %150 = call i32 @CHECK_CU(i32 %149)
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %153, i64 0
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @av_buffer_ref(i32 %162)
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %166, i64 0
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 0
  store i32 %163, i32* %169, align 4
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %172, i64 0
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %145
  %179 = load i32, i32* @ENOMEM, align 4
  %180 = call i32 @AVERROR(i32 %179)
  store i32 %180, i32* %2, align 4
  br label %203

181:                                              ; preds = %145
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @format_is_supported(i32 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %202, label %192

192:                                              ; preds = %181
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %194 = load i32, i32* @AV_LOG_ERROR, align 4
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @av_get_pix_fmt_name(i32 %197)
  %199 = call i32 @av_log(%struct.TYPE_14__* %193, i32 %194, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %198)
  %200 = load i32, i32* @ENOSYS, align 4
  %201 = call i32 @AVERROR(i32 %200)
  store i32 %201, i32* %2, align 4
  br label %203

202:                                              ; preds = %181
  store i32 0, i32* %2, align 4
  br label %203

203:                                              ; preds = %202, %192, %178, %143, %127, %112, %97, %82, %67, %55
  %204 = load i32, i32* %2, align 4
  ret i32 %204
}

declare dso_local i32 @CHECK_CU(i32) #1

declare dso_local i32 @av_buffer_ref(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @format_is_supported(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*, i32) #1

declare dso_local i32 @av_get_pix_fmt_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
