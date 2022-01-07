; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_av_guess_sample_aspect_ratio.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_av_guess_sample_aspect_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }

@__const.av_guess_sample_aspect_ratio.undef = private unnamed_addr constant %struct.TYPE_10__ { i32 0, i64 1, i64 0, i32 0 }, align 8
@INT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @av_guess_sample_aspect_ratio(%struct.TYPE_10__* noalias sret %0, i32* %1, %struct.TYPE_9__* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca %struct.TYPE_10__, align 8
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca %struct.TYPE_10__, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %7, align 8
  %12 = bitcast %struct.TYPE_10__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.TYPE_10__* @__const.av_guess_sample_aspect_ratio.undef to i8*), i64 32, i1 false)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = bitcast %struct.TYPE_10__* %9 to i8*
  %19 = bitcast %struct.TYPE_10__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 32, i1 false)
  br label %23

20:                                               ; preds = %4
  %21 = bitcast %struct.TYPE_10__* %9 to i8*
  %22 = bitcast %struct.TYPE_10__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false)
  br label %23

23:                                               ; preds = %20, %15
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = icmp ne %struct.TYPE_9__* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = icmp ne %struct.TYPE_8__* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = bitcast %struct.TYPE_10__* %10 to i8*
  %37 = bitcast %struct.TYPE_10__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 32, i1 false)
  br label %41

38:                                               ; preds = %26, %23
  %39 = bitcast %struct.TYPE_10__* %10 to i8*
  %40 = bitcast %struct.TYPE_10__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 32, i1 false)
  br label %41

41:                                               ; preds = %38, %31
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %43 = icmp ne %struct.TYPE_11__* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = bitcast %struct.TYPE_10__* %11 to i8*
  %48 = bitcast %struct.TYPE_10__* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 32, i1 false)
  br label %52

49:                                               ; preds = %41
  %50 = bitcast %struct.TYPE_10__* %11 to i8*
  %51 = bitcast %struct.TYPE_10__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 %51, i64 32, i1 false)
  br label %52

52:                                               ; preds = %49, %44
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @INT_MAX, align 4
  %60 = call i32 @av_reduce(i64* %53, i64* %54, i64 %56, i64 %58, i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp sle i64 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %52
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp sle i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64, %52
  %69 = bitcast %struct.TYPE_10__* %9 to i8*
  %70 = bitcast %struct.TYPE_10__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 32, i1 false)
  br label %71

71:                                               ; preds = %68, %64
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @INT_MAX, align 4
  %79 = call i32 @av_reduce(i64* %72, i64* %73, i64 %75, i64 %77, i32 %78)
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp sle i64 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %71
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp sle i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83, %71
  %88 = bitcast %struct.TYPE_10__* %11 to i8*
  %89 = bitcast %struct.TYPE_10__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %88, i8* align 8 %89, i64 32, i1 false)
  br label %90

90:                                               ; preds = %87, %83
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = bitcast %struct.TYPE_10__* %0 to i8*
  %96 = bitcast %struct.TYPE_10__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %95, i8* align 8 %96, i64 32, i1 false)
  br label %100

97:                                               ; preds = %90
  %98 = bitcast %struct.TYPE_10__* %0 to i8*
  %99 = bitcast %struct.TYPE_10__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %98, i8* align 8 %99, i64 32, i1 false)
  br label %100

100:                                              ; preds = %97, %94
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @av_reduce(i64*, i64*, i64, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
