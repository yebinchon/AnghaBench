; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cache.c_cache_delete.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cache.c_cache_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.namecache = type { i32*, %struct.TYPE_5__, %struct.TYPE_4__*, i64 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@ncs_deletes = common dso_local global i32 0, align 4
@nc_un = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@neghead = common dso_local global i32 0, align 4
@ncs_negtotal = common dso_local global i32 0, align 4
@nc_child = common dso_local global i32 0, align 4
@nc_hash = common dso_local global i32 0, align 4
@nchead = common dso_local global i32 0, align 4
@nc_entry = common dso_local global i32 0, align 4
@M_CACHE = common dso_local global i32 0, align 4
@numcache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.namecache*, i32)* @cache_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_delete(%struct.namecache* %0, i32 %1) #0 {
  %3 = alloca %struct.namecache*, align 8
  %4 = alloca i32, align 4
  store %struct.namecache* %0, %struct.namecache** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @ncs_deletes, align 4
  %6 = call i32 @NCHSTAT(i32 %5)
  %7 = load %struct.namecache*, %struct.namecache** %3, align 8
  %8 = getelementptr inbounds %struct.namecache, %struct.namecache* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.namecache*, %struct.namecache** %3, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @nc_un, i32 0, i32 1), align 4
  %14 = call i32 @LIST_REMOVE(%struct.namecache* %12, i32 %13)
  br label %21

15:                                               ; preds = %2
  %16 = load %struct.namecache*, %struct.namecache** %3, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @nc_un, i32 0, i32 0), align 4
  %18 = call i32 @TAILQ_REMOVE(i32* @neghead, %struct.namecache* %16, i32 %17)
  %19 = load i32, i32* @ncs_negtotal, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* @ncs_negtotal, align 4
  br label %21

21:                                               ; preds = %15, %11
  %22 = load %struct.namecache*, %struct.namecache** %3, align 8
  %23 = getelementptr inbounds %struct.namecache, %struct.namecache* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.namecache*, %struct.namecache** %3, align 8
  %27 = load i32, i32* @nc_child, align 4
  %28 = call i32 @TAILQ_REMOVE(i32* %25, %struct.namecache* %26, i32 %27)
  %29 = load %struct.namecache*, %struct.namecache** %3, align 8
  %30 = load i32, i32* @nc_hash, align 4
  %31 = call i32 @LIST_REMOVE(%struct.namecache* %29, i32 %30)
  %32 = load %struct.namecache*, %struct.namecache** %3, align 8
  %33 = getelementptr inbounds %struct.namecache, %struct.namecache* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  %35 = load %struct.namecache*, %struct.namecache** %3, align 8
  %36 = getelementptr inbounds %struct.namecache, %struct.namecache* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @vfs_removename(i32* %37)
  %39 = load %struct.namecache*, %struct.namecache** %3, align 8
  %40 = getelementptr inbounds %struct.namecache, %struct.namecache* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %21
  %44 = load %struct.namecache*, %struct.namecache** %3, align 8
  %45 = load i32, i32* @nc_entry, align 4
  %46 = call i32 @TAILQ_REMOVE(i32* @nchead, %struct.namecache* %44, i32 %45)
  %47 = load %struct.namecache*, %struct.namecache** %3, align 8
  %48 = load i32, i32* @M_CACHE, align 4
  %49 = call i32 @FREE_ZONE(%struct.namecache* %47, i32 32, i32 %48)
  %50 = load i32, i32* @numcache, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* @numcache, align 4
  br label %52

52:                                               ; preds = %43, %21
  ret void
}

declare dso_local i32 @NCHSTAT(i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.namecache*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.namecache*, i32) #1

declare dso_local i32 @vfs_removename(i32*) #1

declare dso_local i32 @FREE_ZONE(%struct.namecache*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
