; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_getpart.c_readline.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_getpart.c_readline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@GPE_OK = common dso_local global i32 0, align 4
@GPE_END_OF_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, i32*)* @readline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readline(i8** %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %8, align 8
  %12 = load i8**, i8*** %5, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %3
  %16 = call i8* @malloc(i32 128)
  %17 = load i8**, i8*** %5, align 8
  store i8* %16, i8** %17, align 8
  %18 = load i8**, i8*** %5, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @GPE_OUT_OF_MEMORY, align 4
  store i32 %22, i32* %4, align 4
  br label %93

23:                                               ; preds = %15
  %24 = load i64*, i64** %6, align 8
  store i64 128, i64* %24, align 8
  br label %25

25:                                               ; preds = %23, %3
  br label %26

26:                                               ; preds = %85, %73, %25
  %27 = load i64*, i64** %6, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = sub i64 %28, %29
  %31 = call i32 @curlx_uztosi(i64 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i8**, i8*** %5, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i32, i32* %11, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @fgets(i8* %35, i32 %36, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %26
  %41 = load i64, i64* %8, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @GPE_OK, align 4
  br label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @GPE_END_OF_FILE, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  store i32 %48, i32* %4, align 4
  br label %93

49:                                               ; preds = %26
  %50 = load i64, i64* %8, align 8
  %51 = load i8**, i8*** %5, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = call i64 @strlen(i8* %54)
  %56 = add i64 %50, %55
  store i64 %56, i64* %10, align 8
  %57 = load i8**, i8*** %5, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = getelementptr inbounds i8, i8* %60, i64 -1
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 10
  br i1 %64, label %65, label %66

65:                                               ; preds = %49
  br label %91

66:                                               ; preds = %49
  %67 = load i64, i64* %10, align 8
  store i64 %67, i64* %8, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i64*, i64** %6, align 8
  %70 = load i64, i64* %69, align 8
  %71 = sub i64 %70, 1
  %72 = icmp ult i64 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %26

74:                                               ; preds = %66
  %75 = load i8**, i8*** %5, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = load i64*, i64** %6, align 8
  %78 = load i64, i64* %77, align 8
  %79 = mul i64 %78, 2
  %80 = call i8* @realloc(i8* %76, i64 %79)
  store i8* %80, i8** %9, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %74
  %84 = load i32, i32* @GPE_OUT_OF_MEMORY, align 4
  store i32 %84, i32* %4, align 4
  br label %93

85:                                               ; preds = %74
  %86 = load i8*, i8** %9, align 8
  %87 = load i8**, i8*** %5, align 8
  store i8* %86, i8** %87, align 8
  %88 = load i64*, i64** %6, align 8
  %89 = load i64, i64* %88, align 8
  %90 = mul i64 %89, 2
  store i64 %90, i64* %88, align 8
  br label %26

91:                                               ; preds = %65
  %92 = load i32, i32* @GPE_OK, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %91, %83, %47, %21
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @curlx_uztosi(i64) #1

declare dso_local i32 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
