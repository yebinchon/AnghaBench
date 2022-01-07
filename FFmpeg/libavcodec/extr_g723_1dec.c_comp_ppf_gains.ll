; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g723_1dec.c_comp_ppf_gains.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g723_1dec.c_comp_ppf_gains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@ppf_gain_weight = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_3__*, i32, i32, i32, i32)* @comp_ppf_gains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @comp_ppf_gains(i32 %0, %struct.TYPE_3__* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %12, align 4
  %21 = mul nsw i32 %19, %20
  %22 = ashr i32 %21, 1
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = mul nsw i32 %23, %24
  %26 = shl i32 %25, 1
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %97

30:                                               ; preds = %6
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i32*, i32** @ppf_gain_weight, align 8
  %36 = load i32, i32* %9, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %56

42:                                               ; preds = %30
  %43 = load i32, i32* %11, align 4
  %44 = shl i32 %43, 15
  %45 = load i32, i32* %12, align 4
  %46 = sdiv i32 %44, %45
  %47 = load i32*, i32** @ppf_gain_weight, align 8
  %48 = load i32, i32* %9, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %46, %51
  %53 = ashr i32 %52, 15
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %42, %34
  %57 = load i32, i32* %10, align 4
  %58 = shl i32 %57, 15
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %59, %62
  %64 = shl i32 %63, 1
  %65 = add nsw i32 %58, %64
  store i32 %65, i32* %14, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %68, %71
  %73 = ashr i32 %72, 15
  %74 = load i32, i32* %12, align 4
  %75 = mul nsw i32 %73, %74
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %15, align 4
  %78 = add nsw i32 %77, 32768
  %79 = call i32 @av_sat_add32(i32 %76, i32 %78)
  %80 = ashr i32 %79, 16
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %13, align 4
  %83 = shl i32 %82, 1
  %84 = icmp sge i32 %81, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %56
  store i32 32767, i32* %14, align 4
  br label %91

86:                                               ; preds = %56
  %87 = load i32, i32* %10, align 4
  %88 = shl i32 %87, 14
  %89 = load i32, i32* %13, align 4
  %90 = sdiv i32 %88, %89
  store i32 %90, i32* %14, align 4
  br label %91

91:                                               ; preds = %86, %85
  %92 = load i32, i32* %14, align 4
  %93 = shl i32 %92, 16
  %94 = call i32 @square_root(i32 %93)
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  br label %102

97:                                               ; preds = %6
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  store i32 0, i32* %99, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  store i32 32767, i32* %101, align 4
  br label %102

102:                                              ; preds = %97, %91
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %105, %108
  %110 = ashr i32 %109, 15
  %111 = call i32 @av_clip_int16(i32 %110)
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  ret void
}

declare dso_local i32 @av_sat_add32(i32, i32) #1

declare dso_local i32 @square_root(i32) #1

declare dso_local i32 @av_clip_int16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
