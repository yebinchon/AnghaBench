; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_setopt.c_setstropt_userpwd.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_setopt.c_setstropt_userpwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURLE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8**, i8**)* @setstropt_userpwd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @setstropt_userpwd(i8* %0, i8** %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8** %2, i8*** %6, align 8
  %10 = load i64, i64* @CURLE_OK, align 8
  store i64 %10, i64* %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %3
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = load i8**, i8*** %5, align 8
  %18 = icmp ne i8** %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %21

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20, %19
  %22 = phi i8** [ %8, %19 ], [ null, %20 ]
  %23 = load i8**, i8*** %6, align 8
  %24 = icmp ne i8** %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %27

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %25
  %28 = phi i8** [ %9, %25 ], [ null, %26 ]
  %29 = call i64 @Curl_parse_login_details(i8* %14, i32 %16, i8** %22, i8** %28, i32* null)
  store i64 %29, i64* %7, align 8
  br label %30

30:                                               ; preds = %27, %3
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %71, label %33

33:                                               ; preds = %30
  %34 = load i8**, i8*** %5, align 8
  %35 = icmp ne i8** %34, null
  br i1 %35, label %36, label %61

36:                                               ; preds = %33
  %37 = load i8*, i8** %8, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %55, label %39

39:                                               ; preds = %36
  %40 = load i8*, i8** %4, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 58
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %49, i8** %8, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %53, i64* %7, align 8
  br label %54

54:                                               ; preds = %52, %48
  br label %55

55:                                               ; preds = %54, %42, %39, %36
  %56 = load i8**, i8*** %5, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @Curl_safefree(i8* %57)
  %59 = load i8*, i8** %8, align 8
  %60 = load i8**, i8*** %5, align 8
  store i8* %59, i8** %60, align 8
  br label %61

61:                                               ; preds = %55, %33
  %62 = load i8**, i8*** %6, align 8
  %63 = icmp ne i8** %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i8**, i8*** %6, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @Curl_safefree(i8* %66)
  %68 = load i8*, i8** %9, align 8
  %69 = load i8**, i8*** %6, align 8
  store i8* %68, i8** %69, align 8
  br label %70

70:                                               ; preds = %64, %61
  br label %71

71:                                               ; preds = %70, %30
  %72 = load i64, i64* %7, align 8
  ret i64 %72
}

declare dso_local i64 @Curl_parse_login_details(i8*, i32, i8**, i8**, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @Curl_safefree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
