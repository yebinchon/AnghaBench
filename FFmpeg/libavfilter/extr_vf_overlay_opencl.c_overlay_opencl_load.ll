; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_overlay_opencl.c_overlay_opencl_load.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_overlay_opencl.c_overlay_opencl_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@ff_opencl_source_overlay = common dso_local global i8* null, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"Warning: overlay position (%d, %d) does not match subsampling (%d, %d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"overlay_no_alpha\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"overlay_internal_alpha\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"overlay_external_alpha\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"Using kernel %s.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"Failed to create OpenCL command queue %d.\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Failed to create kernel %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32, i32)* @overlay_opencl_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @overlay_opencl_load(%struct.TYPE_16__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %8, align 8
  %21 = load i8*, i8** @ff_opencl_source_overlay, align 8
  store i8* %21, i8** %10, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call %struct.TYPE_15__* @av_pix_fmt_desc_get(i32 %22)
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %12, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.TYPE_15__* @av_pix_fmt_desc_get(i32 %24)
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %13, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %26

26:                                               ; preds = %44, %3
  %27 = load i32, i32* %15, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %26
  %33 = load i32, i32* %16, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = load i32, i32* %15, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  %43 = call i32 @FFMAX(i32 %33, i64 %42)
  store i32 %43, i32* %16, align 4
  br label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %15, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %15, align 4
  br label %26

47:                                               ; preds = %26
  store i32 0, i32* %15, align 4
  br label %48

48:                                               ; preds = %66, %47
  %49 = load i32, i32* %15, align 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %48
  %55 = load i32, i32* %17, align 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  %65 = call i32 @FFMAX(i32 %55, i64 %64)
  store i32 %65, i32* %17, align 4
  br label %66

66:                                               ; preds = %54
  %67 = load i32, i32* %15, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %15, align 4
  br label %48

69:                                               ; preds = %48
  %70 = load i32, i32* %16, align 4
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 1, %75
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = shl i32 1, %81
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = srem i32 %87, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %69
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = srem i32 %96, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %118

102:                                              ; preds = %93, %69
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %104 = load i32, i32* @AV_LOG_WARNING, align 4
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %103, i32 %104, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %107, i32 %110, i32 %113, i32 %116)
  br label %118

118:                                              ; preds = %102, %93
  %119 = load i32, i32* %16, align 4
  %120 = load i32, i32* %17, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %135

122:                                              ; preds = %118
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %125, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %132

131:                                              ; preds = %122
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %132

132:                                              ; preds = %131, %130
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 5
  store i32 0, i32* %134, align 4
  br label %138

135:                                              ; preds = %118
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 5
  store i32 1, i32* %137, align 4
  br label %138

138:                                              ; preds = %135, %132
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %140 = load i32, i32* @AV_LOG_DEBUG, align 4
  %141 = load i8*, i8** %11, align 8
  %142 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %139, i32 %140, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %141)
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %144 = call i32 @ff_opencl_filter_load_program(%struct.TYPE_16__* %143, i8** %10, i32 1)
  store i32 %144, i32* %14, align 4
  %145 = load i32, i32* %14, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %138
  br label %182

148:                                              ; preds = %138
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 9
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 9
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @clCreateCommandQueue(i32 %154, i32 %160, i32 0, i32* %9)
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 8
  store i64 %161, i64* %163, align 8
  %164 = load i32, i32* @EIO, align 4
  %165 = call i32 @AVERROR(i32 %164)
  %166 = load i32, i32* %9, align 4
  %167 = call i32 @CL_FAIL_ON_ERROR(i32 %165, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %166)
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 9
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i8*, i8** %11, align 8
  %173 = call i32 @clCreateKernel(i32 %171, i8* %172, i32* %9)
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 7
  store i32 %173, i32* %175, align 4
  %176 = load i32, i32* @EIO, align 4
  %177 = call i32 @AVERROR(i32 %176)
  %178 = load i32, i32* %9, align 4
  %179 = call i32 @CL_FAIL_ON_ERROR(i32 %177, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %178)
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 6
  store i32 1, i32* %181, align 8
  store i32 0, i32* %4, align 4
  br label %204

182:                                              ; preds = %147
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 8
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %182
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 8
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @clReleaseCommandQueue(i64 %190)
  br label %192

192:                                              ; preds = %187, %182
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 7
  %195 = load i32, i32* %194, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %192
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 7
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @clReleaseKernel(i32 %200)
  br label %202

202:                                              ; preds = %197, %192
  %203 = load i32, i32* %14, align 4
  store i32 %203, i32* %4, align 4
  br label %204

204:                                              ; preds = %202, %148
  %205 = load i32, i32* %4, align 4
  ret i32 %205
}

declare dso_local %struct.TYPE_15__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @FFMAX(i32, i64) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*, ...) #1

declare dso_local i32 @ff_opencl_filter_load_program(%struct.TYPE_16__*, i8**, i32) #1

declare dso_local i64 @clCreateCommandQueue(i32, i32, i32, i32*) #1

declare dso_local i32 @CL_FAIL_ON_ERROR(i32, i8*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @clCreateKernel(i32, i8*, i32*) #1

declare dso_local i32 @clReleaseCommandQueue(i64) #1

declare dso_local i32 @clReleaseKernel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
