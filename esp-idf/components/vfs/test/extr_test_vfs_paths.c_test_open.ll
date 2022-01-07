; ModuleID = '/home/carl/AnghaBench/esp-idf/components/vfs/test/extr_test_vfs_paths.c_test_open.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/vfs/test/extr_test_vfs_paths.c_test_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"should_be_called check failed\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"should be opened\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"should not be opened\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32, i32, i32)* @test_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_open(%struct.TYPE_3__* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* @O_CREAT, align 4
  %14 = load i32, i32* @O_TRUNC, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @O_RDWR, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %11, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = call i32 (...) @__getreent()
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @esp_vfs_open(i32 %20, i8* %21, i32 %22, i32 0)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @UNITY_TEST_ASSERT_EQUAL_INT(i32 %24, i32 %27, i32 %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %5
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32, i32* %12, align 4
  %37 = icmp sge i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @UNITY_TEST_ASSERT(i32 %38, i32 %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %47

41:                                               ; preds = %32
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @UNITY_TEST_ASSERT(i32 %44, i32 %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %41, %35
  br label %48

48:                                               ; preds = %47, %5
  %49 = call i32 (...) @__getreent()
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @esp_vfs_close(i32 %49, i32 %50)
  ret void
}

declare dso_local i32 @esp_vfs_open(i32, i8*, i32, i32) #1

declare dso_local i32 @__getreent(...) #1

declare dso_local i32 @UNITY_TEST_ASSERT_EQUAL_INT(i32, i32, i32, i8*) #1

declare dso_local i32 @UNITY_TEST_ASSERT(i32, i32, i8*) #1

declare dso_local i32 @esp_vfs_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
