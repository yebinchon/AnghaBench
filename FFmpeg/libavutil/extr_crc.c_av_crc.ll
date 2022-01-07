; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_crc.c_av_crc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_crc.c_av_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_crc(i32* %0, i32 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64*, i64** %7, align 8
  %11 = load i64, i64* %8, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  store i64* %12, i64** %9, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 256
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %91, label %17

17:                                               ; preds = %4
  br label %18

18:                                               ; preds = %29, %17
  %19 = load i64*, i64** %7, align 8
  %20 = ptrtoint i64* %19 to i64
  %21 = and i64 %20, 3
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i64*, i64** %7, align 8
  %25 = load i64*, i64** %9, align 8
  %26 = icmp ult i64* %24, %25
  br label %27

27:                                               ; preds = %23, %18
  %28 = phi i1 [ false, %18 ], [ %26, %23 ]
  br i1 %28, label %29, label %42

29:                                               ; preds = %27
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64*, i64** %7, align 8
  %34 = getelementptr inbounds i64, i64* %33, i32 1
  store i64* %34, i64** %7, align 8
  %35 = load i64, i64* %33, align 8
  %36 = xor i64 %32, %35
  %37 = getelementptr inbounds i32, i32* %30, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = ashr i32 %39, 8
  %41 = xor i32 %38, %40
  store i32 %41, i32* %6, align 4
  br label %18

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %48, %42
  %44 = load i64*, i64** %7, align 8
  %45 = load i64*, i64** %9, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 -3
  %47 = icmp ult i64* %44, %46
  br i1 %47, label %48, label %90

48:                                               ; preds = %43
  %49 = load i64*, i64** %7, align 8
  %50 = bitcast i64* %49 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @av_le2ne32(i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = xor i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load i64*, i64** %7, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 4
  store i64* %56, i64** %7, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, 255
  %60 = add nsw i32 768, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = ashr i32 %65, 8
  %67 = and i32 %66, 255
  %68 = add nsw i32 512, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %64, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = xor i32 %63, %71
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = ashr i32 %74, 16
  %76 = and i32 %75, 255
  %77 = add nsw i32 256, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %73, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = xor i32 %72, %80
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = ashr i32 %83, 24
  %85 = add nsw i32 0, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = xor i32 %81, %88
  store i32 %89, i32* %6, align 4
  br label %43

90:                                               ; preds = %43
  br label %91

91:                                               ; preds = %90, %4
  br label %92

92:                                               ; preds = %96, %91
  %93 = load i64*, i64** %7, align 8
  %94 = load i64*, i64** %9, align 8
  %95 = icmp ult i64* %93, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %92
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64*, i64** %7, align 8
  %101 = getelementptr inbounds i64, i64* %100, i32 1
  store i64* %101, i64** %7, align 8
  %102 = load i64, i64* %100, align 8
  %103 = xor i64 %99, %102
  %104 = getelementptr inbounds i32, i32* %97, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %6, align 4
  %107 = ashr i32 %106, 8
  %108 = xor i32 %105, %107
  store i32 %108, i32* %6, align 4
  br label %92

109:                                              ; preds = %92
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local i32 @av_le2ne32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
