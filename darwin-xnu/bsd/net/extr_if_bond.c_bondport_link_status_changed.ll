; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bondport_link_status_changed.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bondport_link_status_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_13__*, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_13__* }

@g_bond = common dso_local global %struct.TYPE_16__* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"[%s] Link UP %d Mbit/s %s duplex\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"[%s] Link DOWN\0A\00", align 1
@IF_BOND_MODE_LACP = common dso_local global i64 0, align 8
@SelectedState_UNSELECTED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"[%s] Port speed %d differs from LAG %d\0A\00", align 1
@LAEventMediaChange = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @bondport_link_status_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bondport_link_status_changed(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %4 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 3
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_14__* %6, %struct.TYPE_14__** %3, align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** @g_bond, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %1
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %14 = call i64 @media_active(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %11
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %18 = call i32 @bondport_get_name(%struct.TYPE_15__* %17)
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  %21 = call i64 @media_speed(i32* %20)
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  %24 = call i64 @media_full_duplex(i32* %23)
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %28 = call i32 (i8*, i32, ...) @timestamp_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %18, i64 %21, i8* %27)
  br label %33

29:                                               ; preds = %11
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %31 = call i32 @bondport_get_name(%struct.TYPE_15__* %30)
  %32 = call i32 (i8*, i32, ...) @timestamp_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %16
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IF_BOND_MODE_LACP, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %107

40:                                               ; preds = %34
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  %43 = call i64 @media_active(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %97

45:                                               ; preds = %40
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = icmp ne %struct.TYPE_13__* %48, null
  br i1 %49, label %50, label %97

50:                                               ; preds = %45
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = icmp eq %struct.TYPE_13__* %53, %56
  br i1 %57, label %58, label %97

58:                                               ; preds = %50
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SelectedState_UNSELECTED, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %97

64:                                               ; preds = %58
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  %67 = call i64 @media_speed(i32* %66)
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %67, %72
  br i1 %73, label %74, label %96

74:                                               ; preds = %64
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** @g_bond, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %74
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %81 = call i32 @bondport_get_name(%struct.TYPE_15__* %80)
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = call i64 @media_speed(i32* %83)
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i8* @link_speed(i64 %89)
  %91 = call i32 (i8*, i32, ...) @timestamp_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %81, i64 %84, i8* %90)
  br label %92

92:                                               ; preds = %79, %74
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %94 = load i64, i64* @SelectedState_UNSELECTED, align 8
  %95 = call i32 @bondport_set_selected(%struct.TYPE_15__* %93, i64 %94)
  br label %96

96:                                               ; preds = %92, %64
  br label %97

97:                                               ; preds = %96, %58, %50, %45, %40
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %99 = load i32, i32* @LAEventMediaChange, align 4
  %100 = call i32 @bondport_receive_machine(%struct.TYPE_15__* %98, i32 %99, i32* null)
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %102 = load i32, i32* @LAEventMediaChange, align 4
  %103 = call i32 @bondport_mux_machine(%struct.TYPE_15__* %101, i32 %102, i32* null)
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %105 = load i32, i32* @LAEventMediaChange, align 4
  %106 = call i32 @bondport_periodic_transmit_machine(%struct.TYPE_15__* %104, i32 %105, i32* null)
  br label %119

107:                                              ; preds = %34
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  %110 = call i64 @media_active(i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %114 = call i32 @bondport_enable_distributing(%struct.TYPE_15__* %113)
  br label %118

115:                                              ; preds = %107
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %117 = call i32 @bondport_disable_distributing(%struct.TYPE_15__* %116)
  br label %118

118:                                              ; preds = %115, %112
  br label %119

119:                                              ; preds = %118, %97
  ret void
}

declare dso_local i64 @media_active(i32*) #1

declare dso_local i32 @timestamp_printf(i8*, i32, ...) #1

declare dso_local i32 @bondport_get_name(%struct.TYPE_15__*) #1

declare dso_local i64 @media_speed(i32*) #1

declare dso_local i64 @media_full_duplex(i32*) #1

declare dso_local i8* @link_speed(i64) #1

declare dso_local i32 @bondport_set_selected(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @bondport_receive_machine(%struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @bondport_mux_machine(%struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @bondport_periodic_transmit_machine(%struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @bondport_enable_distributing(%struct.TYPE_15__*) #1

declare dso_local i32 @bondport_disable_distributing(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
