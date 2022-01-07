; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_posix_sem.c_psem_cache_add.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_posix_sem.c_psem_cache_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pseminfo = type { i32 }
%struct.psemname = type { i64, i32 }
%struct.psemcache = type { i64, %struct.TYPE_2__, i32, %struct.pseminfo* }
%struct.TYPE_2__ = type { %struct.psemcache* }
%struct.psemhashhead = type { %struct.psemcache* }

@PSEMCACHE_FOUND = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@psemnument = common dso_local global i64 0, align 8
@posix_sem_max = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@psem_hash = common dso_local global i32 0, align 4
@PSEMNAMLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pseminfo*, %struct.psemname*, %struct.psemcache*)* @psem_cache_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psem_cache_add(%struct.pseminfo* %0, %struct.psemname* %1, %struct.psemcache* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pseminfo*, align 8
  %6 = alloca %struct.psemname*, align 8
  %7 = alloca %struct.psemcache*, align 8
  %8 = alloca %struct.psemhashhead*, align 8
  %9 = alloca %struct.pseminfo*, align 8
  %10 = alloca %struct.psemcache*, align 8
  store %struct.pseminfo* %0, %struct.pseminfo** %5, align 8
  store %struct.psemname* %1, %struct.psemname** %6, align 8
  store %struct.psemcache* %2, %struct.psemcache** %7, align 8
  %11 = load %struct.psemname*, %struct.psemname** %6, align 8
  %12 = call i64 @psem_cache_search(%struct.pseminfo** %9, %struct.psemname* %11, %struct.psemcache** %10)
  %13 = load i64, i64* @PSEMCACHE_FOUND, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @EEXIST, align 4
  store i32 %16, i32* %4, align 4
  br label %51

17:                                               ; preds = %3
  %18 = load i64, i64* @psemnument, align 8
  %19 = load i64, i64* @posix_sem_max, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @ENOSPC, align 4
  store i32 %22, i32* %4, align 4
  br label %51

23:                                               ; preds = %17
  %24 = load i64, i64* @psemnument, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* @psemnument, align 8
  %26 = load %struct.pseminfo*, %struct.pseminfo** %5, align 8
  %27 = load %struct.psemcache*, %struct.psemcache** %7, align 8
  %28 = getelementptr inbounds %struct.psemcache, %struct.psemcache* %27, i32 0, i32 3
  store %struct.pseminfo* %26, %struct.pseminfo** %28, align 8
  %29 = load %struct.psemname*, %struct.psemname** %6, align 8
  %30 = getelementptr inbounds %struct.psemname, %struct.psemname* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.psemcache*, %struct.psemcache** %7, align 8
  %33 = getelementptr inbounds %struct.psemcache, %struct.psemcache* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.psemname*, %struct.psemname** %6, align 8
  %35 = getelementptr inbounds %struct.psemname, %struct.psemname* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.psemcache*, %struct.psemcache** %7, align 8
  %38 = getelementptr inbounds %struct.psemcache, %struct.psemcache* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.psemcache*, %struct.psemcache** %7, align 8
  %41 = getelementptr inbounds %struct.psemcache, %struct.psemcache* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @bcopy(i32 %36, i32 %39, i32 %43)
  %45 = load %struct.psemname*, %struct.psemname** %6, align 8
  %46 = call %struct.psemhashhead* @PSEMHASH(%struct.psemname* %45)
  store %struct.psemhashhead* %46, %struct.psemhashhead** %8, align 8
  %47 = load %struct.psemhashhead*, %struct.psemhashhead** %8, align 8
  %48 = load %struct.psemcache*, %struct.psemcache** %7, align 8
  %49 = load i32, i32* @psem_hash, align 4
  %50 = call i32 @LIST_INSERT_HEAD(%struct.psemhashhead* %47, %struct.psemcache* %48, i32 %49)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %23, %21, %15
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i64 @psem_cache_search(%struct.pseminfo**, %struct.psemname*, %struct.psemcache**) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local %struct.psemhashhead* @PSEMHASH(%struct.psemname*) #1

declare dso_local i32 @LIST_INSERT_HEAD(%struct.psemhashhead*, %struct.psemcache*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
