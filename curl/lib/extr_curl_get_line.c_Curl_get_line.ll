; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_curl_get_line.c_Curl_get_line.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_curl_get_line.c_Curl_get_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Curl_get_line(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %8, align 4
  br label %12

12:                                               ; preds = %3, %35, %42
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = call i8* @fgets(i8* %13, i32 %14, i32* %15)
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %41

19:                                               ; preds = %12
  %20 = load i8*, i8** %9, align 8
  %21 = call i64 @strlen(i8* %20)
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = load i8*, i8** %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = sub i64 %26, 1
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 10
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %8, align 4
  br label %12

37:                                               ; preds = %32
  %38 = load i8*, i8** %9, align 8
  store i8* %38, i8** %4, align 8
  br label %44

39:                                               ; preds = %24, %19
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %8, align 4
  br label %42

41:                                               ; preds = %12
  br label %43

42:                                               ; preds = %39
  br label %12

43:                                               ; preds = %41
  store i8* null, i8** %4, align 8
  br label %44

44:                                               ; preds = %43, %37
  %45 = load i8*, i8** %4, align 8
  ret i8* %45
}

declare dso_local i8* @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
