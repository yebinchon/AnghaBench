; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_dof_copyin_from_proc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_dof_copyin_from_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@dtrace_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_NOTOWNED = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"failed to copyin DOF header\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@dtrace_dof_maxsize = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"load size exceeds maximum\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"invalid load size\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i32*, i32, i32*)* @dtrace_dof_copyin_from_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @dtrace_dof_copyin_from_proc(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* @LCK_MTX_ASSERT_NOTOWNED, align 4
  %11 = call i32 @LCK_MTX_ASSERT(i32* @dtrace_lock, i32 %10)
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @uread(i32* %12, %struct.TYPE_7__* %8, i32 4, i32 %13)
  %15 = load i64, i64* @KERN_SUCCESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = call i32 @dtrace_dof_error(%struct.TYPE_7__* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EFAULT, align 4
  %20 = load i32*, i32** %7, align 8
  store i32 %19, i32* %20, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %62

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* @dtrace_dof_maxsize, align 8
  %25 = trunc i64 %24 to i32
  %26 = icmp sge i32 %23, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = call i32 @dtrace_dof_error(%struct.TYPE_7__* %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @E2BIG, align 4
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %62

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp ult i64 %34, 4
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = call i32 @dtrace_dof_error(%struct.TYPE_7__* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %62

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @KM_SLEEP, align 4
  %44 = call %struct.TYPE_7__* @kmem_alloc_aligned(i32 %42, i32 8, i32 %43)
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %9, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i64 @uread(i32* %45, %struct.TYPE_7__* %46, i32 %48, i32 %49)
  %51 = load i64, i64* @KERN_SUCCESS, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %40
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @kmem_free_aligned(%struct.TYPE_7__* %54, i32 %56)
  %58 = load i32, i32* @EFAULT, align 4
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %62

60:                                               ; preds = %40
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %61, %struct.TYPE_7__** %4, align 8
  br label %62

62:                                               ; preds = %60, %53, %36, %27, %17
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %63
}

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i64 @uread(i32*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @dtrace_dof_error(%struct.TYPE_7__*, i8*) #1

declare dso_local %struct.TYPE_7__* @kmem_alloc_aligned(i32, i32, i32) #1

declare dso_local i32 @kmem_free_aligned(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
