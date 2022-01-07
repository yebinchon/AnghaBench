; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_fs_remove_from_heap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_fs_remove_from_heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_heap = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.dn_flow_set = type { i32 }
%struct.dn_flow_queue = type { %struct.dn_flow_set* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dn_heap*, %struct.dn_flow_set*)* @fs_remove_from_heap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fs_remove_from_heap(%struct.dn_heap* %0, %struct.dn_flow_set* %1) #0 {
  %3 = alloca %struct.dn_heap*, align 8
  %4 = alloca %struct.dn_flow_set*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dn_heap* %0, %struct.dn_heap** %3, align 8
  store %struct.dn_flow_set* %1, %struct.dn_flow_set** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %53, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.dn_heap*, %struct.dn_heap** %3, align 8
  %10 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %54

13:                                               ; preds = %7
  %14 = load %struct.dn_heap*, %struct.dn_heap** %3, align 8
  %15 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.dn_flow_queue*
  %23 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %22, i32 0, i32 0
  %24 = load %struct.dn_flow_set*, %struct.dn_flow_set** %23, align 8
  %25 = load %struct.dn_flow_set*, %struct.dn_flow_set** %4, align 8
  %26 = icmp eq %struct.dn_flow_set* %24, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %13
  %28 = load %struct.dn_heap*, %struct.dn_heap** %3, align 8
  %29 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 8
  %32 = load %struct.dn_heap*, %struct.dn_heap** %3, align 8
  %33 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = load %struct.dn_heap*, %struct.dn_heap** %3, align 8
  %39 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load %struct.dn_heap*, %struct.dn_heap** %3, align 8
  %42 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %44
  %46 = bitcast %struct.TYPE_2__* %37 to i8*
  %47 = bitcast %struct.TYPE_2__* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 8, i1 false)
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %53

50:                                               ; preds = %13
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %50, %27
  br label %7

54:                                               ; preds = %7
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.dn_heap*, %struct.dn_heap** %3, align 8
  %59 = call i32 @heapify(%struct.dn_heap* %58)
  br label %60

60:                                               ; preds = %57, %54
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @heapify(%struct.dn_heap*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
