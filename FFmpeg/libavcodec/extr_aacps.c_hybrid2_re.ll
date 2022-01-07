; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacps.c_hybrid2_re.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacps.c_hybrid2_re.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ([2 x i32]*, [32 x [2 x i32]]*, i32*, i32, i32)* @hybrid2_re to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hybrid2_re([2 x i32]* %0, [32 x [2 x i32]]* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca [2 x i32]*, align 8
  %7 = alloca [32 x [2 x i32]]*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store [2 x i32]* %0, [2 x i32]** %6, align 8
  store [32 x [2 x i32]]* %1, [32 x [2 x i32]]** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %146, %5
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %151

21:                                               ; preds = %17
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 6
  %24 = load i32, i32* %23, align 4
  %25 = load [2 x i32]*, [2 x i32]** %6, align 8
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 6
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @AAC_MUL31(i32 %24, i32 %28)
  store i32 %29, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 6
  %32 = load i32, i32* %31, align 4
  %33 = load [2 x i32]*, [2 x i32]** %6, align 8
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %33, i64 6
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %34, i64 0, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @AAC_MUL31(i32 %32, i32 %36)
  store i32 %37, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %92, %21
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 6
  br i1 %40, label %41, label %95

41:                                               ; preds = %38
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load [2 x i32]*, [2 x i32]** %6, align 8
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %48, i64 %51
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %52, i64 0, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load [2 x i32]*, [2 x i32]** %6, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sub nsw i32 12, %56
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %55, i64 %59
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %60, i64 0, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %54, %62
  %64 = mul nsw i32 %47, %63
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %14, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load [2 x i32]*, [2 x i32]** %6, align 8
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %73, i64 %76
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %77, i64 0, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = load [2 x i32]*, [2 x i32]** %6, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sub nsw i32 12, %81
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %80, i64 %84
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %85, i64 0, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %79, %87
  %89 = mul nsw i32 %72, %88
  %90 = load i32, i32* %16, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %16, align 4
  br label %92

92:                                               ; preds = %41
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 2
  store i32 %94, i32* %12, align 4
  br label %38

95:                                               ; preds = %38
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %96, %97
  %99 = load [32 x [2 x i32]]*, [32 x [2 x i32]]** %7, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %99, i64 %101
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %102, i64 0, i64 %104
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* %105, i64 0, i64 0
  store i32 %98, i32* %106, align 4
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %16, align 4
  %109 = add nsw i32 %107, %108
  %110 = load [32 x [2 x i32]]*, [32 x [2 x i32]]** %7, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %110, i64 %112
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %113, i64 0, i64 %115
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %116, i64 0, i64 1
  store i32 %109, i32* %117, align 4
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %14, align 4
  %120 = sub nsw i32 %118, %119
  %121 = load [32 x [2 x i32]]*, [32 x [2 x i32]]** %7, align 8
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %121, i64 %126
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %127, i64 0, i64 %129
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %130, i64 0, i64 0
  store i32 %120, i32* %131, align 4
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %16, align 4
  %134 = sub nsw i32 %132, %133
  %135 = load [32 x [2 x i32]]*, [32 x [2 x i32]]** %7, align 8
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %135, i64 %140
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %141, i64 0, i64 %143
  %145 = getelementptr inbounds [2 x i32], [2 x i32]* %144, i64 0, i64 1
  store i32 %134, i32* %145, align 4
  br label %146

146:                                              ; preds = %95
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %11, align 4
  %149 = load [2 x i32]*, [2 x i32]** %6, align 8
  %150 = getelementptr inbounds [2 x i32], [2 x i32]* %149, i32 1
  store [2 x i32]* %150, [2 x i32]** %6, align 8
  br label %17

151:                                              ; preds = %17
  ret void
}

declare dso_local i32 @AAC_MUL31(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
