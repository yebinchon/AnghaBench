; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_rm_cback.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_rm_cback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_5__ = type { i64, i64, i32 }

@BTA_SYS_CONN_OPEN = common dso_local global i64 0, align 8
@BTA_DM_UNPAIRING = common dso_local global i64 0, align 8
@BTA_DM_CONNECTED = common dso_local global i64 0, align 8
@p_bta_dm_rm_cfg = common dso_local global %struct.TYPE_6__* null, align 8
@BTA_ALL_APP_ID = common dso_local global i64 0, align 8
@BTA_ID_AV = common dso_local global i64 0, align 8
@BTA_ID_AVK = common dso_local global i64 0, align 8
@BTA_SYS_CONN_BUSY = common dso_local global i64 0, align 8
@BTA_DM_DI_AV_ACTIVE = common dso_local global i32 0, align 4
@bta_dm_cb = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@BTA_SYS_CONN_IDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"bta_dm_rm_cback:%d, status:%d\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i32)* @bta_dm_rm_cback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bta_dm_rm_cback(i64 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call %struct.TYPE_5__* @bta_dm_find_peer_device(i32 %12)
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %11, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @BTA_SYS_CONN_OPEN, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %84

17:                                               ; preds = %4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %19 = icmp ne %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %83

20:                                               ; preds = %17
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BTA_DM_UNPAIRING, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i64, i64* @BTA_DM_CONNECTED, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %26, %20
  store i64 1, i64* %9, align 8
  br label %31

31:                                               ; preds = %79, %30
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @p_bta_dm_rm_cfg, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ule i64 %32, %36
  br i1 %37, label %38, label %82

38:                                               ; preds = %31
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @p_bta_dm_rm_cfg, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %54, label %46

46:                                               ; preds = %38
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @p_bta_dm_rm_cfg, align 8
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @BTA_ALL_APP_ID, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %78

54:                                               ; preds = %46, %38
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** @p_bta_dm_rm_cfg, align 8
  %56 = load i64, i64* %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %54
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @p_bta_dm_rm_cfg, align 8
  %64 = load i64, i64* %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %10, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %68, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %62
  %74 = load i64, i64* %10, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %73, %62
  br label %82

78:                                               ; preds = %54, %46
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %9, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %9, align 8
  br label %31

82:                                               ; preds = %77, %31
  br label %83

83:                                               ; preds = %82, %17
  br label %84

84:                                               ; preds = %83, %4
  %85 = load i64, i64* @BTA_ID_AV, align 8
  %86 = load i64, i64* %6, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i64, i64* @BTA_ID_AVK, align 8
  %90 = load i64, i64* %6, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %138

92:                                               ; preds = %88, %84
  %93 = load i64, i64* %5, align 8
  %94 = load i64, i64* @BTA_SYS_CONN_BUSY, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %112

96:                                               ; preds = %92
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %98 = icmp ne %struct.TYPE_5__* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i32, i32* @BTA_DM_DI_AV_ACTIVE, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  br label %105

105:                                              ; preds = %99, %96
  %106 = load i64, i64* @BTA_ID_AV, align 8
  %107 = load i64, i64* %6, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = call i8* (...) @bta_dm_get_av_count()
  store i8* %110, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bta_dm_cb, i32 0, i32 0), align 8
  br label %111

111:                                              ; preds = %109, %105
  br label %134

112:                                              ; preds = %92
  %113 = load i64, i64* %5, align 8
  %114 = load i64, i64* @BTA_SYS_CONN_IDLE, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %133

116:                                              ; preds = %112
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %118 = icmp ne %struct.TYPE_5__* %117, null
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = load i32, i32* @BTA_DM_DI_AV_ACTIVE, align 4
  %121 = xor i32 %120, -1
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = and i32 %124, %121
  store i32 %125, i32* %123, align 8
  br label %126

126:                                              ; preds = %119, %116
  %127 = load i64, i64* @BTA_ID_AV, align 8
  %128 = load i64, i64* %6, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = call i8* (...) @bta_dm_get_av_count()
  store i8* %131, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bta_dm_cb, i32 0, i32 0), align 8
  br label %132

132:                                              ; preds = %130, %126
  br label %133

133:                                              ; preds = %132, %112
  br label %134

134:                                              ; preds = %133, %111
  %135 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bta_dm_cb, i32 0, i32 0), align 8
  %136 = load i64, i64* %5, align 8
  %137 = call i32 @APPL_TRACE_EVENT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %135, i64 %136)
  br label %138

138:                                              ; preds = %134, %88
  %139 = load i64, i64* %5, align 8
  %140 = load i64, i64* @BTA_SYS_CONN_BUSY, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %138
  %143 = load i64, i64* %5, align 8
  %144 = load i64, i64* @BTA_SYS_CONN_IDLE, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load i32, i32* @FALSE, align 4
  %148 = call i32 @bta_dm_adjust_roles(i32 %147)
  br label %149

149:                                              ; preds = %146, %142, %138
  ret void
}

declare dso_local %struct.TYPE_5__* @bta_dm_find_peer_device(i32) #1

declare dso_local i8* @bta_dm_get_av_count(...) #1

declare dso_local i32 @APPL_TRACE_EVENT(i8*, i8*, i64) #1

declare dso_local i32 @bta_dm_adjust_roles(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
