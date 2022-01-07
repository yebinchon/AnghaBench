; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_platform_tests.c_ex_cb_test.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_platform_tests.c_ex_cb_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@__const.ex_cb_test.test_context_1 = private unnamed_addr constant %struct.TYPE_3__ { i32 -559038737, i64 0 }, align 8
@__const.ex_cb_test.test_context_2 = private unnamed_addr constant %struct.TYPE_3__ { i32 -559038737, i64 0 }, align 8
@.str = private unnamed_addr constant [28 x i8] c"Testing Exception Callback.\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Running registration test.\00", align 1
@EXCB_CLASS_TEST1 = common dso_local global i32 0, align 4
@excb_test_action = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"First registration of TEST1 exception callback\00", align 1
@EXCB_CLASS_TEST2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"First registration of TEST2 exception callback\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Second registration of TEST2 exception callback\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Second registration of TEST1 exception callback\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Running invocation test.\00", align 1
@EXCB_ACTION_RERUN = common dso_local global i64 0, align 8
@EXCB_ACTION_NONE = common dso_local global i64 0, align 8
@EXCB_CLASS_TEST3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ex_cb_test() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i64, align 8
  store i64 3735879681, i64* %1, align 8
  store i64 3735879682, i64* %2, align 8
  %7 = bitcast %struct.TYPE_3__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.TYPE_3__* @__const.ex_cb_test.test_context_1 to i8*), i64 16, i1 false)
  %8 = bitcast %struct.TYPE_3__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.TYPE_3__* @__const.ex_cb_test.test_context_2 to i8*), i64 16, i1 false)
  %9 = call i32 @T_LOG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @T_LOG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32, i32* @EXCB_CLASS_TEST1, align 4
  %12 = call i64 @ex_cb_register(i32 %11, i32* @excb_test_action, %struct.TYPE_3__* %4)
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* @KERN_SUCCESS, align 8
  %14 = load i64, i64* %3, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @T_ASSERT(i32 %16, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %18 = load i32, i32* @EXCB_CLASS_TEST2, align 4
  %19 = call i64 @ex_cb_register(i32 %18, i32* @excb_test_action, %struct.TYPE_3__* %5)
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* @KERN_SUCCESS, align 8
  %21 = load i64, i64* %3, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @T_ASSERT(i32 %23, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %25 = load i32, i32* @EXCB_CLASS_TEST2, align 4
  %26 = call i64 @ex_cb_register(i32 %25, i32* @excb_test_action, %struct.TYPE_3__* %5)
  store i64 %26, i64* %3, align 8
  %27 = load i64, i64* @KERN_SUCCESS, align 8
  %28 = load i64, i64* %3, align 8
  %29 = icmp ne i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @T_ASSERT(i32 %30, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %32 = load i32, i32* @EXCB_CLASS_TEST1, align 4
  %33 = call i64 @ex_cb_register(i32 %32, i32* @excb_test_action, %struct.TYPE_3__* %4)
  store i64 %33, i64* %3, align 8
  %34 = load i64, i64* @KERN_SUCCESS, align 8
  %35 = load i64, i64* %3, align 8
  %36 = icmp ne i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @T_ASSERT(i32 %37, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %39 = call i32 @T_LOG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %40 = load i32, i32* @EXCB_CLASS_TEST1, align 4
  %41 = call i64 @ex_cb_invoke(i32 %40, i64 3735879681)
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* @EXCB_ACTION_RERUN, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @T_ASSERT(i32 %45, i8* null)
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 3735879681, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @T_ASSERT(i32 %50, i8* null)
  %52 = load i32, i32* @EXCB_CLASS_TEST2, align 4
  %53 = call i64 @ex_cb_invoke(i32 %52, i64 3735879682)
  store i64 %53, i64* %6, align 8
  %54 = load i64, i64* @EXCB_ACTION_NONE, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @T_ASSERT(i32 %57, i8* null)
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 3735879682, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @T_ASSERT(i32 %62, i8* null)
  %64 = load i32, i32* @EXCB_CLASS_TEST3, align 4
  %65 = call i64 @ex_cb_invoke(i32 %64, i64 0)
  store i64 %65, i64* %6, align 8
  %66 = load i64, i64* @EXCB_ACTION_NONE, align 8
  %67 = load i64, i64* %6, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @T_ASSERT(i32 %69, i8* null)
  %71 = load i64, i64* @KERN_SUCCESS, align 8
  ret i64 %71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @T_LOG(i8*) #2

declare dso_local i64 @ex_cb_register(i32, i32*, %struct.TYPE_3__*) #2

declare dso_local i32 @T_ASSERT(i32, i8*) #2

declare dso_local i64 @ex_cb_invoke(i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
