; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_prot.c_read_u64.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_prot.c_read_u64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@UINT64_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i8*, i8**)* @read_u64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_u64(i64* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i64* %0, i64** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i64 0, i64* @errno, align 8
  br label %10

10:                                               ; preds = %16, %3
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 32
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %6, align 8
  br label %10

19:                                               ; preds = %10
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp slt i32 %23, 48
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp slt i32 57, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %19
  store i32 -1, i32* %4, align 4
  br label %71

32:                                               ; preds = %25
  %33 = load i8*, i8** %6, align 8
  %34 = call i64 @strtoumax(i8* %33, i8** %9, i32 10)
  store i64 %34, i64* %8, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = icmp eq i8* %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 -1, i32* %4, align 4
  br label %71

39:                                               ; preds = %32
  %40 = load i64, i64* @errno, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 -1, i32* %4, align 4
  br label %71

43:                                               ; preds = %39
  %44 = load i8**, i8*** %7, align 8
  %45 = icmp ne i8** %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %43
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 -1, i32* %4, align 4
  br label %71

53:                                               ; preds = %46, %43
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* @UINT64_MAX, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 -1, i32* %4, align 4
  br label %71

58:                                               ; preds = %53
  %59 = load i64*, i64** %5, align 8
  %60 = icmp ne i64* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i64, i64* %8, align 8
  %63 = load i64*, i64** %5, align 8
  store i64 %62, i64* %63, align 8
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i8**, i8*** %7, align 8
  %66 = icmp ne i8** %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i8*, i8** %9, align 8
  %69 = load i8**, i8*** %7, align 8
  store i8* %68, i8** %69, align 8
  br label %70

70:                                               ; preds = %67, %64
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %57, %52, %42, %38, %31
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @strtoumax(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
