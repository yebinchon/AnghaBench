; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_posix_sem.c_psem_unlink_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_posix_sem.c_psem_unlink_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pseminfo = type { i32, i32, i32, i32, i32 }
%struct.psemcache = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PSEM_DEFINED = common dso_local global i32 0, align 4
@PSEM_ALLOCATED = common dso_local global i32 0, align 4
@PSEM_INDELETE = common dso_local global i32 0, align 4
@posix_ipc_perm = common dso_local global i32 0, align 4
@M_SHM = common dso_local global i32 0, align 4
@PSEM_REMOVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pseminfo*, %struct.psemcache*)* @psem_unlink_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psem_unlink_internal(%struct.pseminfo* %0, %struct.psemcache* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pseminfo*, align 8
  %5 = alloca %struct.psemcache*, align 8
  store %struct.pseminfo* %0, %struct.pseminfo** %4, align 8
  store %struct.psemcache* %1, %struct.psemcache** %5, align 8
  %6 = call i32 (...) @PSEM_SUBSYS_ASSERT_HELD()
  %7 = load %struct.pseminfo*, %struct.pseminfo** %4, align 8
  %8 = icmp ne %struct.pseminfo* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.psemcache*, %struct.psemcache** %5, align 8
  %11 = icmp ne %struct.psemcache* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %78

14:                                               ; preds = %9
  %15 = load %struct.pseminfo*, %struct.pseminfo** %4, align 8
  %16 = getelementptr inbounds %struct.pseminfo, %struct.pseminfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PSEM_DEFINED, align 4
  %19 = load i32, i32* @PSEM_ALLOCATED, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %3, align 4
  br label %78

25:                                               ; preds = %14
  %26 = load %struct.pseminfo*, %struct.pseminfo** %4, align 8
  %27 = getelementptr inbounds %struct.pseminfo, %struct.pseminfo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PSEM_INDELETE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %78

33:                                               ; preds = %25
  %34 = load i32, i32* @posix_ipc_perm, align 4
  %35 = load %struct.pseminfo*, %struct.pseminfo** %4, align 8
  %36 = getelementptr inbounds %struct.pseminfo, %struct.pseminfo* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.pseminfo*, %struct.pseminfo** %4, align 8
  %39 = getelementptr inbounds %struct.pseminfo, %struct.pseminfo* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.pseminfo*, %struct.pseminfo** %4, align 8
  %42 = getelementptr inbounds %struct.pseminfo, %struct.pseminfo* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @AUDIT_ARG(i32 %34, i32 %37, i32 %40, i32 %43)
  %45 = load i32, i32* @PSEM_INDELETE, align 4
  %46 = load %struct.pseminfo*, %struct.pseminfo** %4, align 8
  %47 = getelementptr inbounds %struct.pseminfo, %struct.pseminfo* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.pseminfo*, %struct.pseminfo** %4, align 8
  %51 = getelementptr inbounds %struct.pseminfo, %struct.pseminfo* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %51, align 4
  %54 = load %struct.pseminfo*, %struct.pseminfo** %4, align 8
  %55 = getelementptr inbounds %struct.pseminfo, %struct.pseminfo* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %33
  %59 = load %struct.pseminfo*, %struct.pseminfo** %4, align 8
  %60 = call i32 @psem_delete(%struct.pseminfo* %59)
  %61 = load %struct.pseminfo*, %struct.pseminfo** %4, align 8
  %62 = load i32, i32* @M_SHM, align 4
  %63 = call i32 @FREE(%struct.pseminfo* %61, i32 %62)
  br label %70

64:                                               ; preds = %33
  %65 = load i32, i32* @PSEM_REMOVED, align 4
  %66 = load %struct.pseminfo*, %struct.pseminfo** %4, align 8
  %67 = getelementptr inbounds %struct.pseminfo, %struct.pseminfo* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %64, %58
  %71 = load %struct.psemcache*, %struct.psemcache** %5, align 8
  %72 = bitcast %struct.psemcache* %71 to %struct.pseminfo*
  %73 = call i32 @psem_cache_delete(%struct.pseminfo* %72)
  %74 = load %struct.psemcache*, %struct.psemcache** %5, align 8
  %75 = bitcast %struct.psemcache* %74 to %struct.pseminfo*
  %76 = load i32, i32* @M_SHM, align 4
  %77 = call i32 @FREE(%struct.pseminfo* %75, i32 %76)
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %70, %32, %23, %12
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @PSEM_SUBSYS_ASSERT_HELD(...) #1

declare dso_local i32 @AUDIT_ARG(i32, i32, i32, i32) #1

declare dso_local i32 @psem_delete(%struct.pseminfo*) #1

declare dso_local i32 @FREE(%struct.pseminfo*, i32) #1

declare dso_local i32 @psem_cache_delete(%struct.pseminfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
