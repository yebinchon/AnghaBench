; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cavs.c_mv_pred_median.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cavs.c_mv_pred_median.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*)* @mv_pred_median to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_pred_median(i32* %0, %struct.TYPE_7__* %1, %struct.TYPE_7__* %2, %struct.TYPE_7__* %3, %struct.TYPE_7__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %10, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @scale_mv(i32* %21, i32* %11, i32* %12, %struct.TYPE_7__* %22, i32 %25)
  %27 = load i32*, i32** %6, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @scale_mv(i32* %27, i32* %13, i32* %14, %struct.TYPE_7__* %28, i32 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @scale_mv(i32* %33, i32* %15, i32* %16, %struct.TYPE_7__* %34, i32 %37)
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %13, align 4
  %41 = sub nsw i32 %39, %40
  %42 = call i32 @abs(i32 %41) #3
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %14, align 4
  %45 = sub nsw i32 %43, %44
  %46 = call i32 @abs(i32 %45) #3
  %47 = add nsw i32 %42, %46
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %15, align 4
  %50 = sub nsw i32 %48, %49
  %51 = call i32 @abs(i32 %50) #3
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %16, align 4
  %54 = sub nsw i32 %52, %53
  %55 = call i32 @abs(i32 %54) #3
  %56 = add nsw i32 %51, %55
  store i32 %56, i32* %18, align 4
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %11, align 4
  %59 = sub nsw i32 %57, %58
  %60 = call i32 @abs(i32 %59) #3
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* %12, align 4
  %63 = sub nsw i32 %61, %62
  %64 = call i32 @abs(i32 %63) #3
  %65 = add nsw i32 %60, %64
  store i32 %65, i32* %19, align 4
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %19, align 4
  %69 = call i32 @mid_pred(i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %20, align 4
  %70 = load i32, i32* %20, align 4
  %71 = load i32, i32* %17, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %5
  %74 = load i32, i32* %15, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %16, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %99

80:                                               ; preds = %5
  %81 = load i32, i32* %20, align 4
  %82 = load i32, i32* %18, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %80
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  br label %98

91:                                               ; preds = %80
  %92 = load i32, i32* %13, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %91, %84
  br label %99

99:                                               ; preds = %98, %73
  ret void
}

declare dso_local i32 @scale_mv(i32*, i32*, i32*, %struct.TYPE_7__*, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @mid_pred(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
