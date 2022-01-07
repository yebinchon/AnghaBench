; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_usrreq.c_unp_attach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_usrreq.c_unp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.unpcb = type { i64, %struct.socket*, i32, i32 }

@unpst_sendspace = common dso_local global i32 0, align 4
@unpst_recvspace = common dso_local global i32 0, align 4
@unpdg_sendspace = common dso_local global i32 0, align 4
@unpdg_recvspace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"unp_attach\00", align 1
@unp_zone = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@unp_mtx_grp = common dso_local global i32 0, align 4
@unp_mtx_attr = common dso_local global i32 0, align 4
@unp_list_mtx = common dso_local global i32 0, align 4
@unp_gencnt = common dso_local global i64 0, align 8
@unp_count = common dso_local global i32 0, align 4
@unp_dhead = common dso_local global i32 0, align 4
@unp_shead = common dso_local global i32 0, align 4
@unp_link = common dso_local global i32 0, align 4
@SB_UNIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @unp_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unp_attach(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.unpcb*, align 8
  %5 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.socket*, %struct.socket** %3, align 8
  %7 = getelementptr inbounds %struct.socket, %struct.socket* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.socket*, %struct.socket** %3, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %11, %1
  %18 = load %struct.socket*, %struct.socket** %3, align 8
  %19 = getelementptr inbounds %struct.socket, %struct.socket* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %31 [
    i32 128, label %21
    i32 129, label %26
  ]

21:                                               ; preds = %17
  %22 = load %struct.socket*, %struct.socket** %3, align 8
  %23 = load i32, i32* @unpst_sendspace, align 4
  %24 = load i32, i32* @unpst_recvspace, align 4
  %25 = call i32 @soreserve(%struct.socket* %22, i32 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  br label %33

26:                                               ; preds = %17
  %27 = load %struct.socket*, %struct.socket** %3, align 8
  %28 = load i32, i32* @unpdg_sendspace, align 4
  %29 = load i32, i32* @unpdg_recvspace, align 4
  %30 = call i32 @soreserve(%struct.socket* %27, i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %33

31:                                               ; preds = %17
  %32 = call i32 @panic(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %26, %21
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %96

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %11
  %40 = load i32, i32* @unp_zone, align 4
  %41 = call i64 @zalloc(i32 %40)
  %42 = inttoptr i64 %41 to %struct.unpcb*
  store %struct.unpcb* %42, %struct.unpcb** %4, align 8
  %43 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %44 = icmp eq %struct.unpcb* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @ENOBUFS, align 4
  store i32 %46, i32* %2, align 4
  br label %96

47:                                               ; preds = %39
  %48 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %49 = call i32 @bzero(%struct.unpcb* %48, i32 24)
  %50 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %51 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %50, i32 0, i32 3
  %52 = load i32, i32* @unp_mtx_grp, align 4
  %53 = load i32, i32* @unp_mtx_attr, align 4
  %54 = call i32 @lck_mtx_init(i32* %51, i32 %52, i32 %53)
  %55 = load i32, i32* @unp_list_mtx, align 4
  %56 = call i32 @lck_rw_lock_exclusive(i32 %55)
  %57 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %58 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %57, i32 0, i32 2
  %59 = call i32 @LIST_INIT(i32* %58)
  %60 = load %struct.socket*, %struct.socket** %3, align 8
  %61 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %62 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %61, i32 0, i32 1
  store %struct.socket* %60, %struct.socket** %62, align 8
  %63 = load i64, i64* @unp_gencnt, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* @unp_gencnt, align 8
  %65 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %66 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load i32, i32* @unp_count, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* @unp_count, align 4
  %69 = load %struct.socket*, %struct.socket** %3, align 8
  %70 = getelementptr inbounds %struct.socket, %struct.socket* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 129
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32* @unp_dhead, i32* @unp_shead
  %75 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %76 = load i32, i32* @unp_link, align 4
  %77 = call i32 @LIST_INSERT_HEAD(i32* %74, %struct.unpcb* %75, i32 %76)
  %78 = load i32, i32* @unp_list_mtx, align 4
  %79 = call i32 @lck_rw_done(i32 %78)
  %80 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %81 = ptrtoint %struct.unpcb* %80 to i64
  %82 = load %struct.socket*, %struct.socket** %3, align 8
  %83 = getelementptr inbounds %struct.socket, %struct.socket* %82, i32 0, i32 3
  store i64 %81, i64* %83, align 8
  %84 = load i32, i32* @SB_UNIX, align 4
  %85 = load %struct.socket*, %struct.socket** %3, align 8
  %86 = getelementptr inbounds %struct.socket, %struct.socket* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %84
  store i32 %89, i32* %87, align 8
  %90 = load i32, i32* @SB_UNIX, align 4
  %91 = load %struct.socket*, %struct.socket** %3, align 8
  %92 = getelementptr inbounds %struct.socket, %struct.socket* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %90
  store i32 %95, i32* %93, align 8
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %47, %45, %36
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @soreserve(%struct.socket*, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @zalloc(i32) #1

declare dso_local i32 @bzero(%struct.unpcb*, i32) #1

declare dso_local i32 @lck_mtx_init(i32*, i32, i32) #1

declare dso_local i32 @lck_rw_lock_exclusive(i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.unpcb*, i32) #1

declare dso_local i32 @lck_rw_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
