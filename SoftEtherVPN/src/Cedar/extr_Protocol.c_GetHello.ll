; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_GetHello.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_GetHello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"build\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@SHA1_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetHello(i32* %0, i8* %1, i32* %2, i32* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %6
  %17 = load i8*, i8** %9, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load i32*, i32** %10, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** %12, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19, %16, %6
  store i32 0, i32* %7, align 4
  br label %52

26:                                               ; preds = %22
  %27 = load i32*, i32** %8, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @PackGetStr(i32* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %29)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %52

33:                                               ; preds = %26
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @PackGetInt(i32* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32*, i32** %10, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @PackGetInt(i32* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32*, i32** %11, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = call i64 @PackGetDataSize(i32* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i64, i64* @SHA1_SIZE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %52

45:                                               ; preds = %33
  %46 = load i32*, i32** %8, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @PackGetData(i32* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  br label %52

51:                                               ; preds = %45
  store i32 1, i32* %7, align 4
  br label %52

52:                                               ; preds = %51, %50, %44, %32, %25
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @PackGetStr(i32*, i8*, i8*, i32) #1

declare dso_local i32 @PackGetInt(i32*, i8*) #1

declare dso_local i64 @PackGetDataSize(i32*, i8*) #1

declare dso_local i32 @PackGetData(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
