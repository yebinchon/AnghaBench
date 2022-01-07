; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ui_basic.c_Print.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ui_basic.c_Print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"%.*s...%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i32, i32, i32)* @Print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Print(i32 %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [40 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* %12, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %6
  %22 = load i32, i32* %12, align 4
  %23 = sub nsw i32 %22, 3
  %24 = ashr i32 %23, 1
  store i32 %24, i32* %14, align 4
  %25 = load i8*, i8** %9, align 8
  %26 = call i64 @strlen(i8* %25)
  %27 = load i32, i32* %12, align 4
  %28 = sub nsw i32 %27, 3
  %29 = load i32, i32* %14, align 4
  %30 = sub nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = sub i64 %26, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %15, align 4
  %34 = getelementptr inbounds [40 x i8], [40 x i8]* %13, i64 0, i64 0
  %35 = load i32, i32* %14, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* %15, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %34, i64 40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %35, i8* %36, i8* %40)
  %42 = getelementptr inbounds [40 x i8], [40 x i8]* %13, i64 0, i64 0
  store i8* %42, i8** %9, align 8
  br label %43

43:                                               ; preds = %21, %6
  br label %44

44:                                               ; preds = %49, %43
  %45 = load i8*, i8** %9, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %9, align 8
  %54 = load i8, i8* %52, align 1
  %55 = sext i8 %54 to i32
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 (i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @Plot to i32 (i32, i32, i32, i32, i32, ...)*)(i32 %50, i32 %51, i32 %55, i32 %56, i32 %58)
  br label %44

60:                                               ; preds = %44
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local i32 @Plot(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
