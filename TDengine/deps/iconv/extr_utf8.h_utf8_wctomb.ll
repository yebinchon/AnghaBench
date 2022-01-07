; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_utf8.h_utf8_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_utf8.h_utf8_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_ILUNI = common dso_local global i32 0, align 4
@RET_TOOSMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @utf8_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf8_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 128
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 1, i32* %10, align 4
  br label %41

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 2048
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 2, i32* %10, align 4
  br label %40

18:                                               ; preds = %14
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 65536
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 3, i32* %10, align 4
  br label %39

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 2097152
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 4, i32* %10, align 4
  br label %38

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 67108864
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 5, i32* %10, align 4
  br label %37

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = icmp sle i32 %31, 2147483647
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 6, i32* %10, align 4
  br label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @RET_ILUNI, align 4
  store i32 %35, i32* %5, align 4
  br label %111

36:                                               ; preds = %33
  br label %37

37:                                               ; preds = %36, %29
  br label %38

38:                                               ; preds = %37, %25
  br label %39

39:                                               ; preds = %38, %21
  br label %40

40:                                               ; preds = %39, %17
  br label %41

41:                                               ; preds = %40, %13
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %46, i32* %5, align 4
  br label %111

47:                                               ; preds = %41
  %48 = load i32, i32* %10, align 4
  switch i32 %48, label %109 [
    i32 6, label %49
    i32 5, label %60
    i32 4, label %71
    i32 3, label %82
    i32 2, label %93
    i32 1, label %104
  ]

49:                                               ; preds = %47
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, 63
  %52 = or i32 128, %51
  %53 = trunc i32 %52 to i8
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 5
  store i8 %53, i8* %55, align 1
  %56 = load i32, i32* %8, align 4
  %57 = ashr i32 %56, 6
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, 67108864
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %47, %49
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %61, 63
  %63 = or i32 128, %62
  %64 = trunc i32 %63 to i8
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 4
  store i8 %64, i8* %66, align 1
  %67 = load i32, i32* %8, align 4
  %68 = ashr i32 %67, 6
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = or i32 %69, 2097152
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %47, %60
  %72 = load i32, i32* %8, align 4
  %73 = and i32 %72, 63
  %74 = or i32 128, %73
  %75 = trunc i32 %74 to i8
  %76 = load i8*, i8** %7, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 3
  store i8 %75, i8* %77, align 1
  %78 = load i32, i32* %8, align 4
  %79 = ashr i32 %78, 6
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %80, 65536
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %47, %71
  %83 = load i32, i32* %8, align 4
  %84 = and i32 %83, 63
  %85 = or i32 128, %84
  %86 = trunc i32 %85 to i8
  %87 = load i8*, i8** %7, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 2
  store i8 %86, i8* %88, align 1
  %89 = load i32, i32* %8, align 4
  %90 = ashr i32 %89, 6
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = or i32 %91, 2048
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %47, %82
  %94 = load i32, i32* %8, align 4
  %95 = and i32 %94, 63
  %96 = or i32 128, %95
  %97 = trunc i32 %96 to i8
  %98 = load i8*, i8** %7, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  store i8 %97, i8* %99, align 1
  %100 = load i32, i32* %8, align 4
  %101 = ashr i32 %100, 6
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = or i32 %102, 192
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %47, %93
  %105 = load i32, i32* %8, align 4
  %106 = trunc i32 %105 to i8
  %107 = load i8*, i8** %7, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 0
  store i8 %106, i8* %108, align 1
  br label %109

109:                                              ; preds = %104, %47
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %109, %45, %34
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
