; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_iterprepare.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_iterprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.nfsbuflists, %struct.nfsbuflists }
%struct.nfsbuflists = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__** }

@NBI_DIRTY = common dso_local global i32 0, align 4
@NBI_NOWAIT = common dso_local global i32 0, align 4
@NBI_ITER = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@NBI_ITERWANT = common dso_local global i32 0, align 4
@nfs_buf_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"nfs_buf_iterprepare\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_buf_iterprepare(%struct.TYPE_7__* %0, %struct.nfsbuflists* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.nfsbuflists*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfsbuflists*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.nfsbuflists* %1, %struct.nfsbuflists** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @NBI_DIRTY, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  store %struct.nfsbuflists* %15, %struct.nfsbuflists** %8, align 8
  br label %19

16:                                               ; preds = %3
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  store %struct.nfsbuflists* %18, %struct.nfsbuflists** %8, align 8
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @NBI_NOWAIT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @NBI_ITER, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load %struct.nfsbuflists*, %struct.nfsbuflists** %6, align 8
  %33 = call i32 @LIST_INIT(%struct.nfsbuflists* %32)
  %34 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %34, i32* %4, align 4
  br label %81

35:                                               ; preds = %24, %19
  br label %36

36:                                               ; preds = %43, %35
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @NBI_ITER, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %36
  %44 = load i32, i32* @NBI_ITERWANT, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* @nfs_buf_mutex, align 4
  %52 = call i32 @msleep(i32* %50, i32 %51, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %36

53:                                               ; preds = %36
  %54 = load %struct.nfsbuflists*, %struct.nfsbuflists** %8, align 8
  %55 = call i64 @LIST_EMPTY(%struct.nfsbuflists* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load %struct.nfsbuflists*, %struct.nfsbuflists** %6, align 8
  %59 = call i32 @LIST_INIT(%struct.nfsbuflists* %58)
  %60 = load i32, i32* @EINVAL, align 4
  store i32 %60, i32* %4, align 4
  br label %81

61:                                               ; preds = %53
  %62 = load i32, i32* @NBI_ITER, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load %struct.nfsbuflists*, %struct.nfsbuflists** %8, align 8
  %68 = getelementptr inbounds %struct.nfsbuflists, %struct.nfsbuflists* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load %struct.nfsbuflists*, %struct.nfsbuflists** %6, align 8
  %71 = getelementptr inbounds %struct.nfsbuflists, %struct.nfsbuflists* %70, i32 0, i32 0
  store %struct.TYPE_6__* %69, %struct.TYPE_6__** %71, align 8
  %72 = load %struct.nfsbuflists*, %struct.nfsbuflists** %6, align 8
  %73 = getelementptr inbounds %struct.nfsbuflists, %struct.nfsbuflists* %72, i32 0, i32 0
  %74 = load %struct.nfsbuflists*, %struct.nfsbuflists** %8, align 8
  %75 = getelementptr inbounds %struct.nfsbuflists, %struct.nfsbuflists* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store %struct.TYPE_6__** %73, %struct.TYPE_6__*** %78, align 8
  %79 = load %struct.nfsbuflists*, %struct.nfsbuflists** %8, align 8
  %80 = call i32 @LIST_INIT(%struct.nfsbuflists* %79)
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %61, %57, %31
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @LIST_INIT(%struct.nfsbuflists*) #1

declare dso_local i32 @msleep(i32*, i32, i32, i8*, i32*) #1

declare dso_local i64 @LIST_EMPTY(%struct.nfsbuflists*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
