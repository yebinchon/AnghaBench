; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_id3v2.c_ff_id3v2_parse_chapters.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_id3v2.c_ff_id3v2_parse_chapters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@__const.ff_id3v2_parse_chapters.time_base = private unnamed_addr constant %struct.TYPE_13__ { i32 1, i32 1000 }, align 4
@.str = private unnamed_addr constant [5 x i8] c"CHAP\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_id3v2_parse_chapters(i32* %0, %struct.TYPE_12__** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_12__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_13__, align 4
  %8 = alloca %struct.TYPE_11__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_12__** %1, %struct.TYPE_12__*** %4, align 8
  store i32 0, i32* %5, align 4
  %16 = bitcast %struct.TYPE_13__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.TYPE_13__* @__const.ff_id3v2_parse_chapters.time_base to i8*), i64 8, i1 false)
  store %struct.TYPE_11__** null, %struct.TYPE_11__*** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %6, align 8
  br label %19

19:                                               ; preds = %38, %2
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = icmp ne %struct.TYPE_12__* %20, null
  br i1 %21, label %22, label %42

22:                                               ; preds = %19
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @strcmp(i32 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %38

29:                                               ; preds = %22
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %11, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %34 = call i32 @av_dynarray_add_nofree(%struct.TYPE_11__*** %8, i32* %9, %struct.TYPE_11__* %33)
  store i32 %34, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %117

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %28
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  store %struct.TYPE_12__* %41, %struct.TYPE_12__** %6, align 8
  br label %19

42:                                               ; preds = %19
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %72, %42
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = sdiv i32 %45, 2
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %75

48:                                               ; preds = %43
  %49 = load i32, i32* %9, align 4
  %50 = sub nsw i32 %49, 1
  %51 = load i32, i32* %10, align 4
  %52 = sub nsw i32 %50, %51
  store i32 %52, i32* %13, align 4
  %53 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %53, i64 %55
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  store %struct.TYPE_11__* %57, %struct.TYPE_11__** %12, align 8
  %58 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %58, i64 %60
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %63, i64 %65
  store %struct.TYPE_11__* %62, %struct.TYPE_11__** %66, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %68 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %68, i64 %70
  store %struct.TYPE_11__* %67, %struct.TYPE_11__** %71, align 8
  br label %72

72:                                               ; preds = %48
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %43

75:                                               ; preds = %43
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %113, %75
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %116

80:                                               ; preds = %76
  %81 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %81, i64 %83
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  store %struct.TYPE_11__* %85, %struct.TYPE_11__** %14, align 8
  %86 = load i32*, i32** %3, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = bitcast %struct.TYPE_13__* %7 to i64*
  %98 = load i64, i64* %97, align 4
  %99 = call %struct.TYPE_14__* @avpriv_new_chapter(i32* %86, i32 %87, i64 %98, i32 %90, i32 %93, i32 %96)
  store %struct.TYPE_14__* %99, %struct.TYPE_14__** %15, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %101 = icmp ne %struct.TYPE_14__* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %80
  br label %113

103:                                              ; preds = %80
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @av_dict_copy(i32* %105, i32 %108, i32 0)
  store i32 %109, i32* %5, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  br label %117

112:                                              ; preds = %103
  br label %113

113:                                              ; preds = %112, %102
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %10, align 4
  br label %76

116:                                              ; preds = %76
  br label %117

117:                                              ; preds = %116, %111, %36
  %118 = call i32 @av_freep(%struct.TYPE_11__*** %8)
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i32 @av_dynarray_add_nofree(%struct.TYPE_11__***, i32*, %struct.TYPE_11__*) #2

declare dso_local %struct.TYPE_14__* @avpriv_new_chapter(i32*, i32, i64, i32, i32, i32) #2

declare dso_local i32 @av_dict_copy(i32*, i32, i32) #2

declare dso_local i32 @av_freep(%struct.TYPE_11__***) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
