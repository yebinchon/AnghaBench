; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/string/extr_stdstring.c_string_replace_substring.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/string/extr_stdstring.c_string_replace_substring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @string_replace_substring(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18, %3
  %22 = load i8*, i8** %5, align 8
  %23 = call i8* @strdup(i8* %22)
  store i8* %23, i8** %4, align 8
  br label %100

24:                                               ; preds = %18
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @strlen(i8* %25)
  store i64 %26, i64* %9, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i64 @strlen(i8* %27)
  store i64 %28, i64* %10, align 8
  store i64 0, i64* %8, align 8
  %29 = load i8*, i8** %5, align 8
  store i8* %29, i8** %12, align 8
  br label %30

30:                                               ; preds = %35, %24
  %31 = load i8*, i8** %12, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i8* @strstr(i8* %31, i8* %32)
  store i8* %33, i8** %12, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i64, i64* %9, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 %36
  store i8* %38, i8** %12, align 8
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %8, align 8
  br label %30

41:                                               ; preds = %30
  %42 = load i8*, i8** %5, align 8
  %43 = call i64 @strlen(i8* %42)
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %8, align 8
  %46 = mul i64 %44, %45
  %47 = sub i64 %43, %46
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %8, align 8
  %50 = mul i64 %48, %49
  %51 = add i64 %47, %50
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %11, align 8
  %53 = add i64 %52, 1
  %54 = call i64 @malloc(i64 %53)
  %55 = inttoptr i64 %54 to i8*
  store i8* %55, i8** %14, align 8
  %56 = load i8*, i8** %14, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %41
  store i8* null, i8** %4, align 8
  br label %100

59:                                               ; preds = %41
  %60 = load i8*, i8** %14, align 8
  store i8* %60, i8** %15, align 8
  %61 = load i8*, i8** %5, align 8
  store i8* %61, i8** %12, align 8
  %62 = load i8*, i8** %5, align 8
  store i8* %62, i8** %13, align 8
  br label %63

63:                                               ; preds = %68, %59
  %64 = load i8*, i8** %12, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i8* @strstr(i8* %64, i8* %65)
  store i8* %66, i8** %12, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %95

68:                                               ; preds = %63
  %69 = load i8*, i8** %15, align 8
  %70 = load i8*, i8** %13, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = ptrtoint i8* %71 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = call i32 @memcpy(i8* %69, i8* %70, i64 %75)
  %77 = load i8*, i8** %12, align 8
  %78 = load i8*, i8** %13, align 8
  %79 = ptrtoint i8* %77 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = load i8*, i8** %15, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 %81
  store i8* %83, i8** %15, align 8
  %84 = load i8*, i8** %15, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = load i64, i64* %10, align 8
  %87 = call i32 @memcpy(i8* %84, i8* %85, i64 %86)
  %88 = load i64, i64* %10, align 8
  %89 = load i8*, i8** %15, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 %88
  store i8* %90, i8** %15, align 8
  %91 = load i64, i64* %9, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 %91
  store i8* %93, i8** %12, align 8
  %94 = load i8*, i8** %12, align 8
  store i8* %94, i8** %13, align 8
  br label %63

95:                                               ; preds = %63
  %96 = load i8*, i8** %15, align 8
  %97 = load i8*, i8** %13, align 8
  %98 = call i32 @strcpy(i8* %96, i8* %97)
  %99 = load i8*, i8** %14, align 8
  store i8* %99, i8** %4, align 8
  br label %100

100:                                              ; preds = %95, %58, %21
  %101 = load i8*, i8** %4, align 8
  ret i8* %101
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
