; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonstreamsfile_stream.c_filestream_getline.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonstreamsfile_stream.c_filestream_getline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @filestream_getline(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* null, i8** %4, align 8
  store i64 8, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %9 = call i64 @malloc(i32 9)
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** %8, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i8*, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %13, %1
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @free(i8* %20)
  br label %22

22:                                               ; preds = %19, %16
  store i8* null, i8** %2, align 8
  br label %68

23:                                               ; preds = %13
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @filestream_getc(i32* %24)
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %54, %23
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @EOF, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 10
  br label %33

33:                                               ; preds = %30, %26
  %34 = phi i1 [ false, %26 ], [ %32, %30 ]
  br i1 %34, label %35, label %63

35:                                               ; preds = %33
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %35
  %40 = load i64, i64* %5, align 8
  %41 = mul i64 %40, 2
  store i64 %41, i64* %5, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %43, 1
  %45 = call i64 @realloc(i8* %42, i64 %44)
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %4, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %39
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @free(i8* %50)
  store i8* null, i8** %2, align 8
  br label %68

52:                                               ; preds = %39
  %53 = load i8*, i8** %4, align 8
  store i8* %53, i8** %8, align 8
  br label %54

54:                                               ; preds = %52, %35
  %55 = load i32, i32* %7, align 4
  %56 = trunc i32 %55 to i8
  %57 = load i8*, i8** %8, align 8
  %58 = load i64, i64* %6, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %6, align 8
  %60 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8 %56, i8* %60, align 1
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @filestream_getc(i32* %61)
  store i32 %62, i32* %7, align 4
  br label %26

63:                                               ; preds = %33
  %64 = load i8*, i8** %8, align 8
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8 0, i8* %66, align 1
  %67 = load i8*, i8** %8, align 8
  store i8* %67, i8** %2, align 8
  br label %68

68:                                               ; preds = %63, %49, %22
  %69 = load i8*, i8** %2, align 8
  ret i8* %69
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @filestream_getc(i32*) #1

declare dso_local i64 @realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
