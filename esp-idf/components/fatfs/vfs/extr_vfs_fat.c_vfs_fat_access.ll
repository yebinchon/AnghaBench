; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/vfs/extr_vfs_fat.c_vfs_fat_access.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/vfs/extr_vfs_fat.c_vfs_fat_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@FR_OK = common dso_local global i64 0, align 8
@W_OK = common dso_local global i32 0, align 4
@AM_RDO = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @vfs_fat_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfs_fat_access(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %10, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = call i32 @_lock_acquire(i32* %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %17 = call i32 @prepend_drive_to_path(%struct.TYPE_5__* %16, i8** %5, i32* null)
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @f_stat(i8* %18, %struct.TYPE_6__* %7)
  store i64 %19, i64* %9, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = call i32 @_lock_release(i32* %21)
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @FR_OK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @W_OK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @W_OK, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AM_RDO, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @AM_RDO, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  store i32 -1, i32* %8, align 4
  %40 = load i32, i32* @EACCES, align 4
  store i32 %40, i32* @errno, align 4
  br label %41

41:                                               ; preds = %39, %32, %26
  br label %44

42:                                               ; preds = %3
  store i32 -1, i32* %8, align 4
  %43 = load i32, i32* @ENOENT, align 4
  store i32 %43, i32* @errno, align 4
  br label %44

44:                                               ; preds = %42, %41
  %45 = load i32, i32* %8, align 4
  ret i32 %45
}

declare dso_local i32 @_lock_acquire(i32*) #1

declare dso_local i32 @prepend_drive_to_path(%struct.TYPE_5__*, i8**, i32*) #1

declare dso_local i64 @f_stat(i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @_lock_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
