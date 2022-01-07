; ModuleID = '/home/carl/AnghaBench/darwin-xnu/pexpert/gen/extr_pe_gen.c_PE_get_random_seed.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/pexpert/gen/extr_pe_gen.c_PE_get_random_seed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@kSuccess = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"random-seed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PE_get_random_seed(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %11 = call i64 @DTLookupEntry(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %5)
  %12 = load i64, i64* @kSuccess, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %56

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @DTGetProperty(i32 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %7, i32* %6)
  %17 = load i64, i64* @kSuccess, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %56

19:                                               ; preds = %14
  store i32 0, i32* %10, align 4
  %20 = load i8*, i8** %7, align 8
  store i8* %20, i8** %8, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ugt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %24, %19
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %43, %26
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %27
  %32 = load i8*, i8** %8, align 8
  %33 = load i8, i8* %32, align 1
  %34 = load i8*, i8** %3, align 8
  store i8 %33, i8* %34, align 1
  %35 = load i8*, i8** %8, align 8
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %10, align 4
  %41 = add i32 %40, %39
  store i32 %41, i32* %10, align 4
  %42 = load i8*, i8** %8, align 8
  store i8 0, i8* %42, align 1
  br label %43

43:                                               ; preds = %31
  %44 = load i32, i32* %9, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %9, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %8, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %3, align 8
  br label %27

50:                                               ; preds = %27
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %50
  br label %56

56:                                               ; preds = %55, %14, %2
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i64 @DTLookupEntry(i32*, i8*, i32*) #1

declare dso_local i64 @DTGetProperty(i32, i8*, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
