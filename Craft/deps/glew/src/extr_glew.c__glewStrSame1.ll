; ModuleID = '/home/carl/AnghaBench/Craft/deps/glew/src/extr_glew.c__glewStrSame1.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glew/src/extr_glew.c__glewStrSame1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_TRUE = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, i8*, i64)* @_glewStrSame1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_glewStrSame1(i8** %0, i64* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8** %0, i8*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  br label %11

11:                                               ; preds = %43, %4
  %12 = load i64*, i64** %7, align 8
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %11
  %16 = load i8**, i8*** %6, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 32
  br i1 %20, label %39, label %21

21:                                               ; preds = %15
  %22 = load i8**, i8*** %6, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 10
  br i1 %26, label %39, label %27

27:                                               ; preds = %21
  %28 = load i8**, i8*** %6, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 13
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load i8**, i8*** %6, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 9
  br label %39

39:                                               ; preds = %33, %27, %21, %15
  %40 = phi i1 [ true, %27 ], [ true, %21 ], [ true, %15 ], [ %38, %33 ]
  br label %41

41:                                               ; preds = %39, %11
  %42 = phi i1 [ false, %11 ], [ %40, %39 ]
  br i1 %42, label %43, label %50

43:                                               ; preds = %41
  %44 = load i8**, i8*** %6, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %44, align 8
  %47 = load i64*, i64** %7, align 8
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, -1
  store i64 %49, i64* %47, align 8
  br label %11

50:                                               ; preds = %41
  %51 = load i64*, i64** %7, align 8
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %106

55:                                               ; preds = %50
  store i64 0, i64* %10, align 8
  br label %56

56:                                               ; preds = %86, %55
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %84

60:                                               ; preds = %56
  %61 = load i8**, i8*** %6, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %84

66:                                               ; preds = %60
  %67 = load i8*, i8** %8, align 8
  %68 = load i64, i64* %10, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %84

71:                                               ; preds = %66
  %72 = load i8**, i8*** %6, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = load i64, i64* %10, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = load i8*, i8** %8, align 8
  %79 = load i64, i64* %10, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %77, %82
  br label %84

84:                                               ; preds = %71, %66, %60, %56
  %85 = phi i1 [ false, %66 ], [ false, %60 ], [ false, %56 ], [ %83, %71 ]
  br i1 %85, label %86, label %89

86:                                               ; preds = %84
  %87 = load i64, i64* %10, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %10, align 8
  br label %56

89:                                               ; preds = %84
  %90 = load i64, i64* %10, align 8
  %91 = load i64, i64* %9, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %89
  %94 = load i8**, i8*** %6, align 8
  %95 = load i8*, i8** %94, align 8
  %96 = load i64, i64* %9, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  %98 = load i8**, i8*** %6, align 8
  store i8* %97, i8** %98, align 8
  %99 = load i64*, i64** %7, align 8
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %9, align 8
  %102 = sub nsw i64 %100, %101
  %103 = load i64*, i64** %7, align 8
  store i64 %102, i64* %103, align 8
  %104 = load i32, i32* @GL_TRUE, align 4
  store i32 %104, i32* %5, align 4
  br label %108

105:                                              ; preds = %89
  br label %106

106:                                              ; preds = %105, %50
  %107 = load i32, i32* @GL_FALSE, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %106, %93
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
