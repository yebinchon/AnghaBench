; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_gxf.c_gxf_seek.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_gxf.c_gxf_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@AVSEEK_FLAG_ANY = common dso_local global i32 0, align 4
@AVSEEK_FLAG_BACKWARD = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i64, i32)* @gxf_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gxf_seek(%struct.TYPE_9__* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i32 104857600, i32* %12, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %19, i64 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %13, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %24, i64 %26
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %14, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i64, i64* %14, align 8
  store i64 %35, i64* %8, align 8
  br label %36

36:                                               ; preds = %34, %4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %14, align 8
  %40 = sub nsw i64 %38, %39
  %41 = load i32, i32* @AVSEEK_FLAG_ANY, align 4
  %42 = load i32, i32* @AVSEEK_FLAG_BACKWARD, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @av_index_search_timestamp(%struct.TYPE_8__* %37, i64 %40, i32 %43)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  store i32 -1, i32* %5, align 4
  br label %101

48:                                               ; preds = %36
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = load i32, i32* %16, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %16, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %60, 2
  %62 = icmp slt i32 %57, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %48
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = load i32, i32* %16, align 4
  %68 = add nsw i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %11, align 4
  %74 = sub nsw i32 %72, %73
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %63, %48
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @FFMAX(i32 %76, i32 204800)
  store i32 %77, i32* %12, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @SEEK_SET, align 4
  %83 = call i64 @avio_seek(i32 %80, i32 %81, i32 %82)
  store i64 %83, i64* %10, align 8
  %84 = load i64, i64* %10, align 8
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %75
  %87 = load i64, i64* %10, align 8
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %5, align 4
  br label %101

89:                                               ; preds = %75
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %91 = load i32, i32* %12, align 4
  %92 = load i64, i64* %8, align 8
  %93 = call i64 @gxf_resync_media(%struct.TYPE_9__* %90, i32 %91, i32 -1, i64 %92)
  store i64 %93, i64* %15, align 8
  %94 = load i64, i64* %15, align 8
  %95 = load i64, i64* %8, align 8
  %96 = sub nsw i64 %94, %95
  %97 = call i32 @FFABS(i64 %96)
  %98 = icmp sgt i32 %97, 4
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  store i32 -1, i32* %5, align 4
  br label %101

100:                                              ; preds = %89
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %100, %99, %86, %47
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @av_index_search_timestamp(%struct.TYPE_8__*, i64, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i64 @avio_seek(i32, i32, i32) #1

declare dso_local i64 @gxf_resync_media(%struct.TYPE_9__*, i32, i32, i64) #1

declare dso_local i32 @FFABS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
