; ModuleID = '/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/stdlib/extr_strtol.c_strtol.c'
source_filename = "/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/stdlib/extr_strtol.c_strtol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ABS_LONG_MIN = common dso_local global i64 0, align 8
@LONG_MIN = common dso_local global i64 0, align 8
@LONG_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @strtol(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %10, align 8
  br label %12

12:                                               ; preds = %17, %3
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = call i64 @isspace(i8 signext %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %5, align 8
  br label %12

20:                                               ; preds = %12
  %21 = load i8*, i8** %5, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 45
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = call i64 @isalnum(i8 signext %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  store i32 -1, i32* %8, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %5, align 8
  br label %34

34:                                               ; preds = %31, %25, %20
  %35 = load i8*, i8** %5, align 8
  %36 = load i8**, i8*** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @strtoul(i8* %35, i8** %36, i32 %37)
  store i64 %38, i64* %9, align 8
  %39 = load i8**, i8*** %6, align 8
  %40 = icmp ne i8** %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load i8**, i8*** %6, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = icmp eq i8* %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i8*, i8** %10, align 8
  %48 = load i8**, i8*** %6, align 8
  store i8* %47, i8** %48, align 8
  br label %49

49:                                               ; preds = %46, %41, %34
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @ABS_LONG_MIN, align 8
  %52 = icmp uge i64 %50, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %49
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* @ABS_LONG_MIN, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i64, i64* %9, align 8
  store i64 %61, i64* %4, align 8
  br label %81

62:                                               ; preds = %57, %53
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i64, i64* @LONG_MIN, align 8
  br label %69

67:                                               ; preds = %62
  %68 = load i64, i64* @LONG_MAX, align 8
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i64 [ %66, %65 ], [ %68, %67 ]
  store i64 %70, i64* %4, align 8
  br label %81

71:                                               ; preds = %49
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i64, i64* %9, align 8
  %76 = sub i64 0, %75
  br label %79

77:                                               ; preds = %71
  %78 = load i64, i64* %9, align 8
  br label %79

79:                                               ; preds = %77, %74
  %80 = phi i64 [ %76, %74 ], [ %78, %77 ]
  store i64 %80, i64* %4, align 8
  br label %81

81:                                               ; preds = %79, %69, %60
  %82 = load i64, i64* %4, align 8
  ret i64 %82
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @isalnum(i8 signext) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
