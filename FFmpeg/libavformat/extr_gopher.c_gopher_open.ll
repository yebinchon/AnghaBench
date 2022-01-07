; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_gopher.c_gopher_open.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_gopher.c_gopher_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }

@.str = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@AVIO_FLAG_READ_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i32)* @gopher_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gopher_open(%struct.TYPE_7__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca [1024 x i8], align 16
  %10 = alloca [1024 x i8], align 16
  %11 = alloca [1024 x i8], align 16
  %12 = alloca [1024 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %8, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @av_url_split(i32* null, i32 0, i8* %20, i32 1024, i8* %21, i32 1024, i32* %13, i8* %22, i32 1024, i8* %23)
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 70, i32* %13, align 4
  br label %28

28:                                               ; preds = %27, %3
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @ff_url_join(i8* %29, i32 1024, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null, i8* %30, i32 %31, i32* null)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %38 = load i32, i32* @AVIO_FLAG_READ_WRITE, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = call i32 @ffurl_open_whitelist(i32** %36, i8* %37, i32 %38, i32* %40, i32* null, i32 %43, i32 %46, %struct.TYPE_7__* %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %28
  br label %59

52:                                               ; preds = %28
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %55 = call i32 @gopher_connect(%struct.TYPE_7__* %53, i8* %54)
  store i32 %55, i32* %14, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %59

58:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %63

59:                                               ; preds = %57, %51
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = call i32 @gopher_close(%struct.TYPE_7__* %60)
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %59, %58
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @av_url_split(i32*, i32, i8*, i32, i8*, i32, i32*, i8*, i32, i8*) #1

declare dso_local i32 @ff_url_join(i8*, i32, i8*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @ffurl_open_whitelist(i32**, i8*, i32, i32*, i32*, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @gopher_connect(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @gopher_close(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
