; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_init.c_vfstable_del.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_init.c_vfstable_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfstable = type { %struct.vfstable*, %struct.vfstable*, i32* }

@vfsconf = common dso_local global %struct.vfstable* null, align 8
@ESRCH = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@maxvfsslots = common dso_local global i32 0, align 4
@numregistered_fses = common dso_local global i32 0, align 4
@numused_vfsslots = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@mnt_list_mtx_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfstable_del(%struct.vfstable* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vfstable*, align 8
  %4 = alloca %struct.vfstable**, align 8
  %5 = alloca %struct.vfstable*, align 8
  store %struct.vfstable* %0, %struct.vfstable** %3, align 8
  store %struct.vfstable** @vfsconf, %struct.vfstable*** %4, align 8
  br label %6

6:                                                ; preds = %17, %1
  %7 = load %struct.vfstable**, %struct.vfstable*** %4, align 8
  %8 = load %struct.vfstable*, %struct.vfstable** %7, align 8
  %9 = icmp ne %struct.vfstable* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = load %struct.vfstable**, %struct.vfstable*** %4, align 8
  %12 = load %struct.vfstable*, %struct.vfstable** %11, align 8
  %13 = load %struct.vfstable*, %struct.vfstable** %3, align 8
  %14 = icmp eq %struct.vfstable* %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %21

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %16
  %18 = load %struct.vfstable**, %struct.vfstable*** %4, align 8
  %19 = load %struct.vfstable*, %struct.vfstable** %18, align 8
  %20 = getelementptr inbounds %struct.vfstable, %struct.vfstable* %19, i32 0, i32 0
  store %struct.vfstable** %20, %struct.vfstable*** %4, align 8
  br label %6

21:                                               ; preds = %15, %6
  %22 = load %struct.vfstable**, %struct.vfstable*** %4, align 8
  %23 = load %struct.vfstable*, %struct.vfstable** %22, align 8
  %24 = icmp eq %struct.vfstable* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @ESRCH, align 4
  store i32 %26, i32* %2, align 4
  br label %87

27:                                               ; preds = %21
  %28 = load %struct.vfstable**, %struct.vfstable*** %4, align 8
  %29 = load %struct.vfstable*, %struct.vfstable** %28, align 8
  %30 = getelementptr inbounds %struct.vfstable, %struct.vfstable* %29, i32 0, i32 1
  %31 = load %struct.vfstable*, %struct.vfstable** %30, align 8
  %32 = icmp ne %struct.vfstable* %31, null
  br i1 %32, label %33, label %53

33:                                               ; preds = %27
  %34 = load %struct.vfstable**, %struct.vfstable*** %4, align 8
  %35 = load %struct.vfstable*, %struct.vfstable** %34, align 8
  %36 = getelementptr inbounds %struct.vfstable, %struct.vfstable* %35, i32 0, i32 1
  %37 = load %struct.vfstable*, %struct.vfstable** %36, align 8
  %38 = call i32 @sysctl_unregister_oid(%struct.vfstable* %37)
  %39 = load %struct.vfstable**, %struct.vfstable*** %4, align 8
  %40 = load %struct.vfstable*, %struct.vfstable** %39, align 8
  %41 = getelementptr inbounds %struct.vfstable, %struct.vfstable* %40, i32 0, i32 1
  %42 = load %struct.vfstable*, %struct.vfstable** %41, align 8
  %43 = getelementptr inbounds %struct.vfstable, %struct.vfstable* %42, i32 0, i32 2
  store i32* null, i32** %43, align 8
  %44 = load %struct.vfstable**, %struct.vfstable*** %4, align 8
  %45 = load %struct.vfstable*, %struct.vfstable** %44, align 8
  %46 = getelementptr inbounds %struct.vfstable, %struct.vfstable* %45, i32 0, i32 1
  %47 = load %struct.vfstable*, %struct.vfstable** %46, align 8
  %48 = load i32, i32* @M_TEMP, align 4
  %49 = call i32 @FREE(%struct.vfstable* %47, i32 %48)
  %50 = load %struct.vfstable**, %struct.vfstable*** %4, align 8
  %51 = load %struct.vfstable*, %struct.vfstable** %50, align 8
  %52 = getelementptr inbounds %struct.vfstable, %struct.vfstable* %51, i32 0, i32 1
  store %struct.vfstable* null, %struct.vfstable** %52, align 8
  br label %53

53:                                               ; preds = %33, %27
  %54 = load %struct.vfstable**, %struct.vfstable*** %4, align 8
  %55 = load %struct.vfstable*, %struct.vfstable** %54, align 8
  store %struct.vfstable* %55, %struct.vfstable** %5, align 8
  %56 = load %struct.vfstable**, %struct.vfstable*** %4, align 8
  %57 = load %struct.vfstable*, %struct.vfstable** %56, align 8
  %58 = getelementptr inbounds %struct.vfstable, %struct.vfstable* %57, i32 0, i32 0
  %59 = load %struct.vfstable*, %struct.vfstable** %58, align 8
  %60 = load %struct.vfstable**, %struct.vfstable*** %4, align 8
  store %struct.vfstable* %59, %struct.vfstable** %60, align 8
  %61 = load %struct.vfstable*, %struct.vfstable** %5, align 8
  %62 = load %struct.vfstable*, %struct.vfstable** @vfsconf, align 8
  %63 = icmp uge %struct.vfstable* %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %53
  %65 = load %struct.vfstable*, %struct.vfstable** %5, align 8
  %66 = load %struct.vfstable*, %struct.vfstable** @vfsconf, align 8
  %67 = load i32, i32* @maxvfsslots, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.vfstable, %struct.vfstable* %66, i64 %68
  %70 = icmp ult %struct.vfstable* %65, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %64
  %72 = load %struct.vfstable*, %struct.vfstable** %5, align 8
  %73 = call i32 @bzero(%struct.vfstable* %72, i32 24)
  %74 = load i32, i32* @numregistered_fses, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* @numregistered_fses, align 4
  %76 = load i32, i32* @numused_vfsslots, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* @numused_vfsslots, align 4
  br label %86

78:                                               ; preds = %64, %53
  %79 = load i32, i32* @numregistered_fses, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* @numregistered_fses, align 4
  %81 = call i32 (...) @mount_list_unlock()
  %82 = load %struct.vfstable*, %struct.vfstable** %5, align 8
  %83 = load i32, i32* @M_TEMP, align 4
  %84 = call i32 @FREE(%struct.vfstable* %82, i32 %83)
  %85 = call i32 (...) @mount_list_lock()
  br label %86

86:                                               ; preds = %78, %71
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %86, %25
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @sysctl_unregister_oid(%struct.vfstable*) #1

declare dso_local i32 @FREE(%struct.vfstable*, i32) #1

declare dso_local i32 @bzero(%struct.vfstable*, i32) #1

declare dso_local i32 @mount_list_unlock(...) #1

declare dso_local i32 @mount_list_lock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
