; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_memory.c_YabSaveStateBuffer.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_memory.c_YabSaveStateBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @YabSaveStateBuffer(i8** %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8** %0, i8*** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 0, i64* %8, align 8
  %9 = load i8**, i8*** %4, align 8
  %10 = icmp ne i8** %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i8**, i8*** %4, align 8
  store i8* null, i8** %12, align 8
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i64*, i64** %5, align 8
  store i64 0, i64* %14, align 8
  %15 = call i32* (...) @tmpfile()
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @YabSaveStateStream(i32* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @fclose(i32* %21)
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %50

24:                                               ; preds = %13
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* @SEEK_END, align 4
  %27 = call i32 @fseek(i32* %25, i32 0, i32 %26)
  %28 = load i32*, i32** %6, align 8
  %29 = call i64 @ftell(i32* %28)
  %30 = load i64*, i64** %5, align 8
  store i64 %29, i64* %30, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* @SEEK_SET, align 4
  %33 = call i32 @fseek(i32* %31, i32 0, i32 %32)
  %34 = load i8**, i8*** %4, align 8
  %35 = icmp ne i8** %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %24
  %37 = load i64*, i64** %5, align 8
  %38 = load i64, i64* %37, align 8
  %39 = call i8* @malloc(i64 %38)
  %40 = load i8**, i8*** %4, align 8
  store i8* %39, i8** %40, align 8
  %41 = load i8**, i8*** %4, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = load i64*, i64** %5, align 8
  %44 = load i64, i64* %43, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i64 @fread(i8* %42, i32 1, i64 %44, i32* %45)
  store i64 %46, i64* %8, align 8
  br label %47

47:                                               ; preds = %36, %24
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @fclose(i32* %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %47, %20
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32* @tmpfile(...) #1

declare dso_local i32 @YabSaveStateStream(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
