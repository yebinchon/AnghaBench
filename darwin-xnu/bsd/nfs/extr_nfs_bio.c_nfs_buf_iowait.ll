; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_iowait.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_iowait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsbuf = type { i32, i32 }

@nfs_buf_mutex = common dso_local global i32 0, align 4
@NB_DONE = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"nfs_buf_iowait\00", align 1
@NB_EINTR = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@NB_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_buf_iowait(%struct.nfsbuf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfsbuf*, align 8
  store %struct.nfsbuf* %0, %struct.nfsbuf** %3, align 8
  %4 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %5 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %6 = call i32 @NBOFF(%struct.nfsbuf* %5)
  %7 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %8 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %11 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @FSDBG_TOP(i32 549, %struct.nfsbuf* %4, i32 %6, i32 %9, i32 %12)
  %14 = load i32, i32* @nfs_buf_mutex, align 4
  %15 = call i32 @lck_mtx_lock(i32 %14)
  br label %16

16:                                               ; preds = %24, %1
  %17 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %18 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NB_DONE, align 4
  %21 = call i64 @ISSET(i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %30

24:                                               ; preds = %16
  %25 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %26 = load i32, i32* @nfs_buf_mutex, align 4
  %27 = load i64, i64* @PRIBIO, align 8
  %28 = add nsw i64 %27, 1
  %29 = call i32 @msleep(%struct.nfsbuf* %25, i32 %26, i64 %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %16

30:                                               ; preds = %16
  %31 = load i32, i32* @nfs_buf_mutex, align 4
  %32 = call i32 @lck_mtx_unlock(i32 %31)
  %33 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %34 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %35 = call i32 @NBOFF(%struct.nfsbuf* %34)
  %36 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %37 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %40 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @FSDBG_BOT(i32 549, %struct.nfsbuf* %33, i32 %35, i32 %38, i32 %41)
  %43 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %44 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @NB_EINTR, align 4
  %47 = call i64 @ISSET(i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %30
  %50 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %51 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @NB_EINTR, align 4
  %54 = call i32 @CLR(i32 %52, i32 %53)
  %55 = load i32, i32* @EINTR, align 4
  store i32 %55, i32* %2, align 4
  br label %78

56:                                               ; preds = %30
  %57 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %58 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @NB_ERROR, align 4
  %61 = call i64 @ISSET(i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %56
  %64 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %65 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %70 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  br label %74

72:                                               ; preds = %63
  %73 = load i32, i32* @EIO, align 4
  br label %74

74:                                               ; preds = %72, %68
  %75 = phi i32 [ %71, %68 ], [ %73, %72 ]
  store i32 %75, i32* %2, align 4
  br label %78

76:                                               ; preds = %56
  br label %77

77:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %74, %49
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @FSDBG_TOP(i32, %struct.nfsbuf*, i32, i32, i32) #1

declare dso_local i32 @NBOFF(%struct.nfsbuf*) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @msleep(%struct.nfsbuf*, i32, i64, i8*, i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @FSDBG_BOT(i32, %struct.nfsbuf*, i32, i32, i32) #1

declare dso_local i32 @CLR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
