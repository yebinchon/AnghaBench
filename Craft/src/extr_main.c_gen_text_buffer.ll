; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c_gen_text_buffer.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c_gen_text_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gen_text_buffer(float %0, float %1, float %2, i8* %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call i32 @strlen(i8* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i32* @malloc_faces(i32 4, i32 %14)
  store i32* %15, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %40, %4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %16
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %11, align 4
  %23 = mul nsw i32 %22, 24
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load float, float* %5, align 4
  %27 = load float, float* %6, align 4
  %28 = load float, float* %7, align 4
  %29 = fdiv float %28, 2.000000e+00
  %30 = load float, float* %7, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = call i32 @make_character(i32* %25, float %26, float %27, float %29, float %30, i8 signext %35)
  %37 = load float, float* %7, align 4
  %38 = load float, float* %5, align 4
  %39 = fadd float %38, %37
  store float %39, float* %5, align 4
  br label %40

40:                                               ; preds = %20
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  br label %16

43:                                               ; preds = %16
  %44 = load i32, i32* %9, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @gen_faces(i32 4, i32 %44, i32* %45)
  ret i32 %46
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @malloc_faces(i32, i32) #1

declare dso_local i32 @make_character(i32*, float, float, float, float, i8 signext) #1

declare dso_local i32 @gen_faces(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
