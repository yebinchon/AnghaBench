; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpcrypt.c_rtmpe_open.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpcrypt.c_rtmpe_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64 }

@.str = private unnamed_addr constant [11 x i8] c"ffrtmphttp\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@AVIO_FLAG_READ_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i32)* @rtmpe_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtmpe_open(%struct.TYPE_6__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca [256 x i8], align 16
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %8, align 8
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @av_url_split(i32* null, i32 0, i32* null, i32 0, i8* %16, i32 256, i32* %12, i32* null, i32 0, i8* %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 80, i32* %12, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @ff_url_join(i8* %28, i32 1024, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null, i8* %29, i32 %30, i32* null)
  br label %41

32:                                               ; preds = %3
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 1935, i32* %12, align 4
  br label %36

36:                                               ; preds = %35, %32
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @ff_url_join(i8* %37, i32 1024, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* null, i8* %38, i32 %39, i32* null)
  br label %41

41:                                               ; preds = %36, %27
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %45 = load i32, i32* @AVIO_FLAG_READ_WRITE, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = call i32 @ffurl_open_whitelist(i32* %43, i8* %44, i32 %45, i32* %47, i32* null, i32 %50, i32 %53, %struct.TYPE_6__* %54)
  store i32 %55, i32* %11, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %41
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = call i32 @rtmpe_close(%struct.TYPE_6__* %58)
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %4, align 4
  br label %62

61:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %57
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @av_url_split(i32*, i32, i32*, i32, i8*, i32, i32*, i32*, i32, i8*) #1

declare dso_local i32 @ff_url_join(i8*, i32, i8*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @ffurl_open_whitelist(i32*, i8*, i32, i32*, i32*, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @rtmpe_close(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
