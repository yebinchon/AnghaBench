; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_getpart.c_appenddata.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_getpart.c_appenddata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPE_OK = common dso_local global i32 0, align 4
@GPE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, i64*, i8*, i32)* @appenddata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @appenddata(i8** %0, i64* %1, i64* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store i8** %0, i8*** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = call i64 @strlen(i8* %16)
  store i64 %17, i64* %13, align 8
  %18 = load i64, i64* %13, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @GPE_OK, align 4
  store i32 %21, i32* %6, align 4
  br label %93

22:                                               ; preds = %5
  %23 = load i64, i64* %13, align 8
  %24 = load i64*, i64** %8, align 8
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %23, %25
  %27 = add i64 %26, 1
  store i64 %27, i64* %12, align 8
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %22
  %31 = load i8*, i8** %10, align 8
  %32 = load i64, i64* %13, align 8
  %33 = sub i64 %32, 1
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 13
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i64, i64* %13, align 8
  %40 = add i64 %39, -1
  store i64 %40, i64* %13, align 8
  br label %41

41:                                               ; preds = %38, %30
  %42 = load i8*, i8** %10, align 8
  %43 = load i64, i64* %13, align 8
  %44 = sub i64 %43, 1
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 10
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i64, i64* %13, align 8
  %51 = add i64 %50, -1
  store i64 %51, i64* %13, align 8
  br label %52

52:                                               ; preds = %49, %41
  br label %53

53:                                               ; preds = %52, %22
  %54 = load i64, i64* %12, align 8
  %55 = load i64*, i64** %9, align 8
  %56 = load i64, i64* %55, align 8
  %57 = icmp ugt i64 %54, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %53
  %59 = load i64, i64* %12, align 8
  %60 = mul i64 %59, 2
  store i64 %60, i64* %14, align 8
  %61 = load i8**, i8*** %7, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = load i64, i64* %14, align 8
  %64 = call i8* @realloc(i8* %62, i64 %63)
  store i8* %64, i8** %15, align 8
  %65 = load i8*, i8** %15, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %58
  %68 = load i32, i32* @GPE_OUT_OF_MEMORY, align 4
  store i32 %68, i32* %6, align 4
  br label %93

69:                                               ; preds = %58
  %70 = load i64, i64* %14, align 8
  %71 = load i64*, i64** %9, align 8
  store i64 %70, i64* %71, align 8
  %72 = load i8*, i8** %15, align 8
  %73 = load i8**, i8*** %7, align 8
  store i8* %72, i8** %73, align 8
  br label %74

74:                                               ; preds = %69, %53
  %75 = load i8**, i8*** %7, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = load i64*, i64** %8, align 8
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8*, i8** %10, align 8
  %81 = load i64, i64* %13, align 8
  %82 = call i32 @memcpy(i8* %79, i8* %80, i64 %81)
  %83 = load i64, i64* %13, align 8
  %84 = load i64*, i64** %8, align 8
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %85, %83
  store i64 %86, i64* %84, align 8
  %87 = load i8**, i8*** %7, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = load i64*, i64** %8, align 8
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  store i8 0, i8* %91, align 1
  %92 = load i32, i32* @GPE_OK, align 4
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %74, %67, %20
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
