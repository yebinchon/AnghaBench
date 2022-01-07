; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cook.c_mono_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cook.c_mono_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*, float*)* @mono_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mono_decode(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, float* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca float*, align 8
  %8 = alloca [128 x i32], align 16
  %9 = alloca [128 x i32], align 16
  %10 = alloca [102 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store float* %2, float** %7, align 8
  %13 = bitcast [128 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 512, i1 false)
  %14 = bitcast [128 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 512, i1 false)
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %17 = getelementptr inbounds [102 x i32], [102 x i32]* %10, i64 0, i64 0
  %18 = call i32 @decode_envelope(%struct.TYPE_13__* %15, %struct.TYPE_12__* %16, i32* %17)
  store i32 %18, i32* %11, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %4, align 4
  br label %66

22:                                               ; preds = %3
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @get_bits(i32* %24, i32 %27)
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = getelementptr inbounds [102 x i32], [102 x i32]* %10, i64 0, i64 0
  %34 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 0
  %35 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 0
  %36 = call i32 @categorize(%struct.TYPE_13__* %31, %struct.TYPE_12__* %32, i32* %33, i32* %34, i32* %35)
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %38 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 0
  %39 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 0
  %40 = call i32 @expand_category(%struct.TYPE_13__* %37, i32* %38, i32* %39)
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %56, %22
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %41
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %51, 7
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %54, i32* %4, align 4
  br label %66

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %41

59:                                               ; preds = %41
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %62 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 0
  %63 = getelementptr inbounds [102 x i32], [102 x i32]* %10, i64 0, i64 0
  %64 = load float*, float** %7, align 8
  %65 = call i32 @decode_vectors(%struct.TYPE_13__* %60, %struct.TYPE_12__* %61, i32* %62, i32* %63, float* %64)
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %59, %53, %20
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @decode_envelope(%struct.TYPE_13__*, %struct.TYPE_12__*, i32*) #2

declare dso_local i32 @get_bits(i32*, i32) #2

declare dso_local i32 @categorize(%struct.TYPE_13__*, %struct.TYPE_12__*, i32*, i32*, i32*) #2

declare dso_local i32 @expand_category(%struct.TYPE_13__*, i32*, i32*) #2

declare dso_local i32 @decode_vectors(%struct.TYPE_13__*, %struct.TYPE_12__*, i32*, i32*, float*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
