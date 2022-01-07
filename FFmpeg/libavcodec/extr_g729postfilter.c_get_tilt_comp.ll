; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g729postfilter.c_get_tilt_comp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g729postfilter.c_get_tilt_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32*, i32*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32*, i32*, i32)* @get_tilt_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_tilt_comp(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 10
  store i32 4096, i32* %18, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 11
  %21 = load i32*, i32** %9, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 11
  %25 = call i32 @ff_celp_lp_synthesis_filter(i32* %20, i32* %22, i32* %24, i32 22, i32 10, i32 0, i32 0, i32 2048)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %27, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 10
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 10
  %33 = call i32 %28(i32* %30, i32* %32, i32 20)
  store i32 %33, i32* %13, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %35, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 10
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 11
  %41 = call i32 %36(i32* %38, i32* %40, i32 20)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @av_log2(i32 %42)
  %44 = sub nsw i32 %43, 14
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %5
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %13, align 4
  %50 = ashr i32 %49, %48
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %12, align 4
  %53 = ashr i32 %52, %51
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %47, %5
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @FFABS(i32 %55)
  %57 = load i32, i32* %13, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59, %54
  store i32 0, i32* %6, align 4
  br label %116

63:                                               ; preds = %59
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %64

64:                                               ; preds = %77, %63
  %65 = load i32, i32* %15, align 4
  %66 = icmp slt i32 %65, 20
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %15, align 4
  %70 = add nsw i32 %69, 10
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @FFABS(i32 %73)
  %75 = load i32, i32* %16, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %16, align 4
  br label %77

77:                                               ; preds = %67
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %15, align 4
  br label %64

80:                                               ; preds = %64
  %81 = load i32, i32* %16, align 4
  %82 = ashr i32 %81, 2
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %16, align 4
  %84 = icmp sgt i32 %83, 1024
  br i1 %84, label %85, label %110

85:                                               ; preds = %80
  %86 = load i32, i32* %16, align 4
  %87 = sdiv i32 33554432, %86
  store i32 %87, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %88

88:                                               ; preds = %106, %85
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %109

92:                                               ; preds = %88
  %93 = load i32*, i32** %10, align 8
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %14, align 4
  %99 = mul nsw i32 %97, %98
  %100 = add nsw i32 %99, 16384
  %101 = ashr i32 %100, 15
  %102 = load i32*, i32** %10, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %101, i32* %105, align 4
  br label %106

106:                                              ; preds = %92
  %107 = load i32, i32* %15, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %15, align 4
  br label %88

109:                                              ; preds = %88
  br label %110

110:                                              ; preds = %109, %80
  %111 = load i32, i32* %12, align 4
  %112 = mul nsw i32 %111, 32768
  %113 = sub nsw i32 0, %112
  %114 = load i32, i32* %13, align 4
  %115 = sdiv i32 %113, %114
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %110, %62
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local i32 @ff_celp_lp_synthesis_filter(i32*, i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @av_log2(i32) #1

declare dso_local i32 @FFABS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
