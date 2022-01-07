; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_me_cmp.c_sse8_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_me_cmp.c_sse8_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_square_tab = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i64*, i32, i32)* @sse8_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sse8_c(i32* %0, i64* %1, i64* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  store i32* %0, i32** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load i64*, i64** @ff_square_tab, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 256
  store i64* %15, i64** %13, align 8
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %141, %5
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %144

20:                                               ; preds = %16
  %21 = load i64*, i64** %13, align 8
  %22 = load i64*, i64** %7, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64*, i64** %8, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = sub i64 %24, %27
  %29 = getelementptr inbounds i64, i64* %21, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %11, align 4
  %35 = load i64*, i64** %13, align 8
  %36 = load i64*, i64** %7, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** %8, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 1
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %38, %41
  %43 = getelementptr inbounds i64, i64* %35, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %11, align 4
  %49 = load i64*, i64** %13, align 8
  %50 = load i64*, i64** %7, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %8, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 2
  %55 = load i64, i64* %54, align 8
  %56 = sub i64 %52, %55
  %57 = getelementptr inbounds i64, i64* %49, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %11, align 4
  %63 = load i64*, i64** %13, align 8
  %64 = load i64*, i64** %7, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 3
  %66 = load i64, i64* %65, align 8
  %67 = load i64*, i64** %8, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 3
  %69 = load i64, i64* %68, align 8
  %70 = sub i64 %66, %69
  %71 = getelementptr inbounds i64, i64* %63, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %11, align 4
  %77 = load i64*, i64** %13, align 8
  %78 = load i64*, i64** %7, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 4
  %80 = load i64, i64* %79, align 8
  %81 = load i64*, i64** %8, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 4
  %83 = load i64, i64* %82, align 8
  %84 = sub i64 %80, %83
  %85 = getelementptr inbounds i64, i64* %77, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %86
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %11, align 4
  %91 = load i64*, i64** %13, align 8
  %92 = load i64*, i64** %7, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 5
  %94 = load i64, i64* %93, align 8
  %95 = load i64*, i64** %8, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 5
  %97 = load i64, i64* %96, align 8
  %98 = sub i64 %94, %97
  %99 = getelementptr inbounds i64, i64* %91, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %100
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %11, align 4
  %105 = load i64*, i64** %13, align 8
  %106 = load i64*, i64** %7, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 6
  %108 = load i64, i64* %107, align 8
  %109 = load i64*, i64** %8, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 6
  %111 = load i64, i64* %110, align 8
  %112 = sub i64 %108, %111
  %113 = getelementptr inbounds i64, i64* %105, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %114
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %11, align 4
  %119 = load i64*, i64** %13, align 8
  %120 = load i64*, i64** %7, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 7
  %122 = load i64, i64* %121, align 8
  %123 = load i64*, i64** %8, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 7
  %125 = load i64, i64* %124, align 8
  %126 = sub i64 %122, %125
  %127 = getelementptr inbounds i64, i64* %119, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %130, %128
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i64*, i64** %7, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i64, i64* %134, i64 %135
  store i64* %136, i64** %7, align 8
  %137 = load i32, i32* %9, align 4
  %138 = load i64*, i64** %8, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i64, i64* %138, i64 %139
  store i64* %140, i64** %8, align 8
  br label %141

141:                                              ; preds = %20
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %12, align 4
  br label %16

144:                                              ; preds = %16
  %145 = load i32, i32* %11, align 4
  ret i32 %145
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
