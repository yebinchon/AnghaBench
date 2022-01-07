; ModuleID = '/home/carl/AnghaBench/capstone/cstool/extr_cstool.c_preprocess.c'
source_filename = "/home/carl/AnghaBench/capstone/cstool/extr_cstool.c_preprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i64*)* @preprocess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @preprocess(i8* %0, i64* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @strlen(i8* %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %76

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = call i64 @malloc(i64 %17)
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %74

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %68, %22
  %24 = load i8*, i8** %4, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %71

30:                                               ; preds = %23
  %31 = load i8*, i8** %4, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = call i64 @isxdigit(i8 signext %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %68

37:                                               ; preds = %30
  %38 = load i8*, i8** %4, align 8
  %39 = load i64, i64* %6, align 8
  %40 = add i64 %39, 1
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = call i64 @isxdigit(i8 signext %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %37
  %46 = load i8*, i8** %4, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = call i32 @char_to_hexnum(i8 signext %49)
  %51 = mul nsw i32 16, %50
  store i32 %51, i32* %8, align 4
  %52 = load i8*, i8** %4, align 8
  %53 = load i64, i64* %6, align 8
  %54 = add i64 %53, 1
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = call i32 @char_to_hexnum(i8 signext %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32*, i32** %10, align 8
  %62 = load i64, i64* %7, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 %60, i32* %63, align 4
  %64 = load i64, i64* %6, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %7, align 8
  br label %68

68:                                               ; preds = %45, %37, %30
  %69 = load i64, i64* %6, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %6, align 8
  br label %23

71:                                               ; preds = %23
  %72 = load i64, i64* %7, align 8
  %73 = load i64*, i64** %5, align 8
  store i64 %72, i64* %73, align 8
  br label %74

74:                                               ; preds = %71, %15
  %75 = load i32*, i32** %10, align 8
  store i32* %75, i32** %3, align 8
  br label %76

76:                                               ; preds = %74, %14
  %77 = load i32*, i32** %3, align 8
  ret i32* %77
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @isxdigit(i8 signext) #1

declare dso_local i32 @char_to_hexnum(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
