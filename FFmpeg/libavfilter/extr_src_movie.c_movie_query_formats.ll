; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_src_movie.c_movie_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_src_movie.c_movie_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__**, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }

@__const.movie_query_formats.list = private unnamed_addr constant [2 x i32] [i32 0, i32 -1], align 4
@__const.movie_query_formats.list64 = private unnamed_addr constant [2 x i32] [i32 0, i32 -1], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @movie_query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @movie_query_formats(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %4, align 8
  %15 = bitcast [2 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast ([2 x i32]* @__const.movie_query_formats.list to i8*), i64 8, i1 false)
  %16 = bitcast [2 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast ([2 x i32]* @__const.movie_query_formats.list64 to i8*), i64 8, i1 false)
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %100, %1
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %103

23:                                               ; preds = %17
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i64 %28
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %9, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  store %struct.TYPE_13__* %34, %struct.TYPE_13__** %10, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %37, i64 %39
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %11, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %99 [
    i32 128, label %45
    i32 129, label %59
  ]

45:                                               ; preds = %23
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %51 = call i32 @ff_make_format_list(i32* %50)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  %54 = call i32 @ff_formats_ref(i32 %51, i32* %53)
  store i32 %54, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %2, align 4
  br label %104

58:                                               ; preds = %45
  br label %99

59:                                               ; preds = %23
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %62, i32* %63, align 4
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %65 = call i32 @ff_make_format_list(i32* %64)
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 2
  %68 = call i32 @ff_formats_ref(i32 %65, i32* %67)
  store i32 %68, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %59
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %2, align 4
  br label %104

72:                                               ; preds = %59
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %75, i32* %76, align 4
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %78 = call i32 @ff_make_format_list(i32* %77)
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = call i32 @ff_formats_ref(i32 %78, i32* %80)
  store i32 %81, i32* %8, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %72
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %2, align 4
  br label %104

85:                                               ; preds = %72
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %88, i32* %89, align 4
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %91 = call i32 @avfilter_make_format64_list(i32* %90)
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = call i32 @ff_channel_layouts_ref(i32 %91, i32* %93)
  store i32 %94, i32* %8, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %85
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %2, align 4
  br label %104

98:                                               ; preds = %85
  br label %99

99:                                               ; preds = %23, %98, %58
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %17

103:                                              ; preds = %17
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %103, %96, %83, %70, %56
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ff_formats_ref(i32, i32*) #2

declare dso_local i32 @ff_make_format_list(i32*) #2

declare dso_local i32 @ff_channel_layouts_ref(i32, i32*) #2

declare dso_local i32 @avfilter_make_format64_list(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
