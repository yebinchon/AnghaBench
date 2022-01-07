; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wrapped_avframe.c_wrapped_avframe_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wrapped_avframe.c_wrapped_avframe_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64 }

@AV_PKT_FLAG_TRUSTED = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, %struct.TYPE_3__*)* @wrapped_avframe_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wrapped_avframe_decode(i32* %0, i8* %1, i32* %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @AV_PKT_FLAG_TRUSTED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @EPERM, align 4
  %21 = call i32 @AVERROR(i32 %20)
  store i32 %21, i32* %5, align 4
  br label %59

22:                                               ; preds = %4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %26, 4
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  %30 = call i32 @AVERROR(i32 %29)
  store i32 %30, i32* %5, align 4
  br label %59

31:                                               ; preds = %22
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %10, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = bitcast i8* %36 to i32*
  store i32* %37, i32** %11, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @ff_decode_frame_props(i32* %38, i32* %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %5, align 4
  br label %59

45:                                               ; preds = %31
  %46 = load i32*, i32** %11, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @av_frame_move_ref(i32* %46, i32* %47)
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @ff_attach_decode_data(i32* %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @av_frame_unref(i32* %54)
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %5, align 4
  br label %59

57:                                               ; preds = %45
  %58 = load i32*, i32** %8, align 8
  store i32 1, i32* %58, align 4
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %57, %53, %43, %28, %19
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_decode_frame_props(i32*, i32*) #1

declare dso_local i32 @av_frame_move_ref(i32*, i32*) #1

declare dso_local i32 @ff_attach_decode_data(i32*) #1

declare dso_local i32 @av_frame_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
