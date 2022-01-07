; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_spec_knote_select_and_link.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_spec_knote_select_and_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { %struct.waitq_set* }
%struct.waitq_set = type { i32 }
%struct.selinfo = type { i32 }
%struct.waitq = type { i32 }
%struct.TYPE_9__ = type { %struct.waitq_set }

@ENOENT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*)* @spec_knote_select_and_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spec_knote_select_and_link(%struct.knote* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.knote*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.waitq_set*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.selinfo*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.waitq*, align 8
  store %struct.knote* %0, %struct.knote** %3, align 8
  store i64* null, i64** %10, align 8
  store %struct.selinfo* null, %struct.selinfo** %11, align 8
  store i32 0, i32* %12, align 4
  %15 = call i32 (...) @current_thread()
  %16 = call %struct.TYPE_8__* @get_bsdthread_info(i32 %15)
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %4, align 8
  %17 = call i32 (...) @vfs_context_current()
  store i32 %17, i32* %5, align 4
  %18 = load %struct.knote*, %struct.knote** %3, align 8
  %19 = getelementptr inbounds %struct.knote, %struct.knote* %18, i32 0, i32 2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.knote*, %struct.knote** %3, align 8
  %27 = getelementptr inbounds %struct.knote, %struct.knote* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @vnode_getwithvid(i64 %25, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %1
  %33 = load %struct.knote*, %struct.knote** %3, align 8
  %34 = load i32, i32* @ENOENT, align 4
  %35 = call i32 @knote_set_error(%struct.knote* %33, i32 %34)
  store i32 0, i32* %2, align 4
  br label %87

36:                                               ; preds = %1
  %37 = call i64 @waitq_link_reserve(i32* null)
  store i64 %37, i64* %9, align 8
  store i64 %37, i64* %8, align 8
  %38 = bitcast i64* %9 to i8*
  %39 = bitcast i8* %38 to i64*
  store i64* %39, i64** %10, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.waitq_set*, %struct.waitq_set** %41, align 8
  store %struct.waitq_set* %42, %struct.waitq_set** %7, align 8
  %43 = load %struct.knote*, %struct.knote** %3, align 8
  %44 = call %struct.TYPE_9__* @knote_get_kq(%struct.knote* %43)
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store %struct.waitq_set* %45, %struct.waitq_set** %47, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load %struct.waitq_set*, %struct.waitq_set** %49, align 8
  %51 = call i32 @waitq_set_lazy_init_link(%struct.waitq_set* %50)
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.knote*, %struct.knote** %3, align 8
  %54 = call i32 @knote_get_seltype(%struct.knote* %53)
  %55 = load i64*, i64** %10, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @VNOP_SELECT(i64 %52, i32 %54, i32 0, i64* %55, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load %struct.waitq_set*, %struct.waitq_set** %7, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store %struct.waitq_set* %58, %struct.waitq_set** %60, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @waitq_link_release(i64 %61)
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %36
  %67 = load i64*, i64** %10, align 8
  %68 = call i32 @memcpy(%struct.waitq** %14, i64* %67, i32 8)
  %69 = load %struct.waitq*, %struct.waitq** %14, align 8
  %70 = call %struct.selinfo* @selinfo_from_waitq(%struct.waitq* %69)
  store %struct.selinfo* %70, %struct.selinfo** %11, align 8
  %71 = load %struct.waitq*, %struct.waitq** %14, align 8
  %72 = call i32 @waitq_get_prepost_id(%struct.waitq* %71)
  %73 = load %struct.knote*, %struct.knote** %3, align 8
  %74 = getelementptr inbounds %struct.knote, %struct.knote* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  br label %83

75:                                               ; preds = %36
  %76 = load i32, i32* %12, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load %struct.knote*, %struct.knote** %3, align 8
  %80 = load i32, i32* @ENODEV, align 4
  %81 = call i32 @knote_set_error(%struct.knote* %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %75
  br label %83

83:                                               ; preds = %82, %66
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @vnode_put(i64 %84)
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %83, %32
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.TYPE_8__* @get_bsdthread_info(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @vfs_context_current(...) #1

declare dso_local i32 @vnode_getwithvid(i64, i32) #1

declare dso_local i32 @knote_set_error(%struct.knote*, i32) #1

declare dso_local i64 @waitq_link_reserve(i32*) #1

declare dso_local %struct.TYPE_9__* @knote_get_kq(%struct.knote*) #1

declare dso_local i32 @waitq_set_lazy_init_link(%struct.waitq_set*) #1

declare dso_local i32 @VNOP_SELECT(i64, i32, i32, i64*, i32) #1

declare dso_local i32 @knote_get_seltype(%struct.knote*) #1

declare dso_local i32 @waitq_link_release(i64) #1

declare dso_local i32 @memcpy(%struct.waitq**, i64*, i32) #1

declare dso_local %struct.selinfo* @selinfo_from_waitq(%struct.waitq*) #1

declare dso_local i32 @waitq_get_prepost_id(%struct.waitq*) #1

declare dso_local i32 @vnode_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
