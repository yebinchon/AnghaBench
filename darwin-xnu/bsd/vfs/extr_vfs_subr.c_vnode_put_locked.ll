; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_put_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_put_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"vnode_put(%p): iocount < 1\00", align 1
@VL_DEAD = common dso_local global i32 0, align 4
@VL_NEEDINACTIVE = common dso_local global i32 0, align 4
@VL_MARKTERM = common dso_local global i32 0, align 4
@VL_TERMINATE = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnode_put_locked(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %5 = call i32 (...) @vfs_context_current()
  store i32 %5, i32* %4, align 4
  br label %6

6:                                                ; preds = %37, %1
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %12)
  br label %14

14:                                               ; preds = %11, %6
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %19, %14
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = call i32 @vnode_dropiocount(%struct.TYPE_11__* %25)
  store i32 0, i32* %2, align 4
  br label %79

27:                                               ; preds = %19
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @VL_DEAD, align 4
  %32 = load i32, i32* @VL_NEEDINACTIVE, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = load i32, i32* @VL_NEEDINACTIVE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %27
  %38 = load i32, i32* @VL_NEEDINACTIVE, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = call i32 @vnode_unlock(%struct.TYPE_11__* %44)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @VNOP_INACTIVE(%struct.TYPE_11__* %46, i32 %47)
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = call i32 @vnode_lock_spin(%struct.TYPE_11__* %49)
  br label %6

51:                                               ; preds = %27
  %52 = load i32, i32* @VL_NEEDINACTIVE, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @VL_MARKTERM, align 4
  %62 = load i32, i32* @VL_TERMINATE, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @VL_DEAD, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %60, %65
  %67 = load i32, i32* @VL_MARKTERM, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %51
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %71 = call i32 @vnode_lock_convert(%struct.TYPE_11__* %70)
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %73 = call i32 @vnode_reclaim_internal(%struct.TYPE_11__* %72, i32 1, i32 1, i32 0)
  br label %74

74:                                               ; preds = %69, %51
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %76 = call i32 @vnode_dropiocount(%struct.TYPE_11__* %75)
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %78 = call i32 @vnode_list_add(%struct.TYPE_11__* %77)
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %74, %24
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @vfs_context_current(...) #1

declare dso_local i32 @panic(i8*, %struct.TYPE_11__*) #1

declare dso_local i32 @vnode_dropiocount(%struct.TYPE_11__*) #1

declare dso_local i32 @vnode_unlock(%struct.TYPE_11__*) #1

declare dso_local i32 @VNOP_INACTIVE(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @vnode_lock_spin(%struct.TYPE_11__*) #1

declare dso_local i32 @vnode_lock_convert(%struct.TYPE_11__*) #1

declare dso_local i32 @vnode_reclaim_internal(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @vnode_list_add(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
