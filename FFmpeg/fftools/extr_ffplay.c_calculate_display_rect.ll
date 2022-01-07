; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_calculate_display_rect.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_calculate_display_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i8*, i8* }
%struct.TYPE_12__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32, i32, i32, i32, i32, i32, i64)* @calculate_display_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calculate_display_rect(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i64 %7) #0 {
  %9 = alloca %struct.TYPE_12__, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_12__, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_12__, align 4
  %23 = alloca %struct.TYPE_12__, align 4
  %24 = alloca %struct.TYPE_12__, align 4
  %25 = alloca %struct.TYPE_12__, align 4
  %26 = bitcast %struct.TYPE_12__* %9 to i64*
  store i64 %7, i64* %26, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  %27 = bitcast %struct.TYPE_12__* %17 to i8*
  %28 = bitcast %struct.TYPE_12__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 8, i1 false)
  %29 = call i64 @av_make_q(i32 0, i32 1)
  %30 = bitcast %struct.TYPE_12__* %22 to i64*
  store i64 %29, i64* %30, align 4
  %31 = bitcast %struct.TYPE_12__* %17 to i64*
  %32 = load i64, i64* %31, align 4
  %33 = bitcast %struct.TYPE_12__* %22 to i64*
  %34 = load i64, i64* %33, align 4
  %35 = call i64 @av_cmp_q(i64 %32, i64 %34)
  %36 = icmp sle i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %8
  %38 = call i64 @av_make_q(i32 1, i32 1)
  %39 = bitcast %struct.TYPE_12__* %23 to i64*
  store i64 %38, i64* %39, align 4
  %40 = bitcast %struct.TYPE_12__* %17 to i8*
  %41 = bitcast %struct.TYPE_12__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 8, i1 false)
  br label %42

42:                                               ; preds = %37, %8
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %16, align 4
  %45 = call i64 @av_make_q(i32 %43, i32 %44)
  %46 = bitcast %struct.TYPE_12__* %25 to i64*
  store i64 %45, i64* %46, align 4
  %47 = bitcast %struct.TYPE_12__* %17 to i64*
  %48 = load i64, i64* %47, align 4
  %49 = bitcast %struct.TYPE_12__* %25 to i64*
  %50 = load i64, i64* %49, align 4
  %51 = call i64 @av_mul_q(i64 %48, i64 %50)
  %52 = bitcast %struct.TYPE_12__* %24 to i64*
  store i64 %51, i64* %52, align 4
  %53 = bitcast %struct.TYPE_12__* %17 to i8*
  %54 = bitcast %struct.TYPE_12__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 %54, i64 8, i1 false)
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %19, align 4
  %56 = load i32, i32* %19, align 4
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @av_rescale(i32 %56, i32 %58, i32 %60)
  %62 = and i32 %61, -2
  store i32 %62, i32* %18, align 4
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %42
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %18, align 4
  %68 = load i32, i32* %18, align 4
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @av_rescale(i32 %68, i32 %70, i32 %72)
  %74 = and i32 %73, -2
  store i32 %74, i32* %19, align 4
  br label %75

75:                                               ; preds = %66, %42
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %18, align 4
  %78 = sub nsw i32 %76, %77
  %79 = sdiv i32 %78, 2
  store i32 %79, i32* %20, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %19, align 4
  %82 = sub nsw i32 %80, %81
  %83 = sdiv i32 %82, 2
  store i32 %83, i32* %21, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %20, align 4
  %86 = add nsw i32 %84, %85
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %21, align 4
  %91 = add nsw i32 %89, %90
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %18, align 4
  %95 = call i8* @FFMAX(i32 %94, i32 1)
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 3
  store i8* %95, i8** %97, align 8
  %98 = load i32, i32* %19, align 4
  %99 = call i8* @FFMAX(i32 %98, i32 1)
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  store i8* %99, i8** %101, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @av_cmp_q(i64, i64) #2

declare dso_local i64 @av_make_q(i32, i32) #2

declare dso_local i64 @av_mul_q(i64, i64) #2

declare dso_local i32 @av_rescale(i32, i32, i32) #2

declare dso_local i8* @FFMAX(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
