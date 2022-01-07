; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tutil.c_strnchr.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tutil.c_strnchr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @strnchr(i8* %0, i8 signext %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  store i8 %1, i8* %7, align 1
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %10, align 8
  br label %12

12:                                               ; preds = %76, %4
  %13 = load i64, i64* %10, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %79

16:                                               ; preds = %12
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %62

19:                                               ; preds = %16
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %10, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 39
  br i1 %25, label %33, label %26

26:                                               ; preds = %19
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 34
  br i1 %32, label %33, label %62

33:                                               ; preds = %26, %19
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* %10, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %10, align 8
  %37 = getelementptr inbounds i8, i8* %34, i64 %35
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %11, align 1
  br label %39

39:                                               ; preds = %55, %33
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load i8*, i8** %6, align 8
  %45 = load i64, i64* %10, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %10, align 8
  %47 = getelementptr inbounds i8, i8* %44, i64 %45
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = load i8, i8* %11, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %49, %51
  br label %53

53:                                               ; preds = %43, %39
  %54 = phi i1 [ false, %39 ], [ %52, %43 ]
  br i1 %54, label %55, label %56

55:                                               ; preds = %53
  br label %39

56:                                               ; preds = %53
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp uge i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i8* null, i8** %5, align 8
  br label %80

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61, %26, %16
  %63 = load i8*, i8** %6, align 8
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = load i8, i8* %7, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %62
  %72 = load i8*, i8** %6, align 8
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %74, i8** %5, align 8
  br label %80

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %10, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %10, align 8
  br label %12

79:                                               ; preds = %12
  store i8* null, i8** %5, align 8
  br label %80

80:                                               ; preds = %79, %71, %60
  %81 = load i8*, i8** %5, align 8
  ret i8* %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
