; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tsocket.c_taosWriteMsg.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tsocket.c_taosWriteMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taosWriteMsg(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %10, align 8
  %12 = load i32, i32* %7, align 4
  store i32 %12, i32* %8, align 4
  br label %13

13:                                               ; preds = %39, %29, %3
  %14 = load i32, i32* %8, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = load i8*, i8** %10, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = call i64 @taosWriteSocket(i32 %17, i8* %18, i64 %20)
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %16
  %26 = load i64, i64* @errno, align 8
  %27 = load i64, i64* @EINTR, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %13

30:                                               ; preds = %25
  store i32 -1, i32* %4, align 4
  br label %44

31:                                               ; preds = %16
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %10, align 8
  br label %39

39:                                               ; preds = %31
  br label %13

40:                                               ; preds = %13
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 %41, %42
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %40, %30
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i64 @taosWriteSocket(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
