; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_lockf.c_lf_getblock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_lockf.c_lf_getblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lockf = type { i32, i64, i32, %struct.lockf*, %struct.lockf** }

@OTHERS = common dso_local global i32 0, align 4
@OVERLAP_NONE = common dso_local global i64 0, align 8
@F_POSIX = common dso_local global i32 0, align 4
@F_OFD_LOCK = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i64 0, align 8
@NOLOCKF = common dso_local global %struct.lockf* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lockf* (%struct.lockf*, i32)* @lf_getblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lockf* @lf_getblock(%struct.lockf* %0, i32 %1) #0 {
  %3 = alloca %struct.lockf*, align 8
  %4 = alloca %struct.lockf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lockf**, align 8
  %7 = alloca %struct.lockf*, align 8
  %8 = alloca %struct.lockf*, align 8
  store %struct.lockf* %0, %struct.lockf** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.lockf*, %struct.lockf** %4, align 8
  %10 = getelementptr inbounds %struct.lockf, %struct.lockf* %9, i32 0, i32 4
  %11 = load %struct.lockf**, %struct.lockf*** %10, align 8
  %12 = load %struct.lockf*, %struct.lockf** %11, align 8
  store %struct.lockf* %12, %struct.lockf** %8, align 8
  %13 = load %struct.lockf*, %struct.lockf** %4, align 8
  %14 = getelementptr inbounds %struct.lockf, %struct.lockf* %13, i32 0, i32 4
  %15 = load %struct.lockf**, %struct.lockf*** %14, align 8
  store %struct.lockf** %15, %struct.lockf*** %6, align 8
  br label %16

16:                                               ; preds = %58, %2
  %17 = load %struct.lockf*, %struct.lockf** %8, align 8
  %18 = load %struct.lockf*, %struct.lockf** %4, align 8
  %19 = load i32, i32* @OTHERS, align 4
  %20 = call i64 @lf_findoverlap(%struct.lockf* %17, %struct.lockf* %18, i32 %19, %struct.lockf*** %6, %struct.lockf** %7)
  %21 = load i64, i64* @OVERLAP_NONE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %62

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %43

26:                                               ; preds = %23
  %27 = load %struct.lockf*, %struct.lockf** %7, align 8
  %28 = getelementptr inbounds %struct.lockf, %struct.lockf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @F_POSIX, align 4
  %31 = load i32, i32* @F_OFD_LOCK, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %26
  %36 = load %struct.lockf*, %struct.lockf** %7, align 8
  %37 = getelementptr inbounds %struct.lockf, %struct.lockf* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @proc_pid(i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %58

43:                                               ; preds = %35, %26, %23
  %44 = load %struct.lockf*, %struct.lockf** %4, align 8
  %45 = getelementptr inbounds %struct.lockf, %struct.lockf* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @F_WRLCK, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load %struct.lockf*, %struct.lockf** %7, align 8
  %51 = getelementptr inbounds %struct.lockf, %struct.lockf* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @F_WRLCK, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49, %43
  %56 = load %struct.lockf*, %struct.lockf** %7, align 8
  store %struct.lockf* %56, %struct.lockf** %3, align 8
  br label %64

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %42
  %59 = load %struct.lockf*, %struct.lockf** %7, align 8
  %60 = getelementptr inbounds %struct.lockf, %struct.lockf* %59, i32 0, i32 3
  %61 = load %struct.lockf*, %struct.lockf** %60, align 8
  store %struct.lockf* %61, %struct.lockf** %8, align 8
  br label %16

62:                                               ; preds = %16
  %63 = load %struct.lockf*, %struct.lockf** @NOLOCKF, align 8
  store %struct.lockf* %63, %struct.lockf** %3, align 8
  br label %64

64:                                               ; preds = %62, %55
  %65 = load %struct.lockf*, %struct.lockf** %3, align 8
  ret %struct.lockf* %65
}

declare dso_local i64 @lf_findoverlap(%struct.lockf*, %struct.lockf*, i32, %struct.lockf***, %struct.lockf**) #1

declare dso_local i32 @proc_pid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
