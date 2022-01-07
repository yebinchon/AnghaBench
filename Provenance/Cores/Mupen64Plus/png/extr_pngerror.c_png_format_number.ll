; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngerror.c_png_format_number.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngerror.c_png_format_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@png_format_number.digits = internal constant [17 x i8] c"0123456789ABCDEF\00", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @png_format_number(i8* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 -1
  store i8* %13, i8** %6, align 8
  store i8 0, i8* %13, align 1
  br label %14

14:                                               ; preds = %95, %4
  %15 = load i8*, i8** %6, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ugt i8* %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %22, %23
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi i1 [ true, %18 ], [ %24, %21 ]
  br label %27

27:                                               ; preds = %25, %14
  %28 = phi i1 [ false, %14 ], [ %26, %25 ]
  br i1 %28, label %29, label %96

29:                                               ; preds = %27
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %68 [
    i32 130, label %31
    i32 132, label %48
    i32 129, label %49
    i32 131, label %58
    i32 128, label %59
  ]

31:                                               ; preds = %29
  store i32 5, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %8, align 8
  %36 = srem i64 %35, 10
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %34, %31
  %39 = load i64, i64* %8, align 8
  %40 = srem i64 %39, 10
  %41 = getelementptr inbounds [17 x i8], [17 x i8]* @png_format_number.digits, i64 0, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 -1
  store i8* %44, i8** %6, align 8
  store i8 %42, i8* %44, align 1
  store i32 1, i32* %11, align 4
  br label %45

45:                                               ; preds = %38, %34
  %46 = load i64, i64* %8, align 8
  %47 = sdiv i64 %46, 10
  store i64 %47, i64* %8, align 8
  br label %69

48:                                               ; preds = %29
  store i32 2, i32* %10, align 4
  br label %49

49:                                               ; preds = %29, %48
  %50 = load i64, i64* %8, align 8
  %51 = srem i64 %50, 10
  %52 = getelementptr inbounds [17 x i8], [17 x i8]* @png_format_number.digits, i64 0, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 -1
  store i8* %55, i8** %6, align 8
  store i8 %53, i8* %55, align 1
  %56 = load i64, i64* %8, align 8
  %57 = sdiv i64 %56, 10
  store i64 %57, i64* %8, align 8
  br label %69

58:                                               ; preds = %29
  store i32 2, i32* %10, align 4
  br label %59

59:                                               ; preds = %29, %58
  %60 = load i64, i64* %8, align 8
  %61 = and i64 %60, 15
  %62 = getelementptr inbounds [17 x i8], [17 x i8]* @png_format_number.digits, i64 0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 -1
  store i8* %65, i8** %6, align 8
  store i8 %63, i8* %65, align 1
  %66 = load i64, i64* %8, align 8
  %67 = ashr i64 %66, 4
  store i64 %67, i64* %8, align 8
  br label %69

68:                                               ; preds = %29
  store i64 0, i64* %8, align 8
  br label %69

69:                                               ; preds = %68, %59, %49, %45
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %72, 130
  br i1 %73, label %74, label %95

74:                                               ; preds = %69
  %75 = load i32, i32* %9, align 4
  %76 = icmp eq i32 %75, 5
  br i1 %76, label %77, label %95

77:                                               ; preds = %74
  %78 = load i8*, i8** %6, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = icmp ugt i8* %78, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %77
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 -1
  store i8* %86, i8** %6, align 8
  store i8 46, i8* %86, align 1
  br label %94

87:                                               ; preds = %81
  %88 = load i64, i64* %8, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 -1
  store i8* %92, i8** %6, align 8
  store i8 48, i8* %92, align 1
  br label %93

93:                                               ; preds = %90, %87
  br label %94

94:                                               ; preds = %93, %84
  br label %95

95:                                               ; preds = %94, %77, %74, %69
  br label %14

96:                                               ; preds = %27
  %97 = load i8*, i8** %6, align 8
  ret i8* %97
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
