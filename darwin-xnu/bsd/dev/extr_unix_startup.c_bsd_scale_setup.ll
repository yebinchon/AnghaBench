; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/extr_unix_startup.c_bsd_scale_setup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/extr_unix_startup.c_bsd_scale_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@serverperfmode = common dso_local global i64 0, align 8
@maxproc = common dso_local global i32 0, align 4
@maxprocperuid = common dso_local global i32 0, align 4
@maxfiles = common dso_local global i32 0, align 4
@maxfilesperproc = common dso_local global i32 0, align 4
@hard_maxproc = common dso_local global i32 0, align 4
@desiredvnodes = common dso_local global i32 0, align 4
@vnodes_sized = common dso_local global i32 0, align 4
@tcp_tfo_backlog = common dso_local global i32 0, align 4
@somaxconn = common dso_local global i32 0, align 4
@tcp_tcbhashsize = common dso_local global i32 0, align 4
@max_cached_sock_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bsd_scale_setup(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = load i64, i64* @serverperfmode, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %5
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @maxproc, align 4
  %11 = mul nsw i32 %10, %9
  store i32 %11, i32* @maxproc, align 4
  %12 = load i32, i32* @maxproc, align 4
  %13 = mul nsw i32 %12, 2
  %14 = sdiv i32 %13, 3
  store i32 %14, i32* @maxprocperuid, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp sgt i32 %15, 2
  br i1 %16, label %17, label %23

17:                                               ; preds = %8
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @maxfiles, align 4
  %20 = mul nsw i32 %19, %18
  store i32 %20, i32* @maxfiles, align 4
  %21 = load i32, i32* @maxfiles, align 4
  %22 = sdiv i32 %21, 2
  store i32 %22, i32* @maxfilesperproc, align 4
  br label %23

23:                                               ; preds = %17, %8
  br label %24

24:                                               ; preds = %23, %5, %1
  %25 = load i32, i32* %2, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %66

27:                                               ; preds = %24
  %28 = load i64, i64* @serverperfmode, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %66

30:                                               ; preds = %27
  %31 = load i32, i32* %2, align 4
  %32 = mul nsw i32 2500, %31
  store i32 %32, i32* @maxproc, align 4
  %33 = load i32, i32* @maxproc, align 4
  store i32 %33, i32* @hard_maxproc, align 4
  %34 = load i32, i32* @maxproc, align 4
  %35 = mul nsw i32 %34, 3
  %36 = sdiv i32 %35, 4
  store i32 %36, i32* @maxprocperuid, align 4
  %37 = load i32, i32* %2, align 4
  %38 = mul nsw i32 150000, %37
  store i32 %38, i32* @maxfiles, align 4
  %39 = load i32, i32* @maxfiles, align 4
  %40 = sdiv i32 %39, 2
  store i32 %40, i32* @maxfilesperproc, align 4
  %41 = load i32, i32* @maxfiles, align 4
  store i32 %41, i32* @desiredvnodes, align 4
  store i32 1, i32* @vnodes_sized, align 4
  %42 = load i32, i32* %2, align 4
  %43 = mul nsw i32 100, %42
  store i32 %43, i32* @tcp_tfo_backlog, align 4
  %44 = load i32, i32* %2, align 4
  %45 = icmp sgt i32 %44, 4
  br i1 %45, label %46, label %56

46:                                               ; preds = %30
  store i32 2048, i32* @somaxconn, align 4
  store i32 32768, i32* @tcp_tcbhashsize, align 4
  %47 = load i32, i32* %2, align 4
  %48 = icmp sgt i32 %47, 7
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 165000, i32* @max_cached_sock_count, align 4
  br label %55

50:                                               ; preds = %46
  %51 = load i32, i32* %2, align 4
  %52 = sub nsw i32 %51, 1
  %53 = mul nsw i32 %52, 15000
  %54 = add nsw i32 60000, %53
  store i32 %54, i32* @max_cached_sock_count, align 4
  br label %55

55:                                               ; preds = %50, %49
  br label %65

56:                                               ; preds = %30
  %57 = load i32, i32* %2, align 4
  %58 = mul nsw i32 512, %57
  store i32 %58, i32* @somaxconn, align 4
  %59 = load i32, i32* %2, align 4
  %60 = mul nsw i32 4096, %59
  store i32 %60, i32* @tcp_tcbhashsize, align 4
  %61 = load i32, i32* %2, align 4
  %62 = sub nsw i32 %61, 1
  %63 = mul nsw i32 %62, 15000
  %64 = add nsw i32 60000, %63
  store i32 %64, i32* @max_cached_sock_count, align 4
  br label %65

65:                                               ; preds = %56, %55
  br label %66

66:                                               ; preds = %65, %27, %24
  %67 = load i32, i32* @maxproc, align 4
  %68 = load i32, i32* @hard_maxproc, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @maxproc, align 4
  store i32 %71, i32* @hard_maxproc, align 4
  br label %72

72:                                               ; preds = %70, %66
  %73 = load i32, i32* %2, align 4
  %74 = call i32 @bsd_exec_setup(i32 %73)
  ret void
}

declare dso_local i32 @bsd_exec_setup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
