; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_urlapi.c_strlen_url.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_urlapi.c_strlen_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32)* @strlen_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @strlen_url(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %6, align 8
  %9 = load i32, i32* @TRUE, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @find_host_sep(i8* %14)
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %8, align 8
  br label %17

17:                                               ; preds = %13, %2
  %18 = load i8*, i8** %3, align 8
  store i8* %18, i8** %5, align 8
  br label %19

19:                                               ; preds = %58, %17
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %61

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ult i8* %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i64, i64* %6, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %6, align 8
  br label %58

30:                                               ; preds = %23
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  switch i32 %33, label %36 [
    i32 63, label %34
    i32 32, label %47
  ]

34:                                               ; preds = %30
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %30, %34
  %37 = load i8*, i8** %5, align 8
  %38 = load i8, i8* %37, align 1
  %39 = call i32 @urlchar_needs_escaping(i8 zeroext %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i64, i64* %6, align 8
  %43 = add i64 %42, 2
  store i64 %43, i64* %6, align 8
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i64, i64* %6, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %6, align 8
  br label %57

47:                                               ; preds = %30
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i64, i64* %6, align 8
  %52 = add i64 %51, 3
  store i64 %52, i64* %6, align 8
  br label %56

53:                                               ; preds = %47
  %54 = load i64, i64* %6, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %6, align 8
  br label %56

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %56, %44
  br label %58

58:                                               ; preds = %57, %27
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %5, align 8
  br label %19

61:                                               ; preds = %19
  %62 = load i64, i64* %6, align 8
  ret i64 %62
}

declare dso_local i64 @find_host_sep(i8*) #1

declare dso_local i32 @urlchar_needs_escaping(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
