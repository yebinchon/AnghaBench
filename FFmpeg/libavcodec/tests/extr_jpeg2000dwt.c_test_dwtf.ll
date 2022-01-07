; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/tests/extr_jpeg2000dwt.c_test_dwtf.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/tests/extr_jpeg2000dwt.c_test_dwtf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@FF_DWT97 = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ff_jpeg2000_dwt_init failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"ff_dwt_encode failed\0A\00", align 1
@MAX_W = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"missmatch at %d (%f != %f) decomp:%d border %d %d %d %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"9/7f, decomp:%2d border %3d %3d %3d %3d err2:%20.3f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (float*, float*, [2 x i32]*, i32, float)* @test_dwtf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_dwtf(float* %0, float* %1, [2 x i32]* %2, i32 %3, float %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca [2 x i32]*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca double, align 8
  store float* %0, float** %7, align 8
  store float* %1, float** %8, align 8
  store [2 x i32]* %2, [2 x i32]** %9, align 8
  store i32 %3, i32* %10, align 4
  store float %4, float* %11, align 4
  %17 = bitcast %struct.TYPE_10__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 4, i1 false)
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %15, align 8
  store double 0.000000e+00, double* %16, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %19 = load [2 x i32]*, [2 x i32]** %9, align 8
  %20 = bitcast [2 x i32]* %19 to i32**
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @FF_DWT97, align 4
  %23 = call i32 @ff_jpeg2000_dwt_init(%struct.TYPE_10__* %18, i32** %20, i32 %21, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %184

29:                                               ; preds = %5
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %31 = load float*, float** %7, align 8
  %32 = call i32 @ff_dwt_encode(%struct.TYPE_10__* %30, float* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @stderr, align 4
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %184

38:                                               ; preds = %29
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %40 = load float*, float** %7, align 8
  %41 = call i32 @ff_dwt_decode(%struct.TYPE_10__* %39, float* %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @stderr, align 4
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %184

47:                                               ; preds = %38
  store i32 0, i32* %13, align 4
  br label %48

48:                                               ; preds = %138, %47
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @MAX_W, align 4
  %51 = load i32, i32* @MAX_W, align 4
  %52 = mul nsw i32 %50, %51
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %141

54:                                               ; preds = %48
  %55 = load float*, float** %7, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %55, i64 %57
  %59 = load float, float* %58, align 4
  %60 = load float*, float** %8, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, float* %60, i64 %62
  %64 = load float, float* %63, align 4
  %65 = fsub float %59, %64
  %66 = call float @FFABS(float %65)
  %67 = load float, float* %11, align 4
  %68 = fcmp ogt float %66, %67
  br i1 %68, label %69, label %102

69:                                               ; preds = %54
  %70 = load i32, i32* @stderr, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load float*, float** %7, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float, float* %72, i64 %74
  %76 = load float, float* %75, align 4
  %77 = fpext float %76 to double
  %78 = load float*, float** %8, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds float, float* %78, i64 %80
  %82 = load float, float* %81, align 4
  %83 = fpext float %82 to double
  %84 = load i32, i32* %10, align 4
  %85 = load [2 x i32]*, [2 x i32]** %9, align 8
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %85, i64 0
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = load [2 x i32]*, [2 x i32]** %9, align 8
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %89, i64 0
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %90, i64 0, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = load [2 x i32]*, [2 x i32]** %9, align 8
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %93, i64 1
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %94, i64 0, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = load [2 x i32]*, [2 x i32]** %9, align 8
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %97, i64 1
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %98, i64 0, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i32, i8*, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %71, double %77, double %83, i32 %84, i32 %88, i32 %92, i32 %96, i32 %100)
  store i32 2, i32* %6, align 4
  br label %184

102:                                              ; preds = %54
  %103 = load float*, float** %7, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds float, float* %103, i64 %105
  %107 = load float, float* %106, align 4
  %108 = load float*, float** %8, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, float* %108, i64 %110
  %112 = load float, float* %111, align 4
  %113 = fsub float %107, %112
  %114 = load float*, float** %7, align 8
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds float, float* %114, i64 %116
  %118 = load float, float* %117, align 4
  %119 = load float*, float** %8, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds float, float* %119, i64 %121
  %123 = load float, float* %122, align 4
  %124 = fsub float %118, %123
  %125 = fmul float %113, %124
  %126 = fpext float %125 to double
  %127 = load double, double* %16, align 8
  %128 = fadd double %127, %126
  store double %128, double* %16, align 8
  %129 = load float*, float** %8, align 8
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float, float* %129, i64 %131
  %133 = load float, float* %132, align 4
  %134 = load float*, float** %7, align 8
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float, float* %134, i64 %136
  store float %133, float* %137, align 4
  br label %138

138:                                              ; preds = %102
  %139 = load i32, i32* %13, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %13, align 4
  br label %48

141:                                              ; preds = %48
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %143 = call i32 @ff_dwt_destroy(%struct.TYPE_10__* %142)
  %144 = load i32, i32* %10, align 4
  %145 = load [2 x i32]*, [2 x i32]** %9, align 8
  %146 = getelementptr inbounds [2 x i32], [2 x i32]* %145, i64 0
  %147 = getelementptr inbounds [2 x i32], [2 x i32]* %146, i64 0, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = load [2 x i32]*, [2 x i32]** %9, align 8
  %150 = getelementptr inbounds [2 x i32], [2 x i32]* %149, i64 0
  %151 = getelementptr inbounds [2 x i32], [2 x i32]* %150, i64 0, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = load [2 x i32]*, [2 x i32]** %9, align 8
  %154 = getelementptr inbounds [2 x i32], [2 x i32]* %153, i64 1
  %155 = getelementptr inbounds [2 x i32], [2 x i32]* %154, i64 0, i64 0
  %156 = load i32, i32* %155, align 4
  %157 = load [2 x i32]*, [2 x i32]** %9, align 8
  %158 = getelementptr inbounds [2 x i32], [2 x i32]* %157, i64 1
  %159 = getelementptr inbounds [2 x i32], [2 x i32]* %158, i64 0, i64 1
  %160 = load i32, i32* %159, align 4
  %161 = load double, double* %16, align 8
  %162 = load [2 x i32]*, [2 x i32]** %9, align 8
  %163 = getelementptr inbounds [2 x i32], [2 x i32]* %162, i64 0
  %164 = getelementptr inbounds [2 x i32], [2 x i32]* %163, i64 0, i64 1
  %165 = load i32, i32* %164, align 4
  %166 = load [2 x i32]*, [2 x i32]** %9, align 8
  %167 = getelementptr inbounds [2 x i32], [2 x i32]* %166, i64 0
  %168 = getelementptr inbounds [2 x i32], [2 x i32]* %167, i64 0, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = sub nsw i32 %165, %169
  %171 = load [2 x i32]*, [2 x i32]** %9, align 8
  %172 = getelementptr inbounds [2 x i32], [2 x i32]* %171, i64 1
  %173 = getelementptr inbounds [2 x i32], [2 x i32]* %172, i64 0, i64 1
  %174 = load i32, i32* %173, align 4
  %175 = load [2 x i32]*, [2 x i32]** %9, align 8
  %176 = getelementptr inbounds [2 x i32], [2 x i32]* %175, i64 1
  %177 = getelementptr inbounds [2 x i32], [2 x i32]* %176, i64 0, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = sub nsw i32 %174, %178
  %180 = mul nsw i32 %170, %179
  %181 = sitofp i32 %180 to double
  %182 = fdiv double %161, %181
  %183 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %144, i32 %148, i32 %152, i32 %156, i32 %160, double %182)
  store i32 0, i32* %6, align 4
  br label %184

184:                                              ; preds = %141, %69, %44, %35, %26
  %185 = load i32, i32* %6, align 4
  ret i32 %185
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ff_jpeg2000_dwt_init(%struct.TYPE_10__*, i32**, i32, i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @ff_dwt_encode(%struct.TYPE_10__*, float*) #2

declare dso_local i32 @ff_dwt_decode(%struct.TYPE_10__*, float*) #2

declare dso_local float @FFABS(float) #2

declare dso_local i32 @ff_dwt_destroy(%struct.TYPE_10__*) #2

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32, double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
