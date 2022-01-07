; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonstringstdstring.c_string_tokenize.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonstringstdstring.c_string_tokenize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @string_tokenize(i8** %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i64 0, i64* %9, align 8
  %10 = load i8**, i8*** %4, align 8
  %11 = icmp ne i8** %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @string_is_empty(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %2
  store i8* null, i8** %3, align 8
  br label %69

17:                                               ; preds = %12
  %18 = load i8**, i8*** %4, align 8
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i8* null, i8** %3, align 8
  br label %69

23:                                               ; preds = %17
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i8* @strstr(i8* %24, i8* %25)
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  store i64 %34, i64* %9, align 8
  br label %38

35:                                               ; preds = %23
  %36 = load i8*, i8** %6, align 8
  %37 = call i64 @strlen(i8* %36)
  store i64 %37, i64* %9, align 8
  br label %38

38:                                               ; preds = %35, %29
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %39, 1
  %41 = mul i64 %40, 1
  %42 = call i64 @malloc(i64 %41)
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** %8, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %38
  store i8* null, i8** %3, align 8
  br label %69

47:                                               ; preds = %38
  %48 = load i8*, i8** %8, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i64, i64* %9, align 8
  %51 = add i64 %50, 1
  %52 = mul i64 %51, 1
  %53 = call i32 @strlcpy(i8* %48, i8* %49, i64 %52)
  %54 = load i8*, i8** %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8 0, i8* %56, align 1
  %57 = load i8*, i8** %7, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %47
  %60 = load i8*, i8** %7, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = call i64 @strlen(i8* %61)
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  br label %65

64:                                               ; preds = %47
  br label %65

65:                                               ; preds = %64, %59
  %66 = phi i8* [ %63, %59 ], [ null, %64 ]
  %67 = load i8**, i8*** %4, align 8
  store i8* %66, i8** %67, align 8
  %68 = load i8*, i8** %8, align 8
  store i8* %68, i8** %3, align 8
  br label %69

69:                                               ; preds = %65, %46, %22, %16
  %70 = load i8*, i8** %3, align 8
  ret i8* %70
}

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
