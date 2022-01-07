; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_delwri_service.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_delwri_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsbuf = type { i32, i32 }

@nfsbufdelwri = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@NB_NEEDCOMMIT = common dso_local global i32 0, align 4
@nb_free = common dso_local global i32 0, align 4
@nfsbufdelwricnt = common dso_local global i32 0, align 4
@nfs_buf_mutex = common dso_local global i32 0, align 4
@NB_ASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_buf_delwri_service() #0 {
  %1 = alloca %struct.nfsbuf*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %81, %38, %0
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 8
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = call %struct.nfsbuf* @TAILQ_FIRST(i32* @nfsbufdelwri)
  store %struct.nfsbuf* %9, %struct.nfsbuf** %1, align 8
  %10 = icmp ne %struct.nfsbuf* %9, null
  br label %11

11:                                               ; preds = %8, %5
  %12 = phi i1 [ false, %5 ], [ %10, %8 ]
  br i1 %12, label %13, label %86

13:                                               ; preds = %11
  %14 = load %struct.nfsbuf*, %struct.nfsbuf** %1, align 8
  %15 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %2, align 4
  %17 = load %struct.nfsbuf*, %struct.nfsbuf** %1, align 8
  %18 = call i32 @nfs_buf_remfree(%struct.nfsbuf* %17)
  %19 = load %struct.nfsbuf*, %struct.nfsbuf** %1, align 8
  %20 = call i32 @nfs_buf_refget(%struct.nfsbuf* %19)
  br label %21

21:                                               ; preds = %26, %13
  %22 = load %struct.nfsbuf*, %struct.nfsbuf** %1, align 8
  %23 = call i32 @nfs_buf_acquire(%struct.nfsbuf* %22, i32 0, i32 0, i32 0)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %21

27:                                               ; preds = %21
  %28 = load %struct.nfsbuf*, %struct.nfsbuf** %1, align 8
  %29 = call i32 @nfs_buf_refrele(%struct.nfsbuf* %28)
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %86

33:                                               ; preds = %27
  %34 = load %struct.nfsbuf*, %struct.nfsbuf** %1, align 8
  %35 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load %struct.nfsbuf*, %struct.nfsbuf** %1, align 8
  %40 = call i32 @nfs_buf_drop(%struct.nfsbuf* %39)
  br label %5

41:                                               ; preds = %33
  %42 = load %struct.nfsbuf*, %struct.nfsbuf** %1, align 8
  %43 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @NB_NEEDCOMMIT, align 4
  %46 = call i64 @ISSET(i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32, i32* %2, align 4
  %50 = load %struct.nfsbuf*, %struct.nfsbuf** %1, align 8
  %51 = call i32 @nfs_buf_check_write_verifier(i32 %49, %struct.nfsbuf* %50)
  br label %52

52:                                               ; preds = %48, %41
  %53 = load %struct.nfsbuf*, %struct.nfsbuf** %1, align 8
  %54 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @NB_NEEDCOMMIT, align 4
  %57 = call i64 @ISSET(i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %52
  %60 = load %struct.nfsbuf*, %struct.nfsbuf** %1, align 8
  %61 = load i32, i32* @nb_free, align 4
  %62 = call i32 @TAILQ_INSERT_TAIL(i32* @nfsbufdelwri, %struct.nfsbuf* %60, i32 %61)
  %63 = load i32, i32* @nfsbufdelwricnt, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @nfsbufdelwricnt, align 4
  %65 = load %struct.nfsbuf*, %struct.nfsbuf** %1, align 8
  %66 = call i32 @nfs_buf_drop(%struct.nfsbuf* %65)
  %67 = load i32, i32* @nfs_buf_mutex, align 4
  %68 = call i32 @lck_mtx_unlock(i32 %67)
  %69 = load i32, i32* %2, align 4
  %70 = call i32 @nfs_flushcommits(i32 %69, i32 1)
  br label %81

71:                                               ; preds = %52
  %72 = load %struct.nfsbuf*, %struct.nfsbuf** %1, align 8
  %73 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @NB_ASYNC, align 4
  %76 = call i32 @SET(i32 %74, i32 %75)
  %77 = load i32, i32* @nfs_buf_mutex, align 4
  %78 = call i32 @lck_mtx_unlock(i32 %77)
  %79 = load %struct.nfsbuf*, %struct.nfsbuf** %1, align 8
  %80 = call i32 @nfs_buf_write(%struct.nfsbuf* %79)
  br label %81

81:                                               ; preds = %71, %59
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* @nfs_buf_mutex, align 4
  %85 = call i32 @lck_mtx_lock(i32 %84)
  br label %5

86:                                               ; preds = %32, %11
  ret void
}

declare dso_local %struct.nfsbuf* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @nfs_buf_remfree(%struct.nfsbuf*) #1

declare dso_local i32 @nfs_buf_refget(%struct.nfsbuf*) #1

declare dso_local i32 @nfs_buf_acquire(%struct.nfsbuf*, i32, i32, i32) #1

declare dso_local i32 @nfs_buf_refrele(%struct.nfsbuf*) #1

declare dso_local i32 @nfs_buf_drop(%struct.nfsbuf*) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @nfs_buf_check_write_verifier(i32, %struct.nfsbuf*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.nfsbuf*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @nfs_flushcommits(i32, i32) #1

declare dso_local i32 @SET(i32, i32) #1

declare dso_local i32 @nfs_buf_write(%struct.nfsbuf*) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
