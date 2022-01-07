; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mp3dec.c_check.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mp3dec.c_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@CHECK_SEEK_FAILED = common dso_local global i32 0, align 4
@CHECK_WRONG_HEADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @SEEK_SET, align 4
  %15 = call i32 @avio_seek(i32* %12, i32 %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @CHECK_SEEK_FAILED, align 4
  store i32 %19, i32* %4, align 4
  br label %51

20:                                               ; preds = %3
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %23 = call i32 @avio_read(i32* %21, i32* %22, i32 4)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 4
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @CHECK_SEEK_FAILED, align 4
  store i32 %27, i32* %4, align 4
  br label %51

28:                                               ; preds = %20
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %30 = call i32 @AV_RB32(i32* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i64 @ff_mpa_check_header(i32 %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @CHECK_WRONG_HEADER, align 4
  store i32 %35, i32* %4, align 4
  br label %51

36:                                               ; preds = %28
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @avpriv_mpegaudio_decode_header(%struct.TYPE_3__* %11, i32 %37)
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @CHECK_WRONG_HEADER, align 4
  store i32 %41, i32* %4, align 4
  br label %51

42:                                               ; preds = %36
  %43 = load i32*, i32** %7, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %10, align 4
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %42
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %48, %40, %34, %26, %18
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @avio_seek(i32*, i32, i32) #1

declare dso_local i32 @avio_read(i32*, i32*, i32) #1

declare dso_local i32 @AV_RB32(i32*) #1

declare dso_local i64 @ff_mpa_check_header(i32) #1

declare dso_local i32 @avpriv_mpegaudio_decode_header(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
