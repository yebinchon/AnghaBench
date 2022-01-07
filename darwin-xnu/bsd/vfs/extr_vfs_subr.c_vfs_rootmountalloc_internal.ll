; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vfs_rootmountalloc_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vfs_rootmountalloc_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, %struct.TYPE_9__, i8*, i32, %struct.vfstable*, i32, i32, i32, i64, i64, i32, i8*, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i8*, i32, i32 }
%struct.vfstable = type { i32, i32, i32, i32 }

@M_MOUNT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@MAXPHYS = common dso_local global i32 0, align 4
@DEV_BSIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@MNT_DEFAULT_IOQUEUE_DEPTH = common dso_local global i32 0, align 4
@NULLVP = common dso_local global i8* null, align 8
@CACHED_LOOKUP_RIGHT_TTL = common dso_local global i32 0, align 4
@LOWPRI_MAX_NUM_DEV = common dso_local global i64 0, align 8
@LK_NOWAIT = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@MNT_ROOTFS = common dso_local global i32 0, align 4
@MNT_VISFLAGMASK = common dso_local global i32 0, align 4
@MFSTYPENAMELEN = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.vfstable*, i8*)* @vfs_rootmountalloc_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @vfs_rootmountalloc_internal(%struct.vfstable* %0, i8* %1) #0 {
  %3 = alloca %struct.vfstable*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  store %struct.vfstable* %0, %struct.vfstable** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @M_MOUNT, align 4
  %7 = load i32, i32* @M_WAITOK, align 4
  %8 = call %struct.TYPE_10__* @_MALLOC_ZONE(i32 4, i32 %6, i32 %7)
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %5, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %10 = bitcast %struct.TYPE_10__* %9 to i8*
  %11 = call i32 @bzero(i8* %10, i32 4)
  %12 = load i32, i32* @MAXPHYS, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 19
  store i32 %12, i32* %14, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 21
  store i32 %12, i32* %16, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  store i32 32, i32* %18, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  store i32 32, i32* %20, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 21
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 22
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 19
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 20
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @DEV_BSIZE, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 18
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @PAGE_MASK, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 17
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @MNT_DEFAULT_IOQUEUE_DEPTH, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 16
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  store i32 1, i32* %41, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 15
  store i64 0, i64* %43, align 8
  %44 = load i8*, i8** @NULLVP, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 14
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* @CACHED_LOOKUP_RIGHT_TTL, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 13
  store i32 %47, i32* %49, align 8
  %50 = load i64, i64* @LOWPRI_MAX_NUM_DEV, align 8
  %51 = sub nsw i64 %50, 1
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 12
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 11
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = call i32 @mount_lock_init(%struct.TYPE_10__* %56)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = load i32, i32* @LK_NOWAIT, align 4
  %60 = call i32 @vfs_busy(%struct.TYPE_10__* %58, i32 %59)
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 10
  %63 = call i32 @TAILQ_INIT(i32* %62)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 9
  %66 = call i32 @TAILQ_INIT(i32* %65)
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 8
  %69 = call i32 @TAILQ_INIT(i32* %68)
  %70 = load %struct.vfstable*, %struct.vfstable** %3, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 7
  store %struct.vfstable* %70, %struct.vfstable** %72, align 8
  %73 = load %struct.vfstable*, %struct.vfstable** %3, align 8
  %74 = getelementptr inbounds %struct.vfstable, %struct.vfstable* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @MNT_RDONLY, align 4
  %79 = load i32, i32* @MNT_ROOTFS, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load i8*, i8** @NULLVP, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 5
  store i8* %83, i8** %85, align 8
  %86 = load %struct.vfstable*, %struct.vfstable** %3, align 8
  %87 = getelementptr inbounds %struct.vfstable, %struct.vfstable* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @MNT_VISFLAGMASK, align 4
  %90 = and i32 %88, %89
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = call i32 (...) @mount_list_lock()
  %96 = load %struct.vfstable*, %struct.vfstable** %3, align 8
  %97 = getelementptr inbounds %struct.vfstable, %struct.vfstable* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  %100 = call i32 (...) @mount_list_unlock()
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.vfstable*, %struct.vfstable** %3, align 8
  %106 = getelementptr inbounds %struct.vfstable, %struct.vfstable* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @MFSTYPENAMELEN, align 4
  %109 = call i32 @strlcpy(i32 %104, i32 %107, i32 %108)
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  store i8 47, i8* %114, align 1
  %115 = load i8*, i8** %4, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i64, i64* @MAXPATHLEN, align 8
  %121 = sub nsw i64 %120, 1
  %122 = call i32 @copystr(i8* %115, i32 %119, i64 %121, i32* null)
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  ret %struct.TYPE_10__* %123
}

declare dso_local %struct.TYPE_10__* @_MALLOC_ZONE(i32, i32, i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @mount_lock_init(%struct.TYPE_10__*) #1

declare dso_local i32 @vfs_busy(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @mount_list_lock(...) #1

declare dso_local i32 @mount_list_unlock(...) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @copystr(i8*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
