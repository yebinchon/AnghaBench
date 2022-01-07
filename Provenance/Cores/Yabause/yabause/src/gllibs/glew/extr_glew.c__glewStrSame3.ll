; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gllibs/glew/extr_glew.c__glewStrSame3.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gllibs/glew/extr_glew.c__glewStrSame3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_TRUE = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, i8*, i64)* @_glewStrSame3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_glewStrSame3(i8** %0, i64* %1, i8* %2, i64 %3) #0 {
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
  %11 = load i64*, i64** %7, align 8
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %103

15:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  br label %16

16:                                               ; preds = %46, %15
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %16
  %21 = load i8**, i8*** %6, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load i64, i64* %10, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %20
  %27 = load i8*, i8** %8, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load i8**, i8*** %6, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = load i8*, i8** %8, align 8
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %37, %42
  br label %44

44:                                               ; preds = %31, %26, %20, %16
  %45 = phi i1 [ false, %26 ], [ false, %20 ], [ false, %16 ], [ %43, %31 ]
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i64, i64* %10, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %10, align 8
  br label %16

49:                                               ; preds = %44
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %102

53:                                               ; preds = %49
  %54 = load i64*, i64** %7, align 8
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %9, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %90, label %58

58:                                               ; preds = %53
  %59 = load i8**, i8*** %6, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = load i64, i64* %10, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 32
  br i1 %65, label %90, label %66

66:                                               ; preds = %58
  %67 = load i8**, i8*** %6, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = load i64, i64* %10, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 10
  br i1 %73, label %90, label %74

74:                                               ; preds = %66
  %75 = load i8**, i8*** %6, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = load i64, i64* %10, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 13
  br i1 %81, label %90, label %82

82:                                               ; preds = %74
  %83 = load i8**, i8*** %6, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = load i64, i64* %10, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 9
  br i1 %89, label %90, label %102

90:                                               ; preds = %82, %74, %66, %58, %53
  %91 = load i8**, i8*** %6, align 8
  %92 = load i8*, i8** %91, align 8
  %93 = load i64, i64* %9, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  %95 = load i8**, i8*** %6, align 8
  store i8* %94, i8** %95, align 8
  %96 = load i64*, i64** %7, align 8
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %9, align 8
  %99 = sub nsw i64 %97, %98
  %100 = load i64*, i64** %7, align 8
  store i64 %99, i64* %100, align 8
  %101 = load i32, i32* @GL_TRUE, align 4
  store i32 %101, i32* %5, align 4
  br label %105

102:                                              ; preds = %82, %49
  br label %103

103:                                              ; preds = %102, %4
  %104 = load i32, i32* @GL_FALSE, align 4
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %103, %90
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
