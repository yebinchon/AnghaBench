; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/dictBuilder/extr_divsufsort.c_divsufsort.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/dictBuilder/extr_divsufsort.c_divsufsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUCKET_A_SIZE = common dso_local global i32 0, align 4
@BUCKET_B_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @divsufsort(i8* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %4
  %17 = load i32*, i32** %7, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %16, %4
  store i32 -1, i32* %5, align 4
  br label %99

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %99

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 0, i32* %32, align 4
  store i32 0, i32* %5, align 4
  br label %99

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %56

36:                                               ; preds = %33
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp slt i32 %40, %44
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %12, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %12, align 4
  %49 = xor i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  store i32 0, i32* %51, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 1, i32* %55, align 4
  store i32 0, i32* %5, align 4
  br label %99

56:                                               ; preds = %33
  br label %57

57:                                               ; preds = %56
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* @BUCKET_A_SIZE, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 4
  %63 = trunc i64 %62 to i32
  %64 = call i64 @malloc(i32 %63)
  %65 = inttoptr i64 %64 to i32*
  store i32* %65, i32** %10, align 8
  %66 = load i32, i32* @BUCKET_B_SIZE, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = call i64 @malloc(i32 %69)
  %71 = inttoptr i64 %70 to i32*
  store i32* %71, i32** %11, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %92

74:                                               ; preds = %59
  %75 = load i32*, i32** %11, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %92

77:                                               ; preds = %74
  %78 = load i8*, i8** %6, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @sort_typeBstar(i8* %78, i32* %79, i32* %80, i32* %81, i32 %82, i32 %83)
  store i32 %84, i32* %12, align 4
  %85 = load i8*, i8** %6, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = load i32*, i32** %10, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @construct_SA(i8* %85, i32* %86, i32* %87, i32* %88, i32 %89, i32 %90)
  br label %93

92:                                               ; preds = %74, %59
  store i32 -2, i32* %13, align 4
  br label %93

93:                                               ; preds = %92, %77
  %94 = load i32*, i32** %11, align 8
  %95 = call i32 @free(i32* %94)
  %96 = load i32*, i32** %10, align 8
  %97 = call i32 @free(i32* %96)
  %98 = load i32, i32* %13, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %93, %36, %30, %26, %22
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @sort_typeBstar(i8*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @construct_SA(i8*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
