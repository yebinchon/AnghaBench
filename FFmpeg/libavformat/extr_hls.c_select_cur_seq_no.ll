; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_select_cur_seq_no.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_select_cur_seq_no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i32 }
%struct.playlist = type { i64, i64, i64, i64, i32 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.playlist*)* @select_cur_seq_no to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @select_cur_seq_no(%struct.TYPE_5__* %0, %struct.playlist* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.playlist*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.playlist* %1, %struct.playlist** %5, align 8
  %7 = load %struct.playlist*, %struct.playlist** %5, align 8
  %8 = getelementptr inbounds %struct.playlist, %struct.playlist* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %11
  %17 = call i64 (...) @av_gettime_relative()
  %18 = load %struct.playlist*, %struct.playlist** %5, align 8
  %19 = getelementptr inbounds %struct.playlist, %struct.playlist* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %17, %20
  %22 = load %struct.playlist*, %struct.playlist** %5, align 8
  %23 = call i64 @default_reload_interval(%struct.playlist* %22)
  %24 = icmp sge i64 %21, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %16
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = load %struct.playlist*, %struct.playlist** %5, align 8
  %28 = getelementptr inbounds %struct.playlist, %struct.playlist* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.playlist*, %struct.playlist** %5, align 8
  %31 = call i32 @parse_playlist(%struct.TYPE_5__* %26, i32 %29, %struct.playlist* %30, i32* null)
  br label %32

32:                                               ; preds = %25, %16, %11, %2
  %33 = load %struct.playlist*, %struct.playlist** %5, align 8
  %34 = getelementptr inbounds %struct.playlist, %struct.playlist* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %32
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = load %struct.playlist*, %struct.playlist** %5, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @find_timestamp_in_playlist(%struct.TYPE_5__* %44, %struct.playlist* %45, i64 %48, i32* %6)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %126

51:                                               ; preds = %37, %32
  %52 = load %struct.playlist*, %struct.playlist** %5, align 8
  %53 = getelementptr inbounds %struct.playlist, %struct.playlist* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %121, label %56

56:                                               ; preds = %51
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %86, label %61

61:                                               ; preds = %56
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.playlist*, %struct.playlist** %5, align 8
  %66 = getelementptr inbounds %struct.playlist, %struct.playlist* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp sge i64 %64, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %61
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.playlist*, %struct.playlist** %5, align 8
  %74 = getelementptr inbounds %struct.playlist, %struct.playlist* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.playlist*, %struct.playlist** %5, align 8
  %77 = getelementptr inbounds %struct.playlist, %struct.playlist* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %75, %78
  %80 = icmp slt i64 %72, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %69
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %3, align 4
  br label %126

86:                                               ; preds = %69, %61, %56
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %86
  %92 = load %struct.playlist*, %struct.playlist** %5, align 8
  %93 = getelementptr inbounds %struct.playlist, %struct.playlist* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.playlist*, %struct.playlist** %5, align 8
  %96 = getelementptr inbounds %struct.playlist, %struct.playlist* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %97, %100
  %102 = call i32 @FFMAX(i64 %101, i32 0)
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %94, %103
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %3, align 4
  br label %126

106:                                              ; preds = %86
  %107 = load %struct.playlist*, %struct.playlist** %5, align 8
  %108 = getelementptr inbounds %struct.playlist, %struct.playlist* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.playlist*, %struct.playlist** %5, align 8
  %114 = getelementptr inbounds %struct.playlist, %struct.playlist* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = sub nsw i64 %115, 1
  %117 = call i32 @FFMIN(i64 %112, i64 %116)
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %109, %118
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %3, align 4
  br label %126

121:                                              ; preds = %51
  %122 = load %struct.playlist*, %struct.playlist** %5, align 8
  %123 = getelementptr inbounds %struct.playlist, %struct.playlist* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %121, %106, %91, %81, %43
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i64 @av_gettime_relative(...) #1

declare dso_local i64 @default_reload_interval(%struct.playlist*) #1

declare dso_local i32 @parse_playlist(%struct.TYPE_5__*, i32, %struct.playlist*, i32*) #1

declare dso_local i32 @find_timestamp_in_playlist(%struct.TYPE_5__*, %struct.playlist*, i64, i32*) #1

declare dso_local i32 @FFMAX(i64, i32) #1

declare dso_local i32 @FFMIN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
