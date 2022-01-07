; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_dlil_attach_protocol_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_dlil_attach_protocol_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_proto = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32 (%struct.ifnet*, i32, %struct.ifnet_demux_desc*, i64)*, i32* }
%struct.ifnet_demux_desc = type { i32 }
%struct.kev_dl_proto_data = type { i32, i32 }
%struct.net_event_data = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@next_hash = common dso_local global i32 0, align 4
@KEV_DL_SUBCLASS = common dso_local global i32 0, align 4
@KEV_DL_PROTO_ATTACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_proto*, %struct.ifnet_demux_desc*, i64, i32*)* @dlil_attach_protocol_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlil_attach_protocol_internal(%struct.if_proto* %0, %struct.ifnet_demux_desc* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.if_proto*, align 8
  %7 = alloca %struct.ifnet_demux_desc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.kev_dl_proto_data, align 4
  %11 = alloca %struct.ifnet*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.if_proto*, align 8
  %15 = alloca %struct.if_proto*, align 8
  store %struct.if_proto* %0, %struct.if_proto** %6, align 8
  store %struct.ifnet_demux_desc* %1, %struct.ifnet_demux_desc** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.if_proto*, %struct.if_proto** %6, align 8
  %17 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %16, i32 0, i32 1
  %18 = load %struct.ifnet*, %struct.ifnet** %17, align 8
  store %struct.ifnet* %18, %struct.ifnet** %11, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.if_proto*, %struct.if_proto** %6, align 8
  %20 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @proto_hash_value(i32 %21)
  store i64 %22, i64* %13, align 8
  %23 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  %24 = call i32 @ifnet_lock_exclusive(%struct.ifnet* %23)
  %25 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  %26 = load %struct.if_proto*, %struct.if_proto** %6, align 8
  %27 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.if_proto* @find_attached_proto(%struct.ifnet* %25, i32 %28)
  store %struct.if_proto* %29, %struct.if_proto** %15, align 8
  %30 = load %struct.if_proto*, %struct.if_proto** %15, align 8
  %31 = icmp ne %struct.if_proto* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %4
  %33 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  %34 = call i32 @ifnet_lock_done(%struct.ifnet* %33)
  %35 = load %struct.if_proto*, %struct.if_proto** %15, align 8
  %36 = call i32 @if_proto_free(%struct.if_proto* %35)
  %37 = load i32, i32* @EEXIST, align 4
  store i32 %37, i32* %5, align 4
  br label %118

38:                                               ; preds = %4
  %39 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  %40 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %39, i32 0, i32 0
  %41 = load i32 (%struct.ifnet*, i32, %struct.ifnet_demux_desc*, i64)*, i32 (%struct.ifnet*, i32, %struct.ifnet_demux_desc*, i64)** %40, align 8
  %42 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  %43 = load %struct.if_proto*, %struct.if_proto** %6, align 8
  %44 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ifnet_demux_desc*, %struct.ifnet_demux_desc** %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i32 %41(%struct.ifnet* %42, i32 %45, %struct.ifnet_demux_desc* %46, i64 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %38
  %52 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  %53 = call i32 @ifnet_lock_done(%struct.ifnet* %52)
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %5, align 4
  br label %118

55:                                               ; preds = %38
  %56 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  %57 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %13, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = call %struct.if_proto* @SLIST_FIRST(i32* %60)
  store %struct.if_proto* %61, %struct.if_proto** %14, align 8
  br label %62

62:                                               ; preds = %72, %55
  %63 = load %struct.if_proto*, %struct.if_proto** %14, align 8
  %64 = icmp ne %struct.if_proto* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load %struct.if_proto*, %struct.if_proto** %14, align 8
  %67 = load i32, i32* @next_hash, align 4
  %68 = call %struct.if_proto* @SLIST_NEXT(%struct.if_proto* %66, i32 %67)
  %69 = icmp ne %struct.if_proto* %68, null
  br label %70

70:                                               ; preds = %65, %62
  %71 = phi i1 [ false, %62 ], [ %69, %65 ]
  br i1 %71, label %72, label %76

72:                                               ; preds = %70
  %73 = load %struct.if_proto*, %struct.if_proto** %14, align 8
  %74 = load i32, i32* @next_hash, align 4
  %75 = call %struct.if_proto* @SLIST_NEXT(%struct.if_proto* %73, i32 %74)
  store %struct.if_proto* %75, %struct.if_proto** %14, align 8
  br label %62

76:                                               ; preds = %70
  %77 = load %struct.if_proto*, %struct.if_proto** %14, align 8
  %78 = icmp ne %struct.if_proto* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load %struct.if_proto*, %struct.if_proto** %14, align 8
  %81 = load %struct.if_proto*, %struct.if_proto** %6, align 8
  %82 = load i32, i32* @next_hash, align 4
  %83 = call i32 @SLIST_INSERT_AFTER(%struct.if_proto* %80, %struct.if_proto* %81, i32 %82)
  br label %93

84:                                               ; preds = %76
  %85 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  %86 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* %13, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load %struct.if_proto*, %struct.if_proto** %6, align 8
  %91 = load i32, i32* @next_hash, align 4
  %92 = call i32 @SLIST_INSERT_HEAD(i32* %89, %struct.if_proto* %90, i32 %91)
  br label %93

93:                                               ; preds = %84, %79
  %94 = load %struct.if_proto*, %struct.if_proto** %6, align 8
  %95 = call i32 @if_proto_ref(%struct.if_proto* %94)
  %96 = load %struct.if_proto*, %struct.if_proto** %6, align 8
  %97 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds %struct.kev_dl_proto_data, %struct.kev_dl_proto_data* %10, i32 0, i32 1
  store i32 %98, i32* %99, align 4
  %100 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  %101 = call i32 @dlil_ifp_protolist(%struct.ifnet* %100, i32* null, i32 0)
  %102 = getelementptr inbounds %struct.kev_dl_proto_data, %struct.kev_dl_proto_data* %10, i32 0, i32 0
  store i32 %101, i32* %102, align 4
  %103 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  %104 = call i32 @ifnet_lock_done(%struct.ifnet* %103)
  %105 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  %106 = load i32, i32* @KEV_DL_SUBCLASS, align 4
  %107 = load i32, i32* @KEV_DL_PROTO_ATTACHED, align 4
  %108 = bitcast %struct.kev_dl_proto_data* %10 to %struct.net_event_data*
  %109 = call i32 @dlil_post_msg(%struct.ifnet* %105, i32 %106, i32 %107, %struct.net_event_data* %108, i32 8)
  %110 = load i32*, i32** %9, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %116

112:                                              ; preds = %93
  %113 = getelementptr inbounds %struct.kev_dl_proto_data, %struct.kev_dl_proto_data* %10, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %9, align 8
  store i32 %114, i32* %115, align 4
  br label %116

116:                                              ; preds = %112, %93
  %117 = load i32, i32* %12, align 4
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %116, %51, %32
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i64 @proto_hash_value(i32) #1

declare dso_local i32 @ifnet_lock_exclusive(%struct.ifnet*) #1

declare dso_local %struct.if_proto* @find_attached_proto(%struct.ifnet*, i32) #1

declare dso_local i32 @ifnet_lock_done(%struct.ifnet*) #1

declare dso_local i32 @if_proto_free(%struct.if_proto*) #1

declare dso_local %struct.if_proto* @SLIST_FIRST(i32*) #1

declare dso_local %struct.if_proto* @SLIST_NEXT(%struct.if_proto*, i32) #1

declare dso_local i32 @SLIST_INSERT_AFTER(%struct.if_proto*, %struct.if_proto*, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.if_proto*, i32) #1

declare dso_local i32 @if_proto_ref(%struct.if_proto*) #1

declare dso_local i32 @dlil_ifp_protolist(%struct.ifnet*, i32*, i32) #1

declare dso_local i32 @dlil_post_msg(%struct.ifnet*, i32, i32, %struct.net_event_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
