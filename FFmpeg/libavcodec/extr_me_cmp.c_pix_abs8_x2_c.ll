; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_me_cmp.c_pix_abs8_x2_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_me_cmp.c_pix_abs8_x2_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i64*, i32, i32)* @pix_abs8_x2_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pix_abs8_x2_c(i32* %0, i64* %1, i64* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %154, %5
  %14 = load i32, i32* %12, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %157

17:                                               ; preds = %13
  %18 = load i64*, i64** %7, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64*, i64** %8, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64*, i64** %8, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 1
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @avg2(i64 %23, i64 %26)
  %28 = sub nsw i64 %20, %27
  %29 = call i64 @abs(i64 %28)
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %11, align 4
  %34 = load i64*, i64** %7, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** %8, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %8, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 2
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @avg2(i64 %39, i64 %42)
  %44 = sub nsw i64 %36, %43
  %45 = call i64 @abs(i64 %44)
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %11, align 4
  %50 = load i64*, i64** %7, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %8, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** %8, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 3
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @avg2(i64 %55, i64 %58)
  %60 = sub nsw i64 %52, %59
  %61 = call i64 @abs(i64 %60)
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %11, align 4
  %66 = load i64*, i64** %7, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 3
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** %8, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 3
  %71 = load i64, i64* %70, align 8
  %72 = load i64*, i64** %8, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 4
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @avg2(i64 %71, i64 %74)
  %76 = sub nsw i64 %68, %75
  %77 = call i64 @abs(i64 %76)
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %11, align 4
  %82 = load i64*, i64** %7, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 4
  %84 = load i64, i64* %83, align 8
  %85 = load i64*, i64** %8, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 4
  %87 = load i64, i64* %86, align 8
  %88 = load i64*, i64** %8, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 5
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @avg2(i64 %87, i64 %90)
  %92 = sub nsw i64 %84, %91
  %93 = call i64 @abs(i64 %92)
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %11, align 4
  %98 = load i64*, i64** %7, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 5
  %100 = load i64, i64* %99, align 8
  %101 = load i64*, i64** %8, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 5
  %103 = load i64, i64* %102, align 8
  %104 = load i64*, i64** %8, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 6
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @avg2(i64 %103, i64 %106)
  %108 = sub nsw i64 %100, %107
  %109 = call i64 @abs(i64 %108)
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %111, %109
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %11, align 4
  %114 = load i64*, i64** %7, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 6
  %116 = load i64, i64* %115, align 8
  %117 = load i64*, i64** %8, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 6
  %119 = load i64, i64* %118, align 8
  %120 = load i64*, i64** %8, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 7
  %122 = load i64, i64* %121, align 8
  %123 = call i64 @avg2(i64 %119, i64 %122)
  %124 = sub nsw i64 %116, %123
  %125 = call i64 @abs(i64 %124)
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %127, %125
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %11, align 4
  %130 = load i64*, i64** %7, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 7
  %132 = load i64, i64* %131, align 8
  %133 = load i64*, i64** %8, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 7
  %135 = load i64, i64* %134, align 8
  %136 = load i64*, i64** %8, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 8
  %138 = load i64, i64* %137, align 8
  %139 = call i64 @avg2(i64 %135, i64 %138)
  %140 = sub nsw i64 %132, %139
  %141 = call i64 @abs(i64 %140)
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %143, %141
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %11, align 4
  %146 = load i32, i32* %9, align 4
  %147 = load i64*, i64** %7, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i64, i64* %147, i64 %148
  store i64* %149, i64** %7, align 8
  %150 = load i32, i32* %9, align 4
  %151 = load i64*, i64** %8, align 8
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i64, i64* %151, i64 %152
  store i64* %153, i64** %8, align 8
  br label %154

154:                                              ; preds = %17
  %155 = load i32, i32* %12, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %12, align 4
  br label %13

157:                                              ; preds = %13
  %158 = load i32, i32* %11, align 4
  ret i32 %158
}

declare dso_local i64 @abs(i64) #1

declare dso_local i64 @avg2(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
