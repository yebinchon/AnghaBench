; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegts.c_mpegts_resync.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegts.c_mpegts_resync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32 }

@SEEK_CUR = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"max resync size reached, could not find sync byte\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32*)* @mpegts_resync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpegts_resync(%struct.TYPE_7__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %8, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call i32 @avio_tell(i32* %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @FFMIN(i32 %22, i32 %23)
  %25 = sub nsw i32 0, %24
  %26 = load i32, i32* @SEEK_CUR, align 4
  %27 = call i32 @avio_seek(i32* %21, i32 %25, i32 %26)
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 128
  br i1 %31, label %32, label %41

32:                                               ; preds = %3
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 12
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 71
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* @SEEK_CUR, align 4
  %40 = call i32 @avio_seek(i32* %38, i32 12, i32 %39)
  store i32 0, i32* %4, align 4
  br label %76

41:                                               ; preds = %32, %3
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %68, %41
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %71

48:                                               ; preds = %42
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @avio_r8(i32* %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = call i64 @avio_feof(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %55, i32* %4, align 4
  br label %76

56:                                               ; preds = %48
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %57, 71
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* @SEEK_CUR, align 4
  %62 = call i32 @avio_seek(i32* %60, i32 -1, i32 %61)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = call i32 @reanalyze(%struct.TYPE_6__* %65)
  store i32 0, i32* %4, align 4
  br label %76

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %42

71:                                               ; preds = %42
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = load i32, i32* @AV_LOG_ERROR, align 4
  %74 = call i32 @av_log(%struct.TYPE_7__* %72, i32 %73, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %71, %59, %54, %37
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @avio_seek(i32*, i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i64 @avio_feof(i32*) #1

declare dso_local i32 @reanalyze(%struct.TYPE_6__*) #1

declare dso_local i32 @av_log(%struct.TYPE_7__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
