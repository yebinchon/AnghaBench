; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_kernel_uuid_match.c_find_and_compare_test_uuids.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_kernel_uuid_match.c_find_and_compare_test_uuids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8** }
%struct.stat = type { i32 }

@T_WITH_ERRNO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"glob %s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"stat %s\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Reading file at path: %s\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"The sources match\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @find_and_compare_test_uuids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_and_compare_test_uuids(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.stat, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @glob(i8* %13, i32 0, i32* null, %struct.TYPE_4__* %5)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @T_WITH_ERRNO, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @T_ASSERT_EQ(i32 %16, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %17)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %56, %2
  %20 = load i32, i32* %8, align 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %59

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %26 = load i8**, i8*** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @stat(i8* %31, %struct.stat* %10)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  %36 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @S_IFREG, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %24
  br label %56

42:                                               ; preds = %24
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @T_LOG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  %45 = load i8*, i8** %9, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i64 @parse_binary_uuid(i8* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i64 @uuid_compare(i32 %50, i32 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 1, i32* %7, align 4
  br label %59

55:                                               ; preds = %49, %42
  br label %56

56:                                               ; preds = %55, %41
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %19

59:                                               ; preds = %54, %19
  %60 = call i32 @globfree(%struct.TYPE_4__* %5)
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @T_EXPECT_TRUE(i32 %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @glob(i8*, i32, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @T_ASSERT_EQ(i32, i32, i8*, i8*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @T_ASSERT_POSIX_SUCCESS(i32, i8*, i8*) #1

declare dso_local i32 @T_LOG(i8*, i8*) #1

declare dso_local i64 @parse_binary_uuid(i8*, i32) #1

declare dso_local i64 @uuid_compare(i32, i32) #1

declare dso_local i32 @globfree(%struct.TYPE_4__*) #1

declare dso_local i32 @T_EXPECT_TRUE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
