; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_control.c_ctl_getenqueuepacketcount.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_control.c_ctl_getenqueuepacketcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mbuf* }
%struct.mbuf = type { i64, %struct.mbuf* }

@EINVAL = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i64 0, align 8
@MT_HEADER = common dso_local global i64 0, align 8
@MT_OOBDATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_getenqueuepacketcount(i32 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mbuf*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load i64*, i64** %7, align 8
  %12 = icmp eq i64* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %4, align 4
  br label %61

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load i64, i64* %6, align 8
  %18 = call %struct.socket* @kcb_find_socket(i32 %16, i64 %17, i32* null)
  store %struct.socket* %18, %struct.socket** %8, align 8
  %19 = load %struct.socket*, %struct.socket** %8, align 8
  %20 = icmp eq %struct.socket* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %61

23:                                               ; preds = %15
  store i64 0, i64* %9, align 8
  %24 = load %struct.socket*, %struct.socket** %8, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.mbuf*, %struct.mbuf** %26, align 8
  store %struct.mbuf* %27, %struct.mbuf** %10, align 8
  br label %28

28:                                               ; preds = %52, %23
  %29 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %30 = icmp ne %struct.mbuf* %29, null
  br i1 %30, label %31, label %56

31:                                               ; preds = %28
  %32 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %33 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MT_DATA, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %49, label %37

37:                                               ; preds = %31
  %38 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %39 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MT_HEADER, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %45 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MT_OOBDATA, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43, %37, %31
  %50 = load i64, i64* %9, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %9, align 8
  br label %52

52:                                               ; preds = %49, %43
  %53 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %54 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %53, i32 0, i32 1
  %55 = load %struct.mbuf*, %struct.mbuf** %54, align 8
  store %struct.mbuf* %55, %struct.mbuf** %10, align 8
  br label %28

56:                                               ; preds = %28
  %57 = load i64, i64* %9, align 8
  %58 = load i64*, i64** %7, align 8
  store i64 %57, i64* %58, align 8
  %59 = load %struct.socket*, %struct.socket** %8, align 8
  %60 = call i32 @socket_unlock(%struct.socket* %59, i32 1)
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %56, %21, %13
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.socket* @kcb_find_socket(i32, i64, i32*) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
