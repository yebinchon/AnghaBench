; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_johab_hangul.h_johab_hangul_decompose.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_johab_hangul.h_johab_hangul_decompose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_ILUNI = common dso_local global i32 0, align 4
@jamo_initial = common dso_local global i8* null, align 8
@jamo_medial = common dso_local global i8* null, align 8
@jamo_final = common dso_local global i8* null, align 8
@NONE = common dso_local global i8 0, align 1
@FILL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @johab_hangul_decompose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @johab_hangul_decompose(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @johab_hangul_wctomb(i32 %15, i8* %16, i32 %17, i32 2)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @RET_ILUNI, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %120

22:                                               ; preds = %3
  %23 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl i32 %25, 8
  %27 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = or i32 %26, %29
  store i32 %30, i32* %10, align 4
  %31 = load i8*, i8** @jamo_initial, align 8
  %32 = load i32, i32* %10, align 4
  %33 = lshr i32 %32, 10
  %34 = and i32 %33, 31
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %31, i64 %35
  %37 = load i8, i8* %36, align 1
  store i8 %37, i8* %11, align 1
  %38 = load i8*, i8** @jamo_medial, align 8
  %39 = load i32, i32* %10, align 4
  %40 = lshr i32 %39, 5
  %41 = and i32 %40, 31
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %38, i64 %42
  %44 = load i8, i8* %43, align 1
  store i8 %44, i8* %12, align 1
  %45 = load i8*, i8** @jamo_final, align 8
  %46 = load i32, i32* %10, align 4
  %47 = and i32 %46, 31
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  %50 = load i8, i8* %49, align 1
  store i8 %50, i8* %13, align 1
  %51 = load i32, i32* %10, align 4
  %52 = lshr i32 %51, 15
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %56

54:                                               ; preds = %22
  %55 = call i32 (...) @abort() #3
  unreachable

56:                                               ; preds = %22
  %57 = load i8, i8* %11, align 1
  %58 = zext i8 %57 to i32
  %59 = load i8, i8* @NONE, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %119

62:                                               ; preds = %56
  %63 = load i8, i8* %12, align 1
  %64 = zext i8 %63 to i32
  %65 = load i8, i8* @NONE, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp ne i32 %64, %66
  br i1 %67, label %68, label %119

68:                                               ; preds = %62
  %69 = load i8, i8* %13, align 1
  %70 = zext i8 %69 to i32
  %71 = load i8, i8* @NONE, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp ne i32 %70, %72
  br i1 %73, label %74, label %119

74:                                               ; preds = %68
  %75 = load i32*, i32** %6, align 8
  store i32* %75, i32** %14, align 8
  %76 = load i8, i8* %11, align 1
  %77 = zext i8 %76 to i32
  %78 = load i8, i8* @FILL, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp ne i32 %77, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load i8, i8* %11, align 1
  %83 = zext i8 %82 to i32
  %84 = add nsw i32 12592, %83
  %85 = load i32*, i32** %14, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %14, align 8
  store i32 %84, i32* %85, align 4
  br label %87

87:                                               ; preds = %81, %74
  %88 = load i8, i8* %12, align 1
  %89 = zext i8 %88 to i32
  %90 = load i8, i8* @FILL, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp ne i32 %89, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load i8, i8* %12, align 1
  %95 = zext i8 %94 to i32
  %96 = add nsw i32 12592, %95
  %97 = load i32*, i32** %14, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %14, align 8
  store i32 %96, i32* %97, align 4
  br label %99

99:                                               ; preds = %93, %87
  %100 = load i8, i8* %13, align 1
  %101 = zext i8 %100 to i32
  %102 = load i8, i8* @FILL, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp ne i32 %101, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = load i8, i8* %13, align 1
  %107 = zext i8 %106 to i32
  %108 = add nsw i32 12592, %107
  %109 = load i32*, i32** %14, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %14, align 8
  store i32 %108, i32* %109, align 4
  br label %111

111:                                              ; preds = %105, %99
  %112 = load i32*, i32** %14, align 8
  %113 = load i32*, i32** %6, align 8
  %114 = ptrtoint i32* %112 to i64
  %115 = ptrtoint i32* %113 to i64
  %116 = sub i64 %114, %115
  %117 = sdiv exact i64 %116, 4
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %4, align 4
  br label %122

119:                                              ; preds = %68, %62, %56
  br label %120

120:                                              ; preds = %119, %3
  %121 = load i32, i32* @RET_ILUNI, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %120, %111
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @johab_hangul_wctomb(i32, i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
