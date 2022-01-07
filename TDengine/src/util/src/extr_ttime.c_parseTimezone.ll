; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_ttime.c_parseTimezone.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_ttime.c_parseTimezone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @parseTimezone(i8* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i64, i64* %7, align 8
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 43
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 45
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i64 -1, i64* %3, align 8
  br label %89

25:                                               ; preds = %17, %2
  %26 = load i64, i64* %7, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %7, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = call i8* @strchr(i8* %30, i8 signext 58)
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %52

34:                                               ; preds = %25
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = ptrtoint i8* %35 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  store i64 %41, i64* %9, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i64, i64* %9, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @strnatoi(i8* %44, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i64, i64* %9, align 8
  %49 = add i64 %48, 1
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %7, align 8
  br label %59

52:                                               ; preds = %25
  %53 = load i8*, i8** %4, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = call i32 @strnatoi(i8* %55, i32 2)
  store i32 %56, i32* %6, align 4
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %57, 2
  store i64 %58, i64* %7, align 8
  br label %59

59:                                               ; preds = %52, %34
  %60 = load i8*, i8** %4, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = call i32 @strnatoi(i8* %62, i32 2)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp sgt i32 %64, 59
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store i64 -1, i64* %3, align 8
  br label %89

67:                                               ; preds = %59
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 43
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load i32, i32* %6, align 4
  %75 = mul nsw i32 %74, 3600
  %76 = load i32, i32* %10, align 4
  %77 = mul nsw i32 %76, 60
  %78 = add nsw i32 %75, %77
  %79 = sub nsw i32 0, %78
  %80 = load i32*, i32** %5, align 8
  store i32 %79, i32* %80, align 4
  br label %88

81:                                               ; preds = %67
  %82 = load i32, i32* %6, align 4
  %83 = mul nsw i32 %82, 3600
  %84 = load i32, i32* %10, align 4
  %85 = mul nsw i32 %84, 60
  %86 = add nsw i32 %83, %85
  %87 = load i32*, i32** %5, align 8
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %81, %73
  store i64 0, i64* %3, align 8
  br label %89

89:                                               ; preds = %88, %66, %24
  %90 = load i64, i64* %3, align 8
  ret i64 %90
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strnatoi(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
