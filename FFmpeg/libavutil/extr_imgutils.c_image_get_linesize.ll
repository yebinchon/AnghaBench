; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_imgutils.c_image_get_linesize.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_imgutils.c_image_get_linesize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_BITSTREAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.TYPE_3__*)* @image_get_linesize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @image_get_linesize(i32 %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_3__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %11, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @EINVAL, align 4
  %19 = call i32 @AVERROR(i32 %18)
  store i32 %19, i32* %6, align 4
  br label %73

20:                                               ; preds = %5
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @EINVAL, align 4
  %25 = call i32 @AVERROR(i32 %24)
  store i32 %25, i32* %6, align 4
  br label %73

26:                                               ; preds = %20
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %36

32:                                               ; preds = %29, %26
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  br label %37

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i32 [ %35, %32 ], [ 0, %36 ]
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %12, align 4
  %41 = shl i32 1, %40
  %42 = add nsw i32 %39, %41
  %43 = sub nsw i32 %42, 1
  %44 = load i32, i32* %12, align 4
  %45 = ashr i32 %43, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %37
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @INT_MAX, align 4
  %51 = load i32, i32* %13, align 4
  %52 = sdiv i32 %50, %51
  %53 = icmp sgt i32 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @EINVAL, align 4
  %56 = call i32 @AVERROR(i32 %55)
  store i32 %56, i32* %6, align 4
  br label %73

57:                                               ; preds = %48, %37
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %13, align 4
  %60 = mul nsw i32 %58, %59
  store i32 %60, i32* %14, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @AV_PIX_FMT_FLAG_BITSTREAM, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %57
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %68, 7
  %70 = ashr i32 %69, 3
  store i32 %70, i32* %14, align 4
  br label %71

71:                                               ; preds = %67, %57
  %72 = load i32, i32* %14, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %71, %54, %23, %17
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
