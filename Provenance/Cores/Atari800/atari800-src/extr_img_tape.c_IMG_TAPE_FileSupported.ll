; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_img_tape.c_IMG_TAPE_FileSupported.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_img_tape.c_IMG_TAPE_FileSupported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IMG_TAPE_FileSupported(float* %0) #0 {
  %2 = alloca float*, align 8
  store float* %0, float** %2, align 8
  %3 = load float*, float** %2, align 8
  %4 = getelementptr inbounds float, float* %3, i64 0
  %5 = load float, float* %4, align 4
  %6 = fcmp oeq float %5, 7.000000e+01
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = load float*, float** %2, align 8
  %9 = getelementptr inbounds float, float* %8, i64 1
  %10 = load float, float* %9, align 4
  %11 = fcmp oeq float %10, 8.500000e+01
  br i1 %11, label %12, label %22

12:                                               ; preds = %7
  %13 = load float*, float** %2, align 8
  %14 = getelementptr inbounds float, float* %13, i64 2
  %15 = load float, float* %14, align 4
  %16 = fcmp oeq float %15, 7.400000e+01
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load float*, float** %2, align 8
  %19 = getelementptr inbounds float, float* %18, i64 3
  %20 = load float, float* %19, align 4
  %21 = fcmp oeq float %20, 7.300000e+01
  br label %22

22:                                               ; preds = %17, %12, %7, %1
  %23 = phi i1 [ false, %12 ], [ false, %7 ], [ false, %1 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
