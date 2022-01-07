; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_turnstile_update_inheritor_priority_chain.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_turnstile_update_inheritor_priority_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i32, i32, i32* }

@TURNSTILE_NULL = common dso_local global %struct.turnstile* null, align 8
@THREAD_NULL = common dso_local global i64 0, align 8
@TURNSTILE_UPDATE_BOOST = common dso_local global i32 0, align 4
@TSU_BOOST_ARG = common dso_local global i32 0, align 4
@TSU_FLAGS_NONE = common dso_local global i32 0, align 4
@TSU_PRI_PROPAGATION = common dso_local global i32 0, align 4
@TURNSTILE_INHERITOR_THREAD = common dso_local global i32 0, align 4
@TURNSTILE_INHERITOR_TURNSTILE = common dso_local global i32 0, align 4
@TURNSTILE_INHERITOR_WORKQ = common dso_local global i32 0, align 4
@TSU_NO_INHERITOR = common dso_local global i32 0, align 4
@TSU_TURNSTILE_ARG = common dso_local global i32 0, align 4
@TSU_NO_PRI_CHANGE_NEEDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Inheritor flags not passed in turnstile_update_inheritor\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.turnstile*, i32)* @turnstile_update_inheritor_priority_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @turnstile_update_inheritor_priority_chain(%struct.turnstile* %0, i32 %1) #0 {
  %3 = alloca %struct.turnstile*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.turnstile*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.turnstile* %0, %struct.turnstile** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  store %struct.turnstile* %11, %struct.turnstile** %5, align 8
  %12 = load i64, i64* @THREAD_NULL, align 8
  store i64 %12, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @TURNSTILE_UPDATE_BOOST, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @TSU_BOOST_ARG, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @TSU_FLAGS_NONE, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = load i32, i32* @TSU_PRI_PROPAGATION, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %26 = icmp eq %struct.turnstile* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %161

28:                                               ; preds = %21
  %29 = call i32 (...) @splsched()
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @TURNSTILE_INHERITOR_THREAD, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %36 = ptrtoint %struct.turnstile* %35 to i64
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @thread_lock(i64 %37)
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @thread_recompute_user_promotion_locked(i64 %39)
  br label %65

41:                                               ; preds = %28
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @TURNSTILE_INHERITOR_TURNSTILE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  store %struct.turnstile* %47, %struct.turnstile** %5, align 8
  %48 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %49 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %48, i32 0, i32 1
  %50 = call i32 @waitq_lock(i32* %49)
  %51 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %52 = call i32 @turnstile_recompute_priority_locked(%struct.turnstile* %51)
  %53 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %54 = call i32 @turnstile_get_update_flags_for_above_UI_pri_change(%struct.turnstile* %53)
  %55 = load i32, i32* %10, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %10, align 4
  br label %64

57:                                               ; preds = %41
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @TURNSTILE_INHERITOR_WORKQ, align 4
  %60 = and i32 %58, %59
  %61 = icmp eq i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  br label %64

64:                                               ; preds = %57, %46
  br label %65

65:                                               ; preds = %64, %34
  br label %66

66:                                               ; preds = %155, %65
  %67 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %68 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  %69 = icmp ne %struct.turnstile* %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* @THREAD_NULL, align 8
  %73 = icmp ne i64 %71, %72
  br label %74

74:                                               ; preds = %70, %66
  %75 = phi i1 [ true, %66 ], [ %73, %70 ]
  br i1 %75, label %76, label %158

76:                                               ; preds = %74
  %77 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %78 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  %79 = icmp ne %struct.turnstile* %77, %78
  br i1 %79, label %80, label %143

80:                                               ; preds = %76
  %81 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %82 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %99

85:                                               ; preds = %80
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  %88 = load i32, i32* @TSU_NO_INHERITOR, align 4
  %89 = load i32, i32* @TSU_TURNSTILE_ARG, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* %10, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %94 = call i32 @turnstile_stats_update(i32 %87, i32 %92, %struct.turnstile* %93)
  %95 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %96 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %95, i32 0, i32 1
  %97 = call i32 @waitq_unlock(i32* %96)
  %98 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  store %struct.turnstile* %98, %struct.turnstile** %5, align 8
  br label %158

99:                                               ; preds = %80
  %100 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %101 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @TURNSTILE_INHERITOR_THREAD, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @turnstile_update_inheritor_thread_priority_chain(%struct.turnstile** %5, i64* %6, i32 %107, i32 %108)
  br label %142

110:                                              ; preds = %99
  %111 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %112 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @TURNSTILE_INHERITOR_TURNSTILE, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @turnstile_update_inheritor_turnstile_priority_chain(%struct.turnstile** %5, i32 %118, i32 %119)
  br label %141

121:                                              ; preds = %110
  %122 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %123 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @TURNSTILE_INHERITOR_WORKQ, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %121
  %129 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @turnstile_update_inheritor_workq_priority_chain(%struct.turnstile* %129, i32 %130)
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, 1
  %134 = load i32, i32* @TSU_NO_PRI_CHANGE_NEEDED, align 4
  %135 = load i32, i32* %10, align 4
  %136 = or i32 %134, %135
  %137 = call i32 @turnstile_stats_update(i32 %133, i32 %136, %struct.turnstile* null)
  br label %161

138:                                              ; preds = %121
  %139 = call i32 @panic(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138
  br label %141

141:                                              ; preds = %140, %117
  br label %142

142:                                              ; preds = %141, %106
  br label %155

143:                                              ; preds = %76
  %144 = load i64, i64* %6, align 8
  %145 = load i64, i64* @THREAD_NULL, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %154

147:                                              ; preds = %143
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %10, align 4
  %151 = call i32 @thread_update_waiting_turnstile_priority_chain(i64* %6, %struct.turnstile** %5, i32 %148, i32 %149, i32 %150)
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  br label %154

154:                                              ; preds = %147, %143
  br label %155

155:                                              ; preds = %154, %142
  %156 = load i32, i32* %7, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %7, align 4
  br label %66

158:                                              ; preds = %85, %74
  %159 = load i32, i32* %9, align 4
  %160 = call i32 @splx(i32 %159)
  br label %161

161:                                              ; preds = %158, %128, %27
  ret void
}

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @thread_lock(i64) #1

declare dso_local i32 @thread_recompute_user_promotion_locked(i64) #1

declare dso_local i32 @waitq_lock(i32*) #1

declare dso_local i32 @turnstile_recompute_priority_locked(%struct.turnstile*) #1

declare dso_local i32 @turnstile_get_update_flags_for_above_UI_pri_change(%struct.turnstile*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @turnstile_stats_update(i32, i32, %struct.turnstile*) #1

declare dso_local i32 @waitq_unlock(i32*) #1

declare dso_local i32 @turnstile_update_inheritor_thread_priority_chain(%struct.turnstile**, i64*, i32, i32) #1

declare dso_local i32 @turnstile_update_inheritor_turnstile_priority_chain(%struct.turnstile**, i32, i32) #1

declare dso_local i32 @turnstile_update_inheritor_workq_priority_chain(%struct.turnstile*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @thread_update_waiting_turnstile_priority_chain(i64*, %struct.turnstile**, i32, i32, i32) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
