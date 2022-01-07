; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_texturedsp.c_rgtc1_block_internal.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_texturedsp.c_rgtc1_block_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32, i32, i32)* @rgtc1_block_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgtc1_block_internal(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [8 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %7
  %21 = load i32*, i32** %10, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 128
  store i32 %24, i32* %16, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 128
  store i32 %28, i32* %17, align 4
  br label %36

29:                                               ; preds = %7
  %30 = load i32*, i32** %10, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %16, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %17, align 4
  br label %36

36:                                               ; preds = %29, %20
  %37 = load i32, i32* %16, align 4
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  store i32 %37, i32* %38, align 16
  %39 = load i32, i32* %17, align 4
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 1
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* %17, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %87

44:                                               ; preds = %36
  %45 = load i32, i32* %16, align 4
  %46 = mul nsw i32 6, %45
  %47 = load i32, i32* %17, align 4
  %48 = mul nsw i32 1, %47
  %49 = add nsw i32 %46, %48
  %50 = sdiv i32 %49, 7
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 2
  store i32 %50, i32* %51, align 8
  %52 = load i32, i32* %16, align 4
  %53 = mul nsw i32 5, %52
  %54 = load i32, i32* %17, align 4
  %55 = mul nsw i32 2, %54
  %56 = add nsw i32 %53, %55
  %57 = sdiv i32 %56, 7
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 3
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %16, align 4
  %60 = mul nsw i32 4, %59
  %61 = load i32, i32* %17, align 4
  %62 = mul nsw i32 3, %61
  %63 = add nsw i32 %60, %62
  %64 = sdiv i32 %63, 7
  %65 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 4
  store i32 %64, i32* %65, align 16
  %66 = load i32, i32* %16, align 4
  %67 = mul nsw i32 3, %66
  %68 = load i32, i32* %17, align 4
  %69 = mul nsw i32 4, %68
  %70 = add nsw i32 %67, %69
  %71 = sdiv i32 %70, 7
  %72 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 5
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* %16, align 4
  %74 = mul nsw i32 2, %73
  %75 = load i32, i32* %17, align 4
  %76 = mul nsw i32 5, %75
  %77 = add nsw i32 %74, %76
  %78 = sdiv i32 %77, 7
  %79 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 6
  store i32 %78, i32* %79, align 8
  %80 = load i32, i32* %16, align 4
  %81 = mul nsw i32 1, %80
  %82 = load i32, i32* %17, align 4
  %83 = mul nsw i32 6, %82
  %84 = add nsw i32 %81, %83
  %85 = sdiv i32 %84, 7
  %86 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 7
  store i32 %85, i32* %86, align 4
  br label %118

87:                                               ; preds = %36
  %88 = load i32, i32* %16, align 4
  %89 = mul nsw i32 4, %88
  %90 = load i32, i32* %17, align 4
  %91 = mul nsw i32 1, %90
  %92 = add nsw i32 %89, %91
  %93 = sdiv i32 %92, 5
  %94 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 2
  store i32 %93, i32* %94, align 8
  %95 = load i32, i32* %16, align 4
  %96 = mul nsw i32 3, %95
  %97 = load i32, i32* %17, align 4
  %98 = mul nsw i32 2, %97
  %99 = add nsw i32 %96, %98
  %100 = sdiv i32 %99, 5
  %101 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 3
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* %16, align 4
  %103 = mul nsw i32 2, %102
  %104 = load i32, i32* %17, align 4
  %105 = mul nsw i32 3, %104
  %106 = add nsw i32 %103, %105
  %107 = sdiv i32 %106, 5
  %108 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 4
  store i32 %107, i32* %108, align 16
  %109 = load i32, i32* %16, align 4
  %110 = mul nsw i32 1, %109
  %111 = load i32, i32* %17, align 4
  %112 = mul nsw i32 4, %111
  %113 = add nsw i32 %110, %112
  %114 = sdiv i32 %113, 5
  %115 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 5
  store i32 %114, i32* %115, align 4
  %116 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 6
  store i32 0, i32* %116, align 8
  %117 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 7
  store i32 255, i32* %117, align 4
  br label %118

118:                                              ; preds = %87, %44
  %119 = load i32*, i32** %8, align 8
  %120 = load i32, i32* %9, align 4
  %121 = load i32*, i32** %10, align 8
  %122 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %14, align 4
  %126 = call i32 @rgtc_block_internal(i32* %119, i32 %120, i32* %121, i32* %122, i32 %123, i32 %124, i32 %125)
  ret void
}

declare dso_local i32 @rgtc_block_internal(i32*, i32, i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
