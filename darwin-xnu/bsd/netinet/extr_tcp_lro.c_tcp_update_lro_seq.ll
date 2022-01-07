; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_lro.c_tcp_update_lro_seq.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_lro.c_tcp_update_lro_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lro_flow = type { i16, i16, i64, i32*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.in_addr = type { i64 }

@TCP_LRO_FLOW_MAP = common dso_local global i64 0, align 8
@tcp_lro_lock = common dso_local global i32 0, align 4
@lro_flow_map = common dso_local global i32* null, align 8
@TCP_LRO_FLOW_UNINIT = common dso_local global i32 0, align 4
@lro_flow_list = common dso_local global %struct.lro_flow* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_update_lro_seq(i64 %0, i64 %1, i64 %2, i16 zeroext %3, i16 zeroext %4) #0 {
  %6 = alloca %struct.in_addr, align 8
  %7 = alloca %struct.in_addr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.lro_flow*, align 8
  %14 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  store i64 %1, i64* %14, align 8
  %15 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  store i64 %2, i64* %15, align 8
  store i64 %0, i64* %8, align 8
  store i16 %3, i16* %9, align 2
  store i16 %4, i16* %10, align 2
  %16 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i16, i16* %10, align 2
  %21 = load i16, i16* %9, align 2
  %22 = load i64, i64* @TCP_LRO_FLOW_MAP, align 8
  %23 = sub nsw i64 %22, 1
  %24 = call i32 @LRO_HASH(i64 %17, i64 %19, i16 zeroext %20, i16 zeroext %21, i64 %23)
  store i32 %24, i32* %11, align 4
  %25 = call i32 @lck_mtx_lock_spin(i32* @tcp_lro_lock)
  %26 = load i32*, i32** @lro_flow_map, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @TCP_LRO_FLOW_UNINIT, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %5
  %35 = call i32 @lck_mtx_unlock(i32* @tcp_lro_lock)
  br label %83

36:                                               ; preds = %5
  %37 = load %struct.lro_flow*, %struct.lro_flow** @lro_flow_list, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.lro_flow, %struct.lro_flow* %37, i64 %39
  store %struct.lro_flow* %40, %struct.lro_flow** %13, align 8
  %41 = load %struct.lro_flow*, %struct.lro_flow** %13, align 8
  %42 = getelementptr inbounds %struct.lro_flow, %struct.lro_flow* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %44, %46
  br i1 %47, label %48, label %81

48:                                               ; preds = %36
  %49 = load %struct.lro_flow*, %struct.lro_flow** %13, align 8
  %50 = getelementptr inbounds %struct.lro_flow, %struct.lro_flow* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %52, %54
  br i1 %55, label %56, label %81

56:                                               ; preds = %48
  %57 = load %struct.lro_flow*, %struct.lro_flow** %13, align 8
  %58 = getelementptr inbounds %struct.lro_flow, %struct.lro_flow* %57, i32 0, i32 0
  %59 = load i16, i16* %58, align 8
  %60 = zext i16 %59 to i32
  %61 = load i16, i16* %10, align 2
  %62 = zext i16 %61 to i32
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %56
  %65 = load %struct.lro_flow*, %struct.lro_flow** %13, align 8
  %66 = getelementptr inbounds %struct.lro_flow, %struct.lro_flow* %65, i32 0, i32 1
  %67 = load i16, i16* %66, align 2
  %68 = zext i16 %67 to i32
  %69 = load i16, i16* %9, align 2
  %70 = zext i16 %69 to i32
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %64
  %73 = load %struct.lro_flow*, %struct.lro_flow** %13, align 8
  %74 = getelementptr inbounds %struct.lro_flow, %struct.lro_flow* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i64, i64* %8, align 8
  %79 = load %struct.lro_flow*, %struct.lro_flow** %13, align 8
  %80 = getelementptr inbounds %struct.lro_flow, %struct.lro_flow* %79, i32 0, i32 2
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %77, %72, %64, %56, %48, %36
  %82 = call i32 @lck_mtx_unlock(i32* @tcp_lro_lock)
  br label %83

83:                                               ; preds = %81, %34
  ret void
}

declare dso_local i32 @LRO_HASH(i64, i64, i16 zeroext, i16 zeroext, i64) #1

declare dso_local i32 @lck_mtx_lock_spin(i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
