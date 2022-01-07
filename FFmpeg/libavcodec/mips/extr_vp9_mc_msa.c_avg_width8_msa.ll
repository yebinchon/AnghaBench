; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_avg_width8_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_avg_width8_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32)* @avg_width8_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avg_width8_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
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
  br i1 %30, label %31, label %139

31:                                               ; preds = %5
  %32 = load i32, i32* %10, align 4
  %33 = ashr i32 %32, 3
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %38, %31
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %11, align 4
  %37 = icmp ne i32 %35, 0
  br i1 %37, label %38, label %138

38:                                               ; preds = %34
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @LD4(i32* %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = mul nsw i32 4, %46
  %48 = load i32*, i32** %6, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32* %50, i32** %6, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* %19, align 4
  %57 = call i32 @LD4(i32* %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = mul nsw i32 4, %58
  %60 = load i32*, i32** %6, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32* %62, i32** %6, align 8
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %20, align 4
  %66 = call i32 @INSERT_D2_UB(i32 %63, i32 %64, i32 %65)
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %21, align 4
  %70 = call i32 @INSERT_D2_UB(i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %22, align 4
  %74 = call i32 @INSERT_D2_UB(i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* %18, align 4
  %76 = load i32, i32* %19, align 4
  %77 = load i32, i32* %23, align 4
  %78 = call i32 @INSERT_D2_UB(i32 %75, i32 %76, i32 %77)
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %15, align 4
  %85 = call i32 @LD4(i32* %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84)
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %9, align 4
  %88 = mul nsw i32 4, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %18, align 4
  %95 = load i32, i32* %19, align 4
  %96 = call i32 @LD4(i32* %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95)
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %24, align 4
  %100 = call i32 @INSERT_D2_UB(i32 %97, i32 %98, i32 %99)
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %25, align 4
  %104 = call i32 @INSERT_D2_UB(i32 %101, i32 %102, i32 %103)
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* %26, align 4
  %108 = call i32 @INSERT_D2_UB(i32 %105, i32 %106, i32 %107)
  %109 = load i32, i32* %18, align 4
  %110 = load i32, i32* %19, align 4
  %111 = load i32, i32* %27, align 4
  %112 = call i32 @INSERT_D2_UB(i32 %109, i32 %110, i32 %111)
  %113 = load i32, i32* %20, align 4
  %114 = load i32, i32* %24, align 4
  %115 = load i32, i32* %21, align 4
  %116 = load i32, i32* %25, align 4
  %117 = load i32, i32* %22, align 4
  %118 = load i32, i32* %26, align 4
  %119 = load i32, i32* %23, align 4
  %120 = load i32, i32* %27, align 4
  %121 = load i32, i32* %24, align 4
  %122 = load i32, i32* %25, align 4
  %123 = load i32, i32* %26, align 4
  %124 = load i32, i32* %27, align 4
  %125 = call i32 @AVER_UB4_UB(i32 %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 %118, i32 %119, i32 %120, i32 %121, i32 %122, i32 %123, i32 %124)
  %126 = load i32, i32* %24, align 4
  %127 = load i32, i32* %25, align 4
  %128 = load i32, i32* %26, align 4
  %129 = load i32, i32* %27, align 4
  %130 = load i32*, i32** %8, align 8
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @ST_D8(i32 %126, i32 %127, i32 %128, i32 %129, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32* %130, i32 %131)
  %133 = load i32, i32* %9, align 4
  %134 = mul nsw i32 8, %133
  %135 = load i32*, i32** %8, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  store i32* %137, i32** %8, align 8
  br label %34

138:                                              ; preds = %34
  br label %186

139:                                              ; preds = %5
  %140 = load i32, i32* %10, align 4
  %141 = icmp eq i32 4, %140
  br i1 %141, label %142, label %185

142:                                              ; preds = %139
  %143 = load i32*, i32** %6, align 8
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %15, align 4
  %149 = call i32 @LD4(i32* %143, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148)
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* %20, align 4
  %153 = call i32 @INSERT_D2_UB(i32 %150, i32 %151, i32 %152)
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* %15, align 4
  %156 = load i32, i32* %21, align 4
  %157 = call i32 @INSERT_D2_UB(i32 %154, i32 %155, i32 %156)
  %158 = load i32*, i32** %8, align 8
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* %14, align 4
  %163 = load i32, i32* %15, align 4
  %164 = call i32 @LD4(i32* %158, i32 %159, i32 %160, i32 %161, i32 %162, i32 %163)
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* %24, align 4
  %168 = call i32 @INSERT_D2_UB(i32 %165, i32 %166, i32 %167)
  %169 = load i32, i32* %14, align 4
  %170 = load i32, i32* %15, align 4
  %171 = load i32, i32* %25, align 4
  %172 = call i32 @INSERT_D2_UB(i32 %169, i32 %170, i32 %171)
  %173 = load i32, i32* %20, align 4
  %174 = load i32, i32* %24, align 4
  %175 = load i32, i32* %21, align 4
  %176 = load i32, i32* %25, align 4
  %177 = load i32, i32* %24, align 4
  %178 = load i32, i32* %25, align 4
  %179 = call i32 @AVER_UB2_UB(i32 %173, i32 %174, i32 %175, i32 %176, i32 %177, i32 %178)
  %180 = load i32, i32* %24, align 4
  %181 = load i32, i32* %25, align 4
  %182 = load i32*, i32** %8, align 8
  %183 = load i32, i32* %9, align 4
  %184 = call i32 @ST_D4(i32 %180, i32 %181, i32 0, i32 1, i32 0, i32 1, i32* %182, i32 %183)
  br label %185

185:                                              ; preds = %142, %139
  br label %186

186:                                              ; preds = %185, %138
  ret void
}

declare dso_local i32 @LD4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @INSERT_D2_UB(i32, i32, i32) #1

declare dso_local i32 @AVER_UB4_UB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_D8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @AVER_UB2_UB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
