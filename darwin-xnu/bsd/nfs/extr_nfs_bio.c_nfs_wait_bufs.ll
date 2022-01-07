; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_wait_bufs.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_wait_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.nfsbuf = type { i32 }
%struct.nfsbuflists = type { i32 }

@nfs_buf_mutex = common dso_local global i32 0, align 4
@NBI_CLEAN = common dso_local global i32 0, align 4
@nb_vnbufs = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@NBI_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_wait_bufs(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.nfsbuf*, align 8
  %4 = alloca %struct.nfsbuflists, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @nfs_buf_mutex, align 4
  %7 = call i32 @lck_mtx_lock(i32 %6)
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = load i32, i32* @NBI_CLEAN, align 4
  %10 = call i32 @nfs_buf_iterprepare(%struct.TYPE_5__* %8, %struct.nfsbuflists* %4, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %53, label %12

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %44, %12
  %14 = call %struct.nfsbuf* @LIST_FIRST(%struct.nfsbuflists* %4)
  store %struct.nfsbuf* %14, %struct.nfsbuf** %3, align 8
  %15 = icmp ne %struct.nfsbuf* %14, null
  br i1 %15, label %16, label %49

16:                                               ; preds = %13
  %17 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %18 = load i32, i32* @nb_vnbufs, align 4
  %19 = call i32 @LIST_REMOVE(%struct.nfsbuf* %17, i32 %18)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %23 = load i32, i32* @nb_vnbufs, align 4
  %24 = call i32 @LIST_INSERT_HEAD(i32* %21, %struct.nfsbuf* %22, i32 %23)
  %25 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %26 = call i32 @nfs_buf_refget(%struct.nfsbuf* %25)
  br label %27

27:                                               ; preds = %43, %16
  %28 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %29 = call i32 @nfs_buf_acquire(%struct.nfsbuf* %28, i32 0, i32 0, i32 0)
  store i32 %29, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @EAGAIN, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %37 = call i32 @nfs_buf_refrele(%struct.nfsbuf* %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = load i32, i32* @NBI_CLEAN, align 4
  %40 = call i32 @nfs_buf_itercomplete(%struct.TYPE_5__* %38, %struct.nfsbuflists* %4, i32 %39)
  %41 = load i32, i32* @nfs_buf_mutex, align 4
  %42 = call i32 @lck_mtx_unlock(i32 %41)
  br label %102

43:                                               ; preds = %31
  br label %27

44:                                               ; preds = %27
  %45 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %46 = call i32 @nfs_buf_refrele(%struct.nfsbuf* %45)
  %47 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %48 = call i32 @nfs_buf_drop(%struct.nfsbuf* %47)
  br label %13

49:                                               ; preds = %13
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %51 = load i32, i32* @NBI_CLEAN, align 4
  %52 = call i32 @nfs_buf_itercomplete(%struct.TYPE_5__* %50, %struct.nfsbuflists* %4, i32 %51)
  br label %53

53:                                               ; preds = %49, %1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %55 = load i32, i32* @NBI_DIRTY, align 4
  %56 = call i32 @nfs_buf_iterprepare(%struct.TYPE_5__* %54, %struct.nfsbuflists* %4, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %99, label %58

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %90, %58
  %60 = call %struct.nfsbuf* @LIST_FIRST(%struct.nfsbuflists* %4)
  store %struct.nfsbuf* %60, %struct.nfsbuf** %3, align 8
  %61 = icmp ne %struct.nfsbuf* %60, null
  br i1 %61, label %62, label %95

62:                                               ; preds = %59
  %63 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %64 = load i32, i32* @nb_vnbufs, align 4
  %65 = call i32 @LIST_REMOVE(%struct.nfsbuf* %63, i32 %64)
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %69 = load i32, i32* @nb_vnbufs, align 4
  %70 = call i32 @LIST_INSERT_HEAD(i32* %67, %struct.nfsbuf* %68, i32 %69)
  %71 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %72 = call i32 @nfs_buf_refget(%struct.nfsbuf* %71)
  br label %73

73:                                               ; preds = %89, %62
  %74 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %75 = call i32 @nfs_buf_acquire(%struct.nfsbuf* %74, i32 0, i32 0, i32 0)
  store i32 %75, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %73
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @EAGAIN, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %77
  %82 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %83 = call i32 @nfs_buf_refrele(%struct.nfsbuf* %82)
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %85 = load i32, i32* @NBI_DIRTY, align 4
  %86 = call i32 @nfs_buf_itercomplete(%struct.TYPE_5__* %84, %struct.nfsbuflists* %4, i32 %85)
  %87 = load i32, i32* @nfs_buf_mutex, align 4
  %88 = call i32 @lck_mtx_unlock(i32 %87)
  br label %102

89:                                               ; preds = %77
  br label %73

90:                                               ; preds = %73
  %91 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %92 = call i32 @nfs_buf_refrele(%struct.nfsbuf* %91)
  %93 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %94 = call i32 @nfs_buf_drop(%struct.nfsbuf* %93)
  br label %59

95:                                               ; preds = %59
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %97 = load i32, i32* @NBI_DIRTY, align 4
  %98 = call i32 @nfs_buf_itercomplete(%struct.TYPE_5__* %96, %struct.nfsbuflists* %4, i32 %97)
  br label %99

99:                                               ; preds = %95, %53
  %100 = load i32, i32* @nfs_buf_mutex, align 4
  %101 = call i32 @lck_mtx_unlock(i32 %100)
  br label %102

102:                                              ; preds = %99, %81, %35
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @nfs_buf_iterprepare(%struct.TYPE_5__*, %struct.nfsbuflists*, i32) #1

declare dso_local %struct.nfsbuf* @LIST_FIRST(%struct.nfsbuflists*) #1

declare dso_local i32 @LIST_REMOVE(%struct.nfsbuf*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.nfsbuf*, i32) #1

declare dso_local i32 @nfs_buf_refget(%struct.nfsbuf*) #1

declare dso_local i32 @nfs_buf_acquire(%struct.nfsbuf*, i32, i32, i32) #1

declare dso_local i32 @nfs_buf_refrele(%struct.nfsbuf*) #1

declare dso_local i32 @nfs_buf_itercomplete(%struct.TYPE_5__*, %struct.nfsbuflists*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @nfs_buf_drop(%struct.nfsbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
