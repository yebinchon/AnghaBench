; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp1163.h_cp1163_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp1163.h_cp1163_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp1129_page00 = common dso_local global i8* null, align 8
@cp1129_page03 = common dso_local global i8* null, align 8
@cp1163_page20 = common dso_local global i8* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @cp1163_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp1163_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8 0, i8* %10, align 1
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 160
  br i1 %12, label %22, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 168
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 164
  br i1 %18, label %22, label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 208
  br i1 %21, label %22, label %26

22:                                               ; preds = %19, %16, %4
  %23 = load i32, i32* %8, align 4
  %24 = trunc i32 %23 to i8
  %25 = load i8*, i8** %7, align 8
  store i8 %24, i8* %25, align 1
  store i32 1, i32* %5, align 4
  br label %82

26:                                               ; preds = %19
  %27 = load i32, i32* %8, align 4
  %28 = icmp sge i32 %27, 168
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 440
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i8*, i8** @cp1129_page00, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %34, 168
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %10, align 1
  br label %72

39:                                               ; preds = %29, %26
  %40 = load i32, i32* %8, align 4
  %41 = icmp sge i32 %40, 768
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 808
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i8*, i8** @cp1129_page03, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sub nsw i32 %47, 768
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  %51 = load i8, i8* %50, align 1
  store i8 %51, i8* %10, align 1
  br label %71

52:                                               ; preds = %42, %39
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 8254
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i8 -81, i8* %10, align 1
  br label %70

56:                                               ; preds = %52
  %57 = load i32, i32* %8, align 4
  %58 = icmp sge i32 %57, 8360
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 8368
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i8*, i8** @cp1163_page20, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sub nsw i32 %64, 8360
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  %68 = load i8, i8* %67, align 1
  store i8 %68, i8* %10, align 1
  br label %69

69:                                               ; preds = %62, %59, %56
  br label %70

70:                                               ; preds = %69, %55
  br label %71

71:                                               ; preds = %70, %45
  br label %72

72:                                               ; preds = %71, %32
  br label %73

73:                                               ; preds = %72
  %74 = load i8, i8* %10, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i8, i8* %10, align 1
  %79 = load i8*, i8** %7, align 8
  store i8 %78, i8* %79, align 1
  store i32 1, i32* %5, align 4
  br label %82

80:                                               ; preds = %73
  %81 = load i32, i32* @RET_ILUNI, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %80, %77, %22
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
