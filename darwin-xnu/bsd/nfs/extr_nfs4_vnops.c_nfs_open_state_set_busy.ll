; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs_open_state_set_busy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs_open_state_set_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nfsmount = type { i32 }

@__const.nfs_open_state_set_busy.ts = private unnamed_addr constant %struct.timespec { i32 2, i32 0 }, align 4
@ENXIO = common dso_local global i32 0, align 4
@INTR = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@N_OPENBUSY = common dso_local global i32 0, align 4
@N_OPENWANT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"nfs_open_state_set_busy\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_open_state_set_busy(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfsmount*, align 8
  %7 = alloca %struct.timespec, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = bitcast %struct.timespec* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.timespec* @__const.nfs_open_state_set_busy.ts to i8*), i64 8, i1 false)
  store i32 0, i32* %8, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_4__* %11)
  store %struct.nfsmount* %12, %struct.nfsmount** %6, align 8
  %13 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %14 = call i64 @nfs_mount_gone(%struct.nfsmount* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %3, align 4
  br label %73

18:                                               ; preds = %2
  %19 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %20 = load i32, i32* @INTR, align 4
  %21 = call i64 @NMFLAG(%struct.nfsmount* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @PCATCH, align 4
  br label %29

28:                                               ; preds = %23, %18
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  store i32 %30, i32* %9, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = call i32 @lck_mtx_lock(i32* %32)
  br label %34

34:                                               ; preds = %47, %29
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @N_OPENBUSY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %34
  %42 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @nfs_sigintr(%struct.nfsmount* %42, i32* null, i32 %43, i32 0)
  store i32 %44, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %59

47:                                               ; preds = %41
  %48 = load i32, i32* @N_OPENWANT, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @msleep(i32* %54, i32* %56, i32 %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.timespec* %7)
  store i32 0, i32* %9, align 4
  br label %34

59:                                               ; preds = %46, %34
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @N_OPENBUSY, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %62, %59
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = call i32 @lck_mtx_unlock(i32* %70)
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %68, %16
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_4__*) #2

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #2

declare dso_local i64 @NMFLAG(%struct.nfsmount*, i32) #2

declare dso_local i32 @lck_mtx_lock(i32*) #2

declare dso_local i32 @nfs_sigintr(%struct.nfsmount*, i32*, i32, i32) #2

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, %struct.timespec*) #2

declare dso_local i32 @lck_mtx_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
