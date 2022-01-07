; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/aosdk/extr_eng_ssf.c_ssf_gen.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/aosdk/extr_eng_ssf.c_ssf_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@total_samples = common dso_local global i64 0, align 8
@decaybegin = common dso_local global i64 0, align 8
@decayend = common dso_local global i64 0, align 8
@AO_FAIL = common dso_local global i32 0, align 4
@AO_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssf_gen(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1470 x i32], align 16
  %8 = alloca [1470 x i32], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load i32*, i32** %4, align 8
  store i32* %15, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %39, %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %16
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %21 = call i32 @M68KExec(i32 256)
  %22 = call i32 @scsp_update_timer(i32 1)
  %23 = call i32 @scsp_update(i32* %11, i32* %12, i32 1)
  %24 = call i32 (...) @scsp_update_monitor()
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %26 = call i32 @ScspConvert32uto16s(i32* %11, i32* %12, i32* %25, i32 1)
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [1470 x i32], [1470 x i32]* %7, i64 0, i64 %30
  store i32 %28, i32* %31, align 4
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [1470 x i32], [1470 x i32]* %8, i64 0, i64 %35
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %20
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %16

42:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %113, %42
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %116

47:                                               ; preds = %43
  %48 = load i64, i64* @total_samples, align 8
  %49 = load i64, i64* @decaybegin, align 8
  %50 = icmp sge i64 %48, %49
  br i1 %50, label %51, label %97

51:                                               ; preds = %47
  %52 = load i64, i64* @total_samples, align 8
  %53 = load i64, i64* @decayend, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [1470 x i32], [1470 x i32]* %7, i64 0, i64 %57
  store i32 0, i32* %58, align 4
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [1470 x i32], [1470 x i32]* %8, i64 0, i64 %60
  store i32 0, i32* %61, align 4
  %62 = load i32, i32* @AO_FAIL, align 4
  store i32 %62, i32* %3, align 4
  br label %118

63:                                               ; preds = %51
  %64 = load i64, i64* @total_samples, align 8
  %65 = load i64, i64* @decaybegin, align 8
  %66 = sub nsw i64 %64, %65
  %67 = mul nsw i64 256, %66
  %68 = load i64, i64* @decayend, align 8
  %69 = load i64, i64* @decaybegin, align 8
  %70 = sub nsw i64 %68, %69
  %71 = sdiv i64 %67, %70
  %72 = sub nsw i64 256, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [1470 x i32], [1470 x i32]* %7, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %14, align 4
  %79 = mul nsw i32 %77, %78
  %80 = ashr i32 %79, 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [1470 x i32], [1470 x i32]* %7, i64 0, i64 %82
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [1470 x i32], [1470 x i32]* %8, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %14, align 4
  %89 = mul nsw i32 %87, %88
  %90 = ashr i32 %89, 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [1470 x i32], [1470 x i32]* %8, i64 0, i64 %92
  store i32 %90, i32* %93, align 4
  %94 = load i64, i64* @total_samples, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* @total_samples, align 8
  br label %96

96:                                               ; preds = %63
  br label %100

97:                                               ; preds = %47
  %98 = load i64, i64* @total_samples, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* @total_samples, align 8
  br label %100

100:                                              ; preds = %97, %96
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [1470 x i32], [1470 x i32]* %7, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %9, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %9, align 8
  store i32 %104, i32* %105, align 4
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [1470 x i32], [1470 x i32]* %8, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %9, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %9, align 8
  store i32 %110, i32* %111, align 4
  br label %113

113:                                              ; preds = %100
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %6, align 4
  br label %43

116:                                              ; preds = %43
  %117 = load i32, i32* @AO_SUCCESS, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %116, %55
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @M68KExec(i32) #1

declare dso_local i32 @scsp_update_timer(i32) #1

declare dso_local i32 @scsp_update(i32*, i32*, i32) #1

declare dso_local i32 @scsp_update_monitor(...) #1

declare dso_local i32 @ScspConvert32uto16s(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
