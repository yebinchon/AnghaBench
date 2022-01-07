; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_vlan.c_vlan_unconfig.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_vlan.c_vlan_unconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_18__ = type { i64, i64, i32, %struct.TYPE_17__*, %struct.ifnet* }
%struct.TYPE_17__ = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"vlan_unconfig\00", align 1
@ifv_vlan_list = common dso_local global i32 0, align 4
@g_vlan = common dso_local global %struct.TYPE_16__* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"vlan_unconfig: last vlan on %s%d\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@ETHERMTU = common dso_local global i64 0, align 8
@IFT_L2VLAN = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_RUNNING = common dso_local global i32 0, align 4
@IFEF_VLAN = common dso_local global i32 0, align 4
@vlp_parent_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32)* @vlan_unconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_unconfig(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ifnet*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 4
  %14 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  store %struct.ifnet* %14, %struct.ifnet** %6, align 8
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = call i32 (...) @vlan_assert_lock_held()
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %11, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %21 = icmp eq %struct.TYPE_17__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %158

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %30 = call i32 @vlan_parent_retain(%struct.TYPE_17__* %29)
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %32 = call i32 @vlan_parent_wait(%struct.TYPE_17__* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %34 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %35 = call %struct.TYPE_18__* @ifnet_get_ifvlan(%struct.ifnet* %34)
  %36 = icmp ne %struct.TYPE_18__* %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %133

38:                                               ; preds = %26
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %40, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %43 = icmp ne %struct.TYPE_17__* %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %133

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %23
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 1
  %51 = load %struct.ifnet*, %struct.ifnet** %50, align 8
  store %struct.ifnet* %51, %struct.ifnet** %10, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = call i32 @LIST_FIRST(i32* %53)
  %55 = load i32, i32* @ifv_vlan_list, align 4
  %56 = call i32* @LIST_NEXT(i32 %54, i32 %55)
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %71

58:                                               ; preds = %46
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** @g_vlan, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %65 = call i8* @ifnet_name(%struct.ifnet* %64)
  %66 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %67 = call i32 @ifnet_unit(%struct.ifnet* %66)
  %68 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %65, i32 %67)
  br label %69

69:                                               ; preds = %63, %58
  %70 = load i32, i32* @TRUE, align 4
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %69, %46
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %73 = load i64, i64* @ETHERMTU, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %73, %76
  %78 = call i32 @ifvlan_new_mtu(%struct.TYPE_18__* %72, i64 %77)
  %79 = call i32 (...) @vlan_unlock()
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 2
  %82 = call i32 @multicast_list_remove(i32* %81)
  %83 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %84 = load i32, i32* @IFT_L2VLAN, align 4
  %85 = call i32 @ifnet_set_lladdr_and_type(%struct.ifnet* %83, i32* null, i32 0, i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %71
  %89 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %90 = call i32 @vlan_detach_protocol(%struct.ifnet* %89)
  br label %91

91:                                               ; preds = %88, %71
  %92 = call i32 (...) @vlan_lock()
  %93 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %94 = call i32 @ifnet_set_mtu(%struct.ifnet* %93, i32 0)
  %95 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %96 = load i32, i32* @IFF_BROADCAST, align 4
  %97 = load i32, i32* @IFF_MULTICAST, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @IFF_SIMPLEX, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @IFF_RUNNING, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @ifnet_set_flags(%struct.ifnet* %95, i32 0, i32 %102)
  %104 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %105 = call i32 @ifnet_set_offload(%struct.ifnet* %104, i32 0)
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 1
  store i64 0, i64* %107, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %110 = call i32 @vlan_parent_remove_vlan(%struct.TYPE_17__* %108, %struct.TYPE_18__* %109)
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  store i64 0, i64* %112, align 8
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %132

117:                                              ; preds = %91
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %119 = call i32 @vlan_parent_flags_detaching(%struct.TYPE_17__* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %132, label %121

121:                                              ; preds = %117
  %122 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %123 = load i32, i32* @IFEF_VLAN, align 4
  %124 = call i32 @ifnet_set_eflags(%struct.ifnet* %122, i32 0, i32 %123)
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %126 = load i32, i32* @vlp_parent_list, align 4
  %127 = call i32 @LIST_REMOVE(%struct.TYPE_17__* %125, i32 %126)
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  br label %132

132:                                              ; preds = %121, %117, %91
  br label %133

133:                                              ; preds = %132, %44, %37
  %134 = load i32, i32* %5, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %138 = call i32 @vlan_parent_signal(%struct.TYPE_17__* %137, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %139

139:                                              ; preds = %136, %133
  %140 = call i32 (...) @vlan_unlock()
  br label %141

141:                                              ; preds = %145, %139
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %8, align 4
  %144 = icmp ne i32 %142, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %147 = call i32 @ifvlan_release(%struct.TYPE_18__* %146)
  br label %141

148:                                              ; preds = %141
  br label %149

149:                                              ; preds = %153, %148
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %9, align 4
  %152 = icmp ne i32 %150, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %155 = call i32 @vlan_parent_release(%struct.TYPE_17__* %154)
  br label %149

156:                                              ; preds = %149
  %157 = call i32 (...) @vlan_lock()
  store i32 0, i32* %3, align 4
  br label %158

158:                                              ; preds = %156, %22
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @vlan_assert_lock_held(...) #1

declare dso_local i32 @vlan_parent_retain(%struct.TYPE_17__*) #1

declare dso_local i32 @vlan_parent_wait(%struct.TYPE_17__*, i8*) #1

declare dso_local %struct.TYPE_18__* @ifnet_get_ifvlan(%struct.ifnet*) #1

declare dso_local i32* @LIST_NEXT(i32, i32) #1

declare dso_local i32 @LIST_FIRST(i32*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i8* @ifnet_name(%struct.ifnet*) #1

declare dso_local i32 @ifnet_unit(%struct.ifnet*) #1

declare dso_local i32 @ifvlan_new_mtu(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @vlan_unlock(...) #1

declare dso_local i32 @multicast_list_remove(i32*) #1

declare dso_local i32 @ifnet_set_lladdr_and_type(%struct.ifnet*, i32*, i32, i32) #1

declare dso_local i32 @vlan_detach_protocol(%struct.ifnet*) #1

declare dso_local i32 @vlan_lock(...) #1

declare dso_local i32 @ifnet_set_mtu(%struct.ifnet*, i32) #1

declare dso_local i32 @ifnet_set_flags(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @ifnet_set_offload(%struct.ifnet*, i32) #1

declare dso_local i32 @vlan_parent_remove_vlan(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @vlan_parent_flags_detaching(%struct.TYPE_17__*) #1

declare dso_local i32 @ifnet_set_eflags(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @vlan_parent_signal(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @ifvlan_release(%struct.TYPE_18__*) #1

declare dso_local i32 @vlan_parent_release(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
