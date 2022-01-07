; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hpeldsp_msa.c_avg_width4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hpeldsp_msa.c_avg_width4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32)* @avg_width4_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avg_width4_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
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
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = srem i32 %24, 4
  %26 = icmp eq i32 0, %25
  br i1 %26, label %27, label %92

27:                                               ; preds = %5
  %28 = load i32, i32* %10, align 4
  %29 = sdiv i32 %28, 4
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %34, %27
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %11, align 4
  %33 = icmp ne i32 %31, 0
  br i1 %33, label %34, label %91

34:                                               ; preds = %30
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i64, i64* %16, align 8
  %38 = load i64, i64* %17, align 8
  %39 = load i64, i64* %18, align 8
  %40 = load i64, i64* %19, align 8
  %41 = call i32 @LD_UB4(i32* %35, i32 %36, i64 %37, i64 %38, i64 %39, i64 %40)
  %42 = load i32, i32* %7, align 4
  %43 = mul nsw i32 4, %42
  %44 = load i32*, i32** %6, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32* %46, i32** %6, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i64, i64* %20, align 8
  %50 = load i64, i64* %21, align 8
  %51 = load i64, i64* %22, align 8
  %52 = load i64, i64* %23, align 8
  %53 = call i32 @LD_UB4(i32* %47, i32 %48, i64 %49, i64 %50, i64 %51, i64 %52)
  %54 = load i64, i64* %16, align 8
  %55 = load i64, i64* %20, align 8
  %56 = load i64, i64* %17, align 8
  %57 = load i64, i64* %21, align 8
  %58 = load i64, i64* %18, align 8
  %59 = load i64, i64* %22, align 8
  %60 = load i64, i64* %19, align 8
  %61 = load i64, i64* %23, align 8
  %62 = load i64, i64* %20, align 8
  %63 = load i64, i64* %21, align 8
  %64 = load i64, i64* %22, align 8
  %65 = load i64, i64* %23, align 8
  %66 = call i32 @AVER_UB4_UB(i64 %54, i64 %55, i64 %56, i64 %57, i64 %58, i64 %59, i64 %60, i64 %61, i64 %62, i64 %63, i64 %64, i64 %65)
  %67 = load i64, i64* %20, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @__msa_copy_u_w(i32 %68, i32 0)
  store i32 %69, i32* %12, align 4
  %70 = load i64, i64* %21, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @__msa_copy_u_w(i32 %71, i32 0)
  store i32 %72, i32* %13, align 4
  %73 = load i64, i64* %22, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @__msa_copy_u_w(i32 %74, i32 0)
  store i32 %75, i32* %14, align 4
  %76 = load i64, i64* %23, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @__msa_copy_u_w(i32 %77, i32 0)
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %15, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @SW4(i32 %79, i32 %80, i32 %81, i32 %82, i32* %83, i32 %84)
  %86 = load i32, i32* %9, align 4
  %87 = mul nsw i32 4, %86
  %88 = load i32*, i32** %8, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32* %90, i32** %8, align 8
  br label %30

91:                                               ; preds = %30
  br label %148

92:                                               ; preds = %5
  %93 = load i32, i32* %10, align 4
  %94 = srem i32 %93, 2
  %95 = icmp eq i32 0, %94
  br i1 %95, label %96, label %147

96:                                               ; preds = %92
  %97 = load i32, i32* %10, align 4
  %98 = sdiv i32 %97, 2
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %103, %96
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %11, align 4
  %102 = icmp ne i32 %100, 0
  br i1 %102, label %103, label %146

103:                                              ; preds = %99
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load i64, i64* %16, align 8
  %107 = load i64, i64* %17, align 8
  %108 = call i32 @LD_UB2(i32* %104, i32 %105, i64 %106, i64 %107)
  %109 = load i32, i32* %7, align 4
  %110 = mul nsw i32 2, %109
  %111 = load i32*, i32** %6, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  store i32* %113, i32** %6, align 8
  %114 = load i32*, i32** %8, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load i64, i64* %20, align 8
  %117 = load i64, i64* %21, align 8
  %118 = call i32 @LD_UB2(i32* %114, i32 %115, i64 %116, i64 %117)
  %119 = load i64, i64* %16, align 8
  %120 = load i64, i64* %20, align 8
  %121 = load i64, i64* %17, align 8
  %122 = load i64, i64* %21, align 8
  %123 = load i64, i64* %20, align 8
  %124 = load i64, i64* %21, align 8
  %125 = call i32 @AVER_UB2_UB(i64 %119, i64 %120, i64 %121, i64 %122, i64 %123, i64 %124)
  %126 = load i64, i64* %20, align 8
  %127 = trunc i64 %126 to i32
  %128 = call i32 @__msa_copy_u_w(i32 %127, i32 0)
  store i32 %128, i32* %12, align 4
  %129 = load i64, i64* %21, align 8
  %130 = trunc i64 %129 to i32
  %131 = call i32 @__msa_copy_u_w(i32 %130, i32 0)
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %12, align 4
  %133 = load i32*, i32** %8, align 8
  %134 = call i32 @SW(i32 %132, i32* %133)
  %135 = load i32, i32* %9, align 4
  %136 = load i32*, i32** %8, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  store i32* %138, i32** %8, align 8
  %139 = load i32, i32* %13, align 4
  %140 = load i32*, i32** %8, align 8
  %141 = call i32 @SW(i32 %139, i32* %140)
  %142 = load i32, i32* %9, align 4
  %143 = load i32*, i32** %8, align 8
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  store i32* %145, i32** %8, align 8
  br label %99

146:                                              ; preds = %99
  br label %147

147:                                              ; preds = %146, %92
  br label %148

148:                                              ; preds = %147, %91
  ret void
}

declare dso_local i32 @LD_UB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @AVER_UB4_UB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @__msa_copy_u_w(i32, i32) #1

declare dso_local i32 @SW4(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @LD_UB2(i32*, i32, i64, i64) #1

declare dso_local i32 @AVER_UB2_UB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SW(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
