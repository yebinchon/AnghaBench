; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_golomb.h_get_ue_golomb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_golomb.h_get_ue_golomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@re = common dso_local global i32 0, align 4
@ff_golomb_vlc_len = common dso_local global i32* null, align 8
@ff_ue_golomb_vlc_code = common dso_local global i32* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid UE golomb code\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @get_ue_golomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ue_golomb(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32, i32* @re, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @OPEN_READER(i32 %6, i32* %7)
  %9 = load i32, i32* @re, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @UPDATE_CACHE(i32 %9, i32* %10)
  %12 = load i32, i32* @re, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @GET_CACHE(i32 %12, i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp uge i32 %15, 134217728
  br i1 %16, label %17, label %36

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = lshr i32 %18, 23
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @re, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** @ff_golomb_vlc_len, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @LAST_SKIP_BITS(i32 %20, i32* %21, i32 %26)
  %28 = load i32, i32* @re, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @CLOSE_READER(i32 %28, i32* %29)
  %31 = load i32*, i32** @ff_ue_golomb_vlc_code, align 8
  %32 = load i32, i32* %4, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %2, align 4
  br label %62

36:                                               ; preds = %1
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @av_log2(i32 %37)
  %39 = mul nsw i32 2, %38
  %40 = sub nsw i32 %39, 31
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* @re, align 4
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sub nsw i32 32, %43
  %45 = call i32 @LAST_SKIP_BITS(i32 %41, i32* %42, i32 %44)
  %46 = load i32, i32* @re, align 4
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @CLOSE_READER(i32 %46, i32* %47)
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 7
  br i1 %50, label %51, label %55

51:                                               ; preds = %36
  %52 = load i32, i32* @AV_LOG_ERROR, align 4
  %53 = call i32 @av_log(i32* null, i32 %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %54, i32* %2, align 4
  br label %62

55:                                               ; preds = %36
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %4, align 4
  %58 = lshr i32 %57, %56
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = add i32 %59, -1
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %55, %51, %17
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @OPEN_READER(i32, i32*) #1

declare dso_local i32 @UPDATE_CACHE(i32, i32*) #1

declare dso_local i32 @GET_CACHE(i32, i32*) #1

declare dso_local i32 @LAST_SKIP_BITS(i32, i32*, i32) #1

declare dso_local i32 @CLOSE_READER(i32, i32*) #1

declare dso_local i32 @av_log2(i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
