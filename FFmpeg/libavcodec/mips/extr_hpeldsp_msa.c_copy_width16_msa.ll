; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hpeldsp_msa.c_copy_width16_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hpeldsp_msa.c_copy_width16_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32)* @copy_width16_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_width16_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
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
  %21 = srem i32 %20, 12
  %22 = icmp eq i32 0, %21
  br i1 %22, label %23, label %88

23:                                               ; preds = %5
  %24 = load i32, i32* %10, align 4
  %25 = sdiv i32 %24, 12
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
  %42 = load i32, i32* %7, align 4
  %43 = mul nsw i32 8, %42
  %44 = load i32*, i32** %6, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32* %46, i32** %6, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %18, align 4
  %54 = load i32, i32* %19, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @ST_UB8(i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32* %55, i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = mul nsw i32 8, %58
  %60 = load i32*, i32** %8, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32* %62, i32** %8, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %15, align 4
  %69 = call i32 @LD_UB4(i32* %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = mul nsw i32 4, %70
  %72 = load i32*, i32** %6, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32* %74, i32** %6, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @ST_UB4(i32 %75, i32 %76, i32 %77, i32 %78, i32* %79, i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = mul nsw i32 4, %82
  %84 = load i32*, i32** %8, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32* %86, i32** %8, align 8
  br label %26

87:                                               ; preds = %26
  br label %138

88:                                               ; preds = %5
  %89 = load i32, i32* %10, align 4
  %90 = srem i32 %89, 8
  %91 = icmp eq i32 0, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @copy_16multx8mult_msa(i32* %93, i32 %94, i32* %95, i32 %96, i32 %97, i32 16)
  br label %137

99:                                               ; preds = %88
  %100 = load i32, i32* %10, align 4
  %101 = srem i32 %100, 4
  %102 = icmp eq i32 0, %101
  br i1 %102, label %103, label %136

103:                                              ; preds = %99
  %104 = load i32, i32* %10, align 4
  %105 = ashr i32 %104, 2
  store i32 %105, i32* %11, align 4
  br label %106

106:                                              ; preds = %110, %103
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %11, align 4
  %109 = icmp ne i32 %107, 0
  br i1 %109, label %110, label %135

110:                                              ; preds = %106
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %15, align 4
  %117 = call i32 @LD_UB4(i32* %111, i32 %112, i32 %113, i32 %114, i32 %115, i32 %116)
  %118 = load i32, i32* %7, align 4
  %119 = mul nsw i32 4, %118
  %120 = load i32*, i32** %6, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  store i32* %122, i32** %6, align 8
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %15, align 4
  %127 = load i32*, i32** %8, align 8
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @ST_UB4(i32 %123, i32 %124, i32 %125, i32 %126, i32* %127, i32 %128)
  %130 = load i32, i32* %9, align 4
  %131 = mul nsw i32 4, %130
  %132 = load i32*, i32** %8, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  store i32* %134, i32** %8, align 8
  br label %106

135:                                              ; preds = %106
  br label %136

136:                                              ; preds = %135, %99
  br label %137

137:                                              ; preds = %136, %92
  br label %138

138:                                              ; preds = %137, %87
  ret void
}

declare dso_local i32 @LD_UB8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_UB8(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @LD_UB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_UB4(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @copy_16multx8mult_msa(i32*, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
