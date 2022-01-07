; ModuleID = '/home/carl/AnghaBench/curl/packages/OS400/extr_ccsidcurl.c_convert.c'
source_filename = "/home/carl/AnghaBench/curl/packages/OS400/extr_ccsidcurl.c_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASCII_CCSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32, i8*, i32, i32)* @convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert(i8* %0, i64 %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = icmp eq i32 %17, 65535
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load i32, i32* @ASCII_CCSID, align 4
  store i32 %20, i32* %13, align 4
  br label %21

21:                                               ; preds = %19, %6
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 65535
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @ASCII_CCSID, align 4
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %65

30:                                               ; preds = %26
  %31 = load i32, i32* %12, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* %12, align 4
  br label %39

35:                                               ; preds = %30
  %36 = load i8*, i8** %11, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = add nsw i32 %37, 1
  br label %39

39:                                               ; preds = %35, %33
  %40 = phi i32 [ %34, %33 ], [ %38, %35 ]
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %16, align 8
  %42 = load i64, i64* %16, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i64, i64* %16, align 8
  br label %49

47:                                               ; preds = %39
  %48 = load i64, i64* %9, align 8
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i64 [ %46, %45 ], [ %48, %47 ]
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %14, align 4
  %52 = load i8*, i8** %11, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = icmp ne i8* %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load i32, i32* %14, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i8*, i8** %8, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @memcpy(i8* %59, i8* %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %55, %49
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %7, align 4
  br label %101

65:                                               ; preds = %26
  %66 = load i32, i32* %12, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  store i64 0, i64* %16, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @iconv_open_CCSID(i32 %69, i32 %70, i32 1)
  store i32 %71, i32* %15, align 4
  br label %78

72:                                               ; preds = %65
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %16, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @iconv_open_CCSID(i32 %75, i32 %76, i32 0)
  store i32 %77, i32* %15, align 4
  br label %78

78:                                               ; preds = %72, %68
  %79 = load i32, i32* %15, align 4
  %80 = call i64 @ICONV_OPEN_ERROR(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 -1, i32* %7, align 4
  br label %101

83:                                               ; preds = %78
  %84 = load i64, i64* %9, align 8
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %15, align 4
  %87 = call i64 @iconv(i32 %86, i8** %11, i64* %16, i8** %8, i64* %9)
  %88 = trunc i64 %87 to i32
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  store i32 -1, i32* %14, align 4
  br label %97

91:                                               ; preds = %83
  %92 = load i64, i64* %9, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = sub i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %14, align 4
  br label %97

97:                                               ; preds = %91, %90
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @iconv_close(i32 %98)
  %100 = load i32, i32* %14, align 4
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %97, %82, %63
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @iconv_open_CCSID(i32, i32, i32) #1

declare dso_local i64 @ICONV_OPEN_ERROR(i32) #1

declare dso_local i64 @iconv(i32, i8**, i64*, i8**, i64*) #1

declare dso_local i32 @iconv_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
