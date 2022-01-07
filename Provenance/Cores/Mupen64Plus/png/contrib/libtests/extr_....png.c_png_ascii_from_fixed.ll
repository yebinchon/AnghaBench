; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_....png.c_png_ascii_from_fixed.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_....png.c_png_ascii_from_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"ASCII conversion buffer too small\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_ascii_from_fixed(i32 %0, i64* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [10 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp sgt i32 %15, 12
  br i1 %16, label %17, label %112

17:                                               ; preds = %4
  %18 = load i64, i64* %8, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i64*, i64** %6, align 8
  %22 = getelementptr inbounds i64, i64* %21, i32 1
  store i64* %22, i64** %6, align 8
  store i64 45, i64* %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = sub nsw i64 0, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %9, align 4
  br label %29

26:                                               ; preds = %17
  %27 = load i64, i64* %8, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %26, %20
  %30 = load i32, i32* %9, align 4
  %31 = icmp ule i32 %30, -2147483648
  br i1 %31, label %32, label %111

32:                                               ; preds = %29
  store i32 0, i32* %10, align 4
  store i32 16, i32* %11, align 4
  br label %33

33:                                               ; preds = %57, %32
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = sdiv i32 %37, 10
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = mul i32 %39, 10
  %41 = load i32, i32* %9, align 4
  %42 = sub i32 %41, %40
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 48, %43
  %45 = trunc i32 %44 to i8
  %46 = load i32, i32* %10, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %10, align 4
  %48 = zext i32 %46 to i64
  %49 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 %48
  store i8 %45, i8* %49, align 1
  %50 = load i32, i32* %11, align 4
  %51 = icmp eq i32 %50, 16
  br i1 %51, label %52, label %57

52:                                               ; preds = %36
  %53 = load i32, i32* %9, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %55, %52, %36
  %58 = load i32, i32* %13, align 4
  store i32 %58, i32* %9, align 4
  br label %33

59:                                               ; preds = %33
  %60 = load i32, i32* %10, align 4
  %61 = icmp ugt i32 %60, 0
  br i1 %61, label %62, label %106

62:                                               ; preds = %59
  br label %63

63:                                               ; preds = %66, %62
  %64 = load i32, i32* %10, align 4
  %65 = icmp ugt i32 %64, 5
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load i32, i32* %10, align 4
  %68 = add i32 %67, -1
  store i32 %68, i32* %10, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i64
  %73 = load i64*, i64** %6, align 8
  %74 = getelementptr inbounds i64, i64* %73, i32 1
  store i64* %74, i64** %6, align 8
  store i64 %72, i64* %73, align 8
  br label %63

75:                                               ; preds = %63
  %76 = load i32, i32* %11, align 4
  %77 = icmp ule i32 %76, 5
  br i1 %77, label %78, label %105

78:                                               ; preds = %75
  %79 = load i64*, i64** %6, align 8
  %80 = getelementptr inbounds i64, i64* %79, i32 1
  store i64* %80, i64** %6, align 8
  store i64 46, i64* %79, align 8
  store i32 5, i32* %14, align 4
  br label %81

81:                                               ; preds = %85, %78
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load i64*, i64** %6, align 8
  %87 = getelementptr inbounds i64, i64* %86, i32 1
  store i64* %87, i64** %6, align 8
  store i64 48, i64* %86, align 8
  %88 = load i32, i32* %14, align 4
  %89 = add i32 %88, -1
  store i32 %89, i32* %14, align 4
  br label %81

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %95, %90
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp uge i32 %92, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %91
  %96 = load i32, i32* %10, align 4
  %97 = add i32 %96, -1
  store i32 %97, i32* %10, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i64
  %102 = load i64*, i64** %6, align 8
  %103 = getelementptr inbounds i64, i64* %102, i32 1
  store i64* %103, i64** %6, align 8
  store i64 %101, i64* %102, align 8
  br label %91

104:                                              ; preds = %91
  br label %105

105:                                              ; preds = %104, %75
  br label %109

106:                                              ; preds = %59
  %107 = load i64*, i64** %6, align 8
  %108 = getelementptr inbounds i64, i64* %107, i32 1
  store i64* %108, i64** %6, align 8
  store i64 48, i64* %107, align 8
  br label %109

109:                                              ; preds = %106, %105
  %110 = load i64*, i64** %6, align 8
  store i64 0, i64* %110, align 8
  br label %115

111:                                              ; preds = %29
  br label %112

112:                                              ; preds = %111, %4
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @png_error(i32 %113, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %115

115:                                              ; preds = %112, %109
  ret void
}

declare dso_local i32 @png_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
