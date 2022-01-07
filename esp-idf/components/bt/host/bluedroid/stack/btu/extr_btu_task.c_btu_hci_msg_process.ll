; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btu/extr_btu_task.c_btu_hci_msg_process.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btu/extr_btu_task.c_btu_hci_msg_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_16__*)*, i32 }
%struct.TYPE_16__ = type { i32, i32* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_16__*)* }

@BT_EVT_MASK = common dso_local global i32 0, align 4
@BT_SUB_EVT_MASK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@BTU_MAX_REG_EVENT = common dso_local global i32 0, align 4
@btu_cb = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @btu_hci_msg_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btu_hci_msg_process(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %9, %struct.TYPE_16__** %3, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @BT_EVT_MASK, align 4
  %14 = and i32 %12, %13
  switch i32 %14, label %55 [
    i32 133, label %15
    i32 132, label %26
    i32 128, label %29
    i32 129, label %32
    i32 130, label %37
    i32 131, label %47
  ]

15:                                               ; preds = %1
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = bitcast i32* %19 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %4, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %22, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %25 = call i32 %23(%struct.TYPE_16__* %24)
  br label %120

26:                                               ; preds = %1
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %28 = call i32 @l2c_rcv_acl_data(%struct.TYPE_16__* %27)
  br label %120

29:                                               ; preds = %1
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %31 = call i32 @l2c_link_segments_xmitted(%struct.TYPE_16__* %30)
  br label %120

32:                                               ; preds = %1
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %34 = call i32 @btm_route_sco_data(%struct.TYPE_16__* %33)
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %36 = call i32 @osi_free(%struct.TYPE_16__* %35)
  br label %120

37:                                               ; preds = %1
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @BT_SUB_EVT_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %44 = call i32 @btu_hcif_process_event(i32 %42, %struct.TYPE_16__* %43)
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %46 = call i32 @osi_free(%struct.TYPE_16__* %45)
  br label %120

47:                                               ; preds = %1
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @BT_SUB_EVT_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %54 = call i32 @btu_hcif_send_cmd(i32 %52, %struct.TYPE_16__* %53)
  br label %120

55:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @BT_EVT_MASK, align 4
  %60 = and i32 %58, %59
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %109, %55
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @BTU_MAX_REG_EVENT, align 4
  %68 = icmp slt i32 %66, %67
  br label %69

69:                                               ; preds = %65, %62
  %70 = phi i1 [ false, %62 ], [ %68, %65 ]
  br i1 %70, label %71, label %112

71:                                               ; preds = %69
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btu_cb, i32 0, i32 0), align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %76, align 8
  %78 = icmp eq i32 (%struct.TYPE_16__*)* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %109

80:                                               ; preds = %71
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btu_cb, i32 0, i32 0), align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %81, %87
  br i1 %88, label %89, label %108

89:                                               ; preds = %80
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btu_cb, i32 0, i32 0), align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %94, align 8
  %96 = icmp ne i32 (%struct.TYPE_16__*)* %95, null
  br i1 %96, label %97, label %107

97:                                               ; preds = %89
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btu_cb, i32 0, i32 0), align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %102, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %105 = call i32 %103(%struct.TYPE_16__* %104)
  %106 = load i32, i32* @TRUE, align 4
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %97, %89
  br label %108

108:                                              ; preds = %107, %80
  br label %109

109:                                              ; preds = %108, %79
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %5, align 4
  br label %62

112:                                              ; preds = %69
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @FALSE, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %118 = call i32 @osi_free(%struct.TYPE_16__* %117)
  br label %119

119:                                              ; preds = %116, %112
  br label %120

120:                                              ; preds = %119, %47, %37, %32, %29, %26, %15
  ret void
}

declare dso_local i32 @l2c_rcv_acl_data(%struct.TYPE_16__*) #1

declare dso_local i32 @l2c_link_segments_xmitted(%struct.TYPE_16__*) #1

declare dso_local i32 @btm_route_sco_data(%struct.TYPE_16__*) #1

declare dso_local i32 @osi_free(%struct.TYPE_16__*) #1

declare dso_local i32 @btu_hcif_process_event(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @btu_hcif_send_cmd(i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
