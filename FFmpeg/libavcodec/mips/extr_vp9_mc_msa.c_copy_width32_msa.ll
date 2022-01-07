; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_copy_width32_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_copy_width32_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32)* @copy_width32_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_width32_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = srem i32 %20, 8
  %22 = icmp eq i32 0, %21
  br i1 %22, label %23, label %88

23:                                               ; preds = %5
  %24 = load i32, i32* %10, align 4
  %25 = ashr i32 %24, 3
  store i32 %25, i32* %11, align 4
  br label %26

26:                                               ; preds = %30, %23
  %27 = load i32, i32* %11, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %11, align 4
  %29 = icmp ne i32 %27, 0
  br i1 %29, label %30, label %87

30:                                               ; preds = %26
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %17, align 4
  %39 = load i32, i32* %18, align 4
  %40 = load i32, i32* %19, align 4
  %41 = call i32 @LD_UB8(i32* %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %17, align 4
  %48 = load i32, i32* %18, align 4
  %49 = load i32, i32* %19, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @ST_UB8(i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, i32* %50, i32 %51)
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 16
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* %19, align 4
  %64 = call i32 @LD_UB8(i32* %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = mul nsw i32 8, %65
  %67 = load i32*, i32** %6, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32* %69, i32** %6, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* %18, align 4
  %77 = load i32, i32* %19, align 4
  %78 = load i32*, i32** %8, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 16
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @ST_UB8(i32 %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77, i32* %79, i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = mul nsw i32 8, %82
  %84 = load i32*, i32** %8, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32* %86, i32** %8, align 8
  br label %26

87:                                               ; preds = %26
  br label %142

88:                                               ; preds = %5
  %89 = load i32, i32* %10, align 4
  %90 = srem i32 %89, 4
  %91 = icmp eq i32 0, %90
  br i1 %91, label %92, label %141

92:                                               ; preds = %88
  %93 = load i32, i32* %10, align 4
  %94 = ashr i32 %93, 2
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %99, %92
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %11, align 4
  %98 = icmp ne i32 %96, 0
  br i1 %98, label %99, label %140

99:                                               ; preds = %95
  %100 = load i32*, i32** %6, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @LD_UB4(i32* %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105)
  %107 = load i32*, i32** %6, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 16
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* %18, align 4
  %113 = load i32, i32* %19, align 4
  %114 = call i32 @LD_UB4(i32* %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113)
  %115 = load i32, i32* %7, align 4
  %116 = mul nsw i32 4, %115
  %117 = load i32*, i32** %6, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %6, align 8
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %15, align 4
  %124 = load i32*, i32** %8, align 8
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @ST_UB4(i32 %120, i32 %121, i32 %122, i32 %123, i32* %124, i32 %125)
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %17, align 4
  %129 = load i32, i32* %18, align 4
  %130 = load i32, i32* %19, align 4
  %131 = load i32*, i32** %8, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 16
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @ST_UB4(i32 %127, i32 %128, i32 %129, i32 %130, i32* %132, i32 %133)
  %135 = load i32, i32* %9, align 4
  %136 = mul nsw i32 4, %135
  %137 = load i32*, i32** %8, align 8
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  store i32* %139, i32** %8, align 8
  br label %95

140:                                              ; preds = %95
  br label %141

141:                                              ; preds = %140, %88
  br label %142

142:                                              ; preds = %141, %87
  ret void
}

declare dso_local i32 @LD_UB8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_UB8(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @LD_UB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_UB4(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
