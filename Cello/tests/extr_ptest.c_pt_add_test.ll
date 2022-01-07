; ModuleID = '/home/carl/AnghaBench/Cello/tests/extr_ptest.c_pt_add_test.c'
source_filename = "/home/carl/AnghaBench/Cello/tests/extr_ptest.c_pt_add_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { void (...)*, i32, i32 }

@num_tests = common dso_local global i32 0, align 4
@MAX_TESTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"ERROR: Exceeded maximum test count of %i!\0A\00", align 1
@MAX_NAME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"ERROR: Test name '%s' too long (Maximum is %i characters)\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"ERROR: Test suite '%s' too long (Maximum is %i characters)\0A\00", align 1
@tests = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pt_add_test(void ()* %0, i8* %1, i8* %2) #0 {
  %4 = alloca void ()*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__, align 8
  store void ()* %0, void ()** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* @num_tests, align 4
  %9 = load i32, i32* @MAX_TESTS, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* @MAX_TESTS, align 4
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = call i32 (...) @abort() #4
  unreachable

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = load i64, i64* @MAX_NAME, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* @MAX_NAME, align 8
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i8* %21, i64 %22)
  %24 = call i32 (...) @abort() #4
  unreachable

25:                                               ; preds = %15
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @strlen(i8* %26)
  %28 = load i64, i64* @MAX_NAME, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* @MAX_NAME, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i8* %31, i64 %32)
  %34 = call i32 (...) @abort() #4
  unreachable

35:                                               ; preds = %25
  %36 = load void ()*, void ()** %4, align 8
  %37 = bitcast void ()* %36 to void (...)*
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store void (...)* %37, void (...)** %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @pt_title_case(i32 %40, i8* %41)
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @pt_title_case(i32 %44, i8* %45)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tests, align 8
  %48 = load i32, i32* @num_tests, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = bitcast %struct.TYPE_3__* %50 to i8*
  %52 = bitcast %struct.TYPE_3__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 16, i1 false)
  %53 = load i32, i32* @num_tests, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @num_tests, align 4
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @pt_title_case(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
