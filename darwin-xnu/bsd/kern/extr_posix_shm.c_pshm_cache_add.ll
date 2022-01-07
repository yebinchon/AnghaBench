; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_posix_shm.c_pshm_cache_add.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_posix_shm.c_pshm_cache_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pshminfo = type { i32 }
%struct.pshmname = type { i64, i32 }
%struct.pshmcache = type { i64, %struct.TYPE_2__, i32, %struct.pshminfo* }
%struct.TYPE_2__ = type { %struct.pshmcache* }
%struct.pshmhashhead = type { %struct.pshmcache* }

@PSHMCACHE_FOUND = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@pshmnument = common dso_local global i32 0, align 4
@pshm_hash = common dso_local global i32 0, align 4
@PSHMNAMLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pshminfo*, %struct.pshmname*, %struct.pshmcache*)* @pshm_cache_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pshm_cache_add(%struct.pshminfo* %0, %struct.pshmname* %1, %struct.pshmcache* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pshminfo*, align 8
  %6 = alloca %struct.pshmname*, align 8
  %7 = alloca %struct.pshmcache*, align 8
  %8 = alloca %struct.pshmhashhead*, align 8
  %9 = alloca %struct.pshminfo*, align 8
  %10 = alloca %struct.pshmcache*, align 8
  store %struct.pshminfo* %0, %struct.pshminfo** %5, align 8
  store %struct.pshmname* %1, %struct.pshmname** %6, align 8
  store %struct.pshmcache* %2, %struct.pshmcache** %7, align 8
  %11 = load %struct.pshmname*, %struct.pshmname** %6, align 8
  %12 = call i64 @pshm_cache_search(%struct.pshminfo** %9, %struct.pshmname* %11, %struct.pshmcache** %10, i32 0)
  %13 = load i64, i64* @PSHMCACHE_FOUND, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @EEXIST, align 4
  store i32 %16, i32* %4, align 4
  br label %45

17:                                               ; preds = %3
  %18 = load i32, i32* @pshmnument, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @pshmnument, align 4
  %20 = load %struct.pshminfo*, %struct.pshminfo** %5, align 8
  %21 = load %struct.pshmcache*, %struct.pshmcache** %7, align 8
  %22 = getelementptr inbounds %struct.pshmcache, %struct.pshmcache* %21, i32 0, i32 3
  store %struct.pshminfo* %20, %struct.pshminfo** %22, align 8
  %23 = load %struct.pshmname*, %struct.pshmname** %6, align 8
  %24 = getelementptr inbounds %struct.pshmname, %struct.pshmname* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.pshmcache*, %struct.pshmcache** %7, align 8
  %27 = getelementptr inbounds %struct.pshmcache, %struct.pshmcache* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.pshmname*, %struct.pshmname** %6, align 8
  %29 = getelementptr inbounds %struct.pshmname, %struct.pshmname* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.pshmcache*, %struct.pshmcache** %7, align 8
  %32 = getelementptr inbounds %struct.pshmcache, %struct.pshmcache* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.pshmcache*, %struct.pshmcache** %7, align 8
  %35 = getelementptr inbounds %struct.pshmcache, %struct.pshmcache* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @bcopy(i32 %30, i32 %33, i32 %37)
  %39 = load %struct.pshmname*, %struct.pshmname** %6, align 8
  %40 = call %struct.pshmhashhead* @PSHMHASH(%struct.pshmname* %39)
  store %struct.pshmhashhead* %40, %struct.pshmhashhead** %8, align 8
  %41 = load %struct.pshmhashhead*, %struct.pshmhashhead** %8, align 8
  %42 = load %struct.pshmcache*, %struct.pshmcache** %7, align 8
  %43 = load i32, i32* @pshm_hash, align 4
  %44 = call i32 @LIST_INSERT_HEAD(%struct.pshmhashhead* %41, %struct.pshmcache* %42, i32 %43)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %17, %15
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @pshm_cache_search(%struct.pshminfo**, %struct.pshmname*, %struct.pshmcache**, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local %struct.pshmhashhead* @PSHMHASH(%struct.pshmname*) #1

declare dso_local i32 @LIST_INSERT_HEAD(%struct.pshmhashhead*, %struct.pshmcache*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
