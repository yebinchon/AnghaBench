; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bond_receive_la_marker_pdu.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bond_receive_la_marker_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i64 }
%struct.ifnet = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@ETHER_HDR_LEN = common dso_local global i64 0, align 8
@LA_MARKER_TLV_TYPE_MARKER = common dso_local global i64 0, align 8
@IFEF_BOND = common dso_local global i32 0, align 4
@IF_BOND_MODE_LACP = common dso_local global i64 0, align 8
@LA_MARKER_TLV_TYPE_MARKER_RESPONSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbuf*, %struct.ifnet*)* @bond_receive_la_marker_pdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bond_receive_la_marker_pdu(%struct.mbuf* %0, %struct.ifnet* %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  store %struct.ifnet* %1, %struct.ifnet** %4, align 8
  %7 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %8 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ETHER_HDR_LEN, align 8
  %11 = add nsw i64 %9, %10
  %12 = inttoptr i64 %11 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %5, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @LA_MARKER_TLV_TYPE_MARKER, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %57

19:                                               ; preds = %2
  %20 = call i32 (...) @bond_lock()
  %21 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %22 = call i32 @ifnet_eflags(%struct.ifnet* %21)
  %23 = load i32, i32* @IFEF_BOND, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = call i32 (...) @bond_unlock()
  br label %57

28:                                               ; preds = %19
  %29 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %30 = call %struct.TYPE_8__* @bond_lookup_port(%struct.ifnet* %29)
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %6, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = icmp eq %struct.TYPE_8__* %31, null
  br i1 %32, label %46, label %33

33:                                               ; preds = %28
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %33
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @IF_BOND_MODE_LACP, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %38, %33, %28
  %47 = call i32 (...) @bond_unlock()
  br label %57

48:                                               ; preds = %38
  %49 = load i64, i64* @LA_MARKER_TLV_TYPE_MARKER_RESPONSE, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %53 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %54 = ptrtoint %struct.mbuf* %53 to i32
  %55 = call i32 @bondport_slow_proto_transmit(%struct.TYPE_8__* %52, i32 %54)
  %56 = call i32 (...) @bond_unlock()
  br label %60

57:                                               ; preds = %46, %26, %18
  %58 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %59 = call i32 @m_freem(%struct.mbuf* %58)
  br label %60

60:                                               ; preds = %57, %48
  ret void
}

declare dso_local i32 @bond_lock(...) #1

declare dso_local i32 @ifnet_eflags(%struct.ifnet*) #1

declare dso_local i32 @bond_unlock(...) #1

declare dso_local %struct.TYPE_8__* @bond_lookup_port(%struct.ifnet*) #1

declare dso_local i32 @bondport_slow_proto_transmit(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
