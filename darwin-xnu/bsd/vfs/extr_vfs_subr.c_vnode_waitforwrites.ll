; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_waitforwrites.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_waitforwrites.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.timespec = type { i32, i32 }

@DBG_FUNC_START = common dso_local global i32 0, align 4
@PDROP = common dso_local global i32 0, align 4
@VTHROTTLED = common dso_local global i32 0, align 4
@VBWAIT = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnode_waitforwrites(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.timespec, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* @DBG_FUNC_START, align 4
  %14 = or i32 50397824, %13
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = ptrtoint %struct.TYPE_5__* %15 to i32
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @KERNEL_DEBUG(i32 %14, i32 %16, i32 %17, i32 %20, i32 0, i32 0)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %86

27:                                               ; preds = %5
  %28 = load i32, i32* @PDROP, align 4
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %8, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = call i32 @vnode_lock_spin(%struct.TYPE_5__* %31)
  br label %33

33:                                               ; preds = %59, %27
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* %11, align 4
  %41 = icmp eq i32 %40, 0
  br label %42

42:                                               ; preds = %39, %33
  %43 = phi i1 [ false, %33 ], [ %41, %39 ]
  br i1 %43, label %44, label %83

44:                                               ; preds = %42
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i32, i32* @VTHROTTLED, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %59

53:                                               ; preds = %44
  %54 = load i32, i32* @VBWAIT, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %47
  %60 = load i32, i32* %9, align 4
  %61 = sdiv i32 %60, 100
  %62 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %9, align 4
  %64 = srem i32 %63, 1000
  %65 = mul nsw i32 %64, 10
  %66 = load i32, i32* @NSEC_PER_USEC, align 4
  %67 = mul nsw i32 %65, %66
  %68 = mul nsw i32 %67, 1000
  %69 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = ptrtoint i32* %71 to i32
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @PRIBIO, align 4
  %77 = add nsw i32 %76, 1
  %78 = or i32 %75, %77
  %79 = load i8*, i8** %10, align 8
  %80 = call i32 @msleep(i32 %72, i32* %74, i32 %78, i8* %79, %struct.timespec* %12)
  store i32 %80, i32* %11, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %82 = call i32 @vnode_lock_spin(%struct.TYPE_5__* %81)
  br label %33

83:                                               ; preds = %42
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %85 = call i32 @vnode_unlock(%struct.TYPE_5__* %84)
  br label %86

86:                                               ; preds = %83, %5
  %87 = load i32, i32* @DBG_FUNC_END, align 4
  %88 = or i32 50397824, %87
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %90 = ptrtoint %struct.TYPE_5__* %89 to i32
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @KERNEL_DEBUG(i32 %88, i32 %90, i32 %91, i32 %94, i32 %95, i32 0)
  %97 = load i32, i32* %11, align 4
  ret i32 %97
}

declare dso_local i32 @KERNEL_DEBUG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vnode_lock_spin(%struct.TYPE_5__*) #1

declare dso_local i32 @msleep(i32, i32*, i32, i8*, %struct.timespec*) #1

declare dso_local i32 @vnode_unlock(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
