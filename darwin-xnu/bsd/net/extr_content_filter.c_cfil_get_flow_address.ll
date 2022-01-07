; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_get_flow_address.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_get_flow_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfil_hash_entry = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.in_addr }
%struct.in_addr = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.in_addr }
%struct.inpcb = type { i32, i32, %struct.in_addr, %struct.in_addr }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfil_hash_entry*, %struct.inpcb*, %struct.in_addr*, %struct.in_addr*, i32*, i32*)* @cfil_get_flow_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfil_get_flow_address(%struct.cfil_hash_entry* %0, %struct.inpcb* %1, %struct.in_addr* %2, %struct.in_addr* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.cfil_hash_entry*, align 8
  %8 = alloca %struct.inpcb*, align 8
  %9 = alloca %struct.in_addr*, align 8
  %10 = alloca %struct.in_addr*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.cfil_hash_entry* %0, %struct.cfil_hash_entry** %7, align 8
  store %struct.inpcb* %1, %struct.inpcb** %8, align 8
  store %struct.in_addr* %2, %struct.in_addr** %9, align 8
  store %struct.in_addr* %3, %struct.in_addr** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %13 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %7, align 8
  %14 = icmp ne %struct.cfil_hash_entry* %13, null
  br i1 %14, label %15, label %38

15:                                               ; preds = %6
  %16 = load %struct.in_addr*, %struct.in_addr** %9, align 8
  %17 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %7, align 8
  %18 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = bitcast %struct.in_addr* %16 to i8*
  %22 = bitcast %struct.in_addr* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = load %struct.in_addr*, %struct.in_addr** %10, align 8
  %24 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %7, align 8
  %25 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = bitcast %struct.in_addr* %23 to i8*
  %29 = bitcast %struct.in_addr* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 4, i1 false)
  %30 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %7, align 8
  %31 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %11, align 8
  store i32 %32, i32* %33, align 4
  %34 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %7, align 8
  %35 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %12, align 8
  store i32 %36, i32* %37, align 4
  br label %57

38:                                               ; preds = %6
  %39 = load %struct.in_addr*, %struct.in_addr** %9, align 8
  %40 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %41 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %40, i32 0, i32 3
  %42 = bitcast %struct.in_addr* %39 to i8*
  %43 = bitcast %struct.in_addr* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 4, i1 false)
  %44 = load %struct.in_addr*, %struct.in_addr** %10, align 8
  %45 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %46 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %45, i32 0, i32 2
  %47 = bitcast %struct.in_addr* %44 to i8*
  %48 = bitcast %struct.in_addr* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 4, i1 false)
  %49 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %50 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %11, align 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %54 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %12, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %38, %15
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
