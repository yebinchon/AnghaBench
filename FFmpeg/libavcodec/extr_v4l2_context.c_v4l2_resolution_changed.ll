; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v4l2_context.c_v4l2_resolution_changed.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v4l2_context.c_v4l2_resolution_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.v4l2_format }
%struct.v4l2_format = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64 }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s changed (%dx%d) -> (%dx%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.v4l2_format*)* @v4l2_resolution_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l2_resolution_changed(%struct.TYPE_10__* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.v4l2_format*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %4, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  store %struct.v4l2_format* %8, %struct.v4l2_format** %5, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @V4L2_TYPE_IS_MULTIPLANAR(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %2
  %15 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %21 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %19, %24
  br i1 %25, label %38, label %26

26:                                               ; preds = %14
  %27 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %28 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %33 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %31, %36
  br label %38

38:                                               ; preds = %26, %14
  %39 = phi i1 [ true, %14 ], [ %37, %26 ]
  %40 = zext i1 %39 to i32
  br label %68

41:                                               ; preds = %2
  %42 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %43 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %48 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %46, %51
  br i1 %52, label %65, label %53

53:                                               ; preds = %41
  %54 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %55 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %60 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %58, %63
  br label %65

65:                                               ; preds = %53, %41
  %66 = phi i1 [ true, %41 ], [ %64, %53 ]
  %67 = zext i1 %66 to i32
  br label %68

68:                                               ; preds = %65, %38
  %69 = phi i32 [ %40, %38 ], [ %67, %65 ]
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %68
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %74 = call i32 @logger(%struct.TYPE_10__* %73)
  %75 = load i32, i32* @AV_LOG_DEBUG, align 4
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %80 = call i32 @v4l2_get_width(%struct.v4l2_format* %79)
  %81 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %82 = call i32 @v4l2_get_height(%struct.v4l2_format* %81)
  %83 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %84 = call i32 @v4l2_get_width(%struct.v4l2_format* %83)
  %85 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %86 = call i32 @v4l2_get_height(%struct.v4l2_format* %85)
  %87 = call i32 @av_log(i32 %74, i32 %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %80, i32 %82, i32 %84, i32 %86)
  br label %88

88:                                               ; preds = %72, %68
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i64 @V4L2_TYPE_IS_MULTIPLANAR(i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @logger(%struct.TYPE_10__*) #1

declare dso_local i32 @v4l2_get_width(%struct.v4l2_format*) #1

declare dso_local i32 @v4l2_get_height(%struct.v4l2_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
