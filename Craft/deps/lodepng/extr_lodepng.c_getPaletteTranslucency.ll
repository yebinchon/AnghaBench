; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_getPaletteTranslucency.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_getPaletteTranslucency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @getPaletteTranslucency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getPaletteTranslucency(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i64 0, i64* %6, align 8
  br label %11

11:                                               ; preds = %96, %2
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %99

15:                                               ; preds = %11
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %49, label %18

18:                                               ; preds = %15
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* %6, align 8
  %21 = mul i64 4, %20
  %22 = add i64 %21, 3
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %18
  %28 = load i8*, i8** %4, align 8
  %29 = load i64, i64* %6, align 8
  %30 = mul i64 4, %29
  %31 = add i64 %30, 0
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load i8*, i8** %4, align 8
  %36 = load i64, i64* %6, align 8
  %37 = mul i64 4, %36
  %38 = add i64 %37, 1
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  store i32 %41, i32* %9, align 4
  %42 = load i8*, i8** %4, align 8
  %43 = load i64, i64* %6, align 8
  %44 = mul i64 4, %43
  %45 = add i64 %44, 2
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  store i32 %48, i32* %10, align 4
  store i64 1, i64* %7, align 8
  store i64 -1, i64* %6, align 8
  br label %95

49:                                               ; preds = %18, %15
  %50 = load i8*, i8** %4, align 8
  %51 = load i64, i64* %6, align 8
  %52 = mul i64 4, %51
  %53 = add i64 %52, 3
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp ne i32 %56, 255
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  store i32 2, i32* %3, align 4
  br label %102

59:                                               ; preds = %49
  %60 = load i64, i64* %7, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %93

62:                                               ; preds = %59
  %63 = load i32, i32* %8, align 4
  %64 = load i8*, i8** %4, align 8
  %65 = load i64, i64* %6, align 8
  %66 = mul i64 %65, 4
  %67 = add i64 %66, 0
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp eq i32 %63, %70
  br i1 %71, label %72, label %93

72:                                               ; preds = %62
  %73 = load i32, i32* %9, align 4
  %74 = load i8*, i8** %4, align 8
  %75 = load i64, i64* %6, align 8
  %76 = mul i64 %75, 4
  %77 = add i64 %76, 1
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp eq i32 %73, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %72
  %83 = load i32, i32* %10, align 4
  %84 = load i8*, i8** %4, align 8
  %85 = load i64, i64* %6, align 8
  %86 = mul i64 %85, 4
  %87 = add i64 %86, 2
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp eq i32 %83, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  store i32 2, i32* %3, align 4
  br label %102

93:                                               ; preds = %82, %72, %62, %59
  br label %94

94:                                               ; preds = %93
  br label %95

95:                                               ; preds = %94, %27
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* %6, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %6, align 8
  br label %11

99:                                               ; preds = %11
  %100 = load i64, i64* %7, align 8
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %99, %92, %58
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
