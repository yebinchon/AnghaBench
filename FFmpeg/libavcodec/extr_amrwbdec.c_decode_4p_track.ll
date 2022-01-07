; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_decode_4p_track.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_decode_4p_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @decode_4p_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_4p_track(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = mul nsw i32 4, %16
  %18 = sub nsw i32 %17, 2
  %19 = call i32 @BIT_STR(i32 %15, i32 %18, i32 2)
  switch i32 %19, label %142 [
    i32 0, label %20
    i32 1, label %67
    i32 2, label %92
    i32 3, label %119
  ]

20:                                               ; preds = %4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = mul nsw i32 4, %22
  %24 = sub nsw i32 %23, 3
  %25 = call i32 @BIT_POS(i32 %21, i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 %26, 1
  %28 = shl i32 %25, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = mul nsw i32 2, %30
  %32 = sub nsw i32 %31, 3
  %33 = call i32 @BIT_POS(i32 %29, i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %34, 2
  %36 = shl i32 %33, %35
  store i32 %36, i32* %10, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 2, %39
  %41 = sub nsw i32 %40, 3
  %42 = call i32 @BIT_STR(i32 %38, i32 0, i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 %43, 2
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %45, %46
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %47, %48
  %50 = call i32 @decode_2p_track(i32* %37, i32 %42, i32 %44, i32 %49)
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = mul nsw i32 2, %54
  %56 = sub nsw i32 %55, 2
  %57 = load i32, i32* %7, align 4
  %58 = mul nsw i32 2, %57
  %59 = sub nsw i32 %58, 1
  %60 = call i32 @BIT_STR(i32 %53, i32 %56, i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = sub nsw i32 %61, 1
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %63, %64
  %66 = call i32 @decode_2p_track(i32* %52, i32 %60, i32 %62, i32 %65)
  br label %142

67:                                               ; preds = %4
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = mul nsw i32 3, %70
  %72 = sub nsw i32 %71, 2
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @BIT_STR(i32 %69, i32 %72, i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = sub nsw i32 %75, 1
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @decode_1p_track(i32* %68, i32 %74, i32 %76, i32 %77)
  %79 = load i32*, i32** %5, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %7, align 4
  %83 = mul nsw i32 3, %82
  %84 = sub nsw i32 %83, 2
  %85 = call i32 @BIT_STR(i32 %81, i32 0, i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = sub nsw i32 %86, 1
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %88, %89
  %91 = call i32 @decode_3p_track(i32* %80, i32 %85, i32 %87, i32 %90)
  br label %142

92:                                               ; preds = %4
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %7, align 4
  %96 = mul nsw i32 2, %95
  %97 = sub nsw i32 %96, 1
  %98 = load i32, i32* %7, align 4
  %99 = mul nsw i32 2, %98
  %100 = sub nsw i32 %99, 1
  %101 = call i32 @BIT_STR(i32 %94, i32 %97, i32 %100)
  %102 = load i32, i32* %7, align 4
  %103 = sub nsw i32 %102, 1
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @decode_2p_track(i32* %93, i32 %101, i32 %103, i32 %104)
  %106 = load i32*, i32** %5, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 2
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %7, align 4
  %110 = mul nsw i32 2, %109
  %111 = sub nsw i32 %110, 1
  %112 = call i32 @BIT_STR(i32 %108, i32 0, i32 %111)
  %113 = load i32, i32* %7, align 4
  %114 = sub nsw i32 %113, 1
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %115, %116
  %118 = call i32 @decode_2p_track(i32* %107, i32 %112, i32 %114, i32 %117)
  br label %142

119:                                              ; preds = %4
  %120 = load i32*, i32** %5, align 8
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = mul nsw i32 3, %123
  %125 = sub nsw i32 %124, 2
  %126 = call i32 @BIT_STR(i32 %121, i32 %122, i32 %125)
  %127 = load i32, i32* %7, align 4
  %128 = sub nsw i32 %127, 1
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @decode_3p_track(i32* %120, i32 %126, i32 %128, i32 %129)
  %131 = load i32*, i32** %5, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 3
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @BIT_STR(i32 %133, i32 0, i32 %134)
  %136 = load i32, i32* %7, align 4
  %137 = sub nsw i32 %136, 1
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %138, %139
  %141 = call i32 @decode_1p_track(i32* %132, i32 %135, i32 %137, i32 %140)
  br label %142

142:                                              ; preds = %4, %119, %92, %67, %20
  ret void
}

declare dso_local i32 @BIT_STR(i32, i32, i32) #1

declare dso_local i32 @BIT_POS(i32, i32) #1

declare dso_local i32 @decode_2p_track(i32*, i32, i32, i32) #1

declare dso_local i32 @decode_1p_track(i32*, i32, i32, i32) #1

declare dso_local i32 @decode_3p_track(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
