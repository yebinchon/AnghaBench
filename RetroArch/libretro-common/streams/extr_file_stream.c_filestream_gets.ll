; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/streams/extr_file_stream.c_filestream_gets.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/streams/extr_file_stream.c_filestream_gets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @filestream_gets(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i8*, i8** %6, align 8
  store i8* %10, i8** %9, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %50

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = add i64 %15, -1
  store i64 %16, i64* %7, align 8
  br label %17

17:                                               ; preds = %35, %14
  %18 = load i64, i64* %7, align 8
  %19 = icmp ugt i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %17
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @filestream_getc(i32* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @EOF, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %38

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  %28 = trunc i32 %27 to i8
  %29 = load i8*, i8** %9, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %9, align 8
  store i8 %28, i8* %29, align 1
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 10
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %38

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %7, align 8
  %37 = add i64 %36, -1
  store i64 %37, i64* %7, align 8
  br label %17

38:                                               ; preds = %33, %25, %17
  %39 = load i8*, i8** %9, align 8
  store i8 0, i8* %39, align 1
  %40 = load i8*, i8** %9, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = icmp eq i8* %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @EOF, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i8* null, i8** %4, align 8
  br label %50

48:                                               ; preds = %43, %38
  %49 = load i8*, i8** %6, align 8
  store i8* %49, i8** %4, align 8
  br label %50

50:                                               ; preds = %48, %47, %13
  %51 = load i8*, i8** %4, align 8
  ret i8* %51
}

declare dso_local i32 @filestream_getc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
