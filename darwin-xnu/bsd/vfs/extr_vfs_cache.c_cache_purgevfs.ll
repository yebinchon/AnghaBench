; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cache.c_cache_purgevfs.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cache.c_cache_purgevfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nchashhead = type { %struct.namecache* }
%struct.namecache = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.mount* }
%struct.mount = type { i32 }
%struct.TYPE_3__ = type { %struct.namecache* }

@nchashtbl = common dso_local global %struct.nchashhead* null, align 8
@nchash = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cache_purgevfs(%struct.mount* %0) #0 {
  %2 = alloca %struct.mount*, align 8
  %3 = alloca %struct.nchashhead*, align 8
  %4 = alloca %struct.namecache*, align 8
  store %struct.mount* %0, %struct.mount** %2, align 8
  %5 = call i32 (...) @NAME_CACHE_LOCK()
  %6 = load %struct.nchashhead*, %struct.nchashhead** @nchashtbl, align 8
  %7 = load i32, i32* @nchash, align 4
  %8 = sub nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.nchashhead, %struct.nchashhead* %6, i64 %9
  store %struct.nchashhead* %10, %struct.nchashhead** %3, align 8
  br label %11

11:                                               ; preds = %41, %1
  %12 = load %struct.nchashhead*, %struct.nchashhead** %3, align 8
  %13 = load %struct.nchashhead*, %struct.nchashhead** @nchashtbl, align 8
  %14 = icmp uge %struct.nchashhead* %12, %13
  br i1 %14, label %15, label %44

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %31, %15
  %17 = load %struct.nchashhead*, %struct.nchashhead** %3, align 8
  %18 = getelementptr inbounds %struct.nchashhead, %struct.nchashhead* %17, i32 0, i32 0
  %19 = load %struct.namecache*, %struct.namecache** %18, align 8
  store %struct.namecache* %19, %struct.namecache** %4, align 8
  br label %20

20:                                               ; preds = %35, %16
  %21 = load %struct.namecache*, %struct.namecache** %4, align 8
  %22 = icmp ne %struct.namecache* %21, null
  br i1 %22, label %23, label %40

23:                                               ; preds = %20
  %24 = load %struct.namecache*, %struct.namecache** %4, align 8
  %25 = getelementptr inbounds %struct.namecache, %struct.namecache* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.mount*, %struct.mount** %27, align 8
  %29 = load %struct.mount*, %struct.mount** %2, align 8
  %30 = icmp eq %struct.mount* %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load %struct.namecache*, %struct.namecache** %4, align 8
  %33 = call i32 @cache_delete(%struct.namecache* %32, i32 0)
  br label %16

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.namecache*, %struct.namecache** %4, align 8
  %37 = getelementptr inbounds %struct.namecache, %struct.namecache* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load %struct.namecache*, %struct.namecache** %38, align 8
  store %struct.namecache* %39, %struct.namecache** %4, align 8
  br label %20

40:                                               ; preds = %20
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.nchashhead*, %struct.nchashhead** %3, align 8
  %43 = getelementptr inbounds %struct.nchashhead, %struct.nchashhead* %42, i32 -1
  store %struct.nchashhead* %43, %struct.nchashhead** %3, align 8
  br label %11

44:                                               ; preds = %11
  %45 = call i32 (...) @NAME_CACHE_UNLOCK()
  ret void
}

declare dso_local i32 @NAME_CACHE_LOCK(...) #1

declare dso_local i32 @cache_delete(%struct.namecache*, i32) #1

declare dso_local i32 @NAME_CACHE_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
