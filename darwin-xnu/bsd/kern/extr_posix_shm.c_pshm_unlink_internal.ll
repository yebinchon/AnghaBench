; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_posix_shm.c_pshm_unlink_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_posix_shm.c_pshm_unlink_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pshminfo = type { i32, %struct.pshminfo*, i32, %struct.pshminfo*, i32 }
%struct.pshmcache = type { i32, %struct.pshmcache*, i32, %struct.pshmcache*, i32 }
%struct.pshmobj = type { i32, %struct.pshmobj*, i32, %struct.pshmobj*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PSHM_DEFINED = common dso_local global i32 0, align 4
@PSHM_ALLOCATED = common dso_local global i32 0, align 4
@PSHM_INDELETE = common dso_local global i32 0, align 4
@PSHM_REMOVED = common dso_local global i32 0, align 4
@M_SHM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pshminfo*, %struct.pshmcache*)* @pshm_unlink_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pshm_unlink_internal(%struct.pshminfo* %0, %struct.pshmcache* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pshminfo*, align 8
  %5 = alloca %struct.pshmcache*, align 8
  %6 = alloca %struct.pshmobj*, align 8
  %7 = alloca %struct.pshmobj*, align 8
  store %struct.pshminfo* %0, %struct.pshminfo** %4, align 8
  store %struct.pshmcache* %1, %struct.pshmcache** %5, align 8
  %8 = call i32 (...) @PSHM_SUBSYS_ASSERT_HELD()
  %9 = load %struct.pshminfo*, %struct.pshminfo** %4, align 8
  %10 = icmp ne %struct.pshminfo* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.pshmcache*, %struct.pshmcache** %5, align 8
  %13 = icmp ne %struct.pshmcache* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %88

16:                                               ; preds = %11
  %17 = load %struct.pshminfo*, %struct.pshminfo** %4, align 8
  %18 = getelementptr inbounds %struct.pshminfo, %struct.pshminfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @PSHM_DEFINED, align 4
  %21 = load i32, i32* @PSHM_ALLOCATED, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %3, align 4
  br label %88

27:                                               ; preds = %16
  %28 = load %struct.pshminfo*, %struct.pshminfo** %4, align 8
  %29 = getelementptr inbounds %struct.pshminfo, %struct.pshminfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @PSHM_INDELETE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %88

35:                                               ; preds = %27
  %36 = load i32, i32* @PSHM_INDELETE, align 4
  %37 = load %struct.pshminfo*, %struct.pshminfo** %4, align 8
  %38 = getelementptr inbounds %struct.pshminfo, %struct.pshminfo* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.pshminfo*, %struct.pshminfo** %4, align 8
  %42 = getelementptr inbounds %struct.pshminfo, %struct.pshminfo* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 8
  %45 = load %struct.pshmcache*, %struct.pshmcache** %5, align 8
  %46 = bitcast %struct.pshmcache* %45 to %struct.pshmobj*
  %47 = call i32 @pshm_cache_delete(%struct.pshmobj* %46)
  %48 = load i32, i32* @PSHM_REMOVED, align 4
  %49 = load %struct.pshminfo*, %struct.pshminfo** %4, align 8
  %50 = getelementptr inbounds %struct.pshminfo, %struct.pshminfo* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.pshminfo*, %struct.pshminfo** %4, align 8
  %54 = getelementptr inbounds %struct.pshminfo, %struct.pshminfo* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %83, label %57

57:                                               ; preds = %35
  %58 = load %struct.pshminfo*, %struct.pshminfo** %4, align 8
  %59 = getelementptr inbounds %struct.pshminfo, %struct.pshminfo* %58, i32 0, i32 3
  %60 = load %struct.pshminfo*, %struct.pshminfo** %59, align 8
  %61 = bitcast %struct.pshminfo* %60 to %struct.pshmobj*
  store %struct.pshmobj* %61, %struct.pshmobj** %6, align 8
  br label %62

62:                                               ; preds = %76, %57
  %63 = load %struct.pshmobj*, %struct.pshmobj** %6, align 8
  %64 = icmp ne %struct.pshmobj* %63, null
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  %66 = load %struct.pshmobj*, %struct.pshmobj** %6, align 8
  %67 = getelementptr inbounds %struct.pshmobj, %struct.pshmobj* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @mach_memory_entry_port_release(i32 %68)
  %70 = load %struct.pshmobj*, %struct.pshmobj** %6, align 8
  %71 = getelementptr inbounds %struct.pshmobj, %struct.pshmobj* %70, i32 0, i32 1
  %72 = load %struct.pshmobj*, %struct.pshmobj** %71, align 8
  store %struct.pshmobj* %72, %struct.pshmobj** %7, align 8
  %73 = load %struct.pshmobj*, %struct.pshmobj** %6, align 8
  %74 = load i32, i32* @M_SHM, align 4
  %75 = call i32 @FREE(%struct.pshmobj* %73, i32 %74)
  br label %76

76:                                               ; preds = %65
  %77 = load %struct.pshmobj*, %struct.pshmobj** %7, align 8
  store %struct.pshmobj* %77, %struct.pshmobj** %6, align 8
  br label %62

78:                                               ; preds = %62
  %79 = load %struct.pshminfo*, %struct.pshminfo** %4, align 8
  %80 = bitcast %struct.pshminfo* %79 to %struct.pshmobj*
  %81 = load i32, i32* @M_SHM, align 4
  %82 = call i32 @FREE(%struct.pshmobj* %80, i32 %81)
  br label %83

83:                                               ; preds = %78, %35
  %84 = load %struct.pshmcache*, %struct.pshmcache** %5, align 8
  %85 = bitcast %struct.pshmcache* %84 to %struct.pshmobj*
  %86 = load i32, i32* @M_SHM, align 4
  %87 = call i32 @FREE(%struct.pshmobj* %85, i32 %86)
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %83, %34, %25, %14
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @PSHM_SUBSYS_ASSERT_HELD(...) #1

declare dso_local i32 @pshm_cache_delete(%struct.pshmobj*) #1

declare dso_local i32 @mach_memory_entry_port_release(i32) #1

declare dso_local i32 @FREE(%struct.pshmobj*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
