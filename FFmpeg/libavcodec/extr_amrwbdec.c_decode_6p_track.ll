; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_decode_6p_track.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_decode_6p_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @decode_6p_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_6p_track(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = sub nsw i32 %12, 1
  %14 = shl i32 1, %13
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = mul nsw i32 6, %16
  %18 = sub nsw i32 %17, 5
  %19 = call i32 @BIT_POS(i32 %15, i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = sub nsw i32 %20, 1
  %22 = shl i32 %19, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = mul nsw i32 6, %27
  %29 = sub nsw i32 %28, 4
  %30 = call i32 @BIT_STR(i32 %26, i32 %29, i32 2)
  switch i32 %30, label %137 [
    i32 0, label %31
    i32 1, label %56
    i32 2, label %81
    i32 3, label %110
  ]

31:                                               ; preds = %4
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @BIT_STR(i32 %33, i32 0, i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %36, 1
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %38, %39
  %41 = call i32 @decode_1p_track(i32* %32, i32 %35, i32 %37, i32 %40)
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = mul nsw i32 5, %46
  %48 = sub nsw i32 %47, 5
  %49 = call i32 @BIT_STR(i32 %44, i32 %45, i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %50, 1
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %52, %53
  %55 = call i32 @decode_5p_track(i32* %43, i32 %49, i32 %51, i32 %54)
  br label %137

56:                                               ; preds = %4
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @BIT_STR(i32 %58, i32 0, i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = sub nsw i32 %61, 1
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %63, %64
  %66 = call i32 @decode_1p_track(i32* %57, i32 %60, i32 %62, i32 %65)
  %67 = load i32*, i32** %5, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = mul nsw i32 5, %71
  %73 = sub nsw i32 %72, 5
  %74 = call i32 @BIT_STR(i32 %69, i32 %70, i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = sub nsw i32 %75, 1
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %77, %78
  %80 = call i32 @decode_5p_track(i32* %68, i32 %74, i32 %76, i32 %79)
  br label %137

81:                                               ; preds = %4
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = mul nsw i32 2, %84
  %86 = sub nsw i32 %85, 1
  %87 = call i32 @BIT_STR(i32 %83, i32 0, i32 %86)
  %88 = load i32, i32* %7, align 4
  %89 = sub nsw i32 %88, 1
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %90, %91
  %93 = call i32 @decode_2p_track(i32* %82, i32 %87, i32 %89, i32 %92)
  %94 = load i32*, i32** %5, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %7, align 4
  %98 = mul nsw i32 2, %97
  %99 = sub nsw i32 %98, 1
  %100 = load i32, i32* %7, align 4
  %101 = mul nsw i32 4, %100
  %102 = sub nsw i32 %101, 4
  %103 = call i32 @BIT_STR(i32 %96, i32 %99, i32 %102)
  %104 = load i32, i32* %7, align 4
  %105 = sub nsw i32 %104, 1
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %106, %107
  %109 = call i32 @decode_4p_track(i32* %95, i32 %103, i32 %105, i32 %108)
  br label %137

110:                                              ; preds = %4
  %111 = load i32*, i32** %5, align 8
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %7, align 4
  %114 = mul nsw i32 3, %113
  %115 = sub nsw i32 %114, 2
  %116 = load i32, i32* %7, align 4
  %117 = mul nsw i32 3, %116
  %118 = sub nsw i32 %117, 2
  %119 = call i32 @BIT_STR(i32 %112, i32 %115, i32 %118)
  %120 = load i32, i32* %7, align 4
  %121 = sub nsw i32 %120, 1
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @decode_3p_track(i32* %111, i32 %119, i32 %121, i32 %122)
  %124 = load i32*, i32** %5, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 3
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %7, align 4
  %128 = mul nsw i32 3, %127
  %129 = sub nsw i32 %128, 2
  %130 = call i32 @BIT_STR(i32 %126, i32 0, i32 %129)
  %131 = load i32, i32* %7, align 4
  %132 = sub nsw i32 %131, 1
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %133, %134
  %136 = call i32 @decode_3p_track(i32* %125, i32 %130, i32 %132, i32 %135)
  br label %137

137:                                              ; preds = %4, %110, %81, %56, %31
  ret void
}

declare dso_local i32 @BIT_POS(i32, i32) #1

declare dso_local i32 @BIT_STR(i32, i32, i32) #1

declare dso_local i32 @decode_1p_track(i32*, i32, i32, i32) #1

declare dso_local i32 @decode_5p_track(i32*, i32, i32, i32) #1

declare dso_local i32 @decode_2p_track(i32*, i32, i32, i32) #1

declare dso_local i32 @decode_4p_track(i32*, i32, i32, i32) #1

declare dso_local i32 @decode_3p_track(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
