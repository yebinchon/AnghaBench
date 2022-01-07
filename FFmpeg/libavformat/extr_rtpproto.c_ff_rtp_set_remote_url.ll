; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpproto.c_ff_rtp_set_remote_url.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpproto.c_ff_rtp_set_remote_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"rtcpport\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_rtp_set_remote_url(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [1024 x i8], align 16
  %11 = alloca [1024 x i8], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @av_url_split(i32* null, i32 0, i32* null, i32 0, i8* %15, i32 256, i32* %7, i8* %16, i32 1024, i8* %17)
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %8, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = call i8* @strchr(i8* %21, i8 signext 63)
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %27 = load i8*, i8** %9, align 8
  %28 = call i64 @av_find_info_tag(i8* %26, i32 1024, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %32 = call i32 @strtol(i8* %31, i32* null, i32 10)
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %30, %25
  br label %34

34:                                               ; preds = %33, %2
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %37 = load i32, i32* %7, align 4
  %38 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %39 = call i32 @ff_url_join(i8* %35, i32 1024, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* null, i8* %36, i32 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %44 = call i32 @ff_udp_set_remote_url(i32 %42, i8* %43)
  %45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %47 = load i32, i32* %8, align 4
  %48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %49 = call i32 @ff_url_join(i8* %45, i32 1024, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* null, i8* %46, i32 %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %54 = call i32 @ff_udp_set_remote_url(i32 %52, i8* %53)
  ret i32 0
}

declare dso_local i32 @av_url_split(i32*, i32, i32*, i32, i8*, i32, i32*, i8*, i32, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @av_find_info_tag(i8*, i32, i8*, i8*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @ff_url_join(i8*, i32, i8*, i32*, i8*, i32, i8*, i8*) #1

declare dso_local i32 @ff_udp_set_remote_url(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
