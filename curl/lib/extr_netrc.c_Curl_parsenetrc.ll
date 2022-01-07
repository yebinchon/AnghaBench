; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_netrc.c_Curl_parsenetrc.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_netrc.c_Curl_parsenetrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s%s.netrc\00", align 1
@DIR_CHAR = common dso_local global i32 0, align 4
@NETRC_FILE_MISSING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_parsenetrc(i8* %0, i8** %1, i8** %2, i32* %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 1, i32* %14, align 4
  store i8* null, i8** %15, align 8
  %18 = load i8*, i8** %13, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %52, label %20

20:                                               ; preds = %6
  store i8* null, i8** %16, align 8
  %21 = call i8* @curl_getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %17, align 8
  %22 = load i8*, i8** %17, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i8*, i8** %17, align 8
  store i8* %25, i8** %16, align 8
  br label %26

26:                                               ; preds = %24, %20
  %27 = load i8*, i8** %16, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %7, align 4
  br label %62

31:                                               ; preds = %26
  %32 = load i8*, i8** %16, align 8
  %33 = load i32, i32* @DIR_CHAR, align 4
  %34 = call i8* @curl_maprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %32, i32 %33)
  store i8* %34, i8** %15, align 8
  %35 = load i8*, i8** %15, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i8*, i8** %17, align 8
  %39 = call i32 @free(i8* %38)
  store i32 -1, i32* %7, align 4
  br label %62

40:                                               ; preds = %31
  %41 = load i8*, i8** %8, align 8
  %42 = load i8**, i8*** %9, align 8
  %43 = load i8**, i8*** %10, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = load i8*, i8** %15, align 8
  %47 = call i32 @parsenetrc(i8* %41, i8** %42, i8** %43, i32* %44, i32* %45, i8* %46)
  store i32 %47, i32* %14, align 4
  %48 = load i8*, i8** %15, align 8
  %49 = call i32 @free(i8* %48)
  %50 = load i8*, i8** %17, align 8
  %51 = call i32 @free(i8* %50)
  br label %60

52:                                               ; preds = %6
  %53 = load i8*, i8** %8, align 8
  %54 = load i8**, i8*** %9, align 8
  %55 = load i8**, i8*** %10, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = call i32 @parsenetrc(i8* %53, i8** %54, i8** %55, i32* %56, i32* %57, i8* %58)
  store i32 %59, i32* %14, align 4
  br label %60

60:                                               ; preds = %52, %40
  %61 = load i32, i32* %14, align 4
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %60, %37, %29
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i8* @curl_getenv(i8*) #1

declare dso_local i8* @curl_maprintf(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @parsenetrc(i8*, i8**, i8**, i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
