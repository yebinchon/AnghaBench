; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_ac3_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_ac3_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"Cannot write moov atom before AC3 packets. Set the delay_moov flag to fix this.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"dac3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_3__*)* @mov_write_ac3_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_ac3_tag(i32* %0, i32* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %19, 7
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @AV_LOG_ERROR, align 4
  %24 = call i32 @av_log(i32* %22, i32 %23, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = call i32 @AVERROR(i32 %25)
  store i32 %26, i32* %4, align 4
  br label %89

27:                                               ; preds = %3
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @avio_wb32(i32* %28, i32 11)
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @ffio_wfourcc(i32* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 4
  %40 = mul nsw i32 %39, 8
  %41 = call i32 @init_get_bits(i32* %8, i64 %35, i32 %40)
  %42 = call i32 @get_bits(i32* %8, i32 2)
  store i32 %42, i32* %11, align 4
  %43 = call i32 @get_bits(i32* %8, i32 6)
  store i32 %43, i32* %16, align 4
  %44 = call i32 @get_bits(i32* %8, i32 5)
  store i32 %44, i32* %12, align 4
  %45 = call i32 @get_bits(i32* %8, i32 3)
  store i32 %45, i32* %13, align 4
  %46 = call i32 @get_bits(i32* %8, i32 3)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %51

49:                                               ; preds = %27
  %50 = call i32 @skip_bits(i32* %8, i32 2)
  br label %67

51:                                               ; preds = %27
  %52 = load i32, i32* %14, align 4
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 1
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 @skip_bits(i32* %8, i32 2)
  br label %60

60:                                               ; preds = %58, %55, %51
  %61 = load i32, i32* %14, align 4
  %62 = and i32 %61, 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = call i32 @skip_bits(i32* %8, i32 2)
  br label %66

66:                                               ; preds = %64, %60
  br label %67

67:                                               ; preds = %66, %49
  %68 = call i32 @get_bits1(i32* %8)
  store i32 %68, i32* %15, align 4
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %70 = call i32 @init_put_bits(i32* %9, i32* %69, i32 12)
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @put_bits(i32* %9, i32 2, i32 %71)
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @put_bits(i32* %9, i32 5, i32 %73)
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @put_bits(i32* %9, i32 3, i32 %75)
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @put_bits(i32* %9, i32 3, i32 %77)
  %79 = load i32, i32* %15, align 4
  %80 = call i32 @put_bits(i32* %9, i32 1, i32 %79)
  %81 = load i32, i32* %16, align 4
  %82 = ashr i32 %81, 1
  %83 = call i32 @put_bits(i32* %9, i32 5, i32 %82)
  %84 = call i32 @put_bits(i32* %9, i32 5, i32 0)
  %85 = call i32 @flush_put_bits(i32* %9)
  %86 = load i32*, i32** %6, align 8
  %87 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %88 = call i32 @avio_write(i32* %86, i32* %87, i32 12)
  store i32 11, i32* %4, align 4
  br label %89

89:                                               ; preds = %67, %21
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @init_get_bits(i32*, i64, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @init_put_bits(i32*, i32*, i32) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @flush_put_bits(i32*) #1

declare dso_local i32 @avio_write(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
