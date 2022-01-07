; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vfs_getnewfsid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vfs_getnewfsid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32* }

@mntid_gen = common dso_local global i64 0, align 8
@nblkdev = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfs_getnewfsid(%struct.mount* %0) #0 {
  %2 = alloca %struct.mount*, align 8
  %3 = alloca %struct.TYPE_9__, align 8
  %4 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %2, align 8
  %5 = call i32 (...) @mount_list_lock()
  %6 = load %struct.mount*, %struct.mount** %2, align 8
  %7 = getelementptr inbounds %struct.mount, %struct.mount* %6, i32 0, i32 1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i64, i64* @mntid_gen, align 8
  %12 = add nsw i64 %11, 1
  store i64 %12, i64* @mntid_gen, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i64, i64* @mntid_gen, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* @mntid_gen, align 8
  br label %17

17:                                               ; preds = %14, %1
  %18 = load i64, i64* @nblkdev, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = load i64, i64* @mntid_gen, align 8
  %23 = call i8* @makedev(i64 %21, i64 %22)
  %24 = ptrtoint i8* %23 to i32
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* %4, align 4
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 %28, i32* %31, align 4
  br label %32

32:                                               ; preds = %42, %17
  %33 = call i64 @vfs_getvfs_locked(%struct.TYPE_9__* %3)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %32
  %36 = load i64, i64* @mntid_gen, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* @mntid_gen, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i64, i64* @mntid_gen, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* @mntid_gen, align 8
  br label %42

42:                                               ; preds = %39, %35
  %43 = load i64, i64* @nblkdev, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = load i64, i64* @mntid_gen, align 8
  %48 = call i8* @makedev(i64 %46, i64 %47)
  %49 = ptrtoint i8* %48 to i32
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %49, i32* %52, align 4
  br label %32

53:                                               ; preds = %32
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.mount*, %struct.mount** %2, align 8
  %59 = getelementptr inbounds %struct.mount, %struct.mount* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 %57, i32* %63, align 4
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mount*, %struct.mount** %2, align 8
  %69 = getelementptr inbounds %struct.mount, %struct.mount* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  store i32 %67, i32* %73, align 4
  %74 = call i32 (...) @mount_list_unlock()
  ret void
}

declare dso_local i32 @mount_list_lock(...) #1

declare dso_local i8* @makedev(i64, i64) #1

declare dso_local i64 @vfs_getvfs_locked(%struct.TYPE_9__*) #1

declare dso_local i32 @mount_list_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
