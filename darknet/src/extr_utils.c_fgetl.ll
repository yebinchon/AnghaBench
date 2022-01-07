; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_utils.c_fgetl.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_utils.c_fgetl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@INT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fgetl(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @feof(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %95

12:                                               ; preds = %1
  store i64 512, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = mul i64 %13, 1
  %15 = call i8* @malloc(i64 %14)
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @fgets(i8* %16, i64 %17, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %12
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @free(i8* %22)
  store i8* null, i8** %2, align 8
  br label %95

24:                                               ; preds = %12
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @strlen(i8* %25)
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %71, %24
  %28 = load i8*, i8** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = sub i64 %29, 1
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 10
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load i32*, i32** %3, align 8
  %37 = call i64 @feof(i32* %36)
  %38 = icmp ne i64 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %35, %27
  %41 = phi i1 [ false, %27 ], [ %39, %35 ]
  br i1 %41, label %42, label %80

42:                                               ; preds = %40
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %4, align 8
  %45 = sub i64 %44, 1
  %46 = icmp eq i64 %43, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = load i64, i64* %4, align 8
  %49 = mul i64 %48, 2
  store i64 %49, i64* %4, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load i64, i64* %4, align 8
  %52 = mul i64 %51, 1
  %53 = call i8* @realloc(i8* %50, i64 %52)
  store i8* %53, i8** %5, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %47
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %57)
  %59 = call i32 (...) @malloc_error()
  br label %60

60:                                               ; preds = %56, %47
  br label %61

61:                                               ; preds = %60, %42
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* %6, align 8
  %64 = sub i64 %62, %63
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* @INT_MAX, align 8
  %67 = icmp ugt i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i64, i64* @INT_MAX, align 8
  %70 = sub i64 %69, 1
  store i64 %70, i64* %7, align 8
  br label %71

71:                                               ; preds = %68, %61
  %72 = load i8*, i8** %5, align 8
  %73 = load i64, i64* %6, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = load i64, i64* %7, align 8
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @fgets(i8* %74, i64 %75, i32* %76)
  %78 = load i8*, i8** %5, align 8
  %79 = call i64 @strlen(i8* %78)
  store i64 %79, i64* %6, align 8
  br label %27

80:                                               ; preds = %40
  %81 = load i8*, i8** %5, align 8
  %82 = load i64, i64* %6, align 8
  %83 = sub i64 %82, 1
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 10
  br i1 %87, label %88, label %93

88:                                               ; preds = %80
  %89 = load i8*, i8** %5, align 8
  %90 = load i64, i64* %6, align 8
  %91 = sub i64 %90, 1
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  store i8 0, i8* %92, align 1
  br label %93

93:                                               ; preds = %88, %80
  %94 = load i8*, i8** %5, align 8
  store i8* %94, i8** %2, align 8
  br label %95

95:                                               ; preds = %93, %21, %11
  %96 = load i8*, i8** %2, align 8
  ret i8* %96
}

declare dso_local i64 @feof(i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @fgets(i8*, i64, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @malloc_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
