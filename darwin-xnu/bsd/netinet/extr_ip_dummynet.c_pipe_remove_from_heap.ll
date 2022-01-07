; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_pipe_remove_from_heap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_pipe_remove_from_heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_heap = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dn_pipe* }
%struct.dn_pipe = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dn_heap*, %struct.dn_pipe*)* @pipe_remove_from_heap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pipe_remove_from_heap(%struct.dn_heap* %0, %struct.dn_pipe* %1) #0 {
  %3 = alloca %struct.dn_heap*, align 8
  %4 = alloca %struct.dn_pipe*, align 8
  %5 = alloca i32, align 4
  store %struct.dn_heap* %0, %struct.dn_heap** %3, align 8
  store %struct.dn_pipe* %1, %struct.dn_pipe** %4, align 8
  %6 = load %struct.dn_heap*, %struct.dn_heap** %3, align 8
  %7 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %56

10:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %52, %10
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = load %struct.dn_heap*, %struct.dn_heap** %3, align 8
  %15 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %55

18:                                               ; preds = %11
  %19 = load %struct.dn_heap*, %struct.dn_heap** %3, align 8
  %20 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.dn_pipe*, %struct.dn_pipe** %25, align 8
  %27 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %28 = icmp eq %struct.dn_pipe* %26, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %18
  %30 = load %struct.dn_heap*, %struct.dn_heap** %3, align 8
  %31 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* %31, align 8
  %34 = load %struct.dn_heap*, %struct.dn_heap** %3, align 8
  %35 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = load %struct.dn_heap*, %struct.dn_heap** %3, align 8
  %41 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load %struct.dn_heap*, %struct.dn_heap** %3, align 8
  %44 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %45
  %47 = bitcast %struct.TYPE_2__* %39 to i8*
  %48 = bitcast %struct.TYPE_2__* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 8, i1 false)
  %49 = load %struct.dn_heap*, %struct.dn_heap** %3, align 8
  %50 = call i32 @heapify(%struct.dn_heap* %49)
  br label %55

51:                                               ; preds = %18
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %11

55:                                               ; preds = %29, %11
  br label %56

56:                                               ; preds = %55, %2
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
