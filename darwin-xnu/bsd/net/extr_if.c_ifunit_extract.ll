; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_ifunit_extract.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_ifunit_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifunit_extract(i8* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %4
  %18 = load i8*, i8** %7, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* %8, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32*, i32** %9, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %20, %17, %4
  store i32 -1, i32* %5, align 4
  br label %104

27:                                               ; preds = %23
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @strlen(i8* %28)
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = icmp ult i64 %30, 2
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %27
  store i32 -1, i32* %5, align 4
  br label %104

37:                                               ; preds = %32
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %11, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = getelementptr inbounds i8, i8* %40, i64 -1
  store i8* %41, i8** %10, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = load i8, i8* %42, align 1
  store i8 %43, i8* %13, align 1
  %44 = load i8, i8* %13, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp slt i32 %45, 48
  br i1 %46, label %51, label %47

47:                                               ; preds = %37
  %48 = load i8, i8* %13, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp sgt i32 %49, 57
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %37
  store i32 -1, i32* %5, align 4
  br label %104

52:                                               ; preds = %47
  store i32 0, i32* %14, align 4
  store i64 1, i64* %12, align 8
  br label %53

53:                                               ; preds = %86, %52
  %54 = load i8*, i8** %10, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = icmp eq i8* %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 -1, i32* %5, align 4
  br label %104

58:                                               ; preds = %53
  %59 = load i8, i8* %13, align 1
  %60 = sext i8 %59 to i32
  %61 = sub nsw i32 %60, 48
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %12, align 8
  %64 = mul i64 %62, %63
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = add i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp sgt i32 %69, 1000000
  br i1 %70, label %71, label %72

71:                                               ; preds = %58
  store i32 -1, i32* %5, align 4
  br label %104

72:                                               ; preds = %58
  %73 = load i64, i64* %12, align 8
  %74 = mul i64 %73, 10
  store i64 %74, i64* %12, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 -1
  store i8* %76, i8** %10, align 8
  %77 = load i8, i8* %76, align 1
  store i8 %77, i8* %13, align 1
  br label %78

78:                                               ; preds = %72
  %79 = load i8, i8* %13, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp sge i32 %80, 48
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i8, i8* %13, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp sle i32 %84, 57
  br label %86

86:                                               ; preds = %82, %78
  %87 = phi i1 [ false, %78 ], [ %85, %82 ]
  br i1 %87, label %53, label %88

88:                                               ; preds = %86
  %89 = load i8*, i8** %10, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = ptrtoint i8* %89 to i64
  %92 = ptrtoint i8* %90 to i64
  %93 = sub i64 %91, %92
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %11, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = load i64, i64* %11, align 8
  %98 = call i32 @bcopy(i8* %95, i8* %96, i64 %97)
  %99 = load i8*, i8** %7, align 8
  %100 = load i64, i64* %11, align 8
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8 0, i8* %101, align 1
  %102 = load i32, i32* %14, align 4
  %103 = load i32*, i32** %9, align 8
  store i32 %102, i32* %103, align 4
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %88, %71, %57, %51, %36, %26
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
