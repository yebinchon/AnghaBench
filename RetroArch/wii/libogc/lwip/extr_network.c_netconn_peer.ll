; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_netconn_peer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_netconn_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netconn = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, %struct.ip_addr }
%struct.ip_addr = type { i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.ip_addr }

@ERR_CONN = common dso_local global i32 0, align 4
@UDP_FLAGS_CONNECTED = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netconn*, %struct.ip_addr*, i32*)* @netconn_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netconn_peer(%struct.netconn* %0, %struct.ip_addr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.netconn*, align 8
  %6 = alloca %struct.ip_addr*, align 8
  %7 = alloca i32*, align 8
  store %struct.netconn* %0, %struct.netconn** %5, align 8
  store %struct.ip_addr* %1, %struct.ip_addr** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.netconn*, %struct.netconn** %5, align 8
  %9 = getelementptr inbounds %struct.netconn, %struct.netconn* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %71 [
    i32 132, label %11
    i32 129, label %13
    i32 128, label %13
    i32 130, label %13
    i32 131, label %47
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* @ERR_CONN, align 4
  store i32 %12, i32* %4, align 4
  br label %75

13:                                               ; preds = %3, %3, %3
  %14 = load %struct.netconn*, %struct.netconn** %5, align 8
  %15 = getelementptr inbounds %struct.netconn, %struct.netconn* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp eq %struct.TYPE_4__* %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %13
  %20 = load %struct.netconn*, %struct.netconn** %5, align 8
  %21 = getelementptr inbounds %struct.netconn, %struct.netconn* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @UDP_FLAGS_CONNECTED, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19, %13
  %30 = load i32, i32* @ERR_CONN, align 4
  store i32 %30, i32* %4, align 4
  br label %75

31:                                               ; preds = %19
  %32 = load %struct.ip_addr*, %struct.ip_addr** %6, align 8
  %33 = load %struct.netconn*, %struct.netconn** %5, align 8
  %34 = getelementptr inbounds %struct.netconn, %struct.netconn* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = bitcast %struct.ip_addr* %32 to i8*
  %39 = bitcast %struct.ip_addr* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 4, i1 false)
  %40 = load %struct.netconn*, %struct.netconn** %5, align 8
  %41 = getelementptr inbounds %struct.netconn, %struct.netconn* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  br label %71

47:                                               ; preds = %3
  %48 = load %struct.netconn*, %struct.netconn** %5, align 8
  %49 = getelementptr inbounds %struct.netconn, %struct.netconn* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = icmp eq %struct.TYPE_5__* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @ERR_CONN, align 4
  store i32 %54, i32* %4, align 4
  br label %75

55:                                               ; preds = %47
  %56 = load %struct.ip_addr*, %struct.ip_addr** %6, align 8
  %57 = load %struct.netconn*, %struct.netconn** %5, align 8
  %58 = getelementptr inbounds %struct.netconn, %struct.netconn* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = bitcast %struct.ip_addr* %56 to i8*
  %63 = bitcast %struct.ip_addr* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 4 %63, i64 4, i1 false)
  %64 = load %struct.netconn*, %struct.netconn** %5, align 8
  %65 = getelementptr inbounds %struct.netconn, %struct.netconn* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %7, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %3, %55, %31
  %72 = load i32, i32* @ERR_OK, align 4
  %73 = load %struct.netconn*, %struct.netconn** %5, align 8
  %74 = getelementptr inbounds %struct.netconn, %struct.netconn* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  store i32 %72, i32* %4, align 4
  br label %75

75:                                               ; preds = %71, %53, %29, %11
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
