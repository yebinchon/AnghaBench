; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_vfs_ioattr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_vfs_ioattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i64, i32, i8*, i8*, i8*, i8* }
%struct.vfsioattr = type { i32, i32, i64, i64, i32, i8*, i8*, i8*, i8*, i32** }

@MAXPHYS = common dso_local global i8* null, align 8
@DEV_BSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfs_ioattr(%struct.TYPE_3__* %0, %struct.vfsioattr* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.vfsioattr*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.vfsioattr* %1, %struct.vfsioattr** %4, align 8
  %5 = load %struct.vfsioattr*, %struct.vfsioattr** %4, align 8
  %6 = getelementptr inbounds %struct.vfsioattr, %struct.vfsioattr* %5, i32 0, i32 9
  %7 = load i32**, i32*** %6, align 8
  %8 = getelementptr inbounds i32*, i32** %7, i64 0
  store i32* null, i32** %8, align 8
  %9 = load %struct.vfsioattr*, %struct.vfsioattr** %4, align 8
  %10 = getelementptr inbounds %struct.vfsioattr, %struct.vfsioattr* %9, i32 0, i32 9
  %11 = load i32**, i32*** %10, align 8
  %12 = getelementptr inbounds i32*, i32** %11, i64 1
  store i32* null, i32** %12, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = icmp eq %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %39

15:                                               ; preds = %2
  %16 = load i8*, i8** @MAXPHYS, align 8
  %17 = load %struct.vfsioattr*, %struct.vfsioattr** %4, align 8
  %18 = getelementptr inbounds %struct.vfsioattr, %struct.vfsioattr* %17, i32 0, i32 8
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** @MAXPHYS, align 8
  %20 = load %struct.vfsioattr*, %struct.vfsioattr** %4, align 8
  %21 = getelementptr inbounds %struct.vfsioattr, %struct.vfsioattr* %20, i32 0, i32 7
  store i8* %19, i8** %21, align 8
  %22 = load %struct.vfsioattr*, %struct.vfsioattr** %4, align 8
  %23 = getelementptr inbounds %struct.vfsioattr, %struct.vfsioattr* %22, i32 0, i32 0
  store i32 32, i32* %23, align 8
  %24 = load %struct.vfsioattr*, %struct.vfsioattr** %4, align 8
  %25 = getelementptr inbounds %struct.vfsioattr, %struct.vfsioattr* %24, i32 0, i32 1
  store i32 32, i32* %25, align 4
  %26 = load i8*, i8** @MAXPHYS, align 8
  %27 = load %struct.vfsioattr*, %struct.vfsioattr** %4, align 8
  %28 = getelementptr inbounds %struct.vfsioattr, %struct.vfsioattr* %27, i32 0, i32 6
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @MAXPHYS, align 8
  %30 = load %struct.vfsioattr*, %struct.vfsioattr** %4, align 8
  %31 = getelementptr inbounds %struct.vfsioattr, %struct.vfsioattr* %30, i32 0, i32 5
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* @DEV_BSIZE, align 4
  %33 = load %struct.vfsioattr*, %struct.vfsioattr** %4, align 8
  %34 = getelementptr inbounds %struct.vfsioattr, %struct.vfsioattr* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load %struct.vfsioattr*, %struct.vfsioattr** %4, align 8
  %36 = getelementptr inbounds %struct.vfsioattr, %struct.vfsioattr* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.vfsioattr*, %struct.vfsioattr** %4, align 8
  %38 = getelementptr inbounds %struct.vfsioattr, %struct.vfsioattr* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  br label %85

39:                                               ; preds = %2
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 8
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.vfsioattr*, %struct.vfsioattr** %4, align 8
  %44 = getelementptr inbounds %struct.vfsioattr, %struct.vfsioattr* %43, i32 0, i32 8
  store i8* %42, i8** %44, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 7
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.vfsioattr*, %struct.vfsioattr** %4, align 8
  %49 = getelementptr inbounds %struct.vfsioattr, %struct.vfsioattr* %48, i32 0, i32 7
  store i8* %47, i8** %49, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.vfsioattr*, %struct.vfsioattr** %4, align 8
  %54 = getelementptr inbounds %struct.vfsioattr, %struct.vfsioattr* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.vfsioattr*, %struct.vfsioattr** %4, align 8
  %59 = getelementptr inbounds %struct.vfsioattr, %struct.vfsioattr* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 6
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.vfsioattr*, %struct.vfsioattr** %4, align 8
  %64 = getelementptr inbounds %struct.vfsioattr, %struct.vfsioattr* %63, i32 0, i32 6
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 5
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.vfsioattr*, %struct.vfsioattr** %4, align 8
  %69 = getelementptr inbounds %struct.vfsioattr, %struct.vfsioattr* %68, i32 0, i32 5
  store i8* %67, i8** %69, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.vfsioattr*, %struct.vfsioattr** %4, align 8
  %74 = getelementptr inbounds %struct.vfsioattr, %struct.vfsioattr* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.vfsioattr*, %struct.vfsioattr** %4, align 8
  %79 = getelementptr inbounds %struct.vfsioattr, %struct.vfsioattr* %78, i32 0, i32 3
  store i64 %77, i64* %79, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.vfsioattr*, %struct.vfsioattr** %4, align 8
  %84 = getelementptr inbounds %struct.vfsioattr, %struct.vfsioattr* %83, i32 0, i32 2
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %39, %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
