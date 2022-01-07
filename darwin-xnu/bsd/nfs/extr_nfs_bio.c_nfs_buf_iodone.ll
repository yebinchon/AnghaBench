; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_iodone.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_iodone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsbuf = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@NB_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"nfs_buf_iodone already\00", align 1
@NB_READ = common dso_local global i32 0, align 4
@NB_WRITEINPROG = common dso_local global i32 0, align 4
@NB_ASYNC = common dso_local global i32 0, align 4
@nfs_buf_mutex = common dso_local global i32 0, align 4
@NBL_WANTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_buf_iodone(%struct.nfsbuf* %0) #0 {
  %2 = alloca %struct.nfsbuf*, align 8
  store %struct.nfsbuf* %0, %struct.nfsbuf** %2, align 8
  %3 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %4 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %5 = call i32 @NBOFF(%struct.nfsbuf* %4)
  %6 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %7 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %10 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @FSDBG_TOP(i32 550, %struct.nfsbuf* %3, i32 %5, i32 %8, i32 %11)
  %13 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %14 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @NB_DONE, align 4
  %17 = call i64 @ISSET(i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %1
  %22 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %23 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NB_READ, align 4
  %26 = call i64 @ISSET(i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %53, label %28

28:                                               ; preds = %21
  %29 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %30 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @NB_WRITEINPROG, align 4
  %33 = call i32 @CLR(i32 %31, i32 %32)
  %34 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %35 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %34, i32 0, i32 3
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = call i32 @NFSTOV(%struct.TYPE_4__* %36)
  %38 = call i32 @vnode_writedone(i32 %37)
  %39 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %40 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %39, i32 0, i32 3
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = call i32 @nfs_node_lock_force(%struct.TYPE_4__* %41)
  %43 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %44 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %43, i32 0, i32 3
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %50 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %49, i32 0, i32 3
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = call i32 @nfs_node_unlock(%struct.TYPE_4__* %51)
  br label %53

53:                                               ; preds = %28, %21
  %54 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %55 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @NB_ASYNC, align 4
  %58 = call i64 @ISSET(i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %53
  %61 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %62 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @NB_DONE, align 4
  %65 = call i32 @SET(i32 %63, i32 %64)
  %66 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %67 = call i32 @nfs_buf_release(%struct.nfsbuf* %66, i32 1)
  br label %85

68:                                               ; preds = %53
  %69 = load i32, i32* @nfs_buf_mutex, align 4
  %70 = call i32 @lck_mtx_lock(i32 %69)
  %71 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %72 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @NB_DONE, align 4
  %75 = call i32 @SET(i32 %73, i32 %74)
  %76 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %77 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @NBL_WANTED, align 4
  %80 = call i32 @CLR(i32 %78, i32 %79)
  %81 = load i32, i32* @nfs_buf_mutex, align 4
  %82 = call i32 @lck_mtx_unlock(i32 %81)
  %83 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %84 = call i32 @wakeup(%struct.nfsbuf* %83)
  br label %85

85:                                               ; preds = %68, %60
  %86 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %87 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %88 = call i32 @NBOFF(%struct.nfsbuf* %87)
  %89 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %90 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %93 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @FSDBG_BOT(i32 550, %struct.nfsbuf* %86, i32 %88, i32 %91, i32 %94)
  ret void
}

declare dso_local i32 @FSDBG_TOP(i32, %struct.nfsbuf*, i32, i32, i32) #1

declare dso_local i32 @NBOFF(%struct.nfsbuf*) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @CLR(i32, i32) #1

declare dso_local i32 @vnode_writedone(i32) #1

declare dso_local i32 @NFSTOV(%struct.TYPE_4__*) #1

declare dso_local i32 @nfs_node_lock_force(%struct.TYPE_4__*) #1

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_4__*) #1

declare dso_local i32 @SET(i32, i32) #1

declare dso_local i32 @nfs_buf_release(%struct.nfsbuf*, i32) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @wakeup(%struct.nfsbuf*) #1

declare dso_local i32 @FSDBG_BOT(i32, %struct.nfsbuf*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
