; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/quicklz/extr_quicklz.c_fast_write.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/quicklz/extr_quicklz.c_fast_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32)* @fast_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fast_write(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  store i8* %8, i8** %7, align 8
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %56 [
    i32 4, label %10
    i32 3, label %29
    i32 2, label %43
    i32 1, label %52
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* %4, align 4
  %12 = trunc i32 %11 to i8
  %13 = load i8*, i8** %7, align 8
  store i8 %12, i8* %13, align 1
  %14 = load i32, i32* %4, align 4
  %15 = lshr i32 %14, 8
  %16 = trunc i32 %15 to i8
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 %16, i8* %18, align 1
  %19 = load i32, i32* %4, align 4
  %20 = lshr i32 %19, 16
  %21 = trunc i32 %20 to i8
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 2
  store i8 %21, i8* %23, align 1
  %24 = load i32, i32* %4, align 4
  %25 = lshr i32 %24, 24
  %26 = trunc i32 %25 to i8
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 3
  store i8 %26, i8* %28, align 1
  br label %56

29:                                               ; preds = %3
  %30 = load i32, i32* %4, align 4
  %31 = trunc i32 %30 to i8
  %32 = load i8*, i8** %7, align 8
  store i8 %31, i8* %32, align 1
  %33 = load i32, i32* %4, align 4
  %34 = lshr i32 %33, 8
  %35 = trunc i32 %34 to i8
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  store i8 %35, i8* %37, align 1
  %38 = load i32, i32* %4, align 4
  %39 = lshr i32 %38, 16
  %40 = trunc i32 %39 to i8
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  store i8 %40, i8* %42, align 1
  br label %56

43:                                               ; preds = %3
  %44 = load i32, i32* %4, align 4
  %45 = trunc i32 %44 to i8
  %46 = load i8*, i8** %7, align 8
  store i8 %45, i8* %46, align 1
  %47 = load i32, i32* %4, align 4
  %48 = lshr i32 %47, 8
  %49 = trunc i32 %48 to i8
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  store i8 %49, i8* %51, align 1
  br label %56

52:                                               ; preds = %3
  %53 = load i32, i32* %4, align 4
  %54 = trunc i32 %53 to i8
  %55 = load i8*, i8** %7, align 8
  store i8 %54, i8* %55, align 1
  br label %56

56:                                               ; preds = %10, %29, %43, %52, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
