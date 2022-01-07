; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcadct.c_imdct_half_32.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcadct.c_imdct_half_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @imdct_half_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imdct_half_32(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [32 x i32], align 16
  %6 = alloca [32 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %26, %2
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 32
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @abs(i32 %20)
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %15
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %12

29:                                               ; preds = %12
  %30 = load i32, i32* %9, align 4
  %31 = icmp sgt i32 %30, 4194304
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 2, i32 0
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* %10, align 4
  %38 = sub nsw i32 %37, 1
  %39 = shl i32 1, %38
  br label %41

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %36
  %42 = phi i32 [ %39, %36 ], [ 0, %40 ]
  store i32 %42, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %59, %41
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 32
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %51, %52
  %54 = load i32, i32* %10, align 4
  %55 = ashr i32 %53, %54
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 %57
  store i32 %55, i32* %58, align 4
  br label %59

59:                                               ; preds = %46
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %43

62:                                               ; preds = %43
  %63 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %64 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = call i32 @sum_a(i32* %63, i32* %65, i32 16)
  %67 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %68 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %69 = getelementptr inbounds i32, i32* %68, i64 16
  %70 = call i32 @sum_b(i32* %67, i32* %69, i32 16)
  %71 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %72 = call i32 @clp_v(i32* %71, i32 32)
  %73 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = call i32 @sum_a(i32* %74, i32* %76, i32 8)
  %78 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %81 = getelementptr inbounds i32, i32* %80, i64 8
  %82 = call i32 @sum_b(i32* %79, i32* %81, i32 8)
  %83 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %84 = getelementptr inbounds i32, i32* %83, i64 16
  %85 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %86 = getelementptr inbounds i32, i32* %85, i64 16
  %87 = call i32 @sum_c(i32* %84, i32* %86, i32 8)
  %88 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %89 = getelementptr inbounds i32, i32* %88, i64 16
  %90 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %91 = getelementptr inbounds i32, i32* %90, i64 24
  %92 = call i32 @sum_d(i32* %89, i32* %91, i32 8)
  %93 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %94 = call i32 @clp_v(i32* %93, i32 32)
  %95 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = call i32 @dct_a(i32* %96, i32* %98)
  %100 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %101 = getelementptr inbounds i32, i32* %100, i64 8
  %102 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %103 = getelementptr inbounds i32, i32* %102, i64 8
  %104 = call i32 @dct_b(i32* %101, i32* %103)
  %105 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %106 = getelementptr inbounds i32, i32* %105, i64 16
  %107 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %108 = getelementptr inbounds i32, i32* %107, i64 16
  %109 = call i32 @dct_b(i32* %106, i32* %108)
  %110 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %111 = getelementptr inbounds i32, i32* %110, i64 24
  %112 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %113 = getelementptr inbounds i32, i32* %112, i64 24
  %114 = call i32 @dct_b(i32* %111, i32* %113)
  %115 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %116 = call i32 @clp_v(i32* %115, i32 32)
  %117 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = call i32 @mod_a(i32* %118, i32* %120)
  %122 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %123 = getelementptr inbounds i32, i32* %122, i64 16
  %124 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %125 = getelementptr inbounds i32, i32* %124, i64 16
  %126 = call i32 @mod_b(i32* %123, i32* %125)
  %127 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %128 = call i32 @clp_v(i32* %127, i32 32)
  %129 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %130 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %131 = call i32 @mod_c(i32* %129, i32* %130)
  store i32 0, i32* %7, align 4
  br label %132

132:                                              ; preds = %147, %62
  %133 = load i32, i32* %7, align 4
  %134 = icmp slt i32 %133, 32
  br i1 %134, label %135, label %150

135:                                              ; preds = %132
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %10, align 4
  %141 = shl i32 1, %140
  %142 = mul nsw i32 %139, %141
  %143 = call i32 @clip23(i32 %142)
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 %145
  store i32 %143, i32* %146, align 4
  br label %147

147:                                              ; preds = %135
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %7, align 4
  br label %132

150:                                              ; preds = %132
  store i32 0, i32* %7, align 4
  store i32 31, i32* %8, align 4
  br label %151

151:                                              ; preds = %184, %150
  %152 = load i32, i32* %7, align 4
  %153 = icmp slt i32 %152, 16
  br i1 %153, label %154, label %189

154:                                              ; preds = %151
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = sub nsw i32 %158, %162
  %164 = call i32 @clip23(i32 %163)
  %165 = load i32*, i32** %3, align 8
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  store i32 %164, i32* %168, align 4
  %169 = load i32, i32* %7, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %172, %176
  %178 = call i32 @clip23(i32 %177)
  %179 = load i32*, i32** %3, align 8
  %180 = load i32, i32* %7, align 4
  %181 = add nsw i32 16, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %179, i64 %182
  store i32 %178, i32* %183, align 4
  br label %184

184:                                              ; preds = %154
  %185 = load i32, i32* %7, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %7, align 4
  %187 = load i32, i32* %8, align 4
  %188 = add nsw i32 %187, -1
  store i32 %188, i32* %8, align 4
  br label %151

189:                                              ; preds = %151
  ret void
}

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @sum_a(i32*, i32*, i32) #1

declare dso_local i32 @sum_b(i32*, i32*, i32) #1

declare dso_local i32 @clp_v(i32*, i32) #1

declare dso_local i32 @sum_c(i32*, i32*, i32) #1

declare dso_local i32 @sum_d(i32*, i32*, i32) #1

declare dso_local i32 @dct_a(i32*, i32*) #1

declare dso_local i32 @dct_b(i32*, i32*) #1

declare dso_local i32 @mod_a(i32*, i32*) #1

declare dso_local i32 @mod_b(i32*, i32*) #1

declare dso_local i32 @mod_c(i32*, i32*) #1

declare dso_local i32 @clip23(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
