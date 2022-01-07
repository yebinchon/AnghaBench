; ModuleID = '/home/carl/AnghaBench/capstone/suite/fuzz/extr_onefile.c_main.c'
source_filename = "/home/carl/AnghaBench/capstone/suite/fuzz/extr_onefile.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 2
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %71

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %14, align 8
  %16 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 2, i32* %3, align 4
  br label %71

20:                                               ; preds = %12
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @SEEK_END, align 4
  %23 = call i64 @fseek(i32* %21, i64 0, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @fclose(i32* %26)
  store i32 2, i32* %3, align 4
  br label %71

28:                                               ; preds = %20
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @ftell(i32* %29)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp eq i64 %31, -1
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @fclose(i32* %34)
  store i32 2, i32* %3, align 4
  br label %71

36:                                               ; preds = %28
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* @SEEK_SET, align 4
  %39 = call i64 @fseek(i32* %37, i64 0, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @fclose(i32* %42)
  store i32 2, i32* %3, align 4
  br label %71

44:                                               ; preds = %36
  %45 = load i64, i64* %8, align 8
  %46 = call i32* @malloc(i64 %45)
  store i32* %46, i32** %7, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @fclose(i32* %50)
  store i32 2, i32* %3, align 4
  br label %71

52:                                               ; preds = %44
  %53 = load i32*, i32** %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @fread(i32* %53, i64 %54, i32 1, i32* %55)
  %57 = icmp ne i32 %56, 1
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @fclose(i32* %59)
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @free(i32* %61)
  store i32 2, i32* %3, align 4
  br label %71

63:                                               ; preds = %52
  %64 = load i32*, i32** %7, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @LLVMFuzzerTestOneInput(i32* %64, i64 %65)
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @free(i32* %67)
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @fclose(i32* %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %63, %58, %49, %41, %33, %25, %19, %11
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fseek(i32*, i64, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @fread(i32*, i64, i32, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @LLVMFuzzerTestOneInput(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
