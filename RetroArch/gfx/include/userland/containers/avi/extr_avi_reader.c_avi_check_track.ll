; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/avi/extr_avi_reader.c_avi_check_track.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/avi/extr_avi_reader.c_avi_check_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@VC_CONTAINER_ES_TYPE_AUDIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"suspicious track type ('wb'), track %d is not an audio track\00", align 1
@VC_CONTAINER_ERROR_FAILED = common dso_local global i32 0, align 4
@VC_CONTAINER_ES_TYPE_VIDEO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [60 x i8] c"suspicious track type ('db'), track %d is not a video track\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"suspicious track type ('dc'), track %d is not a video track\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"suspicious track type ('dd'), track %d is not a video track\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"invalid track number %d (no more than %d tracks expected)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i64, i64)* @avi_check_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avi_check_track(%struct.TYPE_8__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %9, %12
  br i1 %13, label %14, label %103

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @AVI_TWOCC(i8 signext 119, i8 signext 98)
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %14
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %21, i64 %22
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @VC_CONTAINER_ES_TYPE_AUDIO, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %18
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 (%struct.TYPE_8__*, i8*, i64, ...) @LOG_DEBUG(%struct.TYPE_8__* %32, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load i32, i32* @VC_CONTAINER_ERROR_FAILED, align 4
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %31, %18, %14
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @AVI_TWOCC(i8 signext 100, i8 signext 98)
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %36
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %43, i64 %44
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @VC_CONTAINER_ES_TYPE_VIDEO, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %40
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i32 (%struct.TYPE_8__*, i8*, i64, ...) @LOG_DEBUG(%struct.TYPE_8__* %54, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  %57 = load i32, i32* @VC_CONTAINER_ERROR_FAILED, align 4
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %53, %40, %36
  %59 = load i64, i64* %5, align 8
  %60 = call i64 @AVI_TWOCC(i8 signext 100, i8 signext 99)
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %58
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %64, align 8
  %66 = load i64, i64* %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %65, i64 %66
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @VC_CONTAINER_ES_TYPE_VIDEO, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %62
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %77 = load i64, i64* %6, align 8
  %78 = call i32 (%struct.TYPE_8__*, i8*, i64, ...) @LOG_DEBUG(%struct.TYPE_8__* %76, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i64 %77)
  %79 = load i32, i32* @VC_CONTAINER_ERROR_FAILED, align 4
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %75, %62, %58
  %81 = load i64, i64* %5, align 8
  %82 = call i64 @AVI_TWOCC(i8 signext 100, i8 signext 100)
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %102

84:                                               ; preds = %80
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %86, align 8
  %88 = load i64, i64* %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %87, i64 %88
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @VC_CONTAINER_ES_TYPE_VIDEO, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %84
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %99 = load i64, i64* %6, align 8
  %100 = call i32 (%struct.TYPE_8__*, i8*, i64, ...) @LOG_DEBUG(%struct.TYPE_8__* %98, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i64 %99)
  %101 = load i32, i32* @VC_CONTAINER_ERROR_FAILED, align 4
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %97, %84, %80
  br label %111

103:                                              ; preds = %3
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %105 = load i64, i64* %6, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 (%struct.TYPE_8__*, i8*, i64, ...) @LOG_DEBUG(%struct.TYPE_8__* %104, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i64 %105, i64 %108)
  %110 = load i32, i32* @VC_CONTAINER_ERROR_FAILED, align 4
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %103, %102
  %112 = load i32, i32* %7, align 4
  ret i32 %112
}

declare dso_local i64 @AVI_TWOCC(i8 signext, i8 signext) #1

declare dso_local i32 @LOG_DEBUG(%struct.TYPE_8__*, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
