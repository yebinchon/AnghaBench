; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_update_inactive_jetsam_priority_band.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_update_inactive_jetsam_priority_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64, i32 }

@FALSE = common dso_local global i64 0, align 8
@MEMORYSTATUS_CMD_ELEVATED_INACTIVEJETSAMPRIORITY_ENABLE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@MEMORYSTATUS_CMD_ELEVATED_INACTIVEJETSAMPRIORITY_DISABLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@P_MEMSTAT_USE_ELEVATED_INACTIVE_BAND = common dso_local global i32 0, align 4
@memorystatus_highwater_enabled = common dso_local global i64 0, align 8
@JETSAM_PRIORITY_IDLE = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memorystatus_update_inactive_jetsam_priority_band(i32 %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i64, i64* @FALSE, align 8
  store i64 %15, i64* %11, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %12, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @MEMORYSTATUS_CMD_ELEVATED_INACTIVEJETSAMPRIORITY_ENABLE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i64, i64* @TRUE, align 8
  store i64 %20, i64* %11, align 8
  br label %30

21:                                               ; preds = %4
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @MEMORYSTATUS_CMD_ELEVATED_INACTIVEJETSAMPRIORITY_DISABLE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i64, i64* @FALSE, align 8
  store i64 %26, i64* %11, align 8
  br label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %5, align 4
  br label %169

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %29, %19
  %31 = load i32, i32* %6, align 4
  %32 = call %struct.TYPE_8__* @proc_find(i32 %31)
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %12, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %34 = icmp ne %struct.TYPE_8__* %33, null
  br i1 %34, label %35, label %165

35:                                               ; preds = %30
  %36 = load i64, i64* %11, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @P_MEMSTAT_USE_ELEVATED_INACTIVE_BAND, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @P_MEMSTAT_USE_ELEVATED_INACTIVE_BAND, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %56, label %46

46:                                               ; preds = %38, %35
  %47 = load i64, i64* %11, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %46
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @P_MEMSTAT_USE_ELEVATED_INACTIVE_BAND, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49, %38
  br label %162

57:                                               ; preds = %49, %46
  %58 = call i32 (...) @proc_list_lock()
  %59 = load i64, i64* %11, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %123

61:                                               ; preds = %57
  %62 = load i32, i32* @P_MEMSTAT_USE_ELEVATED_INACTIVE_BAND, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %68 = load i64, i64* @TRUE, align 8
  %69 = call i32 @memorystatus_invalidate_idle_demotion_locked(%struct.TYPE_8__* %67, i64 %68)
  %70 = load i64, i64* %9, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %111

72:                                               ; preds = %61
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %110

78:                                               ; preds = %72
  %79 = load i64, i64* @memorystatus_highwater_enabled, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %104

81:                                               ; preds = %78
  %82 = load i64, i64* @TRUE, align 8
  store i64 %82, i64* %14, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %84 = load i64, i64* %13, align 8
  %85 = call i32 @CACHE_ACTIVE_LIMITS_LOCKED(%struct.TYPE_8__* %83, i64 %84)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %81
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  br label %98

97:                                               ; preds = %81
  br label %98

98:                                               ; preds = %97, %93
  %99 = phi i64 [ %96, %93 ], [ -1, %97 ]
  %100 = trunc i64 %99 to i32
  %101 = load i64, i64* %14, align 8
  %102 = load i64, i64* %13, align 8
  %103 = call i32 @task_set_phys_footprint_limit_internal(i32 %88, i32 %100, i32* null, i64 %101, i64 %102)
  br label %104

104:                                              ; preds = %98, %78
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %106 = load i32, i32* %8, align 4
  %107 = load i64, i64* @FALSE, align 8
  %108 = load i64, i64* @FALSE, align 8
  %109 = call i32 @memorystatus_update_priority_locked(%struct.TYPE_8__* %105, i32 %106, i64 %107, i64 %108)
  br label %110

110:                                              ; preds = %104, %72
  br label %122

111:                                              ; preds = %61
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %113 = call i64 @isProcessInAgingBands(%struct.TYPE_8__* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %117 = load i32, i32* @JETSAM_PRIORITY_IDLE, align 4
  %118 = load i64, i64* @FALSE, align 8
  %119 = load i64, i64* @TRUE, align 8
  %120 = call i32 @memorystatus_update_priority_locked(%struct.TYPE_8__* %116, i32 %117, i64 %118, i64 %119)
  br label %121

121:                                              ; preds = %115, %111
  br label %122

122:                                              ; preds = %121, %110
  br label %160

123:                                              ; preds = %57
  %124 = load i32, i32* @P_MEMSTAT_USE_ELEVATED_INACTIVE_BAND, align 4
  %125 = xor i32 %124, -1
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %131 = load i64, i64* @TRUE, align 8
  %132 = call i32 @memorystatus_invalidate_idle_demotion_locked(%struct.TYPE_8__* %130, i64 %131)
  %133 = load i64, i64* %9, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %123
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %135
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %143 = load i32, i32* @JETSAM_PRIORITY_IDLE, align 4
  %144 = load i64, i64* @FALSE, align 8
  %145 = load i64, i64* @TRUE, align 8
  %146 = call i32 @memorystatus_update_priority_locked(%struct.TYPE_8__* %142, i32 %143, i64 %144, i64 %145)
  br label %147

147:                                              ; preds = %141, %135
  br label %159

148:                                              ; preds = %123
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %150 = call i64 @isProcessInAgingBands(%struct.TYPE_8__* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %148
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %154 = load i32, i32* @JETSAM_PRIORITY_IDLE, align 4
  %155 = load i64, i64* @FALSE, align 8
  %156 = load i64, i64* @TRUE, align 8
  %157 = call i32 @memorystatus_update_priority_locked(%struct.TYPE_8__* %153, i32 %154, i64 %155, i64 %156)
  br label %158

158:                                              ; preds = %152, %148
  br label %159

159:                                              ; preds = %158, %147
  br label %160

160:                                              ; preds = %159, %122
  %161 = call i32 (...) @proc_list_unlock()
  br label %162

162:                                              ; preds = %160, %56
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %164 = call i32 @proc_rele(%struct.TYPE_8__* %163)
  store i32 0, i32* %10, align 4
  br label %167

165:                                              ; preds = %30
  %166 = load i32, i32* @ESRCH, align 4
  store i32 %166, i32* %10, align 4
  br label %167

167:                                              ; preds = %165, %162
  %168 = load i32, i32* %10, align 4
  store i32 %168, i32* %5, align 4
  br label %169

169:                                              ; preds = %167, %27
  %170 = load i32, i32* %5, align 4
  ret i32 %170
}

declare dso_local %struct.TYPE_8__* @proc_find(i32) #1

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local i32 @memorystatus_invalidate_idle_demotion_locked(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @CACHE_ACTIVE_LIMITS_LOCKED(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @task_set_phys_footprint_limit_internal(i32, i32, i32*, i64, i64) #1

declare dso_local i32 @memorystatus_update_priority_locked(%struct.TYPE_8__*, i32, i64, i64) #1

declare dso_local i64 @isProcessInAgingBands(%struct.TYPE_8__*) #1

declare dso_local i32 @proc_list_unlock(...) #1

declare dso_local i32 @proc_rele(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
