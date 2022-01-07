; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bondport_timer_process_func.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bondport_timer_process_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.ifnet*, i32, i32* }
%struct.ifnet = type { i32 }

@KEV_DL_LINK_OFF = common dso_local global i32 0, align 4
@KEV_DL_LINK_ON = common dso_local global i32 0, align 4
@g_bond = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"%s: (timer) generating LINK event\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @bondport_timer_process_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bondport_timer_process_func(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %110 [
    i32 129, label %9
    i32 128, label %13
  ]

9:                                                ; preds = %2
  %10 = call i32 (...) @bond_lock()
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @devtimer_retain(i32 %11)
  br label %111

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @devtimer_valid(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %105

17:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  store %struct.ifnet* null, %struct.ifnet** %7, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @devtimer_arg0(i32 %18)
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %5, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = call i32 @ifbond_selection(%struct.TYPE_5__* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %17
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @KEV_DL_LINK_OFF, align 4
  br label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @KEV_DL_LINK_ON, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %6, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load %struct.ifnet*, %struct.ifnet** %43, align 8
  store %struct.ifnet* %44, %struct.ifnet** %7, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 8
  br label %94

50:                                               ; preds = %17
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @KEV_DL_LINK_OFF, align 4
  br label %61

59:                                               ; preds = %50
  %60 = load i32, i32* @KEV_DL_LINK_ON, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %63, %68
  br i1 %69, label %70, label %93

70:                                               ; preds = %61
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_bond, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @timestamp_printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %75, %70
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load %struct.ifnet*, %struct.ifnet** %86, align 8
  store %struct.ifnet* %87, %struct.ifnet** %7, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  store i32 %88, i32* %92, align 8
  br label %93

93:                                               ; preds = %82, %61
  br label %94

94:                                               ; preds = %93, %38
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @devtimer_release(i32 %95)
  %97 = call i32 (...) @bond_unlock()
  %98 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %99 = icmp ne %struct.ifnet* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @interface_link_event(%struct.ifnet* %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %94
  br label %109

105:                                              ; preds = %13
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @devtimer_release(i32 %106)
  %108 = call i32 (...) @bond_unlock()
  br label %109

109:                                              ; preds = %105, %104
  br label %111

110:                                              ; preds = %2
  br label %111

111:                                              ; preds = %110, %109, %9
  ret void
}

declare dso_local i32 @bond_lock(...) #1

declare dso_local i32 @devtimer_retain(i32) #1

declare dso_local i32 @devtimer_valid(i32) #1

declare dso_local i32 @devtimer_arg0(i32) #1

declare dso_local i32 @ifbond_selection(%struct.TYPE_5__*) #1

declare dso_local i32 @timestamp_printf(i8*, i32) #1

declare dso_local i32 @devtimer_release(i32) #1

declare dso_local i32 @bond_unlock(...) #1

declare dso_local i32 @interface_link_event(%struct.ifnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
