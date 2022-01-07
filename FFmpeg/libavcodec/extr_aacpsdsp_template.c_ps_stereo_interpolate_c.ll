; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacpsdsp_template.c_ps_stereo_interpolate_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacpsdsp_template.c_ps_stereo_interpolate_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ([2 x i64]*, [2 x i64]*, [4 x i64]*, [4 x i64]*, i32)* @ps_stereo_interpolate_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps_stereo_interpolate_c([2 x i64]* %0, [2 x i64]* %1, [4 x i64]* %2, [4 x i64]* %3, i32 %4) #0 {
  %6 = alloca [2 x i64]*, align 8
  %7 = alloca [2 x i64]*, align 8
  %8 = alloca [4 x i64]*, align 8
  %9 = alloca [4 x i64]*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store [2 x i64]* %0, [2 x i64]** %6, align 8
  store [2 x i64]* %1, [2 x i64]** %7, align 8
  store [4 x i64]* %2, [4 x i64]** %8, align 8
  store [4 x i64]* %3, [4 x i64]** %9, align 8
  store i32 %4, i32* %10, align 4
  %24 = load [4 x i64]*, [4 x i64]** %8, align 8
  %25 = getelementptr inbounds [4 x i64], [4 x i64]* %24, i64 0
  %26 = getelementptr inbounds [4 x i64], [4 x i64]* %25, i64 0, i64 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %11, align 8
  %28 = load [4 x i64]*, [4 x i64]** %8, align 8
  %29 = getelementptr inbounds [4 x i64], [4 x i64]* %28, i64 0
  %30 = getelementptr inbounds [4 x i64], [4 x i64]* %29, i64 0, i64 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %12, align 8
  %32 = load [4 x i64]*, [4 x i64]** %8, align 8
  %33 = getelementptr inbounds [4 x i64], [4 x i64]* %32, i64 0
  %34 = getelementptr inbounds [4 x i64], [4 x i64]* %33, i64 0, i64 2
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %13, align 8
  %36 = load [4 x i64]*, [4 x i64]** %8, align 8
  %37 = getelementptr inbounds [4 x i64], [4 x i64]* %36, i64 0
  %38 = getelementptr inbounds [4 x i64], [4 x i64]* %37, i64 0, i64 3
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %14, align 8
  %40 = load [4 x i64]*, [4 x i64]** %9, align 8
  %41 = getelementptr inbounds [4 x i64], [4 x i64]* %40, i64 0
  %42 = getelementptr inbounds [4 x i64], [4 x i64]* %41, i64 0, i64 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %15, align 8
  %44 = load [4 x i64]*, [4 x i64]** %9, align 8
  %45 = getelementptr inbounds [4 x i64], [4 x i64]* %44, i64 0
  %46 = getelementptr inbounds [4 x i64], [4 x i64]* %45, i64 0, i64 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %16, align 8
  %48 = load [4 x i64]*, [4 x i64]** %9, align 8
  %49 = getelementptr inbounds [4 x i64], [4 x i64]* %48, i64 0
  %50 = getelementptr inbounds [4 x i64], [4 x i64]* %49, i64 0, i64 2
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %17, align 8
  %52 = load [4 x i64]*, [4 x i64]** %9, align 8
  %53 = getelementptr inbounds [4 x i64], [4 x i64]* %52, i64 0
  %54 = getelementptr inbounds [4 x i64], [4 x i64]* %53, i64 0, i64 3
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %18, align 8
  store i32 0, i32* %19, align 4
  br label %56

56:                                               ; preds = %137, %5
  %57 = load i32, i32* %19, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %140

60:                                               ; preds = %56
  %61 = load [2 x i64]*, [2 x i64]** %6, align 8
  %62 = load i32, i32* %19, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [2 x i64], [2 x i64]* %61, i64 %63
  %65 = getelementptr inbounds [2 x i64], [2 x i64]* %64, i64 0, i64 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %20, align 8
  %67 = load [2 x i64]*, [2 x i64]** %6, align 8
  %68 = load i32, i32* %19, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [2 x i64], [2 x i64]* %67, i64 %69
  %71 = getelementptr inbounds [2 x i64], [2 x i64]* %70, i64 0, i64 1
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %21, align 8
  %73 = load [2 x i64]*, [2 x i64]** %7, align 8
  %74 = load i32, i32* %19, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [2 x i64], [2 x i64]* %73, i64 %75
  %77 = getelementptr inbounds [2 x i64], [2 x i64]* %76, i64 0, i64 0
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %22, align 8
  %79 = load [2 x i64]*, [2 x i64]** %7, align 8
  %80 = load i32, i32* %19, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [2 x i64], [2 x i64]* %79, i64 %81
  %83 = getelementptr inbounds [2 x i64], [2 x i64]* %82, i64 0, i64 1
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %23, align 8
  %85 = load i64, i64* %15, align 8
  %86 = load i64, i64* %11, align 8
  %87 = add nsw i64 %86, %85
  store i64 %87, i64* %11, align 8
  %88 = load i64, i64* %16, align 8
  %89 = load i64, i64* %12, align 8
  %90 = add nsw i64 %89, %88
  store i64 %90, i64* %12, align 8
  %91 = load i64, i64* %17, align 8
  %92 = load i64, i64* %13, align 8
  %93 = add nsw i64 %92, %91
  store i64 %93, i64* %13, align 8
  %94 = load i64, i64* %18, align 8
  %95 = load i64, i64* %14, align 8
  %96 = add nsw i64 %95, %94
  store i64 %96, i64* %14, align 8
  %97 = load i64, i64* %11, align 8
  %98 = load i64, i64* %20, align 8
  %99 = load i64, i64* %13, align 8
  %100 = load i64, i64* %22, align 8
  %101 = call i64 @AAC_MADD30(i64 %97, i64 %98, i64 %99, i64 %100)
  %102 = load [2 x i64]*, [2 x i64]** %6, align 8
  %103 = load i32, i32* %19, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [2 x i64], [2 x i64]* %102, i64 %104
  %106 = getelementptr inbounds [2 x i64], [2 x i64]* %105, i64 0, i64 0
  store i64 %101, i64* %106, align 8
  %107 = load i64, i64* %11, align 8
  %108 = load i64, i64* %21, align 8
  %109 = load i64, i64* %13, align 8
  %110 = load i64, i64* %23, align 8
  %111 = call i64 @AAC_MADD30(i64 %107, i64 %108, i64 %109, i64 %110)
  %112 = load [2 x i64]*, [2 x i64]** %6, align 8
  %113 = load i32, i32* %19, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [2 x i64], [2 x i64]* %112, i64 %114
  %116 = getelementptr inbounds [2 x i64], [2 x i64]* %115, i64 0, i64 1
  store i64 %111, i64* %116, align 8
  %117 = load i64, i64* %12, align 8
  %118 = load i64, i64* %20, align 8
  %119 = load i64, i64* %14, align 8
  %120 = load i64, i64* %22, align 8
  %121 = call i64 @AAC_MADD30(i64 %117, i64 %118, i64 %119, i64 %120)
  %122 = load [2 x i64]*, [2 x i64]** %7, align 8
  %123 = load i32, i32* %19, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [2 x i64], [2 x i64]* %122, i64 %124
  %126 = getelementptr inbounds [2 x i64], [2 x i64]* %125, i64 0, i64 0
  store i64 %121, i64* %126, align 8
  %127 = load i64, i64* %12, align 8
  %128 = load i64, i64* %21, align 8
  %129 = load i64, i64* %14, align 8
  %130 = load i64, i64* %23, align 8
  %131 = call i64 @AAC_MADD30(i64 %127, i64 %128, i64 %129, i64 %130)
  %132 = load [2 x i64]*, [2 x i64]** %7, align 8
  %133 = load i32, i32* %19, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [2 x i64], [2 x i64]* %132, i64 %134
  %136 = getelementptr inbounds [2 x i64], [2 x i64]* %135, i64 0, i64 1
  store i64 %131, i64* %136, align 8
  br label %137

137:                                              ; preds = %60
  %138 = load i32, i32* %19, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %19, align 4
  br label %56

140:                                              ; preds = %56
  ret void
}

declare dso_local i64 @AAC_MADD30(i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
