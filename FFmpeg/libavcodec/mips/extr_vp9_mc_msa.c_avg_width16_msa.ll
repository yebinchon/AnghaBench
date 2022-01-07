; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_avg_width16_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_avg_width16_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32)* @avg_width16_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avg_width16_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
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
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = srem i32 %28, 8
  %30 = icmp eq i32 0, %29
  br i1 %30, label %31, label %109

31:                                               ; preds = %5
  %32 = load i32, i32* %10, align 4
  %33 = sdiv i32 %32, 8
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %38, %31
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %11, align 4
  %37 = icmp ne i32 %35, 0
  br i1 %37, label %38, label %108

38:                                               ; preds = %34
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* %19, align 4
  %49 = call i32 @LD_UB8(i32* %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = mul nsw i32 8, %50
  %52 = load i32*, i32** %6, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32* %54, i32** %6, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %20, align 4
  %58 = load i32, i32* %21, align 4
  %59 = load i32, i32* %22, align 4
  %60 = load i32, i32* %23, align 4
  %61 = load i32, i32* %24, align 4
  %62 = load i32, i32* %25, align 4
  %63 = load i32, i32* %26, align 4
  %64 = load i32, i32* %27, align 4
  %65 = call i32 @LD_UB8(i32* %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %20, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %21, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %22, align 4
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %23, align 4
  %74 = load i32, i32* %20, align 4
  %75 = load i32, i32* %21, align 4
  %76 = load i32, i32* %22, align 4
  %77 = load i32, i32* %23, align 4
  %78 = call i32 @AVER_UB4_UB(i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %24, align 4
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* %25, align 4
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %26, align 4
  %85 = load i32, i32* %19, align 4
  %86 = load i32, i32* %27, align 4
  %87 = load i32, i32* %24, align 4
  %88 = load i32, i32* %25, align 4
  %89 = load i32, i32* %26, align 4
  %90 = load i32, i32* %27, align 4
  %91 = call i32 @AVER_UB4_UB(i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90)
  %92 = load i32, i32* %20, align 4
  %93 = load i32, i32* %21, align 4
  %94 = load i32, i32* %22, align 4
  %95 = load i32, i32* %23, align 4
  %96 = load i32, i32* %24, align 4
  %97 = load i32, i32* %25, align 4
  %98 = load i32, i32* %26, align 4
  %99 = load i32, i32* %27, align 4
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @ST_UB8(i32 %92, i32 %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98, i32 %99, i32* %100, i32 %101)
  %103 = load i32, i32* %9, align 4
  %104 = mul nsw i32 8, %103
  %105 = load i32*, i32** %8, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32* %107, i32** %8, align 8
  br label %34

108:                                              ; preds = %34
  br label %167

109:                                              ; preds = %5
  %110 = load i32, i32* %10, align 4
  %111 = srem i32 %110, 4
  %112 = icmp eq i32 0, %111
  br i1 %112, label %113, label %166

113:                                              ; preds = %109
  %114 = load i32, i32* %10, align 4
  %115 = sdiv i32 %114, 4
  store i32 %115, i32* %11, align 4
  br label %116

116:                                              ; preds = %120, %113
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %11, align 4
  %119 = icmp ne i32 %117, 0
  br i1 %119, label %120, label %165

120:                                              ; preds = %116
  %121 = load i32*, i32** %6, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %15, align 4
  %127 = call i32 @LD_UB4(i32* %121, i32 %122, i32 %123, i32 %124, i32 %125, i32 %126)
  %128 = load i32, i32* %7, align 4
  %129 = mul nsw i32 4, %128
  %130 = load i32*, i32** %6, align 8
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  store i32* %132, i32** %6, align 8
  %133 = load i32*, i32** %8, align 8
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %20, align 4
  %136 = load i32, i32* %21, align 4
  %137 = load i32, i32* %22, align 4
  %138 = load i32, i32* %23, align 4
  %139 = call i32 @LD_UB4(i32* %133, i32 %134, i32 %135, i32 %136, i32 %137, i32 %138)
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* %20, align 4
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %21, align 4
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* %22, align 4
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* %23, align 4
  %148 = load i32, i32* %20, align 4
  %149 = load i32, i32* %21, align 4
  %150 = load i32, i32* %22, align 4
  %151 = load i32, i32* %23, align 4
  %152 = call i32 @AVER_UB4_UB(i32 %140, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148, i32 %149, i32 %150, i32 %151)
  %153 = load i32, i32* %20, align 4
  %154 = load i32, i32* %21, align 4
  %155 = load i32, i32* %22, align 4
  %156 = load i32, i32* %23, align 4
  %157 = load i32*, i32** %8, align 8
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @ST_UB4(i32 %153, i32 %154, i32 %155, i32 %156, i32* %157, i32 %158)
  %160 = load i32, i32* %9, align 4
  %161 = mul nsw i32 4, %160
  %162 = load i32*, i32** %8, align 8
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  store i32* %164, i32** %8, align 8
  br label %116

165:                                              ; preds = %116
  br label %166

166:                                              ; preds = %165, %109
  br label %167

167:                                              ; preds = %166, %108
  ret void
}

declare dso_local i32 @LD_UB8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @AVER_UB4_UB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_UB8(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @LD_UB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_UB4(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
