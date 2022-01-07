; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfiltergraph.c_avfilter_graph_queue_command.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfiltergraph.c_avfilter_graph_queue_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i8*, %struct.TYPE_10__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { double, i32, %struct.TYPE_10__*, i8*, i8* }
%struct.TYPE_7__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AVFILTER_CMD_FLAG_ONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avfilter_graph_queue_command(%struct.TYPE_8__* %0, i8* %1, i8* %2, i8* %3, i32 %4, double %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca %struct.TYPE_10__**, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store double %5, double* %13, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %123

21:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  br label %22

22:                                               ; preds = %119, %21
  %23 = load i32, i32* %14, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %122

28:                                               ; preds = %22
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %30, align 8
  %32 = load i32, i32* %14, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %31, i64 %33
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %15, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %37 = icmp ne %struct.TYPE_9__* %36, null
  br i1 %37, label %38, label %118

38:                                               ; preds = %28
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %38
  %43 = load i8*, i8** %9, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @strcmp(i8* %43, i8* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %42
  %50 = load i8*, i8** %9, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @strcmp(i8* %50, i8* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %118, label %58

58:                                               ; preds = %49, %42, %38
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  store %struct.TYPE_10__** %60, %struct.TYPE_10__*** %16, align 8
  br label %61

61:                                               ; preds = %74, %58
  %62 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %16, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = icmp ne %struct.TYPE_10__* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %16, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load double, double* %68, align 8
  %70 = load double, double* %13, align 8
  %71 = fcmp ole double %69, %70
  br label %72

72:                                               ; preds = %65, %61
  %73 = phi i1 [ false, %61 ], [ %71, %65 ]
  br i1 %73, label %74, label %78

74:                                               ; preds = %72
  %75 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %16, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  store %struct.TYPE_10__** %77, %struct.TYPE_10__*** %16, align 8
  br label %61

78:                                               ; preds = %72
  %79 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %16, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  store %struct.TYPE_10__* %80, %struct.TYPE_10__** %17, align 8
  %81 = call %struct.TYPE_10__* @av_mallocz(i32 40)
  %82 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %16, align 8
  store %struct.TYPE_10__* %81, %struct.TYPE_10__** %82, align 8
  %83 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %16, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = icmp ne %struct.TYPE_10__* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %78
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = call i32 @AVERROR(i32 %87)
  store i32 %88, i32* %7, align 4
  br label %123

89:                                               ; preds = %78
  %90 = load i8*, i8** %10, align 8
  %91 = call i8* @av_strdup(i8* %90)
  %92 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %16, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 4
  store i8* %91, i8** %94, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = call i8* @av_strdup(i8* %95)
  %97 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %16, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 3
  store i8* %96, i8** %99, align 8
  %100 = load double, double* %13, align 8
  %101 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %16, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  store double %100, double* %103, align 8
  %104 = load i32, i32* %12, align 4
  %105 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %16, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  store i32 %104, i32* %107, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %109 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %16, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 2
  store %struct.TYPE_10__* %108, %struct.TYPE_10__** %111, align 8
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @AVFILTER_CMD_FLAG_ONE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %89
  store i32 0, i32* %7, align 4
  br label %123

117:                                              ; preds = %89
  br label %118

118:                                              ; preds = %117, %49, %28
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %14, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %14, align 4
  br label %22

122:                                              ; preds = %22
  store i32 0, i32* %7, align 4
  br label %123

123:                                              ; preds = %122, %116, %86, %20
  %124 = load i32, i32* %7, align 4
  ret i32 %124
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_10__* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @av_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
