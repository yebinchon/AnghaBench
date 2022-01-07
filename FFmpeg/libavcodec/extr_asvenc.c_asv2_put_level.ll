; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_asvenc.c_asv2_put_level.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_asvenc.c_asv2_put_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ff_asv2_level_tab = common dso_local global i32** null, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Clipping level %d, increase qscale\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32)* @asv2_put_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asv2_put_level(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = add nsw i32 %8, 31
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ule i32 %10, 62
  br i1 %11, label %12, label %29

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load i32**, i32*** @ff_asv2_level_tab, align 8
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32**, i32*** @ff_asv2_level_tab, align 8
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %21, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @put_bits(i32* %13, i32 %20, i32 %27)
  br label %61

29:                                               ; preds = %3
  %30 = load i32*, i32** %5, align 8
  %31 = load i32**, i32*** @ff_asv2_level_tab, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i64 31
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32**, i32*** @ff_asv2_level_tab, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 31
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @put_bits(i32* %30, i32 %35, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, -128
  br i1 %43, label %47, label %44

44:                                               ; preds = %29
  %45 = load i32, i32* %6, align 4
  %46 = icmp sgt i32 %45, 127
  br i1 %46, label %47, label %56

47:                                               ; preds = %44, %29
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @AV_LOG_WARNING, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @av_log(i32 %50, i32 %51, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @av_clip_int8(i32 %54)
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %47, %44
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, 255
  %60 = call i32 @asv2_put_bits(i32* %57, i32 8, i32 %59)
  br label %61

61:                                               ; preds = %56, %12
  ret void
}

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32) #1

declare dso_local i32 @av_clip_int8(i32) #1

declare dso_local i32 @asv2_put_bits(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
