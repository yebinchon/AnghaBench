; ModuleID = '/home/carl/AnghaBench/esp-idf/components/pthread/test/extr_test_pthread.c_test_mutex_lock_unlock.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/pthread/test/extr_test_pthread.c_test_mutex_lock_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PTHREAD_MUTEX_ERRORCHECK = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i32 0, align 4
@unlock_mutex = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_mutex_lock_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_mutex_lock_unlock(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 -1, i32* %4, align 4
  store volatile i32 0, i32* %5, align 4
  store volatile i32 0, i32* %6, align 4
  store volatile i64 0, i64* %7, align 8
  %11 = call i64 (...) @TEST_PROTECT()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %60

13:                                               ; preds = %1
  %14 = call i32 @pthread_mutexattr_init(i32* %9)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @TEST_ASSERT_EQUAL_INT(i32 0, i32 %15)
  store volatile i32 1, i32* %5, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @pthread_mutexattr_settype(i32* %9, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @TEST_ASSERT_EQUAL_INT(i32 0, i32 %19)
  %21 = call i32 @pthread_mutexattr_gettype(i32* %9, i32* %4)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @TEST_ASSERT_EQUAL_INT(i32 0, i32 %22)
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @TEST_ASSERT_EQUAL_INT(i32 %24, i32 %25)
  %27 = call i32 @pthread_mutex_init(i32* %8, i32* %9)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @TEST_ASSERT_EQUAL_INT(i32 0, i32 %28)
  store volatile i32 1, i32* %6, align 4
  %30 = call i32 @pthread_mutex_lock(i32* %8)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @TEST_ASSERT_EQUAL_INT(i32 0, i32 %31)
  %33 = call i32 @pthread_mutex_lock(i32* %8)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @PTHREAD_MUTEX_ERRORCHECK, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %13
  %38 = load i32, i32* @EDEADLK, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @TEST_ASSERT_EQUAL_INT(i32 %38, i32 %39)
  br label %47

41:                                               ; preds = %13
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @TEST_ASSERT_EQUAL_INT(i32 0, i32 %42)
  %44 = call i32 @pthread_mutex_unlock(i32* %8)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @TEST_ASSERT_EQUAL_INT(i32 0, i32 %45)
  br label %47

47:                                               ; preds = %41, %37
  %48 = load i32, i32* @unlock_mutex, align 4
  %49 = call i32 @pthread_create(i32* %10, i32* null, i32 %48, i32* %8)
  %50 = load i32, i32* %10, align 4
  %51 = bitcast i64* %7 to i8**
  %52 = call i32 @pthread_join(i32 %50, i8** %51)
  %53 = load i32, i32* @EPERM, align 4
  %54 = load volatile i64, i64* %7, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 @TEST_ASSERT_EQUAL_INT(i32 %53, i32 %55)
  %57 = call i32 @pthread_mutex_unlock(i32* %8)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @TEST_ASSERT_EQUAL_INT(i32 0, i32 %58)
  br label %60

60:                                               ; preds = %47, %1
  %61 = load volatile i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 @pthread_mutexattr_destroy(i32* %9)
  br label %65

65:                                               ; preds = %63, %60
  %66 = load volatile i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = call i32 @pthread_mutex_destroy(i32* %8)
  br label %70

70:                                               ; preds = %68, %65
  ret void
}

declare dso_local i64 @TEST_PROTECT(...) #1

declare dso_local i32 @pthread_mutexattr_init(i32*) #1

declare dso_local i32 @TEST_ASSERT_EQUAL_INT(i32, i32) #1

declare dso_local i32 @pthread_mutexattr_settype(i32*, i32) #1

declare dso_local i32 @pthread_mutexattr_gettype(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @pthread_join(i32, i8**) #1

declare dso_local i32 @pthread_mutexattr_destroy(i32*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
