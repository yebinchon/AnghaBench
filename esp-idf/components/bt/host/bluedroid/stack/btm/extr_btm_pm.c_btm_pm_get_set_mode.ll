; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_pm.c_btm_pm_get_set_mode.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_pm.c_btm_pm_get_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@BTM_PM_MD_FORCE = common dso_local global i32 0, align 4
@BTM_MAX_PM_RECORDS = common dso_local global i32 0, align 4
@btm_cb = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@BTM_PM_REG_SET = common dso_local global i32 0, align 4
@BTM_PM_MD_ACTIVE = common dso_local global i64 0, align 8
@BTM_PM_SET_ONLY_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_13__*)* @btm_pm_get_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @btm_pm_get_set_mode(i64 %0, %struct.TYPE_14__* %1, %struct.TYPE_13__* %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  store i64 %0, i64* %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %12, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %14 = icmp ne %struct.TYPE_13__* %13, null
  br i1 %14, label %15, label %37

15:                                               ; preds = %4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BTM_PM_MD_FORCE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %15
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %25 = bitcast %struct.TYPE_13__* %23 to i8*
  %26 = bitcast %struct.TYPE_13__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  %27 = load i32, i32* @BTM_PM_MD_FORCE, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %5, align 8
  br label %126

37:                                               ; preds = %15, %4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %39 = icmp ne %struct.TYPE_13__* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @BTM_MAX_PM_RECORDS, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  br label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @BTM_MAX_PM_RECORDS, align 4
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %43, %40
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %91, %45
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %94

50:                                               ; preds = %46
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @btm_cb, i32 0, i32 0), align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @BTM_PM_REG_SET, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %90

60:                                               ; preds = %50
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* @BTM_PM_MD_ACTIVE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %60
  %73 = load i64, i64* @BTM_PM_MD_ACTIVE, align 8
  store i64 %73, i64* %5, align 8
  br label %126

74:                                               ; preds = %60
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i64 %80
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %83 = call i32* @btm_pm_compare_modes(%struct.TYPE_13__* %75, %struct.TYPE_13__* %81, %struct.TYPE_13__* %82)
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %74
  %86 = load i64, i64* @BTM_PM_MD_ACTIVE, align 8
  store i64 %86, i64* %5, align 8
  br label %126

87:                                               ; preds = %74
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %88, %struct.TYPE_13__** %12, align 8
  br label %89

89:                                               ; preds = %87
  br label %90

90:                                               ; preds = %89, %50
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  br label %46

94:                                               ; preds = %46
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %96 = icmp eq %struct.TYPE_13__* %95, null
  br i1 %96, label %97, label %108

97:                                               ; preds = %94
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %99 = icmp ne %struct.TYPE_13__* %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %103 = bitcast %struct.TYPE_13__* %101 to i8*
  %104 = bitcast %struct.TYPE_13__* %102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %103, i8* align 4 %104, i64 4, i1 false)
  br label %107

105:                                              ; preds = %97
  %106 = load i64, i64* @BTM_PM_MD_ACTIVE, align 8
  store i64 %106, i64* %5, align 8
  br label %126

107:                                              ; preds = %100
  br label %121

108:                                              ; preds = %94
  %109 = load i64, i64* %6, align 8
  %110 = load i64, i64* @BTM_PM_SET_ONLY_ID, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %108
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %116 = call i32* @btm_pm_compare_modes(%struct.TYPE_13__* %113, %struct.TYPE_13__* %114, %struct.TYPE_13__* %115)
  %117 = icmp eq i32* %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = load i64, i64* @BTM_PM_MD_ACTIVE, align 8
  store i64 %119, i64* %5, align 8
  br label %126

120:                                              ; preds = %112, %108
  br label %121

121:                                              ; preds = %120, %107
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  store i64 %125, i64* %5, align 8
  br label %126

126:                                              ; preds = %121, %118, %105, %85, %72, %22
  %127 = load i64, i64* %5, align 8
  ret i64 %127
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @btm_pm_compare_modes(%struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
