; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tcompression.c_tsDecompressBoolRLEImp.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tcompression.c_tsDecompressBoolRLEImp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsDecompressBoolRLEImp(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %3, %46
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %7, align 4
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i8, i8* %13, i64 %16
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %9, align 1
  %19 = load i8, i8* %9, align 1
  %20 = sext i8 %19 to i32
  %21 = ashr i32 %20, 1
  %22 = call signext i8 @INT8MASK(i32 7)
  %23 = sext i8 %22 to i32
  %24 = and i32 %21, %23
  store i32 %24, i32* %10, align 4
  %25 = load i8, i8* %9, align 1
  %26 = sext i8 %25 to i32
  %27 = call signext i8 @INT8MASK(i32 1)
  %28 = sext i8 %27 to i32
  %29 = and i32 %26, %28
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %11, align 1
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %11, align 1
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @memset(i8* %34, i8 signext %35, i32 %36)
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %8, align 4
  %40 = add i32 %39, %38
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %12
  %45 = load i32, i32* %5, align 4
  ret i32 %45

46:                                               ; preds = %12
  br label %12
}

declare dso_local signext i8 @INT8MASK(i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
