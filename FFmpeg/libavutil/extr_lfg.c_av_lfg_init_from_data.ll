; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_lfg.c_av_lfg_init_from_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_lfg.c_av_lfg_init_from_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64 }

@UINT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AV_CRC_32_IEEE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_lfg_init_from_data(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %12, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @UINT_MAX, align 4
  %15 = udiv i32 %14, 128
  %16 = icmp ugt i32 %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = call i32 @AVERROR(i32 %18)
  store i32 %19, i32* %4, align 4
  br label %56

20:                                               ; preds = %3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @AV_CRC_32_IEEE, align 4
  %24 = call i32* @av_crc_get_table(i32 %23)
  store i32* %24, i32** %11, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %52, %20
  %26 = load i32, i32* %10, align 4
  %27 = icmp ult i32 %26, 64
  br i1 %27, label %28, label %55

28:                                               ; preds = %25
  %29 = load i32, i32* %10, align 4
  %30 = add i32 %29, 1
  %31 = load i32, i32* %7, align 4
  %32 = mul i32 %30, %31
  %33 = udiv i32 %32, 64
  store i32 %33, i32* %9, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = sub i32 %40, %41
  %43 = call i32 @av_crc(i32* %34, i32 %35, i32* %39, i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %44, i32* %50, align 4
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %28
  %53 = load i32, i32* %10, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %25

55:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %17
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32* @av_crc_get_table(i32) #1

declare dso_local i32 @av_crc(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
