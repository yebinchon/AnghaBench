; ModuleID = '/home/carl/AnghaBench/curl/packages/OS400/extr_ccsidcurl.c_dynconvert.c'
source_filename = "/home/carl/AnghaBench/curl/packages/OS400/extr_ccsidcurl.c_dynconvert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dynconvert.nullbyte = internal constant i8 0, align 1
@MAX_CONV_EXPANSION = common dso_local global i64 0, align 8
@ASCII_CCSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*, i32, i32)* @dynconvert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dynconvert(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @strlen(i8* %18)
  br label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %19, %17 ], [ %21, %20 ]
  %24 = sext i32 %23 to i64
  %25 = add i64 %24, 1
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* @MAX_CONV_EXPANSION, align 8
  %27 = load i64, i64* %12, align 8
  %28 = mul i64 %27, %26
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = call i8* @malloc(i64 %29)
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %22
  store i8* null, i8** %5, align 8
  br label %87

34:                                               ; preds = %22
  %35 = load i8*, i8** %10, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @convert(i8* %35, i64 %36, i32 %37, i8* %38, i32 %39, i32 %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @free(i8* %45)
  store i8* null, i8** %5, align 8
  br label %87

47:                                               ; preds = %34
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %47
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i64, i64* %12, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = sub i64 %55, %57
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @ASCII_CCSID, align 4
  %61 = call i32 @convert(i8* %54, i64 %58, i32 %59, i8* @dynconvert.nullbyte, i32 -1, i32 %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %50
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @free(i8* %65)
  store i8* null, i8** %5, align 8
  br label %87

67:                                               ; preds = %50
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %67, %47
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %12, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load i8*, i8** %10, align 8
  %78 = load i32, i32* %13, align 4
  %79 = call i8* @realloc(i8* %77, i32 %78)
  store i8* %79, i8** %11, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i8*, i8** %11, align 8
  store i8* %83, i8** %10, align 8
  br label %84

84:                                               ; preds = %82, %76
  br label %85

85:                                               ; preds = %84, %71
  %86 = load i8*, i8** %10, align 8
  store i8* %86, i8** %5, align 8
  br label %87

87:                                               ; preds = %85, %64, %44, %33
  %88 = load i8*, i8** %5, align 8
  ret i8* %88
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @convert(i8*, i64, i32, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @realloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
