; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mdct15.c_init_pfa_reindex_tabs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mdct15.c_init_pfa_reindex_tabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @init_pfa_reindex_tabs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_pfa_reindex_tabs(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = shl i32 1, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 4, %21
  %23 = and i32 %22, 3
  %24 = shl i32 %20, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = shl i32 1, %25
  %27 = sub i32 %26, 1
  %28 = and i32 -286331153, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = mul nsw i32 15, %29
  %31 = call i8* @av_malloc_array(i32 %30, i32 4)
  %32 = bitcast i8* %31 to i32*
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32* %32, i32** %34, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %133

40:                                               ; preds = %1
  %41 = load i32, i32* %7, align 4
  %42 = mul nsw i32 15, %41
  %43 = call i8* @av_malloc_array(i32 %42, i32 4)
  %44 = bitcast i8* %43 to i32*
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  store i32* %44, i32** %46, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %40
  store i32 1, i32* %2, align 4
  br label %133

52:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %129, %52
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %132

57:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %125, %57
  %59 = load i32, i32* %5, align 4
  %60 = icmp slt i32 %59, 15
  br i1 %60, label %61, label %128

61:                                               ; preds = %58
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %5, align 4
  %64 = mul nsw i32 %62, %63
  %65 = sdiv i32 %64, 15
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %65, %66
  %68 = load i32, i32* %6, align 4
  %69 = ashr i32 %67, %68
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %8, align 4
  %72 = mul nsw i32 %70, %71
  %73 = sdiv i32 %72, 15
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %9, align 4
  %76 = mul nsw i32 %74, %75
  %77 = add nsw i32 %73, %76
  %78 = load i32, i32* %6, align 4
  %79 = ashr i32 %77, %78
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %4, align 4
  %81 = mul nsw i32 15, %80
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %10, align 4
  %84 = mul nsw i32 %83, 15
  %85 = sub nsw i32 %82, %84
  %86 = load i32, i32* %6, align 4
  %87 = shl i32 1, %86
  %88 = mul nsw i32 %85, %87
  %89 = add nsw i32 %81, %88
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* %9, align 4
  %92 = mul nsw i32 %90, %91
  %93 = mul nsw i32 %92, 15
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %8, align 4
  %96 = mul nsw i32 %94, %95
  %97 = add nsw i32 %93, %96
  %98 = load i32, i32* %11, align 4
  %99 = mul nsw i32 15, %98
  %100 = load i32, i32* %7, align 4
  %101 = mul nsw i32 %99, %100
  %102 = sub nsw i32 %97, %101
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %12, align 4
  %104 = shl i32 %103, 1
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %4, align 4
  %109 = mul nsw i32 %108, 15
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %107, i64 %112
  store i32 %104, i32* %113, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %5, align 4
  %116 = mul nsw i32 %114, %115
  %117 = load i32, i32* %4, align 4
  %118 = add nsw i32 %116, %117
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %118, i32* %124, align 4
  br label %125

125:                                              ; preds = %61
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %5, align 4
  br label %58

128:                                              ; preds = %58
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %4, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %4, align 4
  br label %53

132:                                              ; preds = %53
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %132, %51, %39
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i8* @av_malloc_array(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
