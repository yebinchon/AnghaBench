; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_frame.c_av_frame_make_writable.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_frame.c_av_frame_make_writable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_frame_make_writable(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 8
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = call i32 @AVERROR(i32 %13)
  store i32 %14, i32* %2, align 4
  br label %85

15:                                               ; preds = %1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = call i64 @av_frame_is_writable(%struct.TYPE_11__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %85

20:                                               ; preds = %15
  %21 = call i32 @memset(%struct.TYPE_11__* %4, i32 0, i32 48)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 7
  store i32 %24, i32* %25, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 6
  store i32 %28, i32* %29, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 5
  store i32 %32, i32* %33, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 4
  store i32 %36, i32* %37, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 3
  store i32 %40, i32* %41, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 2
  store i32 %44, i32* %45, align 8
  %46 = call i32 @av_frame_get_buffer(%struct.TYPE_11__* %4, i32 32)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %20
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %85

51:                                               ; preds = %20
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %53 = call i32 @av_frame_copy(%struct.TYPE_11__* %4, %struct.TYPE_11__* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = call i32 @av_frame_unref(%struct.TYPE_11__* %4)
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %85

59:                                               ; preds = %51
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %61 = call i32 @av_frame_copy_props(%struct.TYPE_11__* %4, %struct.TYPE_11__* %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = call i32 @av_frame_unref(%struct.TYPE_11__* %4)
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %85

67:                                               ; preds = %59
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %69 = call i32 @av_frame_unref(%struct.TYPE_11__* %68)
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %71 = bitcast %struct.TYPE_11__* %70 to i8*
  %72 = bitcast %struct.TYPE_11__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %71, i8* align 8 %72, i64 48, i1 false)
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %74, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %67
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %78, %67
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %64, %56, %49, %19, %12
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @av_frame_is_writable(%struct.TYPE_11__*) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @av_frame_get_buffer(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @av_frame_copy(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @av_frame_unref(%struct.TYPE_11__*) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
