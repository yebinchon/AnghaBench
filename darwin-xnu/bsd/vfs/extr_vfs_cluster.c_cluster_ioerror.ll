; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_cluster_ioerror.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_cluster_ioerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_PHYS = common dso_local global i32 0, align 4
@B_CACHE = common dso_local global i32 0, align 4
@UPL_COMMIT_FREE_ON_EMPTY = common dso_local global i32 0, align 4
@B_PAGEIO = common dso_local global i32 0, align 4
@B_READ = common dso_local global i32 0, align 4
@UPL_ABORT_FREE_ON_EMPTY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@UPL_ABORT_ERROR = common dso_local global i32 0, align 4
@UPL_ABORT_DUMP_PAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @cluster_ioerror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cluster_ioerror(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @B_PHYS, align 4
  %18 = load i32, i32* @B_CACHE, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = load i32, i32* @B_PHYS, align 4
  %22 = load i32, i32* @B_CACHE, align 4
  %23 = or i32 %21, %22
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %6
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @UPL_COMMIT_FREE_ON_EMPTY, align 4
  %30 = call i32 @ubc_upl_commit_range(i32 %26, i32 %27, i32 %28, i32 %29)
  br label %85

31:                                               ; preds = %6
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @B_PAGEIO, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @B_READ, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 1, i32* %14, align 4
  br label %43

42:                                               ; preds = %36
  store i32 1, i32* %15, align 4
  br label %43

43:                                               ; preds = %42, %41
  br label %44

44:                                               ; preds = %43, %31
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @B_CACHE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @UPL_ABORT_FREE_ON_EMPTY, align 4
  store i32 %50, i32* %13, align 4
  br label %79

51:                                               ; preds = %44
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @B_READ, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @ENXIO, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %12, align 4
  %62 = call i64 @vnode_isswap(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60, %56
  %65 = load i32, i32* @UPL_ABORT_FREE_ON_EMPTY, align 4
  store i32 %65, i32* %13, align 4
  br label %78

66:                                               ; preds = %60, %51
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* @UPL_ABORT_FREE_ON_EMPTY, align 4
  %71 = load i32, i32* @UPL_ABORT_ERROR, align 4
  %72 = or i32 %70, %71
  store i32 %72, i32* %13, align 4
  br label %77

73:                                               ; preds = %66
  %74 = load i32, i32* @UPL_ABORT_FREE_ON_EMPTY, align 4
  %75 = load i32, i32* @UPL_ABORT_DUMP_PAGES, align 4
  %76 = or i32 %74, %75
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %73, %69
  br label %78

78:                                               ; preds = %77, %64
  br label %79

79:                                               ; preds = %78, %49
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @ubc_upl_abort_range(i32 %80, i32 %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %79, %25
  %86 = load i32, i32* %13, align 4
  ret i32 %86
}

declare dso_local i32 @ubc_upl_commit_range(i32, i32, i32, i32) #1

declare dso_local i64 @vnode_isswap(i32) #1

declare dso_local i32 @ubc_upl_abort_range(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
