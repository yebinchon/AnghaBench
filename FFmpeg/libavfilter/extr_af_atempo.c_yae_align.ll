; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_atempo.c_yae_align.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_atempo.c_yae_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@FLT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.TYPE_4__*, i32, i32, i32, i32*, i32*)* @yae_align to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yae_align(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %23 = load i32, i32* %12, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* @FLT_MAX, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %16, align 4
  %27 = load i32*, i32** %13, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @yae_xcorr_via_rdft(i32* %27, i32* %28, i32* %32, i32* %36, i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = sdiv i32 %39, 2
  %41 = load i32, i32* %11, align 4
  %42 = sub nsw i32 %40, %41
  %43 = load i32, i32* %12, align 4
  %44 = sub nsw i32 %42, %43
  %45 = call i32 @FFMAX(i32 %44, i32 0)
  store i32 %45, i32* %18, align 4
  %46 = load i32, i32* %18, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @FFMIN(i32 %46, i32 %47)
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %10, align 4
  %50 = sdiv i32 %49, 2
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i32, i32* %12, align 4
  %54 = sub nsw i32 %52, %53
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = sdiv i32 %56, 16
  %58 = sub nsw i32 %55, %57
  %59 = call i32 @FFMIN(i32 %54, i32 %58)
  store i32 %59, i32* %19, align 4
  %60 = load i32, i32* %19, align 4
  %61 = call i32 @FFMAX(i32 %60, i32 0)
  store i32 %61, i32* %19, align 4
  %62 = load i32*, i32** %13, align 8
  %63 = load i32, i32* %18, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32* %65, i32** %17, align 8
  %66 = load i32, i32* %18, align 4
  store i32 %66, i32* %20, align 4
  br label %67

67:                                               ; preds = %98, %7
  %68 = load i32, i32* %20, align 4
  %69 = load i32, i32* %19, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %103

71:                                               ; preds = %67
  %72 = load i32*, i32** %17, align 8
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %21, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %20, align 4
  %76 = add nsw i32 %74, %75
  store i32 %76, i32* %22, align 4
  %77 = load i32, i32* %22, align 4
  %78 = load i32, i32* %20, align 4
  %79 = load i32, i32* %18, align 4
  %80 = sub nsw i32 %78, %79
  %81 = mul nsw i32 %77, %80
  %82 = load i32, i32* %19, align 4
  %83 = load i32, i32* %20, align 4
  %84 = sub nsw i32 %82, %83
  %85 = mul nsw i32 %81, %84
  %86 = load i32, i32* %21, align 4
  %87 = mul nsw i32 %86, %85
  store i32 %87, i32* %21, align 4
  %88 = load i32, i32* %21, align 4
  %89 = load i32, i32* %16, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %71
  %92 = load i32, i32* %21, align 4
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %20, align 4
  %94 = load i32, i32* %10, align 4
  %95 = sdiv i32 %94, 2
  %96 = sub nsw i32 %93, %95
  store i32 %96, i32* %15, align 4
  br label %97

97:                                               ; preds = %91, %71
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %20, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %20, align 4
  %101 = load i32*, i32** %17, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %17, align 8
  br label %67

103:                                              ; preds = %67
  %104 = load i32, i32* %15, align 4
  ret i32 %104
}

declare dso_local i32 @yae_xcorr_via_rdft(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
