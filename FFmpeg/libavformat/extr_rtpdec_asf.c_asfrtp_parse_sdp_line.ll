; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_asf.c_asfrtp_parse_sdp_line.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_asf.c_asfrtp_parse_sdp_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__**, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"stream:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i32*, i8*)* @asfrtp_parse_sdp_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asfrtp_parse_sdp_line(%struct.TYPE_10__* %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %124

15:                                               ; preds = %4
  %16 = load i8*, i8** %9, align 8
  %17 = call i64 @av_strstart(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %9)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %123

19:                                               ; preds = %15
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %10, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = call i64 @strtol(i8* %23, i32* null, i32 10)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %27, i64 %29
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  store i64 %24, i64* %32, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = icmp ne %struct.TYPE_8__* %35, null
  br i1 %36, label %37, label %122

37:                                               ; preds = %19
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %118, %37
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %39, %44
  br i1 %45, label %46, label %121

46:                                               ; preds = %38
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %49, i64 %51
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %60, i64 %62
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %55, %66
  br i1 %67, label %68, label %117

68:                                               ; preds = %46
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %71, i64 %73
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %82, i64 %84
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @avcodec_parameters_copy(i32 %77, i32 %88)
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %94, i64 %96
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %103, i64 %105
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  store i32 %100, i32* %108, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %111, i64 %113
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = call i32 @avpriv_set_pts_info(%struct.TYPE_11__* %115, i32 32, i32 1, i32 1000)
  br label %117

117:                                              ; preds = %68, %46
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %11, align 4
  br label %38

121:                                              ; preds = %38
  br label %122

122:                                              ; preds = %121, %19
  br label %123

123:                                              ; preds = %122, %15
  store i32 0, i32* %5, align 4
  br label %124

124:                                              ; preds = %123, %14
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i64 @av_strstart(i8*, i8*, i8**) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @avcodec_parameters_copy(i32, i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_11__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
