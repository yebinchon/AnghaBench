; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_async_write_start.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_async_write_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.nfsmount = type { i64, i32 }

@INTR = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@__const.nfs_async_write_start.ts = private unnamed_addr constant %struct.timespec { i32 1, i32 0 }, align 4
@nfs_max_async_writes = common dso_local global i64 0, align 8
@PZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"nfsasyncwrites\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_async_write_start(%struct.nfsmount* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfsmount*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.timespec, align 4
  store %struct.nfsmount* %0, %struct.nfsmount** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %8 = load i32, i32* @INTR, align 4
  %9 = call i64 @NMFLAG(%struct.nfsmount* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @PCATCH, align 4
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %11
  %15 = phi i32 [ %12, %11 ], [ 0, %13 ]
  store i32 %15, i32* %5, align 4
  %16 = bitcast %struct.timespec* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.timespec* @__const.nfs_async_write_start.ts to i8*), i64 8, i1 false)
  %17 = load i64, i64* @nfs_max_async_writes, align 8
  %18 = icmp sle i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %64

20:                                               ; preds = %14
  %21 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %22 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %21, i32 0, i32 1
  %23 = call i32 @lck_mtx_lock(i32* %22)
  br label %24

24:                                               ; preds = %41, %20
  %25 = load i64, i64* @nfs_max_async_writes, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %29 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @nfs_max_async_writes, align 8
  %32 = icmp sge i64 %30, %31
  br label %33

33:                                               ; preds = %27, %24
  %34 = phi i1 [ false, %24 ], [ %32, %27 ]
  br i1 %34, label %35, label %51

35:                                               ; preds = %33
  %36 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %37 = call i32 (...) @current_thread()
  %38 = call i32 @nfs_sigintr(%struct.nfsmount* %36, i32* null, i32 %37, i32 1)
  store i32 %38, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %51

41:                                               ; preds = %35
  %42 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %43 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %42, i32 0, i32 0
  %44 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %45 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %44, i32 0, i32 1
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @PZERO, align 4
  %48 = sub nsw i32 %47, 1
  %49 = or i32 %46, %48
  %50 = call i32 @msleep(i64* %43, i32* %45, i32 %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.timespec* %6)
  store i32 0, i32* %5, align 4
  br label %24

51:                                               ; preds = %40, %33
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %56 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  br label %59

59:                                               ; preds = %54, %51
  %60 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %61 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %60, i32 0, i32 1
  %62 = call i32 @lck_mtx_unlock(i32* %61)
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %59, %19
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i64 @NMFLAG(%struct.nfsmount*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @nfs_sigintr(%struct.nfsmount*, i32*, i32, i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @msleep(i64*, i32*, i32, i8*, %struct.timespec*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
