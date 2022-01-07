; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_recheck_discard_flags.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_recheck_discard_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64, %struct.playlist** }
%struct.playlist = type { i32, i64, i32, i64, i32, i32, i64, i32, i32, i32, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i64 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@AVSEEK_FLAG_ANY = common dso_local global i32 0, align 4
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Now receiving playlist %d, segment %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"No longer receiving playlist %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @recheck_discard_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recheck_discard_flags(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.playlist*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %119, %2
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %122

19:                                               ; preds = %13
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = load %struct.playlist**, %struct.playlist*** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.playlist*, %struct.playlist** %22, i64 %24
  %26 = load %struct.playlist*, %struct.playlist** %25, align 8
  store %struct.playlist* %26, %struct.playlist** %9, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = load %struct.playlist**, %struct.playlist*** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.playlist*, %struct.playlist** %29, i64 %31
  %33 = load %struct.playlist*, %struct.playlist** %32, align 8
  %34 = call i32 @playlist_needed(%struct.playlist* %33)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.playlist*, %struct.playlist** %9, align 8
  %36 = getelementptr inbounds %struct.playlist, %struct.playlist* %35, i32 0, i32 11
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %19
  br label %119

40:                                               ; preds = %19
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %83

43:                                               ; preds = %40
  %44 = load %struct.playlist*, %struct.playlist** %9, align 8
  %45 = getelementptr inbounds %struct.playlist, %struct.playlist* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %83, label %48

48:                                               ; preds = %43
  %49 = load %struct.playlist*, %struct.playlist** %9, align 8
  %50 = getelementptr inbounds %struct.playlist, %struct.playlist* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  store i32 1, i32* %7, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = load %struct.playlist*, %struct.playlist** %9, align 8
  %53 = call i32 @select_cur_seq_no(%struct.TYPE_8__* %51, %struct.playlist* %52)
  %54 = load %struct.playlist*, %struct.playlist** %9, align 8
  %55 = getelementptr inbounds %struct.playlist, %struct.playlist* %54, i32 0, i32 8
  store i32 %53, i32* %55, align 4
  %56 = load %struct.playlist*, %struct.playlist** %9, align 8
  %57 = getelementptr inbounds %struct.playlist, %struct.playlist* %56, i32 0, i32 10
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %48
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.playlist*, %struct.playlist** %9, align 8
  %69 = getelementptr inbounds %struct.playlist, %struct.playlist* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load i32, i32* @AVSEEK_FLAG_ANY, align 4
  %71 = load %struct.playlist*, %struct.playlist** %9, align 8
  %72 = getelementptr inbounds %struct.playlist, %struct.playlist* %71, i32 0, i32 9
  store i32 %70, i32* %72, align 8
  %73 = load %struct.playlist*, %struct.playlist** %9, align 8
  %74 = getelementptr inbounds %struct.playlist, %struct.playlist* %73, i32 0, i32 2
  store i32 -1, i32* %74, align 8
  br label %75

75:                                               ; preds = %64, %48
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %77 = load i32, i32* @AV_LOG_INFO, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.playlist*, %struct.playlist** %9, align 8
  %80 = getelementptr inbounds %struct.playlist, %struct.playlist* %79, i32 0, i32 8
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (%struct.TYPE_9__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_9__* %76, i32 %77, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %81)
  br label %118

83:                                               ; preds = %43, %40
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %117

86:                                               ; preds = %83
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %117, label %89

89:                                               ; preds = %86
  %90 = load %struct.playlist*, %struct.playlist** %9, align 8
  %91 = getelementptr inbounds %struct.playlist, %struct.playlist* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %117

94:                                               ; preds = %89
  %95 = load %struct.playlist*, %struct.playlist** %9, align 8
  %96 = getelementptr inbounds %struct.playlist, %struct.playlist* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.playlist*, %struct.playlist** %9, align 8
  %99 = getelementptr inbounds %struct.playlist, %struct.playlist* %98, i32 0, i32 7
  %100 = call i32 @ff_format_io_close(i32 %97, i32* %99)
  %101 = load %struct.playlist*, %struct.playlist** %9, align 8
  %102 = getelementptr inbounds %struct.playlist, %struct.playlist* %101, i32 0, i32 6
  store i64 0, i64* %102, align 8
  %103 = load %struct.playlist*, %struct.playlist** %9, align 8
  %104 = getelementptr inbounds %struct.playlist, %struct.playlist* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.playlist*, %struct.playlist** %9, align 8
  %107 = getelementptr inbounds %struct.playlist, %struct.playlist* %106, i32 0, i32 4
  %108 = call i32 @ff_format_io_close(i32 %105, i32* %107)
  %109 = load %struct.playlist*, %struct.playlist** %9, align 8
  %110 = getelementptr inbounds %struct.playlist, %struct.playlist* %109, i32 0, i32 3
  store i64 0, i64* %110, align 8
  %111 = load %struct.playlist*, %struct.playlist** %9, align 8
  %112 = getelementptr inbounds %struct.playlist, %struct.playlist* %111, i32 0, i32 0
  store i32 0, i32* %112, align 8
  store i32 1, i32* %7, align 4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %114 = load i32, i32* @AV_LOG_INFO, align 4
  %115 = load i32, i32* %6, align 4
  %116 = call i32 (%struct.TYPE_9__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_9__* %113, i32 %114, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %94, %89, %86, %83
  br label %118

118:                                              ; preds = %117, %75
  br label %119

119:                                              ; preds = %118, %39
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %6, align 4
  br label %13

122:                                              ; preds = %13
  %123 = load i32, i32* %7, align 4
  ret i32 %123
}

declare dso_local i32 @playlist_needed(%struct.playlist*) #1

declare dso_local i32 @select_cur_seq_no(%struct.TYPE_8__*, %struct.playlist*) #1

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*, i32, ...) #1

declare dso_local i32 @ff_format_io_close(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
