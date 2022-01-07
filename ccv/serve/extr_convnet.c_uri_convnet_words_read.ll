; ModuleID = '/home/carl/AnghaBench/ccv/serve/extr_convnet.c_uri_convnet_words_read.c'
source_filename = "/home/carl/AnghaBench/ccv/serve/extr_convnet.c_uri_convnet_words_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @uri_convnet_words_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @uri_convnet_words_read(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32* @fopen(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %68

14:                                               ; preds = %1
  %15 = call i32* @ccv_array_new(i32 8, i32 32, i32 0)
  store i32* %15, i32** %5, align 8
  store i64 1024, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i64 @malloc(i32 %17)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %7, align 8
  br label %20

20:                                               ; preds = %42, %14
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @getline(i8** %7, i64* %6, i32* %21)
  store i32 %22, i32* %8, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %64

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %39, %24
  %26 = load i32, i32* %8, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = call i64 @isspace(i8 signext %34)
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %28, %25
  %38 = phi i1 [ false, %25 ], [ %36, %28 ]
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %8, align 4
  br label %25

42:                                               ; preds = %37
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8 0, i8* %46, align 1
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = mul i64 1, %49
  %51 = trunc i64 %50 to i32
  %52 = call i64 @malloc(i32 %51)
  %53 = inttoptr i64 %52 to i8*
  store i8* %53, i8** %9, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = mul i64 1, %58
  %60 = trunc i64 %59 to i32
  %61 = call i32 @memcpy(i8* %54, i8* %55, i32 %60)
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @ccv_array_push(i32* %62, i8** %9)
  br label %20

64:                                               ; preds = %20
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load i32*, i32** %5, align 8
  store i32* %67, i32** %2, align 8
  br label %69

68:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %69

69:                                               ; preds = %68, %64
  %70 = load i32*, i32** %2, align 8
  ret i32* %70
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32* @ccv_array_new(i32, i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ccv_array_push(i32*, i8**) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
