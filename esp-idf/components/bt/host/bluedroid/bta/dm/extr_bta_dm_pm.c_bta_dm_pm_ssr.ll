; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_pm.c_bta_dm_pm_ssr.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_pm.c_bta_dm_pm_ssr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.TYPE_9__ = type { i64 }

@BTA_DM_PM_SSR0 = common dso_local global i32 0, align 4
@bta_dm_conn_srvcs = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@p_bta_dm_pm_cfg = common dso_local global %struct.TYPE_10__* null, align 8
@BTA_ALL_APP_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"bta_dm_pm_ssr conn_srvc id:%d, app_id:%d\00", align 1
@p_bta_dm_ssr_spec = common dso_local global %struct.TYPE_8__* null, align 8
@p_bta_dm_pm_spec = common dso_local global %struct.TYPE_9__* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"bta_dm_pm_ssr:%d, lat:%d\00", align 1
@BTA_DM_PM_SSR_HH = common dso_local global i64 0, align 8
@BTA_HH_ERR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @bta_dm_pm_ssr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bta_dm_pm_ssr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @BTA_DM_PM_SSR0, align 4
  store i32 %8, i32* %7, align 4
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %132, %1
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bta_dm_conn_srvcs, i32 0, i32 0), align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %135

13:                                               ; preds = %9
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bta_dm_conn_srvcs, i32 0, i32 1), align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @bdcmp(i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %131, label %22

22:                                               ; preds = %13
  store i64 1, i64* %6, align 8
  br label %23

23:                                               ; preds = %76, %22
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** @p_bta_dm_pm_cfg, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ule i64 %24, %28
  br i1 %29, label %30, label %79

30:                                               ; preds = %23
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** @p_bta_dm_pm_cfg, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bta_dm_conn_srvcs, i32 0, i32 1), align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %35, %40
  br i1 %41, label %42, label %75

42:                                               ; preds = %30
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** @p_bta_dm_pm_cfg, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @BTA_ALL_APP_ID, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %62, label %50

50:                                               ; preds = %42
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** @p_bta_dm_pm_cfg, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bta_dm_conn_srvcs, i32 0, i32 1), align 8
  %57 = load i64, i64* %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %55, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %50, %42
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bta_dm_conn_srvcs, i32 0, i32 1), align 8
  %64 = load i64, i64* %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bta_dm_conn_srvcs, i32 0, i32 1), align 8
  %70 = load i64, i64* %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @APPL_TRACE_WARNING(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %68, i64 %73)
  br label %79

75:                                               ; preds = %50, %30
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %6, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %6, align 8
  br label %23

79:                                               ; preds = %62, %23
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** @p_bta_dm_ssr_spec, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** @p_bta_dm_pm_spec, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** @p_bta_dm_pm_cfg, align 8
  %83 = load i64, i64* %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i64 %89
  store %struct.TYPE_8__* %90, %struct.TYPE_8__** %4, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** @p_bta_dm_ssr_spec, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i64 %93
  store %struct.TYPE_8__* %94, %struct.TYPE_8__** %3, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp slt i64 %97, %100
  br i1 %101, label %119, label %102

102:                                              ; preds = %79
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @BTA_DM_PM_SSR0, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %130

106:                                              ; preds = %102
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** @p_bta_dm_pm_spec, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** @p_bta_dm_pm_cfg, align 8
  %109 = load i64, i64* %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* @BTA_DM_PM_SSR0, align 4
  %117 = sext i32 %116 to i64
  %118 = icmp ne i64 %115, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %106, %79
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** @p_bta_dm_pm_spec, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** @p_bta_dm_pm_cfg, align 8
  %122 = load i64, i64* %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %7, align 4
  br label %130

130:                                              ; preds = %119, %106, %102
  br label %131

131:                                              ; preds = %130, %13
  br label %132

132:                                              ; preds = %131
  %133 = load i64, i64* %5, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %5, align 8
  br label %9

135:                                              ; preds = %9
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** @p_bta_dm_ssr_spec, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i64 %138
  store %struct.TYPE_8__* %139, %struct.TYPE_8__** %3, align 8
  %140 = load i32, i32* %7, align 4
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @APPL_TRACE_WARNING(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %140, i64 %143)
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %161

149:                                              ; preds = %135
  %150 = load i32, i32* %2, align 4
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @BTM_SetSsrParams(i32 %150, i64 %153, i32 %156, i32 %159)
  br label %161

161:                                              ; preds = %149, %135
  ret void
}

declare dso_local i32 @bdcmp(i32, i32) #1

declare dso_local i32 @APPL_TRACE_WARNING(i8*, i32, i64) #1

declare dso_local i32 @BTM_SetSsrParams(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
