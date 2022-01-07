; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_page_inval.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_page_inval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmount = type { i32 }
%struct.nfsbuf = type { i64, i64, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@nfs_buf_mutex = common dso_local global i32 0, align 4
@NBL_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@nfsbufdelwri = common dso_local global i32 0, align 4
@nb_free = common dso_local global i32 0, align 4
@nfsbufdelwricnt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_buf_page_inval(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfsmount*, align 8
  %7 = alloca %struct.nfsbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.nfsmount* @VTONMP(i32 %10)
  store %struct.nfsmount* %11, %struct.nfsmount** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %13 = call i64 @nfs_mount_gone(%struct.nfsmount* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %3, align 4
  br label %92

17:                                               ; preds = %2
  %18 = load i32, i32* @nfs_buf_mutex, align 4
  %19 = call i32 @lck_mtx_lock(i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @VTONFS(i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %24 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %22, %25
  %27 = call %struct.nfsbuf* @nfs_buf_incore(i32 %21, i32 %26)
  store %struct.nfsbuf* %27, %struct.nfsbuf** %7, align 8
  %28 = load %struct.nfsbuf*, %struct.nfsbuf** %7, align 8
  %29 = icmp ne %struct.nfsbuf* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %17
  br label %88

31:                                               ; preds = %17
  %32 = load %struct.nfsbuf*, %struct.nfsbuf** %7, align 8
  %33 = load %struct.nfsbuf*, %struct.nfsbuf** %7, align 8
  %34 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.nfsbuf*, %struct.nfsbuf** %7, align 8
  %37 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.nfsbuf*, %struct.nfsbuf** %7, align 8
  %40 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @FSDBG(i32 325, %struct.nfsbuf* %32, i32 %35, i64 %38, i64 %41)
  %43 = load %struct.nfsbuf*, %struct.nfsbuf** %7, align 8
  %44 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @NBL_BUSY, align 4
  %47 = call i64 @ISSET(i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %31
  %50 = load i32, i32* @EBUSY, align 4
  store i32 %50, i32* %8, align 4
  br label %88

51:                                               ; preds = %31
  %52 = load %struct.nfsbuf*, %struct.nfsbuf** %7, align 8
  %53 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %87

56:                                               ; preds = %51
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.nfsbuf*, %struct.nfsbuf** %7, align 8
  %59 = call i32 @NBOFF(%struct.nfsbuf* %58)
  %60 = sub nsw i32 %57, %59
  store i32 %60, i32* %9, align 4
  %61 = load %struct.nfsbuf*, %struct.nfsbuf** %7, align 8
  %62 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp sgt i64 %63, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %56
  %68 = load %struct.nfsbuf*, %struct.nfsbuf** %7, align 8
  %69 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* @PAGE_SIZE, align 8
  %74 = add nsw i64 %72, %73
  %75 = icmp slt i64 %70, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %67
  %77 = load i32, i32* @EBUSY, align 4
  store i32 %77, i32* %8, align 4
  %78 = load %struct.nfsbuf*, %struct.nfsbuf** %7, align 8
  %79 = call i32 @nfs_buf_remfree(%struct.nfsbuf* %78)
  %80 = load %struct.nfsbuf*, %struct.nfsbuf** %7, align 8
  %81 = load i32, i32* @nb_free, align 4
  %82 = call i32 @TAILQ_INSERT_HEAD(i32* @nfsbufdelwri, %struct.nfsbuf* %80, i32 %81)
  %83 = load i32, i32* @nfsbufdelwricnt, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* @nfsbufdelwricnt, align 4
  %85 = call i32 @nfs_buf_delwri_push(i32 1)
  br label %86

86:                                               ; preds = %76, %67, %56
  br label %87

87:                                               ; preds = %86, %51
  br label %88

88:                                               ; preds = %87, %49, %30
  %89 = load i32, i32* @nfs_buf_mutex, align 4
  %90 = call i32 @lck_mtx_unlock(i32 %89)
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %88, %15
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.nfsmount* @VTONMP(i32) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local %struct.nfsbuf* @nfs_buf_incore(i32, i32) #1

declare dso_local i32 @VTONFS(i32) #1

declare dso_local i32 @FSDBG(i32, %struct.nfsbuf*, i32, i64, i64) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @NBOFF(%struct.nfsbuf*) #1

declare dso_local i32 @nfs_buf_remfree(%struct.nfsbuf*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.nfsbuf*, i32) #1

declare dso_local i32 @nfs_buf_delwri_push(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
