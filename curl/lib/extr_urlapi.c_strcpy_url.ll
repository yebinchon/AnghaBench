; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_urlapi.c_strcpy_url.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_urlapi.c_strcpy_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%%%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @strcpy_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @strcpy_url(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @TRUE, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %9, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %10, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @find_host_sep(i8* %17)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %10, align 8
  br label %20

20:                                               ; preds = %16, %3
  %21 = load i8*, i8** %5, align 8
  store i8* %21, i8** %8, align 8
  br label %22

22:                                               ; preds = %74, %20
  %23 = load i8*, i8** %8, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %77

26:                                               ; preds = %22
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = icmp ult i8* %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i8*, i8** %8, align 8
  %32 = load i8, i8* %31, align 1
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %9, align 8
  store i8 %32, i8* %33, align 1
  br label %74

35:                                               ; preds = %26
  %36 = load i8*, i8** %8, align 8
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  switch i32 %38, label %41 [
    i32 63, label %39
    i32 32, label %59
  ]

39:                                               ; preds = %35
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %35, %39
  %42 = load i8*, i8** %8, align 8
  %43 = load i8, i8* %42, align 1
  %44 = call i32 @urlchar_needs_escaping(i8 zeroext %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i8*, i8** %9, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i8, i8* %48, align 1
  %50 = call i32 @msnprintf(i8* %47, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8 zeroext %49)
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 3
  store i8* %52, i8** %9, align 8
  br label %58

53:                                               ; preds = %41
  %54 = load i8*, i8** %8, align 8
  %55 = load i8, i8* %54, align 1
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %9, align 8
  store i8 %55, i8* %56, align 1
  br label %58

58:                                               ; preds = %53, %46
  br label %73

59:                                               ; preds = %35
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i8*, i8** %9, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %9, align 8
  store i8 37, i8* %63, align 1
  %65 = load i8*, i8** %9, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %9, align 8
  store i8 50, i8* %65, align 1
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %9, align 8
  store i8 48, i8* %67, align 1
  br label %72

69:                                               ; preds = %59
  %70 = load i8*, i8** %9, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %9, align 8
  store i8 43, i8* %70, align 1
  br label %72

72:                                               ; preds = %69, %62
  br label %73

73:                                               ; preds = %72, %58
  br label %74

74:                                               ; preds = %73, %30
  %75 = load i8*, i8** %8, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %8, align 8
  br label %22

77:                                               ; preds = %22
  %78 = load i8*, i8** %9, align 8
  store i8 0, i8* %78, align 1
  ret void
}

declare dso_local i64 @find_host_sep(i8*) #1

declare dso_local i32 @urlchar_needs_escaping(i8 zeroext) #1

declare dso_local i32 @msnprintf(i8*, i32, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
