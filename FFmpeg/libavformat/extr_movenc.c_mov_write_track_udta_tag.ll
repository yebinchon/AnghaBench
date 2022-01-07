; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_track_udta_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_track_udta_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MODE_MP4 = common dso_local global i32 0, align 4
@MODE_MOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"udta\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32*)* @mov_write_track_udta_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_track_udta_tag(i32* %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %52

15:                                               ; preds = %3
  %16 = call i32 @avio_open_dyn_buf(i32** %8)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %52

21:                                               ; preds = %15
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MODE_MP4, align 4
  %26 = load i32, i32* @MODE_MOV, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load i32*, i32** %8, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @mov_write_track_metadata(i32* %31, i32* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %30, %21
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @avio_close_dyn_buf(i32* %35, i32** %11)
  store i32 %36, i32* %10, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 8
  %42 = call i32 @avio_wb32(i32* %39, i32 %41)
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @ffio_wfourcc(i32* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @avio_write(i32* %45, i32* %46, i32 %47)
  br label %49

49:                                               ; preds = %38, %34
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @av_free(i32* %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %19, %14
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @avio_open_dyn_buf(i32**) #1

declare dso_local i32 @mov_write_track_metadata(i32*, i32*, i8*, i8*) #1

declare dso_local i32 @avio_close_dyn_buf(i32*, i32**) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @avio_write(i32*, i32*, i32) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
