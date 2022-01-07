; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/perf_index/extr_test_file_helper.c_test_file_create.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/perf_index/extr_test_file_helper.c_test_file_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s/file_create-%d-%lld\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"open failed\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"unlink failed\00", align 1
@PERFINDEX_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_file_create(i8* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %14 = load i32, i32* @MAXPATHLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %12, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %13, align 8
  store i64 0, i64* %9, align 8
  br label %18

18:                                               ; preds = %40, %4
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %18
  %23 = load i32, i32* @MAXPATHLEN, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @snprintf(i8* %17, i32 %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %25, i64 %26)
  %28 = load i32, i32* @O_CREAT, align 4
  %29 = load i32, i32* @O_EXCL, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @O_WRONLY, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @open(i8* %17, i32 %32, i32 420)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp sge i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @VERIFY(i32 %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @close(i32 %38)
  br label %40

40:                                               ; preds = %22
  %41 = load i64, i64* %9, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %9, align 8
  br label %18

43:                                               ; preds = %18
  store i64 0, i64* %9, align 8
  br label %44

44:                                               ; preds = %59, %43
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = load i32, i32* @MAXPATHLEN, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @snprintf(i8* %17, i32 %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %50, i32 %51, i64 %52)
  %54 = call i32 @unlink(i8* %17)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @VERIFY(i32 %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %48
  %60 = load i64, i64* %9, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %9, align 8
  br label %44

62:                                               ; preds = %44
  %63 = load i32, i32* @PERFINDEX_SUCCESS, align 4
  %64 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %64)
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i64) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @VERIFY(i32, i8*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @unlink(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
