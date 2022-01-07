; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_adpcm.c_adpcm_agm_expand_nibble.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_adpcm.c_adpcm_agm_expand_nibble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @adpcm_agm_expand_nibble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adpcm_agm_expand_nibble(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 7
  store i32 %14, i32* %6, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = mul nsw i32 %18, 2
  %20 = add nsw i32 %19, 1
  %21 = load i32, i32* %8, align 4
  %22 = mul nsw i32 %20, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 7
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %25, %2
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %9, align 4
  %35 = ashr i32 %34, 3
  %36 = add nsw i32 %33, %35
  %37 = call i8* @av_clip(i32 %36, i32 -32767, i32 32767)
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %7, align 4
  br label %46

39:                                               ; preds = %28
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %9, align 4
  %42 = ashr i32 %41, 3
  %43 = sub nsw i32 %40, %42
  %44 = call i8* @av_clip(i32 %43, i32 -32767, i32 32767)
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %39, %32
  %47 = load i32, i32* %6, align 4
  switch i32 %47, label %70 [
    i32 7, label %48
    i32 6, label %51
    i32 5, label %64
    i32 4, label %67
  ]

48:                                               ; preds = %46
  %49 = load i32, i32* %8, align 4
  %50 = mul nsw i32 %49, 153
  store i32 %50, i32* %8, align 4
  br label %73

51:                                               ; preds = %46
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %54, 2
  %56 = call i8* @av_clip(i32 %55, i32 127, i32 24576)
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  br label %95

64:                                               ; preds = %46
  %65 = load i32, i32* %8, align 4
  %66 = mul nsw i32 %65, 102
  store i32 %66, i32* %8, align 4
  br label %73

67:                                               ; preds = %46
  %68 = load i32, i32* %8, align 4
  %69 = mul nsw i32 %68, 77
  store i32 %69, i32* %8, align 4
  br label %73

70:                                               ; preds = %46
  %71 = load i32, i32* %8, align 4
  %72 = mul nsw i32 %71, 57
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %70, %67, %64, %48
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 63
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i32, i32* %8, align 4
  %81 = ashr i32 %80, 6
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @av_clip(i32 %86, i32 127, i32 24576)
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %79, %51
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i8* @av_clip(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
