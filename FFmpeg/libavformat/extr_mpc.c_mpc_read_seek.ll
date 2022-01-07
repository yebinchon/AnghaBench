; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpc.c_mpc_read_seek.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpc.c_mpc_read_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__*, %struct.TYPE_10__** }
%struct.TYPE_9__ = type { i64, i64, i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }

@DELAY_FRAMES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i64, i32)* @mpc_read_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc_read_seek(%struct.TYPE_11__* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %19, i64 %21
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %10, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %11, align 8
  store i32* %12, i32** %13, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @DELAY_FRAMES, align 8
  %30 = sub nsw i64 %28, %29
  %31 = call i32 @FFMAX(i64 %30, i32 0)
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @av_index_search_timestamp(%struct.TYPE_10__* %27, i32 %31, i32 %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %63

36:                                               ; preds = %4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @DELAY_FRAMES, align 8
  %50 = sub nsw i64 %48, %49
  %51 = icmp sge i64 %47, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %36
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  store i32 0, i32* %5, align 4
  br label %113

63:                                               ; preds = %36, %4
  %64 = load i64, i64* %8, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %63
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp sge i64 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66, %63
  store i32 -1, i32* %5, align 4
  br label %113

73:                                               ; preds = %66
  %74 = load i64, i64* @DELAY_FRAMES, align 8
  %75 = load i64, i64* %8, align 8
  %76 = sub nsw i64 %75, %74
  store i64 %76, i64* %8, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %16, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %73
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %87, 1
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %84, %73
  br label %92

92:                                               ; preds = %109, %91
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %8, align 8
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %98, label %112

98:                                               ; preds = %92
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %100 = load i32*, i32** %13, align 8
  %101 = call i32 @av_read_frame(%struct.TYPE_11__* %99, i32* %100)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = load i64, i64* %16, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load i32, i32* %14, align 4
  store i32 %108, i32* %5, align 4
  br label %113

109:                                              ; preds = %98
  %110 = load i32*, i32** %13, align 8
  %111 = call i32 @av_packet_unref(i32* %110)
  br label %92

112:                                              ; preds = %92
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %112, %104, %72, %52
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @av_index_search_timestamp(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @FFMAX(i64, i32) #1

declare dso_local i32 @av_read_frame(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @av_packet_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
