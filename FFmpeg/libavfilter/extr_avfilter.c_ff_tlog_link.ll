; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfilter.c_ff_tlog_link.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfilter.c_ff_tlog_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i8*, %struct.TYPE_11__*, %struct.TYPE_9__*, i32, i64, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* }

@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"link[%p s:%dx%d fmt:%s %s->%s]%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"link[%p r:%d cl:%s fmt:%s %s->%s]%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_tlog_link(i8* %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [128 x i8], align 16
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %61

13:                                               ; preds = %3
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @av_get_pix_fmt_name(i32 %24)
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = icmp ne %struct.TYPE_9__* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %13
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  br label %39

38:                                               ; preds = %13
  br label %39

39:                                               ; preds = %38, %30
  %40 = phi i8* [ %37, %30 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %38 ]
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = icmp ne %struct.TYPE_11__* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  br label %54

53:                                               ; preds = %39
  br label %54

54:                                               ; preds = %53, %45
  %55 = phi i8* [ %52, %45 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %53 ]
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %60 = call i32 @ff_tlog(i8* %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %15, i32 %18, i8* %21, i32 %25, i8* %40, i8* %55, i8* %59)
  br label %113

61:                                               ; preds = %3
  %62 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @av_get_channel_layout_string(i8* %62, i32 128, i32 -1, i32 %65)
  %67 = load i8*, i8** %4, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 6
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @av_get_sample_fmt_name(i32 %76)
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = icmp ne %struct.TYPE_9__* %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %61
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  br label %91

90:                                               ; preds = %61
  br label %91

91:                                               ; preds = %90, %82
  %92 = phi i8* [ %89, %82 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %90 ]
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = icmp ne %struct.TYPE_11__* %95, null
  br i1 %96, label %97, label %105

97:                                               ; preds = %91
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  br label %106

105:                                              ; preds = %91
  br label %106

106:                                              ; preds = %105, %97
  %107 = phi i8* [ %104, %97 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %105 ]
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %112 = call i32 @ff_tlog(i8* %67, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_12__* %68, i32 %72, i8* %73, i32 %77, i8* %92, i8* %107, i8* %111)
  br label %113

113:                                              ; preds = %106, %54
  ret void
}

declare dso_local i32 @ff_tlog(i8*, i8*, %struct.TYPE_12__*, i32, i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @av_get_pix_fmt_name(i32) #1

declare dso_local i32 @av_get_channel_layout_string(i8*, i32, i32, i32) #1

declare dso_local i32 @av_get_sample_fmt_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
