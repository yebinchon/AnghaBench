; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_usrreq.c_unp_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_usrreq.c_unp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UIPC_MAX_CMSG_FD = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@nmbclusters = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"unpzone\00", align 1
@unp_zone = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"unp_init\00", align 1
@unp_dhead = common dso_local global i32 0, align 4
@unp_shead = common dso_local global i32 0, align 4
@unp_mtx_grp_attr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"unp_list\00", align 1
@unp_mtx_grp = common dso_local global i32 0, align 4
@unp_mtx_attr = common dso_local global i32 0, align 4
@unp_list_mtx = common dso_local global i32* null, align 8
@unp_disconnect_lock = common dso_local global i32* null, align 8
@unp_connect_lock = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unp_init() #0 {
  %1 = load i32, i32* @UIPC_MAX_CMSG_FD, align 4
  %2 = sext i32 %1 to i64
  %3 = load i32, i32* @MCLBYTES, align 4
  %4 = sext i32 %3 to i64
  %5 = udiv i64 %4, 4
  %6 = icmp uge i64 %2, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @_CASSERT(i32 %7)
  %9 = load i32, i32* @nmbclusters, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 4
  %12 = trunc i64 %11 to i32
  %13 = call i64 @zinit(i32 4, i32 %12, i32 4096, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i64 %13, i64* @unp_zone, align 8
  %14 = load i64, i64* @unp_zone, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %0
  %17 = call i32 @panic(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %0
  %19 = call i32 @LIST_INIT(i32* @unp_dhead)
  %20 = call i32 @LIST_INIT(i32* @unp_shead)
  %21 = call i32 (...) @lck_grp_attr_alloc_init()
  store i32 %21, i32* @unp_mtx_grp_attr, align 4
  %22 = load i32, i32* @unp_mtx_grp_attr, align 4
  %23 = call i32 @lck_grp_alloc_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  store i32 %23, i32* @unp_mtx_grp, align 4
  %24 = call i32 (...) @lck_attr_alloc_init()
  store i32 %24, i32* @unp_mtx_attr, align 4
  %25 = load i32, i32* @unp_mtx_grp, align 4
  %26 = load i32, i32* @unp_mtx_attr, align 4
  %27 = call i32* @lck_rw_alloc_init(i32 %25, i32 %26)
  store i32* %27, i32** @unp_list_mtx, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %44

30:                                               ; preds = %18
  %31 = load i32, i32* @unp_mtx_grp, align 4
  %32 = load i32, i32* @unp_mtx_attr, align 4
  %33 = call i8* @lck_mtx_alloc_init(i32 %31, i32 %32)
  %34 = bitcast i8* %33 to i32*
  store i32* %34, i32** @unp_disconnect_lock, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %44

37:                                               ; preds = %30
  %38 = load i32, i32* @unp_mtx_grp, align 4
  %39 = load i32, i32* @unp_mtx_attr, align 4
  %40 = call i8* @lck_mtx_alloc_init(i32 %38, i32 %39)
  %41 = bitcast i8* %40 to i32*
  store i32* %41, i32** @unp_connect_lock, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %29, %36, %43, %37
  ret void
}

declare dso_local i32 @_CASSERT(i32) #1

declare dso_local i64 @zinit(i32, i32, i32, i8*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @lck_grp_attr_alloc_init(...) #1

declare dso_local i32 @lck_grp_alloc_init(i8*, i32) #1

declare dso_local i32 @lck_attr_alloc_init(...) #1

declare dso_local i32* @lck_rw_alloc_init(i32, i32) #1

declare dso_local i8* @lck_mtx_alloc_init(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
