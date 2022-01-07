; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_avformat_match_stream_specifier.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_avformat_match_stream_specifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i64* }

@EINVAL = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Invalid stream specifier: %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avformat_match_stream_specifier(%struct.TYPE_12__* %0, %struct.TYPE_10__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %11, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %12, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @match_stream_specifier(%struct.TYPE_12__* %16, %struct.TYPE_10__* %17, i8* %18, i8** %11, %struct.TYPE_11__** %12)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %120

23:                                               ; preds = %3
  %24 = load i8*, i8** %11, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %132

28:                                               ; preds = %23
  %29 = load i8*, i8** %11, align 8
  %30 = call i32 @strtol(i8* %29, i8** %10, i32 0)
  store i32 %30, i32* %9, align 4
  %31 = load i8*, i8** %10, align 8
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  %36 = call i32 @AVERROR(i32 %35)
  store i32 %36, i32* %8, align 4
  br label %120

37:                                               ; preds = %28
  %38 = load i8*, i8** %7, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = icmp eq i8* %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %42, %45
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %4, align 4
  br label %132

48:                                               ; preds = %37
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %50 = icmp ne %struct.TYPE_11__* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  br label %59

55:                                               ; preds = %48
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  br label %59

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %54, %51 ], [ %58, %55 ]
  store i32 %60, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %61

61:                                               ; preds = %116, %59
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* %9, align 4
  %67 = icmp sge i32 %66, 0
  br label %68

68:                                               ; preds = %65, %61
  %69 = phi i1 [ false, %61 ], [ %67, %65 ]
  br i1 %69, label %70, label %119

70:                                               ; preds = %68
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %72 = icmp ne %struct.TYPE_11__* %71, null
  br i1 %72, label %73, label %86

73:                                               ; preds = %70
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %75, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %76, i64 %83
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  br label %94

86:                                               ; preds = %70
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %88, align 8
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %89, i64 %91
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  br label %94

94:                                               ; preds = %86, %73
  %95 = phi %struct.TYPE_10__* [ %85, %73 ], [ %93, %86 ]
  store %struct.TYPE_10__* %95, %struct.TYPE_10__** %15, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = call i32 @match_stream_specifier(%struct.TYPE_12__* %96, %struct.TYPE_10__* %97, i8* %98, i8** null, %struct.TYPE_11__** null)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  br label %120

103:                                              ; preds = %94
  %104 = load i32, i32* %8, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %103
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %9, align 4
  %109 = icmp eq i32 %107, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %106
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %113 = icmp eq %struct.TYPE_10__* %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  store i32 1, i32* %4, align 4
  br label %132

115:                                              ; preds = %110, %106, %103
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %14, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %14, align 4
  br label %61

119:                                              ; preds = %68
  store i32 0, i32* %4, align 4
  br label %132

120:                                              ; preds = %102, %34, %22
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @EINVAL, align 4
  %123 = call i32 @AVERROR(i32 %122)
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %127 = load i32, i32* @AV_LOG_ERROR, align 4
  %128 = load i8*, i8** %7, align 8
  %129 = call i32 @av_log(%struct.TYPE_12__* %126, i32 %127, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %128)
  br label %130

130:                                              ; preds = %125, %120
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %130, %119, %114, %41, %26
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @match_stream_specifier(%struct.TYPE_12__*, %struct.TYPE_10__*, i8*, i8**, %struct.TYPE_11__**) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
