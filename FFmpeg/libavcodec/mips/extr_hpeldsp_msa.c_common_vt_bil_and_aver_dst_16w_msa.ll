; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hpeldsp_msa.c_common_vt_bil_and_aver_dst_16w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hpeldsp_msa.c_common_vt_bil_and_aver_dst_16w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32)* @common_vt_bil_and_aver_dst_16w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_vt_bil_and_aver_dst_16w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
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
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @LD_UB(i32* %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32* %42, i32** %6, align 8
  %43 = load i32, i32* %10, align 4
  %44 = ashr i32 %43, 3
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %49, %5
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %11, align 4
  %48 = icmp ne i32 %46, 0
  br i1 %48, label %49, label %146

49:                                               ; preds = %45
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* %19, align 4
  %59 = load i32, i32* %20, align 4
  %60 = call i32 @LD_UB8(i32* %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = mul nsw i32 8, %61
  %63 = load i32*, i32** %6, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32* %65, i32** %6, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %21, align 4
  %75 = load i32, i32* %22, align 4
  %76 = load i32, i32* %23, align 4
  %77 = load i32, i32* %24, align 4
  %78 = call i32 @AVER_UB4_UB(i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* %18, align 4
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* %19, align 4
  %86 = load i32, i32* %20, align 4
  %87 = load i32, i32* %25, align 4
  %88 = load i32, i32* %26, align 4
  %89 = load i32, i32* %27, align 4
  %90 = load i32, i32* %28, align 4
  %91 = call i32 @AVER_UB4_UB(i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90)
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %29, align 4
  %95 = load i32, i32* %30, align 4
  %96 = load i32, i32* %31, align 4
  %97 = load i32, i32* %32, align 4
  %98 = load i32, i32* %33, align 4
  %99 = load i32, i32* %34, align 4
  %100 = load i32, i32* %35, align 4
  %101 = load i32, i32* %36, align 4
  %102 = call i32 @LD_UB8(i32* %92, i32 %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100, i32 %101)
  %103 = load i32, i32* %29, align 4
  %104 = load i32, i32* %21, align 4
  %105 = load i32, i32* %30, align 4
  %106 = load i32, i32* %22, align 4
  %107 = load i32, i32* %31, align 4
  %108 = load i32, i32* %23, align 4
  %109 = load i32, i32* %32, align 4
  %110 = load i32, i32* %24, align 4
  %111 = load i32, i32* %21, align 4
  %112 = load i32, i32* %22, align 4
  %113 = load i32, i32* %23, align 4
  %114 = load i32, i32* %24, align 4
  %115 = call i32 @AVER_UB4_UB(i32 %103, i32 %104, i32 %105, i32 %106, i32 %107, i32 %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114)
  %116 = load i32, i32* %33, align 4
  %117 = load i32, i32* %25, align 4
  %118 = load i32, i32* %34, align 4
  %119 = load i32, i32* %26, align 4
  %120 = load i32, i32* %35, align 4
  %121 = load i32, i32* %27, align 4
  %122 = load i32, i32* %36, align 4
  %123 = load i32, i32* %28, align 4
  %124 = load i32, i32* %25, align 4
  %125 = load i32, i32* %26, align 4
  %126 = load i32, i32* %27, align 4
  %127 = load i32, i32* %28, align 4
  %128 = call i32 @AVER_UB4_UB(i32 %116, i32 %117, i32 %118, i32 %119, i32 %120, i32 %121, i32 %122, i32 %123, i32 %124, i32 %125, i32 %126, i32 %127)
  %129 = load i32, i32* %21, align 4
  %130 = load i32, i32* %22, align 4
  %131 = load i32, i32* %23, align 4
  %132 = load i32, i32* %24, align 4
  %133 = load i32, i32* %25, align 4
  %134 = load i32, i32* %26, align 4
  %135 = load i32, i32* %27, align 4
  %136 = load i32, i32* %28, align 4
  %137 = load i32*, i32** %8, align 8
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @ST_UB8(i32 %129, i32 %130, i32 %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136, i32* %137, i32 %138)
  %140 = load i32, i32* %9, align 4
  %141 = mul nsw i32 8, %140
  %142 = load i32*, i32** %8, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32* %144, i32** %8, align 8
  %145 = load i32, i32* %20, align 4
  store i32 %145, i32* %12, align 4
  br label %45

146:                                              ; preds = %45
  ret void
}

declare dso_local i32 @LD_UB(i32*) #1

declare dso_local i32 @LD_UB8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @AVER_UB4_UB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_UB8(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
