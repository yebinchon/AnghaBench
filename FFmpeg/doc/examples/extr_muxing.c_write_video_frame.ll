; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_muxing.c_write_video_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_muxing.c_write_video_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Error encoding video frame: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Error while writing video frame: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*)* @write_video_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_video_frame(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  store i32 0, i32* %8, align 4
  %10 = bitcast %struct.TYPE_11__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %6, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = call i32* @get_video_frame(%struct.TYPE_10__* %14)
  store i32* %15, i32** %7, align 8
  %16 = call i32 @av_init_packet(%struct.TYPE_11__* %9)
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @avcodec_encode_video2(%struct.TYPE_12__* %17, %struct.TYPE_11__* %9, i32* %18, i32* %8)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load i32, i32* @stderr, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i8* @av_err2str(i32 %24)
  %26 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = call i32 @exit(i32 1) #4
  unreachable

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32*, i32** %3, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @write_frame(i32* %32, i32* %34, i32 %37, %struct.TYPE_11__* %9)
  store i32 %38, i32* %5, align 4
  br label %40

39:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %31
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i32, i32* @stderr, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i8* @av_err2str(i32 %45)
  %47 = call i32 @fprintf(i32 %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  %48 = call i32 @exit(i32 1) #4
  unreachable

49:                                               ; preds = %40
  %50 = load i32*, i32** %7, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br label %55

55:                                               ; preds = %52, %49
  %56 = phi i1 [ true, %49 ], [ %54, %52 ]
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 0, i32 1
  ret i32 %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @get_video_frame(%struct.TYPE_10__*) #2

declare dso_local i32 @av_init_packet(%struct.TYPE_11__*) #2

declare dso_local i32 @avcodec_encode_video2(%struct.TYPE_12__*, %struct.TYPE_11__*, i32*, i32*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i8* @av_err2str(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @write_frame(i32*, i32*, i32, %struct.TYPE_11__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
