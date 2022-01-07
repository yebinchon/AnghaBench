; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskaenc.c_put_xiph_codecpriv.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskaenc.c_put_xiph_codecpriv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@AV_CODEC_ID_VORBIS = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Extradata corrupt.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_3__*)* @put_xiph_codecpriv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_xiph_codecpriv(i32* %0, i32* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca [3 x i32*], align 16
  %9 = alloca [3 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AV_CODEC_ID_VORBIS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 30, i32* %10, align 4
  br label %19

18:                                               ; preds = %3
  store i32 42, i32* %10, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 0
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %29 = call i64 @avpriv_split_xiph_headers(i32 %22, i32 %25, i32 %26, i32** %27, i32* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %19
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @AV_LOG_ERROR, align 4
  %34 = call i32 @av_log(i32* %32, i32 %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %70

35:                                               ; preds = %19
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @avio_w8(i32* %36, i32 2)
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %48, %35
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @put_xiph_size(i32* %42, i32 %46)
  br label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %38

51:                                               ; preds = %38
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %66, %51
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %53, 3
  br i1 %54, label %55, label %69

55:                                               ; preds = %52
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @avio_write(i32* %56, i32* %60, i32 %64)
  br label %66

66:                                               ; preds = %55
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %52

69:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %31
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i64 @avpriv_split_xiph_headers(i32, i32, i32, i32**, i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @put_xiph_size(i32*, i32) #1

declare dso_local i32 @avio_write(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
