; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_ff_put_vp8_pixels8_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_ff_put_vp8_pixels8_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_vp8_pixels8_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %32 = load i32, i32* %12, align 4
  %33 = srem i32 %32, 8
  %34 = icmp eq i32 0, %33
  br i1 %34, label %35, label %108

35:                                               ; preds = %7
  %36 = load i32, i32* %12, align 4
  %37 = ashr i32 %36, 3
  store i32 %37, i32* %15, align 4
  br label %38

38:                                               ; preds = %42, %35
  %39 = load i32, i32* %15, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %15, align 4
  %41 = icmp ne i32 %39, 0
  br i1 %41, label %42, label %107

42:                                               ; preds = %38
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i64, i64* %24, align 8
  %46 = load i64, i64* %25, align 8
  %47 = load i64, i64* %26, align 8
  %48 = load i64, i64* %27, align 8
  %49 = load i64, i64* %28, align 8
  %50 = load i64, i64* %29, align 8
  %51 = load i64, i64* %30, align 8
  %52 = load i64, i64* %31, align 8
  %53 = call i32 @LD_UB8(i32* %43, i32 %44, i64 %45, i64 %46, i64 %47, i64 %48, i64 %49, i64 %50, i64 %51, i64 %52)
  %54 = load i32, i32* %11, align 4
  %55 = mul nsw i32 8, %54
  %56 = load i32*, i32** %10, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %10, align 8
  %59 = load i64, i64* %24, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @__msa_copy_u_d(i32 %60, i32 0)
  store i32 %61, i32* %16, align 4
  %62 = load i64, i64* %25, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @__msa_copy_u_d(i32 %63, i32 0)
  store i32 %64, i32* %17, align 4
  %65 = load i64, i64* %26, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i32 @__msa_copy_u_d(i32 %66, i32 0)
  store i32 %67, i32* %18, align 4
  %68 = load i64, i64* %27, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @__msa_copy_u_d(i32 %69, i32 0)
  store i32 %70, i32* %19, align 4
  %71 = load i64, i64* %28, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i32 @__msa_copy_u_d(i32 %72, i32 0)
  store i32 %73, i32* %20, align 4
  %74 = load i64, i64* %29, align 8
  %75 = trunc i64 %74 to i32
  %76 = call i32 @__msa_copy_u_d(i32 %75, i32 0)
  store i32 %76, i32* %21, align 4
  %77 = load i64, i64* %30, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @__msa_copy_u_d(i32 %78, i32 0)
  store i32 %79, i32* %22, align 4
  %80 = load i64, i64* %31, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i32 @__msa_copy_u_d(i32 %81, i32 0)
  store i32 %82, i32* %23, align 4
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %19, align 4
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @SD4(i32 %83, i32 %84, i32 %85, i32 %86, i32* %87, i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = mul nsw i32 4, %90
  %92 = load i32*, i32** %8, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32* %94, i32** %8, align 8
  %95 = load i32, i32* %20, align 4
  %96 = load i32, i32* %21, align 4
  %97 = load i32, i32* %22, align 4
  %98 = load i32, i32* %23, align 4
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @SD4(i32 %95, i32 %96, i32 %97, i32 %98, i32* %99, i32 %100)
  %102 = load i32, i32* %9, align 4
  %103 = mul nsw i32 4, %102
  %104 = load i32*, i32** %8, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32* %106, i32** %8, align 8
  br label %38

107:                                              ; preds = %38
  br label %158

108:                                              ; preds = %7
  %109 = load i32, i32* %12, align 4
  %110 = srem i32 %109, 4
  %111 = icmp eq i32 0, %110
  br i1 %111, label %112, label %157

112:                                              ; preds = %108
  %113 = load i32, i32* %12, align 4
  %114 = sdiv i32 %113, 4
  store i32 %114, i32* %15, align 4
  br label %115

115:                                              ; preds = %119, %112
  %116 = load i32, i32* %15, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %15, align 4
  %118 = icmp ne i32 %116, 0
  br i1 %118, label %119, label %156

119:                                              ; preds = %115
  %120 = load i32*, i32** %10, align 8
  %121 = load i32, i32* %11, align 4
  %122 = load i64, i64* %24, align 8
  %123 = load i64, i64* %25, align 8
  %124 = load i64, i64* %26, align 8
  %125 = load i64, i64* %27, align 8
  %126 = call i32 @LD_UB4(i32* %120, i32 %121, i64 %122, i64 %123, i64 %124, i64 %125)
  %127 = load i32, i32* %11, align 4
  %128 = mul nsw i32 4, %127
  %129 = load i32*, i32** %10, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  store i32* %131, i32** %10, align 8
  %132 = load i64, i64* %24, align 8
  %133 = trunc i64 %132 to i32
  %134 = call i32 @__msa_copy_u_d(i32 %133, i32 0)
  store i32 %134, i32* %16, align 4
  %135 = load i64, i64* %25, align 8
  %136 = trunc i64 %135 to i32
  %137 = call i32 @__msa_copy_u_d(i32 %136, i32 0)
  store i32 %137, i32* %17, align 4
  %138 = load i64, i64* %26, align 8
  %139 = trunc i64 %138 to i32
  %140 = call i32 @__msa_copy_u_d(i32 %139, i32 0)
  store i32 %140, i32* %18, align 4
  %141 = load i64, i64* %27, align 8
  %142 = trunc i64 %141 to i32
  %143 = call i32 @__msa_copy_u_d(i32 %142, i32 0)
  store i32 %143, i32* %19, align 4
  %144 = load i32, i32* %16, align 4
  %145 = load i32, i32* %17, align 4
  %146 = load i32, i32* %18, align 4
  %147 = load i32, i32* %19, align 4
  %148 = load i32*, i32** %8, align 8
  %149 = load i32, i32* %9, align 4
  %150 = call i32 @SD4(i32 %144, i32 %145, i32 %146, i32 %147, i32* %148, i32 %149)
  %151 = load i32, i32* %9, align 4
  %152 = mul nsw i32 4, %151
  %153 = load i32*, i32** %8, align 8
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  store i32* %155, i32** %8, align 8
  br label %115

156:                                              ; preds = %115
  br label %157

157:                                              ; preds = %156, %108
  br label %158

158:                                              ; preds = %157, %107
  ret void
}

declare dso_local i32 @LD_UB8(i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @__msa_copy_u_d(i32, i32) #1

declare dso_local i32 @SD4(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @LD_UB4(i32*, i32, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
