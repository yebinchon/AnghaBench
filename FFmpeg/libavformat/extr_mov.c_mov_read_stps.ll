; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_stps.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_stps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i8** }
%struct.TYPE_12__ = type { i64 }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Duplicated STPS atom\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"reached eof, corrupted STPS atom\0A\00", align 1
@AVERROR_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_12__*, i32)* @mov_read_stps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_read_stps(%struct.TYPE_10__* %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %111

19:                                               ; preds = %3
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %23, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %24, i64 %31
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %8, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %9, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %38 = call i8* @avio_rb32(%struct.TYPE_12__* %37)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = call i8* @avio_rb32(%struct.TYPE_12__* %39)
  %41 = ptrtoint i8* %40 to i32
  store i32 %41, i32* %11, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i8**, i8*** %43, align 8
  %45 = icmp ne i8** %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %19
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  %50 = load i32, i32* @AV_LOG_WARNING, align 4
  %51 = call i32 @av_log(%struct.TYPE_13__* %49, i32 %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %46, %19
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i8**, i8*** %54, align 8
  %56 = call i32 @av_free(i8** %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i8** @av_malloc_array(i32 %59, i32 8)
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  store i8** %60, i8*** %62, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i8**, i8*** %64, align 8
  %66 = icmp ne i8** %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %52
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = call i32 @AVERROR(i32 %68)
  store i32 %69, i32* %4, align 4
  br label %111

70:                                               ; preds = %52
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %92, %70
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  %80 = xor i1 %79, true
  br label %81

81:                                               ; preds = %75, %71
  %82 = phi i1 [ false, %71 ], [ %80, %75 ]
  br i1 %82, label %83, label %95

83:                                               ; preds = %81
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %85 = call i8* @avio_rb32(%struct.TYPE_12__* %84)
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i8**, i8*** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  store i8* %85, i8** %91, align 8
  br label %92

92:                                               ; preds = %83
  %93 = load i32, i32* %10, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %10, align 4
  br label %71

95:                                               ; preds = %81
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %95
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %105, align 8
  %107 = load i32, i32* @AV_LOG_WARNING, align 4
  %108 = call i32 @av_log(%struct.TYPE_13__* %106, i32 %107, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %109 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %109, i32* %4, align 4
  br label %111

110:                                              ; preds = %95
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %110, %103, %67, %18
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i8* @avio_rb32(%struct.TYPE_12__*) #1

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i32 @av_free(i8**) #1

declare dso_local i8** @av_malloc_array(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
