; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_memory.c_MappedMemoryLoad.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_memory.c_MappedMemoryLoad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MappedMemoryLoad(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %10, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %62

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %62

19:                                               ; preds = %14
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* @SEEK_END, align 4
  %22 = call i32 @fseek(i32* %20, i32 0, i32 %21)
  %23 = load i32*, i32** %6, align 8
  %24 = call i64 @ftell(i32* %23)
  store i64 %24, i64* %7, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* @SEEK_SET, align 4
  %27 = call i32 @fseek(i32* %25, i32 0, i32 %26)
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @malloc(i64 %28)
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %8, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %19
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @fclose(i32* %33)
  store i32 -2, i32* %3, align 4
  br label %62

35:                                               ; preds = %19
  %36 = load i32*, i32** %8, align 8
  %37 = bitcast i32* %36 to i8*
  %38 = load i64, i64* %7, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = call i64 @fread(i8* %37, i32 1, i64 %38, i32* %39)
  store i64 %40, i64* %10, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @fclose(i32* %41)
  store i64 0, i64* %9, align 8
  br label %43

43:                                               ; preds = %56, %35
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %48, %49
  %51 = load i32*, i32** %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @MappedMemoryWriteByte(i64 %50, i32 %54)
  br label %56

56:                                               ; preds = %47
  %57 = load i64, i64* %9, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %9, align 8
  br label %43

59:                                               ; preds = %43
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @free(i32* %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %59, %32, %18, %13
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @MappedMemoryWriteByte(i64, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
