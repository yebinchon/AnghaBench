; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_avidec.c_get_subtitle_pkt.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_avidec.c_get_subtitle_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { i32*, i32, i32 }

@INT64_MAX = common dso_local global i64 0, align 8
@AV_TIME_BASE_Q = common dso_local global i32 0, align 4
@AVDISCARD_ALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_13__*, %struct.TYPE_10__*, %struct.TYPE_11__*)* @get_subtitle_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @get_subtitle_pkt(%struct.TYPE_13__* %0, %struct.TYPE_10__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %8, align 8
  %18 = load i64, i64* @INT64_MAX, align 8
  store i64 %18, i64* %11, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %13, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %26 = call i64 @av_rescale_q(i32 %21, i32 %24, i32 %25)
  store i64 %26, i64* %10, align 8
  store i32 0, i32* %14, align 4
  br label %27

27:                                               ; preds = %80, %3
  %28 = load i32, i32* %14, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %83

33:                                               ; preds = %27
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %35, align 8
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %36, i64 %38
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %12, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  store %struct.TYPE_12__* %43, %struct.TYPE_12__** %7, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @AVDISCARD_ALL, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %79

49:                                               ; preds = %33
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %51 = icmp ne %struct.TYPE_12__* %50, null
  br i1 %51, label %52, label %79

52:                                               ; preds = %49
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %79

58:                                               ; preds = %52
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %67 = call i64 @av_rescale_q(i32 %62, i32 %65, i32 %66)
  store i64 %67, i64* %9, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %10, align 8
  %70 = icmp sle i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %58
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* %11, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i64, i64* %9, align 8
  store i64 %76, i64* %11, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %77, %struct.TYPE_10__** %13, align 8
  br label %78

78:                                               ; preds = %75, %71, %58
  br label %79

79:                                               ; preds = %78, %52, %49, %33
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %14, align 4
  br label %27

83:                                               ; preds = %27
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %85 = icmp ne %struct.TYPE_10__* %84, null
  br i1 %85, label %86, label %112

86:                                               ; preds = %83
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  store %struct.TYPE_12__* %89, %struct.TYPE_12__** %7, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = bitcast %struct.TYPE_11__* %90 to i8*
  %94 = bitcast %struct.TYPE_11__* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 %94, i64 16, i1 false)
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = call i64 @ff_read_packet(i32 %102, %struct.TYPE_11__* %104)
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %86
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  store i32* null, i32** %110, align 8
  br label %111

111:                                              ; preds = %107, %86
  br label %112

112:                                              ; preds = %111, %83
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  ret %struct.TYPE_10__* %113
}

declare dso_local i64 @av_rescale_q(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ff_read_packet(i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
