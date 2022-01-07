; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/drivers/extr_scalebit.c_stage_scale3x.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/drivers/extr_scalebit.c_stage_scale3x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32)* @stage_scale3x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stage_scale3x(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %17 = load i32, i32* %15, align 4
  switch i32 %17, label %45 [
    i32 1, label %18
    i32 2, label %27
    i32 4, label %36
  ]

18:                                               ; preds = %8
  %19 = load i8*, i8** %9, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = load i8*, i8** %14, align 8
  %25 = load i32, i32* %16, align 4
  %26 = call i32 @scale3x_8_def(i8* %19, i8* %20, i8* %21, i8* %22, i8* %23, i8* %24, i32 %25)
  br label %45

27:                                               ; preds = %8
  %28 = load i8*, i8** %9, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = load i8*, i8** %13, align 8
  %33 = load i8*, i8** %14, align 8
  %34 = load i32, i32* %16, align 4
  %35 = call i32 @scale3x_16_def(i8* %28, i8* %29, i8* %30, i8* %31, i8* %32, i8* %33, i32 %34)
  br label %45

36:                                               ; preds = %8
  %37 = load i8*, i8** %9, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = load i32, i32* %16, align 4
  %44 = call i32 @scale3x_32_def(i8* %37, i8* %38, i8* %39, i8* %40, i8* %41, i8* %42, i32 %43)
  br label %45

45:                                               ; preds = %8, %36, %27, %18
  ret void
}

declare dso_local i32 @scale3x_8_def(i8*, i8*, i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @scale3x_16_def(i8*, i8*, i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @scale3x_32_def(i8*, i8*, i8*, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
