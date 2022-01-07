; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_strerror.c_Curl_strerror.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_strerror.c_Curl_strerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Unknown error %d\00", align 1
@FORMAT_MESSAGE_FROM_SYSTEM = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_IGNORE_INSERTS = common dso_local global i32 0, align 4
@LANG_NEUTRAL = common dso_local global i32 0, align 4
@OK = common dso_local global i64 0, align 8
@sys_nerr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Curl_strerror(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* @errno, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sge i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @DEBUGASSERT(i32 %14)
  %16 = load i64, i64* %6, align 8
  %17 = sub i64 %16, 1
  store i64 %17, i64* %9, align 8
  %18 = load i8*, i8** %5, align 8
  store i8 0, i8* %18, align 1
  %19 = load i32, i32* %4, align 4
  %20 = call i8* @strerror(i32 %19)
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @strncpy(i8* %24, i8* %25, i64 %26)
  br label %33

28:                                               ; preds = %3
  %29 = load i8*, i8** %5, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (i8*, i64, i8*, i32, ...) @msnprintf(i8* %29, i64 %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load i8*, i8** %5, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8 0, i8* %36, align 1
  %37 = load i8*, i8** %5, align 8
  %38 = call i8* @strrchr(i8* %37, i8 signext 10)
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %33
  %42 = load i8*, i8** %8, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = icmp sge i64 %46, 2
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i8*, i8** %8, align 8
  store i8 0, i8* %49, align 1
  br label %50

50:                                               ; preds = %48, %41, %33
  %51 = load i8*, i8** %5, align 8
  %52 = call i8* @strrchr(i8* %51, i8 signext 13)
  store i8* %52, i8** %8, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load i8*, i8** %8, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = icmp sge i64 %60, 1
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i8*, i8** %8, align 8
  store i8 0, i8* %63, align 1
  br label %64

64:                                               ; preds = %62, %55, %50
  %65 = load i32, i32* @errno, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* @errno, align 4
  br label %70

70:                                               ; preds = %68, %64
  %71 = load i8*, i8** %5, align 8
  ret i8* %71
}

declare dso_local i32 @DEBUGASSERT(i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @msnprintf(i8*, i64, i8*, i32, ...) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
