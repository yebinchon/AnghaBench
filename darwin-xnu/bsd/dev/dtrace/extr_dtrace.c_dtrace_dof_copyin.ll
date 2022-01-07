; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_dof_copyin.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_dof_copyin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@dtrace_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_NOTOWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to copyin DOF header\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@dtrace_dof_maxsize = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"load size exceeds maximum\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"invalid load size\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i32, i32*)* @dtrace_dof_copyin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @dtrace_dof_copyin(i32 %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @LCK_MTX_ASSERT_NOTOWNED, align 4
  %9 = call i32 @LCK_MTX_ASSERT(i32* @dtrace_lock, i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @copyin(i32 %10, %struct.TYPE_7__* %6, i32 4)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = call i32 @dtrace_dof_error(%struct.TYPE_7__* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EFAULT, align 4
  %16 = load i32*, i32** %5, align 8
  store i32 %15, i32* %16, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %63

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* @dtrace_dof_maxsize, align 8
  %21 = trunc i64 %20 to i32
  %22 = icmp sge i32 %19, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = call i32 @dtrace_dof_error(%struct.TYPE_7__* %6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @E2BIG, align 4
  %26 = load i32*, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %63

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ult i64 %30, 4
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = call i32 @dtrace_dof_error(%struct.TYPE_7__* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %63

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @KM_SLEEP, align 4
  %40 = call %struct.TYPE_7__* @kmem_alloc_aligned(i32 %38, i32 8, i32 %39)
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %7, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @copyin(i32 %41, %struct.TYPE_7__* %42, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %36
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %47, %36
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @kmem_free_aligned(%struct.TYPE_7__* %55, i32 %57)
  %59 = load i32, i32* @EFAULT, align 4
  %60 = load i32*, i32** %5, align 8
  store i32 %59, i32* %60, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %63

61:                                               ; preds = %47
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %62, %struct.TYPE_7__** %3, align 8
  br label %63

63:                                               ; preds = %61, %54, %32, %23, %13
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %64
}

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i64 @copyin(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @dtrace_dof_error(%struct.TYPE_7__*, i8*) #1

declare dso_local %struct.TYPE_7__* @kmem_alloc_aligned(i32, i32, i32) #1

declare dso_local i32 @kmem_free_aligned(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
