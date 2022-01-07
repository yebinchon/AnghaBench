; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbrdsp.c_sbr_qmf_pre_shuffle_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbrdsp.c_sbr_qmf_pre_shuffle_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.av_intfloat32 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*)* @sbr_qmf_pre_shuffle_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbr_qmf_pre_shuffle_c(float* %0) #0 {
  %2 = alloca float*, align 8
  %3 = alloca %union.av_intfloat32*, align 8
  %4 = alloca i32, align 4
  store float* %0, float** %2, align 8
  %5 = load float*, float** %2, align 8
  %6 = bitcast float* %5 to %union.av_intfloat32*
  store %union.av_intfloat32* %6, %union.av_intfloat32** %3, align 8
  %7 = load %union.av_intfloat32*, %union.av_intfloat32** %3, align 8
  %8 = getelementptr inbounds %union.av_intfloat32, %union.av_intfloat32* %7, i64 0
  %9 = bitcast %union.av_intfloat32* %8 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = load %union.av_intfloat32*, %union.av_intfloat32** %3, align 8
  %12 = getelementptr inbounds %union.av_intfloat32, %union.av_intfloat32* %11, i64 64
  %13 = bitcast %union.av_intfloat32* %12 to i32*
  store i32 %10, i32* %13, align 4
  %14 = load %union.av_intfloat32*, %union.av_intfloat32** %3, align 8
  %15 = getelementptr inbounds %union.av_intfloat32, %union.av_intfloat32* %14, i64 1
  %16 = bitcast %union.av_intfloat32* %15 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = load %union.av_intfloat32*, %union.av_intfloat32** %3, align 8
  %19 = getelementptr inbounds %union.av_intfloat32, %union.av_intfloat32* %18, i64 65
  %20 = bitcast %union.av_intfloat32* %19 to i32*
  store i32 %17, i32* %20, align 4
  store i32 1, i32* %4, align 4
  br label %21

21:                                               ; preds = %87, %1
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 31
  br i1 %23, label %24, label %90

24:                                               ; preds = %21
  %25 = load %union.av_intfloat32*, %union.av_intfloat32** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sub nsw i32 64, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %union.av_intfloat32, %union.av_intfloat32* %25, i64 %28
  %30 = bitcast %union.av_intfloat32* %29 to i32*
  %31 = load i32, i32* %30, align 4
  %32 = xor i32 %31, -2147483648
  %33 = load %union.av_intfloat32*, %union.av_intfloat32** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = mul nsw i32 2, %34
  %36 = add nsw i32 64, %35
  %37 = add nsw i32 %36, 0
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %union.av_intfloat32, %union.av_intfloat32* %33, i64 %38
  %40 = bitcast %union.av_intfloat32* %39 to i32*
  store i32 %32, i32* %40, align 4
  %41 = load %union.av_intfloat32*, %union.av_intfloat32** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %union.av_intfloat32, %union.av_intfloat32* %41, i64 %44
  %46 = bitcast %union.av_intfloat32* %45 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = load %union.av_intfloat32*, %union.av_intfloat32** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = mul nsw i32 2, %49
  %51 = add nsw i32 64, %50
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %union.av_intfloat32, %union.av_intfloat32* %48, i64 %53
  %55 = bitcast %union.av_intfloat32* %54 to i32*
  store i32 %47, i32* %55, align 4
  %56 = load %union.av_intfloat32*, %union.av_intfloat32** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sub nsw i32 63, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %union.av_intfloat32, %union.av_intfloat32* %56, i64 %59
  %61 = bitcast %union.av_intfloat32* %60 to i32*
  %62 = load i32, i32* %61, align 4
  %63 = xor i32 %62, -2147483648
  %64 = load %union.av_intfloat32*, %union.av_intfloat32** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = mul nsw i32 2, %65
  %67 = add nsw i32 64, %66
  %68 = add nsw i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %union.av_intfloat32, %union.av_intfloat32* %64, i64 %69
  %71 = bitcast %union.av_intfloat32* %70 to i32*
  store i32 %63, i32* %71, align 4
  %72 = load %union.av_intfloat32*, %union.av_intfloat32** %3, align 8
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 2
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %union.av_intfloat32, %union.av_intfloat32* %72, i64 %75
  %77 = bitcast %union.av_intfloat32* %76 to i32*
  %78 = load i32, i32* %77, align 4
  %79 = load %union.av_intfloat32*, %union.av_intfloat32** %3, align 8
  %80 = load i32, i32* %4, align 4
  %81 = mul nsw i32 2, %80
  %82 = add nsw i32 64, %81
  %83 = add nsw i32 %82, 3
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %union.av_intfloat32, %union.av_intfloat32* %79, i64 %84
  %86 = bitcast %union.av_intfloat32* %85 to i32*
  store i32 %78, i32* %86, align 4
  br label %87

87:                                               ; preds = %24
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 2
  store i32 %89, i32* %4, align 4
  br label %21

90:                                               ; preds = %21
  %91 = load %union.av_intfloat32*, %union.av_intfloat32** %3, align 8
  %92 = getelementptr inbounds %union.av_intfloat32, %union.av_intfloat32* %91, i64 33
  %93 = bitcast %union.av_intfloat32* %92 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = xor i32 %94, -2147483648
  %96 = load %union.av_intfloat32*, %union.av_intfloat32** %3, align 8
  %97 = getelementptr inbounds %union.av_intfloat32, %union.av_intfloat32* %96, i64 126
  %98 = bitcast %union.av_intfloat32* %97 to i32*
  store i32 %95, i32* %98, align 4
  %99 = load %union.av_intfloat32*, %union.av_intfloat32** %3, align 8
  %100 = getelementptr inbounds %union.av_intfloat32, %union.av_intfloat32* %99, i64 32
  %101 = bitcast %union.av_intfloat32* %100 to i32*
  %102 = load i32, i32* %101, align 4
  %103 = load %union.av_intfloat32*, %union.av_intfloat32** %3, align 8
  %104 = getelementptr inbounds %union.av_intfloat32, %union.av_intfloat32* %103, i64 127
  %105 = bitcast %union.av_intfloat32* %104 to i32*
  store i32 %102, i32* %105, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
