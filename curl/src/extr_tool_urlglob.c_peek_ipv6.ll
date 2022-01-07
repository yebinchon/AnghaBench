; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_urlglob.c_peek_ipv6.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_urlglob.c_peek_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*)* @peek_ipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @peek_ipv6(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i64, i64* %6, align 8
  %11 = add i64 %10, 1
  store i64 %11, i64* %6, align 8
  %12 = getelementptr inbounds i8, i8* %9, i64 %10
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 91
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %3, align 4
  br label %63

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %62, %18
  %20 = load i8*, i8** %4, align 8
  %21 = load i64, i64* %6, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %6, align 8
  %23 = getelementptr inbounds i8, i8* %20, i64 %21
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* %8, align 1
  %25 = load i8, i8* %8, align 1
  %26 = call i64 @ISALNUM(i8 signext %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %19
  %29 = load i8, i8* %8, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 46
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i8, i8* %8, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 37
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %28, %19
  br label %62

37:                                               ; preds = %32
  %38 = load i8, i8* %8, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 58
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i64, i64* %7, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %7, align 8
  br label %61

44:                                               ; preds = %37
  %45 = load i8, i8* %8, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 93
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load i64, i64* %6, align 8
  %50 = load i64*, i64** %5, align 8
  store i64 %49, i64* %50, align 8
  %51 = load i64, i64* %7, align 8
  %52 = icmp uge i64 %51, 2
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @TRUE, align 4
  br label %57

55:                                               ; preds = %48
  %56 = load i32, i32* @FALSE, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  store i32 %58, i32* %3, align 4
  br label %63

59:                                               ; preds = %44
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %3, align 4
  br label %63

61:                                               ; preds = %41
  br label %62

62:                                               ; preds = %61, %36
  br label %19

63:                                               ; preds = %59, %57, %16
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @ISALNUM(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
