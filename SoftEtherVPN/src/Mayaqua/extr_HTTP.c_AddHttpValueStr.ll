; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_HTTP.c_AddHttpValueStr.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_HTTP.c_AddHttpValueStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@INFINITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AddHttpValueStr(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @IsEmptyStr(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %64

17:                                               ; preds = %12
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @EnSafeHttpHeaderValueStr(i8* %18, i8 signext 32)
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @SearchStr(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @INFINITE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %64

26:                                               ; preds = %17
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @StrLen(i8* %29)
  %31 = icmp sge i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %64

33:                                               ; preds = %26
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i8* @Malloc(i32 %35)
  store i8* %36, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @Copy(i8* %37, i8* %38, i32 %39)
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  store i8 0, i8* %44, align 1
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  store i8* %49, i8** %9, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = call i32* @NewHttpValue(i8* %50, i8* %51)
  store i32* %52, i32** %6, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %33
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @Free(i8* %56)
  store i32 0, i32* %3, align 4
  br label %64

58:                                               ; preds = %33
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @Free(i8* %59)
  %61 = load i32*, i32** %4, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @AddHttpValue(i32* %61, i32* %62)
  store i32 1, i32* %3, align 4
  br label %64

64:                                               ; preds = %58, %55, %32, %25, %16
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @IsEmptyStr(i8*) #1

declare dso_local i32 @EnSafeHttpHeaderValueStr(i8*, i8 signext) #1

declare dso_local i32 @SearchStr(i8*, i8*, i32) #1

declare dso_local i32 @StrLen(i8*) #1

declare dso_local i8* @Malloc(i32) #1

declare dso_local i32 @Copy(i8*, i8*, i32) #1

declare dso_local i32* @NewHttpValue(i8*, i8*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i32 @AddHttpValue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
