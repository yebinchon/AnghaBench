; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmv2dsp.c_wmv2_idct_add_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmv2dsp.c_wmv2_idct_add_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32, i64*)* @wmv2_idct_add_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wmv2_idct_add_c(i64* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %17, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 64
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load i64*, i64** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = call i32 @wmv2_idct_row(i64* %15)
  br label %17

17:                                               ; preds = %11
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, 8
  store i32 %19, i32* %7, align 4
  br label %8

20:                                               ; preds = %8
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %30, %20
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 8
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i64*, i64** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = call i32 @wmv2_idct_col(i64* %28)
  br label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %21

33:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %124, %33
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 8
  br i1 %36, label %37, label %127

37:                                               ; preds = %34
  %38 = load i64*, i64** %4, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** %6, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = call i64 @av_clip_uint8(i64 %44)
  %46 = load i64*, i64** %4, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  store i64 %45, i64* %47, align 8
  %48 = load i64*, i64** %4, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %6, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = call i64 @av_clip_uint8(i64 %54)
  %56 = load i64*, i64** %4, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 1
  store i64 %55, i64* %57, align 8
  %58 = load i64*, i64** %4, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %6, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 2
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = call i64 @av_clip_uint8(i64 %64)
  %66 = load i64*, i64** %4, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 2
  store i64 %65, i64* %67, align 8
  %68 = load i64*, i64** %4, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 3
  %70 = load i64, i64* %69, align 8
  %71 = load i64*, i64** %6, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 3
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %70, %73
  %75 = call i64 @av_clip_uint8(i64 %74)
  %76 = load i64*, i64** %4, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 3
  store i64 %75, i64* %77, align 8
  %78 = load i64*, i64** %4, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 4
  %80 = load i64, i64* %79, align 8
  %81 = load i64*, i64** %6, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 4
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %80, %83
  %85 = call i64 @av_clip_uint8(i64 %84)
  %86 = load i64*, i64** %4, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 4
  store i64 %85, i64* %87, align 8
  %88 = load i64*, i64** %4, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 5
  %90 = load i64, i64* %89, align 8
  %91 = load i64*, i64** %6, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 5
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %90, %93
  %95 = call i64 @av_clip_uint8(i64 %94)
  %96 = load i64*, i64** %4, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 5
  store i64 %95, i64* %97, align 8
  %98 = load i64*, i64** %4, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 6
  %100 = load i64, i64* %99, align 8
  %101 = load i64*, i64** %6, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 6
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %100, %103
  %105 = call i64 @av_clip_uint8(i64 %104)
  %106 = load i64*, i64** %4, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 6
  store i64 %105, i64* %107, align 8
  %108 = load i64*, i64** %4, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 7
  %110 = load i64, i64* %109, align 8
  %111 = load i64*, i64** %6, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 7
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %110, %113
  %115 = call i64 @av_clip_uint8(i64 %114)
  %116 = load i64*, i64** %4, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 7
  store i64 %115, i64* %117, align 8
  %118 = load i32, i32* %5, align 4
  %119 = load i64*, i64** %4, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  store i64* %121, i64** %4, align 8
  %122 = load i64*, i64** %6, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 8
  store i64* %123, i64** %6, align 8
  br label %124

124:                                              ; preds = %37
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %34

127:                                              ; preds = %34
  ret void
}

declare dso_local i32 @wmv2_idct_row(i64*) #1

declare dso_local i32 @wmv2_idct_col(i64*) #1

declare dso_local i64 @av_clip_uint8(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
