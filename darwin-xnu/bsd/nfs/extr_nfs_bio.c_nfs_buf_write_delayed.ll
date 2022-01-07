; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_write_delayed.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_write_delayed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsbuf = type { i32, i32, %struct.TYPE_6__, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32 }

@NB_DELWRI = common dso_local global i32 0, align 4
@nfs_buf_mutex = common dso_local global i32 0, align 4
@nfs_nbdwrite = common dso_local global i64 0, align 8
@NFSNOLIST = common dso_local global i64 0, align 8
@nb_vnbufs = common dso_local global i32 0, align 4
@VNODE_ASYNC_THROTTLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"nfs_buf_write_delayed\00", align 1
@NMODIFIED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"nfs_buf_write_delayed: Negative nfs_nbdwrite\00", align 1
@NFS_A_LOT_OF_DELAYED_WRITES = common dso_local global i64 0, align 8
@NB_ASYNC = common dso_local global i32 0, align 4
@NB_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_buf_write_delayed(%struct.nfsbuf* %0) #0 {
  %2 = alloca %struct.nfsbuf*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.nfsbuf* %0, %struct.nfsbuf** %2, align 8
  %4 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %5 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %4, i32 0, i32 6
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %3, align 8
  %7 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %8 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %9 = call i32 @NBOFF(%struct.nfsbuf* %8)
  %10 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %11 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @FSDBG_TOP(i32 551, %struct.nfsbuf* %7, i32 %9, i32 %12, i32 0)
  %14 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %15 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %16 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %19 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %22 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @FSDBG(i32 551, %struct.nfsbuf* %14, i32 %17, i32 %20, i32 %23)
  %25 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %26 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @NB_DELWRI, align 4
  %29 = call i32 @ISSET(i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %60, label %31

31:                                               ; preds = %1
  %32 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %33 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @NB_DELWRI, align 4
  %36 = call i32 @SET(i32 %34, i32 %35)
  %37 = load i32, i32* @nfs_buf_mutex, align 4
  %38 = call i32 @lck_mtx_lock(i32 %37)
  %39 = load i64, i64* @nfs_nbdwrite, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* @nfs_nbdwrite, align 8
  %41 = call i32 (...) @NFSBUFCNTCHK()
  %42 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %43 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NFSNOLIST, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %31
  %49 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %50 = load i32, i32* @nb_vnbufs, align 4
  %51 = call i32 @LIST_REMOVE(%struct.nfsbuf* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %31
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %56 = load i32, i32* @nb_vnbufs, align 4
  %57 = call i32 @LIST_INSERT_HEAD(i32* %54, %struct.nfsbuf* %55, i32 %56)
  %58 = load i32, i32* @nfs_buf_mutex, align 4
  %59 = call i32 @lck_mtx_unlock(i32 %58)
  br label %60

60:                                               ; preds = %52, %1
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = call i32 @NFSTOV(%struct.TYPE_7__* %61)
  %63 = load i32, i32* @VNODE_ASYNC_THROTTLE, align 4
  %64 = call i32 @vnode_waitforwrites(i32 %62, i32 %63, i32 0, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %66 = call i32 @nfs_node_lock_force(%struct.TYPE_7__* %65)
  %67 = load i32, i32* @NMODIFIED, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %73 = call i32 @nfs_node_unlock(%struct.TYPE_7__* %72)
  %74 = load i64, i64* @nfs_nbdwrite, align 8
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %60
  %77 = call i32 @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %60
  %79 = load i64, i64* @nfs_nbdwrite, align 8
  %80 = load i64, i64* @NFS_A_LOT_OF_DELAYED_WRITES, align 8
  %81 = icmp sgt i64 %79, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %78
  %83 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %84 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @NB_ASYNC, align 4
  %87 = call i32 @SET(i32 %85, i32 %86)
  %88 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %89 = call i32 @nfs_buf_write(%struct.nfsbuf* %88)
  %90 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %91 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %92 = call i32 @NBOFF(%struct.nfsbuf* %91)
  %93 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %94 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %97 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @FSDBG_BOT(i32 551, %struct.nfsbuf* %90, i32 %92, i32 %95, i32 %98)
  br label %115

100:                                              ; preds = %78
  %101 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %102 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @NB_DONE, align 4
  %105 = call i32 @SET(i32 %103, i32 %104)
  %106 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %107 = call i32 @nfs_buf_release(%struct.nfsbuf* %106, i32 1)
  %108 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %109 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %110 = call i32 @NBOFF(%struct.nfsbuf* %109)
  %111 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %112 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @FSDBG_BOT(i32 551, %struct.nfsbuf* %108, i32 %110, i32 %113, i32 0)
  br label %115

115:                                              ; preds = %100, %82
  ret void
}

declare dso_local i32 @FSDBG_TOP(i32, %struct.nfsbuf*, i32, i32, i32) #1

declare dso_local i32 @NBOFF(%struct.nfsbuf*) #1

declare dso_local i32 @FSDBG(i32, %struct.nfsbuf*, i32, i32, i32) #1

declare dso_local i32 @ISSET(i32, i32) #1

declare dso_local i32 @SET(i32, i32) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @NFSBUFCNTCHK(...) #1

declare dso_local i32 @LIST_REMOVE(%struct.nfsbuf*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.nfsbuf*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @vnode_waitforwrites(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @NFSTOV(%struct.TYPE_7__*) #1

declare dso_local i32 @nfs_node_lock_force(%struct.TYPE_7__*) #1

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_7__*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @nfs_buf_write(%struct.nfsbuf*) #1

declare dso_local i32 @FSDBG_BOT(i32, %struct.nfsbuf*, i32, i32, i32) #1

declare dso_local i32 @nfs_buf_release(%struct.nfsbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
