; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/checkasm/extr_checkasm.c_float_near_ulp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/checkasm/extr_checkasm.c_float_near_ulp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.av_intfloat32 = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @float_near_ulp(float %0, float %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.av_intfloat32, align 8
  %9 = alloca %union.av_intfloat32, align 8
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load float, float* %5, align 4
  %11 = bitcast %union.av_intfloat32* %8 to float*
  store float %10, float* %11, align 8
  %12 = load float, float* %6, align 4
  %13 = bitcast %union.av_intfloat32* %9 to float*
  store float %12, float* %13, align 8
  %14 = getelementptr inbounds %union.av_intfloat32, %union.av_intfloat32* %8, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @is_negative(i64 %15)
  %17 = getelementptr inbounds %union.av_intfloat32, %union.av_intfloat32* %9, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @is_negative(i64 %18)
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load float, float* %5, align 4
  %23 = load float, float* %6, align 4
  %24 = fcmp oeq float %22, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %4, align 4
  br label %37

26:                                               ; preds = %3
  %27 = bitcast %union.av_intfloat32* %8 to i64*
  %28 = load i64, i64* %27, align 8
  %29 = bitcast %union.av_intfloat32* %9 to i64*
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %28, %30
  %32 = call i32 @llabs(i64 %31)
  %33 = load i32, i32* %7, align 4
  %34 = icmp ule i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 1, i32* %4, align 4
  br label %37

36:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %35, %21
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i64 @is_negative(i64) #1

declare dso_local i32 @llabs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
