; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/utils/extr_common.c_printf_encode.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/utils/extr_common.c_printf_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"\\x%02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printf_encode(i8* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  store i8* %13, i8** %9, align 8
  store i64 0, i64* %10, align 8
  br label %14

14:                                               ; preds = %97, %4
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %100

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 4
  %21 = load i8*, i8** %9, align 8
  %22 = icmp uge i8* %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %100

24:                                               ; preds = %18
  %25 = load i32*, i32** %7, align 8
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %59 [
    i32 34, label %29
    i32 92, label %34
    i32 27, label %39
    i32 10, label %44
    i32 13, label %49
    i32 9, label %54
  ]

29:                                               ; preds = %24
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %5, align 8
  store i8 92, i8* %30, align 1
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %5, align 8
  store i8 34, i8* %32, align 1
  br label %96

34:                                               ; preds = %24
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %5, align 8
  store i8 92, i8* %35, align 1
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %5, align 8
  store i8 92, i8* %37, align 1
  br label %96

39:                                               ; preds = %24
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %5, align 8
  store i8 92, i8* %40, align 1
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %5, align 8
  store i8 101, i8* %42, align 1
  br label %96

44:                                               ; preds = %24
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %5, align 8
  store i8 92, i8* %45, align 1
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %5, align 8
  store i8 110, i8* %47, align 1
  br label %96

49:                                               ; preds = %24
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %5, align 8
  store i8 92, i8* %50, align 1
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %5, align 8
  store i8 114, i8* %52, align 1
  br label %96

54:                                               ; preds = %24
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %5, align 8
  store i8 92, i8* %55, align 1
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %5, align 8
  store i8 116, i8* %57, align 1
  br label %96

59:                                               ; preds = %24
  %60 = load i32*, i32** %7, align 8
  %61 = load i64, i64* %10, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp sge i32 %63, 32
  br i1 %64, label %65, label %79

65:                                               ; preds = %59
  %66 = load i32*, i32** %7, align 8
  %67 = load i64, i64* %10, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp sle i32 %69, 127
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load i32*, i32** %7, align 8
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = trunc i32 %75 to i8
  %77 = load i8*, i8** %5, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %5, align 8
  store i8 %76, i8* %77, align 1
  br label %95

79:                                               ; preds = %65, %59
  %80 = load i8*, i8** %5, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = load i8*, i8** %5, align 8
  %83 = ptrtoint i8* %81 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  %86 = trunc i64 %85 to i32
  %87 = load i32*, i32** %7, align 8
  %88 = load i64, i64* %10, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @os_snprintf(i8* %80, i32 %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %90)
  %92 = load i8*, i8** %5, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8* %94, i8** %5, align 8
  br label %95

95:                                               ; preds = %79, %71
  br label %96

96:                                               ; preds = %95, %54, %49, %44, %39, %34, %29
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %10, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %10, align 8
  br label %14

100:                                              ; preds = %23, %14
  %101 = load i8*, i8** %5, align 8
  store i8 0, i8* %101, align 1
  ret void
}

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
