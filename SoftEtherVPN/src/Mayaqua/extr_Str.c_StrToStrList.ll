; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_StrToStrList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_StrToStrList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @StrToStrList(i8* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %47

13:                                               ; preds = %2
  %14 = call i32* @NewListFast(i32* null)
  store i32* %14, i32** %6, align 8
  store i64 0, i64* %9, align 8
  br label %15

15:                                               ; preds = %13, %26
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %45

20:                                               ; preds = %15
  %21 = load i8*, i8** %4, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %45

26:                                               ; preds = %20
  %27 = load i8*, i8** %4, align 8
  %28 = call i64 @StrSize(i8* %27)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i8* @ZeroMalloc(i64 %29)
  store i8* %30, i8** %7, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @StrCpy(i8* %31, i64 %32, i8* %33)
  %35 = load i32*, i32** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @Add(i32* %35, i8* %36)
  %38 = load i8*, i8** %4, align 8
  %39 = call i64 @StrLen(i8* %38)
  %40 = add nsw i64 %39, 1
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 %40
  store i8* %42, i8** %4, align 8
  %43 = load i64, i64* %9, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %9, align 8
  br label %15

45:                                               ; preds = %25, %19
  %46 = load i32*, i32** %6, align 8
  store i32* %46, i32** %3, align 8
  br label %47

47:                                               ; preds = %45, %12
  %48 = load i32*, i32** %3, align 8
  ret i32* %48
}

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i64 @StrSize(i8*) #1

declare dso_local i8* @ZeroMalloc(i64) #1

declare dso_local i32 @StrCpy(i8*, i64, i8*) #1

declare dso_local i32 @Add(i32*, i8*) #1

declare dso_local i64 @StrLen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
