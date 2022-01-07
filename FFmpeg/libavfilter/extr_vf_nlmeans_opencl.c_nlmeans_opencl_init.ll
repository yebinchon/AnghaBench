; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_nlmeans_opencl.c_nlmeans_opencl_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_nlmeans_opencl.c_nlmeans_opencl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"research_size should be odd, set to %d\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"patch_size should be odd, set to %d\00", align 1
@ff_opencl_source_nlmeans = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Failed to create OpenCL command queue %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"vert_sum\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Failed to create vert_sum kernel %d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"horiz_sum\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Failed to create horiz_sum kernel %d.\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"weight_accum\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Failed to create accum kernel %d.\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"average\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Failed to create average kernel %d.\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"Failed to create integral image %d.\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"Failed to create weight buffer %d.\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"Failed to create sum buffer %d.\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"Failed to create overflow buffer %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i32)* @nlmeans_opencl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlmeans_opencl_init(%struct.TYPE_11__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = mul nsw i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %11, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 10
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %3
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = load i32, i32* @AV_LOG_WARNING, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @av_log(%struct.TYPE_11__* %37, i32 %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %32, %3
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %43
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = load i32, i32* @AV_LOG_WARNING, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @av_log(%struct.TYPE_11__* %54, i32 %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %49, %43
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %60
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %65, %60
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %71
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %76, %71
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %84 = call i32 @ff_opencl_filter_load_program(%struct.TYPE_11__* %83, i32* @ff_opencl_source_nlmeans, i32 1)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %215

88:                                               ; preds = %82
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 16
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 16
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @clCreateCommandQueue(i32 %94, i32 %100, i32 0, i32* %9)
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 7
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @EIO, align 4
  %105 = call i32 @AVERROR(i32 %104)
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @CL_FAIL_ON_ERROR(i32 %105, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 16
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i8* @clCreateKernel(i32 %111, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* %9)
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 15
  store i8* %112, i8** %114, align 8
  %115 = load i32, i32* @EIO, align 4
  %116 = call i32 @AVERROR(i32 %115)
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @CL_FAIL_ON_ERROR(i32 %116, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %117)
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 16
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i8* @clCreateKernel(i32 %122, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32* %9)
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 14
  store i8* %123, i8** %125, align 8
  %126 = load i32, i32* @EIO, align 4
  %127 = call i32 @AVERROR(i32 %126)
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @CL_FAIL_ON_ERROR(i32 %127, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %128)
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 16
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i8* @clCreateKernel(i32 %133, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32* %9)
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 13
  store i8* %134, i8** %136, align 8
  %137 = load i32, i32* @EIO, align 4
  %138 = call i32 @AVERROR(i32 %137)
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @CL_FAIL_ON_ERROR(i32 %138, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %139)
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 16
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call i8* @clCreateKernel(i32 %144, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32* %9)
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 12
  store i8* %145, i8** %147, align 8
  %148 = load i32, i32* @EIO, align 4
  %149 = call i32 @AVERROR(i32 %148)
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @CL_FAIL_ON_ERROR(i32 %149, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %150)
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 16
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %6, align 4
  %159 = mul nsw i32 4, %158
  %160 = load i32, i32* %7, align 4
  %161 = mul nsw i32 %159, %160
  %162 = sext i32 %161 to i64
  %163 = mul i64 %162, 4
  %164 = trunc i64 %163 to i32
  %165 = call i8* @clCreateBuffer(i32 %157, i32 0, i32 %164, i32* null, i32* %9)
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 11
  store i8* %165, i8** %167, align 8
  %168 = load i32, i32* @EIO, align 4
  %169 = call i32 @AVERROR(i32 %168)
  %170 = load i32, i32* %9, align 4
  %171 = call i32 @CL_FAIL_ON_ERROR(i32 %169, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i32 %170)
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 16
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %11, align 4
  %179 = call i8* @clCreateBuffer(i32 %177, i32 0, i32 %178, i32* null, i32* %9)
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 10
  store i8* %179, i8** %181, align 8
  %182 = load i32, i32* @EIO, align 4
  %183 = call i32 @AVERROR(i32 %182)
  %184 = load i32, i32* %9, align 4
  %185 = call i32 @CL_FAIL_ON_ERROR(i32 %183, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i32 %184)
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 16
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %11, align 4
  %193 = call i8* @clCreateBuffer(i32 %191, i32 0, i32 %192, i32* null, i32* %9)
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 9
  store i8* %193, i8** %195, align 8
  %196 = load i32, i32* @EIO, align 4
  %197 = call i32 @AVERROR(i32 %196)
  %198 = load i32, i32* %9, align 4
  %199 = call i32 @CL_FAIL_ON_ERROR(i32 %197, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i32 %198)
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 16
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i8* @clCreateBuffer(i32 %205, i32 0, i32 4, i32* null, i32* %9)
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 8
  store i8* %206, i8** %208, align 8
  %209 = load i32, i32* @EIO, align 4
  %210 = call i32 @AVERROR(i32 %209)
  %211 = load i32, i32* %9, align 4
  %212 = call i32 @CL_FAIL_ON_ERROR(i32 %210, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), i32 %211)
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 6
  store i32 1, i32* %214, align 8
  store i32 0, i32* %4, align 4
  br label %253

215:                                              ; preds = %87
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 15
  %218 = load i8*, i8** %217, align 8
  %219 = call i32 @CL_RELEASE_KERNEL(i8* %218)
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 14
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 @CL_RELEASE_KERNEL(i8* %222)
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 13
  %226 = load i8*, i8** %225, align 8
  %227 = call i32 @CL_RELEASE_KERNEL(i8* %226)
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 12
  %230 = load i8*, i8** %229, align 8
  %231 = call i32 @CL_RELEASE_KERNEL(i8* %230)
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 11
  %234 = load i8*, i8** %233, align 8
  %235 = call i32 @CL_RELEASE_MEMORY(i8* %234)
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 10
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 @CL_RELEASE_MEMORY(i8* %238)
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 9
  %242 = load i8*, i8** %241, align 8
  %243 = call i32 @CL_RELEASE_MEMORY(i8* %242)
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 8
  %246 = load i8*, i8** %245, align 8
  %247 = call i32 @CL_RELEASE_MEMORY(i8* %246)
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 7
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @CL_RELEASE_QUEUE(i32 %250)
  %252 = load i32, i32* %10, align 4
  store i32 %252, i32* %4, align 4
  br label %253

253:                                              ; preds = %215, %88
  %254 = load i32, i32* %4, align 4
  ret i32 %254
}

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*, i32) #1

declare dso_local i32 @ff_opencl_filter_load_program(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @clCreateCommandQueue(i32, i32, i32, i32*) #1

declare dso_local i32 @CL_FAIL_ON_ERROR(i32, i8*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @clCreateKernel(i32, i8*, i32*) #1

declare dso_local i8* @clCreateBuffer(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @CL_RELEASE_KERNEL(i8*) #1

declare dso_local i32 @CL_RELEASE_MEMORY(i8*) #1

declare dso_local i32 @CL_RELEASE_QUEUE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
