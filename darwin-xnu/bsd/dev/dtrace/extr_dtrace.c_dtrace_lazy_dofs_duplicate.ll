; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_lazy_dofs_duplicate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_lazy_dofs_duplicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__*, i32*, i32 }
%struct.TYPE_12__ = type { i32 }

@dtrace_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_NOTOWNED = common dso_local global i32 0, align 4
@dtrace_dof_mode_lock = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@dtrace_dof_mode = common dso_local global i64 0, align 8
@DTRACE_DOF_MODE_LAZY_OFF = common dso_local global i64 0, align 8
@DTRACE_LAZY_DOFS_DUPLICATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_11__*)* @dtrace_lazy_dofs_duplicate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_lazy_dofs_duplicate(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %9 = load i32, i32* @LCK_MTX_ASSERT_NOTOWNED, align 4
  %10 = call i32 @LCK_MTX_ASSERT(i32* @dtrace_lock, i32 %9)
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  %13 = load i32, i32* @LCK_MTX_ASSERT_NOTOWNED, align 4
  %14 = call i32 @LCK_MTX_ASSERT(i32* %12, i32 %13)
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  %17 = load i32, i32* @LCK_MTX_ASSERT_NOTOWNED, align 4
  %18 = call i32 @LCK_MTX_ASSERT(i32* %16, i32 %17)
  %19 = call i32 @lck_rw_lock_shared(i32* @dtrace_dof_mode_lock)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = call i32 @dtrace_sprlock(%struct.TYPE_11__* %20)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = icmp eq %struct.TYPE_12__* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br label %31

31:                                               ; preds = %26, %2
  %32 = phi i1 [ true, %2 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = icmp eq %struct.TYPE_12__* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br label %44

44:                                               ; preds = %39, %31
  %45 = phi i1 [ false, %31 ], [ %43, %39 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @ASSERT(i32 %46)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  store %struct.TYPE_12__* %50, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %52 = icmp ne %struct.TYPE_12__* %51, null
  br i1 %52, label %53, label %65

53:                                               ; preds = %44
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @DOF_IOCTL_DATA_T_SIZE(i32 %56)
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i32, i32* @KM_SLEEP, align 4
  %60 = call %struct.TYPE_12__* @kmem_alloc(i64 %58, i32 %59)
  store %struct.TYPE_12__* %60, %struct.TYPE_12__** %7, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @bcopy(%struct.TYPE_12__* %61, %struct.TYPE_12__* %62, i64 %63)
  br label %65

65:                                               ; preds = %53, %44
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %67 = call i32 @dtrace_sprunlock(%struct.TYPE_11__* %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %69 = icmp ne %struct.TYPE_12__* %68, null
  br i1 %69, label %70, label %87

70:                                               ; preds = %65
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %72 = call i32 @dtrace_sprlock(%struct.TYPE_11__* %71)
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  store %struct.TYPE_12__* %73, %struct.TYPE_12__** %75, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %77 = call i32 @dtrace_sprunlock(%struct.TYPE_11__* %76)
  %78 = load i64, i64* @dtrace_dof_mode, align 8
  %79 = load i64, i64* @DTRACE_DOF_MODE_LAZY_OFF, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %70
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %83 = call i32 @dtrace_lazy_dofs_process(%struct.TYPE_11__* %82)
  br label %84

84:                                               ; preds = %81, %70
  %85 = call i32 @lck_rw_unlock_shared(i32* @dtrace_dof_mode_lock)
  %86 = load i32, i32* @DTRACE_LAZY_DOFS_DUPLICATED, align 4
  store i32 %86, i32* %3, align 4
  br label %89

87:                                               ; preds = %65
  %88 = call i32 @lck_rw_unlock_shared(i32* @dtrace_dof_mode_lock)
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %84
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @lck_rw_lock_shared(i32*) #1

declare dso_local i32 @dtrace_sprlock(%struct.TYPE_11__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @DOF_IOCTL_DATA_T_SIZE(i32) #1

declare dso_local %struct.TYPE_12__* @kmem_alloc(i64, i32) #1

declare dso_local i32 @bcopy(%struct.TYPE_12__*, %struct.TYPE_12__*, i64) #1

declare dso_local i32 @dtrace_sprunlock(%struct.TYPE_11__*) #1

declare dso_local i32 @dtrace_lazy_dofs_process(%struct.TYPE_11__*) #1

declare dso_local i32 @lck_rw_unlock_shared(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
