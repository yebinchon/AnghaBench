; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_dict.c_unescape_word.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_dict.c_unescape_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.Curl_easy*, i8*)* @unescape_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @unescape_word(%struct.Curl_easy* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.Curl_easy*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store %struct.Curl_easy* %0, %struct.Curl_easy** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %13 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* @FALSE, align 4
  %16 = call i64 @Curl_urldecode(%struct.Curl_easy* %13, i8* %14, i32 0, i8** %6, i64* %8, i32 %15)
  store i64 %16, i64* %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i64, i64* %9, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %2
  store i8* null, i8** %3, align 8
  br label %82

23:                                               ; preds = %19
  %24 = load i64, i64* %8, align 8
  %25 = mul i64 %24, 2
  %26 = add i64 %25, 1
  %27 = call i8* @malloc(i64 %26)
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %78

30:                                               ; preds = %23
  store i32 0, i32* %12, align 4
  %31 = load i8*, i8** %6, align 8
  store i8* %31, i8** %10, align 8
  br label %32

32:                                               ; preds = %70, %30
  %33 = load i8*, i8** %10, align 8
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %11, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %73

37:                                               ; preds = %32
  %38 = load i8, i8* %11, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp sle i32 %39, 32
  br i1 %40, label %57, label %41

41:                                               ; preds = %37
  %42 = load i8, i8* %11, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 127
  br i1 %44, label %57, label %45

45:                                               ; preds = %41
  %46 = load i8, i8* %11, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 39
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = load i8, i8* %11, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 34
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i8, i8* %11, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 92
  br i1 %56, label %57, label %63

57:                                               ; preds = %53, %49, %45, %41, %37
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %12, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  store i8 92, i8* %62, align 1
  br label %63

63:                                               ; preds = %57, %53
  %64 = load i8, i8* %11, align 1
  %65 = load i8*, i8** %7, align 8
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %12, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  store i8 %64, i8* %69, align 1
  br label %70

70:                                               ; preds = %63
  %71 = load i8*, i8** %10, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %10, align 8
  br label %32

73:                                               ; preds = %32
  %74 = load i8*, i8** %7, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  store i8 0, i8* %77, align 1
  br label %78

78:                                               ; preds = %73, %23
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @free(i8* %79)
  %81 = load i8*, i8** %7, align 8
  store i8* %81, i8** %3, align 8
  br label %82

82:                                               ; preds = %78, %22
  %83 = load i8*, i8** %3, align 8
  ret i8* %83
}

declare dso_local i64 @Curl_urldecode(%struct.Curl_easy*, i8*, i32, i8**, i64*, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
