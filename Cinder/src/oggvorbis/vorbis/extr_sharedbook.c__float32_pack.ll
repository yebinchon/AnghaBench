; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_sharedbook.c__float32_pack.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_sharedbook.c__float32_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VQ_FMAN = common dso_local global i32 0, align 4
@VQ_FEXP_BIAS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_float32_pack(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store float %0, float* %2, align 4
  store i32 0, i32* %3, align 4
  %6 = load float, float* %2, align 4
  %7 = fcmp olt float %6, 0.000000e+00
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  store i32 -2147483648, i32* %3, align 4
  %9 = load float, float* %2, align 4
  %10 = fneg float %9
  store float %10, float* %2, align 4
  br label %11

11:                                               ; preds = %8, %1
  %12 = load float, float* %2, align 4
  %13 = call double @log(float %12)
  %14 = call double @log(float 2.000000e+00)
  %15 = fdiv double %13, %14
  %16 = fadd double %15, 1.000000e-03
  %17 = call i64 @floor(double %16)
  store i64 %17, i64* %4, align 8
  %18 = load float, float* %2, align 4
  %19 = load i32, i32* @VQ_FMAN, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %4, align 8
  %23 = sub nsw i64 %21, %22
  %24 = trunc i64 %23 to i32
  %25 = call i32 @ldexp(float %18, i32 %24)
  %26 = call i64 @rint(i32 %25)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @VQ_FEXP_BIAS, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i32, i32* @VQ_FMAN, align 4
  %31 = zext i32 %30 to i64
  %32 = shl i64 %29, %31
  store i64 %32, i64* %4, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %4, align 8
  %36 = or i64 %34, %35
  %37 = load i64, i64* %5, align 8
  %38 = or i64 %36, %37
  ret i64 %38
}

declare dso_local i64 @floor(double) #1

declare dso_local double @log(float) #1

declare dso_local i64 @rint(i32) #1

declare dso_local i32 @ldexp(float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
