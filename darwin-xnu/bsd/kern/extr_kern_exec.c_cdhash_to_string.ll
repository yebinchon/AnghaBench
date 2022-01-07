; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exec.c_cdhash_to_string.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exec.c_cdhash_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CS_CDHASH_STRING_SIZE = common dso_local global i32 0, align 4
@cdhash_to_string.nibble = internal constant [17 x i8] c"0123456789abcdef\00", align 16
@CS_CDHASH_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @cdhash_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdhash_to_string(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* @CS_CDHASH_STRING_SIZE, align 4
  %7 = zext i32 %6 to i64
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %43, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @CS_CDHASH_LEN, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %46

12:                                               ; preds = %8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 240
  %19 = ashr i32 %18, 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [17 x i8], [17 x i8]* @cdhash_to_string.nibble, i64 0, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = load i8*, i8** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = mul nsw i32 %24, 2
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  store i8 %22, i8* %27, align 1
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 15
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [17 x i8], [17 x i8]* @cdhash_to_string.nibble, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = load i8*, i8** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = mul nsw i32 %38, 2
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %37, i64 %41
  store i8 %36, i8* %42, align 1
  br label %43

43:                                               ; preds = %12
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %8

46:                                               ; preds = %8
  %47 = load i8*, i8** %3, align 8
  %48 = load i32, i32* @CS_CDHASH_STRING_SIZE, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  store i8 0, i8* %51, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
