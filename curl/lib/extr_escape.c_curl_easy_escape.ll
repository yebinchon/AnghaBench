; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_escape.c_curl_easy_escape.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_escape.c_curl_easy_escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%%%02X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @curl_easy_escape(%struct.Curl_easy* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.Curl_easy*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  store %struct.Curl_easy* %0, %struct.Curl_easy** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %10, align 8
  store i64 0, i64* %12, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %97

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  br label %28

25:                                               ; preds = %19
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @strlen(i8* %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i64 [ %24, %22 ], [ %27, %25 ]
  %30 = add i64 %29, 1
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i8* @malloc(i64 %32)
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  store i8* null, i8** %4, align 8
  br label %97

37:                                               ; preds = %28
  %38 = load i64, i64* %8, align 8
  %39 = sub i64 %38, 1
  store i64 %39, i64* %13, align 8
  br label %40

40:                                               ; preds = %89, %37
  %41 = load i64, i64* %13, align 8
  %42 = add i64 %41, -1
  store i64 %42, i64* %13, align 8
  %43 = icmp ne i64 %41, 0
  br i1 %43, label %44, label %92

44:                                               ; preds = %40
  %45 = load i8*, i8** %6, align 8
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %15, align 1
  %47 = load i8, i8* %15, align 1
  %48 = call i64 @Curl_isunreserved(i8 zeroext %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load i8, i8* %15, align 1
  %52 = load i8*, i8** %9, align 8
  %53 = load i64, i64* %12, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %12, align 8
  %55 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8 %51, i8* %55, align 1
  br label %89

56:                                               ; preds = %44
  %57 = load i64, i64* %11, align 8
  %58 = add i64 %57, 2
  store i64 %58, i64* %11, align 8
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp ugt i64 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %56
  %63 = load i64, i64* %8, align 8
  %64 = mul i64 %63, 2
  store i64 %64, i64* %8, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i8* @Curl_saferealloc(i8* %65, i64 %66)
  store i8* %67, i8** %10, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %62
  store i8* null, i8** %4, align 8
  br label %97

71:                                               ; preds = %62
  %72 = load i8*, i8** %10, align 8
  store i8* %72, i8** %9, align 8
  br label %73

73:                                               ; preds = %71, %56
  %74 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %75 = call i32 @Curl_convert_to_network(%struct.Curl_easy* %74, i8* %15, i32 1)
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i8*, i8** %9, align 8
  %80 = call i32 @free(i8* %79)
  store i8* null, i8** %4, align 8
  br label %97

81:                                               ; preds = %73
  %82 = load i8*, i8** %9, align 8
  %83 = load i64, i64* %12, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  %85 = load i8, i8* %15, align 1
  %86 = call i32 @msnprintf(i8* %84, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8 zeroext %85)
  %87 = load i64, i64* %12, align 8
  %88 = add i64 %87, 3
  store i64 %88, i64* %12, align 8
  br label %89

89:                                               ; preds = %81, %50
  %90 = load i8*, i8** %6, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %6, align 8
  br label %40

92:                                               ; preds = %40
  %93 = load i8*, i8** %9, align 8
  %94 = load i64, i64* %12, align 8
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  store i8 0, i8* %95, align 1
  %96 = load i8*, i8** %9, align 8
  store i8* %96, i8** %4, align 8
  br label %97

97:                                               ; preds = %92, %78, %70, %36, %18
  %98 = load i8*, i8** %4, align 8
  ret i8* %98
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @Curl_isunreserved(i8 zeroext) #1

declare dso_local i8* @Curl_saferealloc(i8*, i64) #1

declare dso_local i32 @Curl_convert_to_network(%struct.Curl_easy*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @msnprintf(i8*, i32, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
