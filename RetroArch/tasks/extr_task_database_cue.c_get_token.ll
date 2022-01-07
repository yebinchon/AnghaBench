; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_database_cue.c_get_token.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_database_cue.c_get_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64)* @get_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_token(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %3, %26, %38, %50, %66
  %14 = load i32*, i32** %5, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @intfstream_read(i32* %14, i8* %15, i32 1)
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %67

21:                                               ; preds = %13
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32, i32* @errno, align 4
  switch i32 %25, label %27 [
    i32 128, label %26
    i32 129, label %26
  ]

26:                                               ; preds = %24, %24
  br label %13

27:                                               ; preds = %24
  %28 = load i32, i32* @errno, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %67

30:                                               ; preds = %21
  %31 = load i8*, i8** %8, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  switch i32 %33, label %54 [
    i32 32, label %34
    i32 9, label %34
    i32 13, label %34
    i32 10, label %34
    i32 34, label %46
  ]

34:                                               ; preds = %30, %30, %30, %30
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = icmp eq i8* %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %13

39:                                               ; preds = %34
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i8*, i8** %8, align 8
  store i8 0, i8* %43, align 1
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %67

45:                                               ; preds = %39
  br label %54

46:                                               ; preds = %30
  %47 = load i8*, i8** %8, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = icmp eq i8* %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 1, i32* %10, align 4
  br label %13

51:                                               ; preds = %46
  %52 = load i8*, i8** %8, align 8
  store i8 0, i8* %52, align 1
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %67

54:                                               ; preds = %30, %45
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i64, i64* %7, align 8
  %61 = trunc i64 %60 to i32
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load i8*, i8** %8, align 8
  store i8 0, i8* %64, align 1
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %4, align 4
  br label %67

66:                                               ; preds = %54
  br label %13

67:                                               ; preds = %63, %51, %42, %27, %20
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i64 @intfstream_read(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
