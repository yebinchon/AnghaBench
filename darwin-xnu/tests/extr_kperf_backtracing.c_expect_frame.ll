; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_kperf_backtracing.c_expect_frame.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_kperf_backtracing.c_expect_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"frame %2u: skipping system frame\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"invalid symbol for address %#lx at frame %d\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"unexpected frame '%s' (%#lx) at index %u\00", align 1
@T_QUIET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"frame %2u: saw '%s', expected '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32, i32, i64, i32, i32)* @expect_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expect_frame(i8** %0, i32 %1, i32 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* %11, align 4
  %17 = sub i32 %15, %16
  %18 = sub i32 %17, 1
  store i32 %18, i32* %14, align 4
  %19 = load i8**, i8*** %7, align 8
  %20 = load i32, i32* %14, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %6
  %26 = load i32, i32* %14, align 4
  %27 = call i32 @T_LOG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %66

28:                                               ; preds = %6
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @CSIsNull(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i64, i64* %10, align 8
  %34 = load i32, i32* %14, align 4
  %35 = call i32 (i8*, ...) @T_FAIL(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %33, i32 %34)
  br label %66

36:                                               ; preds = %28
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp uge i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = call i8* @CSSymbolGetName(i32 %41)
  %43 = load i64, i64* %10, align 8
  %44 = load i32, i32* %14, align 4
  %45 = call i32 (i8*, ...) @T_FAIL(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %42, i64 %43, i32 %44)
  br label %66

46:                                               ; preds = %36
  %47 = load i32, i32* %9, align 4
  %48 = call i8* @CSSymbolGetName(i32 %47)
  store i8* %48, i8** %13, align 8
  %49 = load i32, i32* @T_QUIET, align 4
  %50 = load i8*, i8** %13, align 8
  %51 = call i32 @T_ASSERT_NOTNULL(i8* %50, i32* null)
  %52 = load i8*, i8** %13, align 8
  %53 = load i8**, i8*** %7, align 8
  %54 = load i32, i32* %14, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* %14, align 4
  %59 = load i8*, i8** %13, align 8
  %60 = load i8**, i8*** %7, align 8
  %61 = load i32, i32* %14, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @T_EXPECT_EQ_STR(i8* %52, i8* %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %58, i8* %59, i8* %64)
  br label %66

66:                                               ; preds = %46, %40, %32, %25
  ret void
}

declare dso_local i32 @T_LOG(i8*, i32) #1

declare dso_local i64 @CSIsNull(i32) #1

declare dso_local i32 @T_FAIL(i8*, ...) #1

declare dso_local i8* @CSSymbolGetName(i32) #1

declare dso_local i32 @T_ASSERT_NOTNULL(i8*, i32*) #1

declare dso_local i32 @T_EXPECT_EQ_STR(i8*, i8*, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
