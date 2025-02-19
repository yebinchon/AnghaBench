; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000dec.c_get_coc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000dec.c_get_coc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i8* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Insufficient space for COC\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Invalid compno %d. There are %d components in the image.\0A\00", align 1
@HAD_COC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_8__*, i32*)* @get_coc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_coc(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = call i32 @bytestream2_get_bytes_left(i32* %11)
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @AV_LOG_ERROR, align 4
  %19 = call i32 (i32, i32, i8*, ...) @av_log(i32 %17, i32 %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %20, i32* %4, align 4
  br label %66

21:                                               ; preds = %3
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = call i8* @bytestream2_get_byteu(i32* %23)
  %25 = ptrtoint i8* %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sge i32 %26, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %21
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AV_LOG_ERROR, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i32, i8*, ...) @av_log(i32 %34, i32 %35, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %39)
  %41 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %41, i32* %4, align 4
  br label %66

42:                                               ; preds = %21
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i64 %45
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %6, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = call i8* @bytestream2_get_byteu(i32* %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %54 = call i32 @get_cox(%struct.TYPE_7__* %52, %struct.TYPE_8__* %53)
  store i32 %54, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %42
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %4, align 4
  br label %66

58:                                               ; preds = %42
  %59 = load i32, i32* @HAD_COC, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %59
  store i32 %65, i32* %63, align 4
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %58, %56, %31, %14
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i8* @bytestream2_get_byteu(i32*) #1

declare dso_local i32 @get_cox(%struct.TYPE_7__*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
