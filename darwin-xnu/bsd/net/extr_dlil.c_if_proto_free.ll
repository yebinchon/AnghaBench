; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_if_proto_free.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_if_proto_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_proto = type { i32, i64, %struct.TYPE_6__, i32, i32, %struct.ifnet* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 (%struct.ifnet*, i32)* }
%struct.TYPE_4__ = type { i32 (%struct.ifnet*, i32)* }
%struct.ifnet = type { i32 }
%struct.kev_dl_proto_data = type { i32, i64 }
%struct.net_event_data = type { i32 }

@kProtoKPI_v1 = common dso_local global i64 0, align 8
@kProtoKPI_v2 = common dso_local global i64 0, align 8
@KEV_DL_SUBCLASS = common dso_local global i32 0, align 4
@KEV_DL_PROTO_DETACHED = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@SIOCSIFFLAGS = common dso_local global i32 0, align 4
@dlif_proto_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.if_proto*)* @if_proto_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @if_proto_free(%struct.if_proto* %0) #0 {
  %2 = alloca %struct.if_proto*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kev_dl_proto_data, align 8
  store %struct.if_proto* %0, %struct.if_proto** %2, align 8
  %7 = load %struct.if_proto*, %struct.if_proto** %2, align 8
  %8 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %7, i32 0, i32 5
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  %10 = load %struct.if_proto*, %struct.if_proto** %2, align 8
  %11 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load %struct.if_proto*, %struct.if_proto** %2, align 8
  %14 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %13, i32 0, i32 4
  %15 = call i32 @atomic_add_32_ov(i32* %14, i32 -1)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %107

19:                                               ; preds = %1
  %20 = load %struct.if_proto*, %struct.if_proto** %2, align 8
  %21 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @VERIFY(i32 %22)
  %24 = load %struct.if_proto*, %struct.if_proto** %2, align 8
  %25 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @kProtoKPI_v1, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %19
  %30 = load %struct.if_proto*, %struct.if_proto** %2, align 8
  %31 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32 (%struct.ifnet*, i32)*, i32 (%struct.ifnet*, i32)** %33, align 8
  %35 = icmp ne i32 (%struct.ifnet*, i32)* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %29
  %37 = load %struct.if_proto*, %struct.if_proto** %2, align 8
  %38 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32 (%struct.ifnet*, i32)*, i32 (%struct.ifnet*, i32)** %40, align 8
  %42 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %43 = load %struct.if_proto*, %struct.if_proto** %2, align 8
  %44 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 %41(%struct.ifnet* %42, i32 %45)
  br label %47

47:                                               ; preds = %36, %29
  br label %48

48:                                               ; preds = %47, %19
  %49 = load %struct.if_proto*, %struct.if_proto** %2, align 8
  %50 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @kProtoKPI_v2, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %48
  %55 = load %struct.if_proto*, %struct.if_proto** %2, align 8
  %56 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32 (%struct.ifnet*, i32)*, i32 (%struct.ifnet*, i32)** %58, align 8
  %60 = icmp ne i32 (%struct.ifnet*, i32)* %59, null
  br i1 %60, label %61, label %72

61:                                               ; preds = %54
  %62 = load %struct.if_proto*, %struct.if_proto** %2, align 8
  %63 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32 (%struct.ifnet*, i32)*, i32 (%struct.ifnet*, i32)** %65, align 8
  %67 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %68 = load %struct.if_proto*, %struct.if_proto** %2, align 8
  %69 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 %66(%struct.ifnet* %67, i32 %70)
  br label %72

72:                                               ; preds = %61, %54
  br label %73

73:                                               ; preds = %72, %48
  %74 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @if_rtproto_del(%struct.ifnet* %74, i32 %75)
  %77 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %78 = call i32 @ifnet_lock_shared(%struct.ifnet* %77)
  %79 = load i32, i32* %5, align 4
  %80 = getelementptr inbounds %struct.kev_dl_proto_data, %struct.kev_dl_proto_data* %6, i32 0, i32 0
  store i32 %79, i32* %80, align 8
  %81 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %82 = call i64 @dlil_ifp_protolist(%struct.ifnet* %81, i32* null, i32 0)
  %83 = getelementptr inbounds %struct.kev_dl_proto_data, %struct.kev_dl_proto_data* %6, i32 0, i32 1
  store i64 %82, i64* %83, align 8
  %84 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %85 = call i32 @ifnet_lock_done(%struct.ifnet* %84)
  %86 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %87 = load i32, i32* @KEV_DL_SUBCLASS, align 4
  %88 = load i32, i32* @KEV_DL_PROTO_DETACHED, align 4
  %89 = bitcast %struct.kev_dl_proto_data* %6 to %struct.net_event_data*
  %90 = call i32 @dlil_post_msg(%struct.ifnet* %86, i32 %87, i32 %88, %struct.net_event_data* %89, i32 16)
  %91 = getelementptr inbounds %struct.kev_dl_proto_data, %struct.kev_dl_proto_data* %6, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %73
  %95 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %96 = load i32, i32* @IFF_UP, align 4
  %97 = call i32 @ifnet_set_flags(%struct.ifnet* %95, i32 0, i32 %96)
  %98 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %99 = load i32, i32* @SIOCSIFFLAGS, align 4
  %100 = call i32 @ifnet_ioctl(%struct.ifnet* %98, i32 0, i32 %99, i32* null)
  %101 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %102 = call i32 @dlil_post_sifflags_msg(%struct.ifnet* %101)
  br label %103

103:                                              ; preds = %94, %73
  %104 = load i32, i32* @dlif_proto_zone, align 4
  %105 = load %struct.if_proto*, %struct.if_proto** %2, align 8
  %106 = call i32 @zfree(i32 %104, %struct.if_proto* %105)
  br label %107

107:                                              ; preds = %103, %18
  ret void
}

declare dso_local i32 @atomic_add_32_ov(i32*, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @if_rtproto_del(%struct.ifnet*, i32) #1

declare dso_local i32 @ifnet_lock_shared(%struct.ifnet*) #1

declare dso_local i64 @dlil_ifp_protolist(%struct.ifnet*, i32*, i32) #1

declare dso_local i32 @ifnet_lock_done(%struct.ifnet*) #1

declare dso_local i32 @dlil_post_msg(%struct.ifnet*, i32, i32, %struct.net_event_data*, i32) #1

declare dso_local i32 @ifnet_set_flags(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @ifnet_ioctl(%struct.ifnet*, i32, i32, i32*) #1

declare dso_local i32 @dlil_post_sifflags_msg(%struct.ifnet*) #1

declare dso_local i32 @zfree(i32, %struct.if_proto*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
