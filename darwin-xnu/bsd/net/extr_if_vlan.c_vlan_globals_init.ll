; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_vlan.c_vlan_globals_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_vlan.c_vlan_globals_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@g_vlan = common dso_local global %struct.TYPE_5__* null, align 8
@M_VLAN = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vlan_globals_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_globals_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = call i32 (...) @vlan_assert_lock_not_held()
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_vlan, align 8
  %5 = icmp ne %struct.TYPE_5__* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %40

7:                                                ; preds = %0
  %8 = load i32, i32* @M_VLAN, align 4
  %9 = load i32, i32* @M_WAITOK, align 4
  %10 = call %struct.TYPE_5__* @_MALLOC(i32 16, i32 %8, i32 %9)
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %2, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = call i32 @LIST_INIT(i32* %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  br label %19

19:                                               ; preds = %13, %7
  %20 = call i32 (...) @vlan_lock()
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_vlan, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = call i32 (...) @vlan_unlock()
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = icmp ne %struct.TYPE_5__* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = load i32, i32* @M_VLAN, align 4
  %30 = call i32 @_FREE(%struct.TYPE_5__* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %23
  store i32 0, i32* %1, align 4
  br label %40

32:                                               ; preds = %19
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** @g_vlan, align 8
  %34 = call i32 (...) @vlan_unlock()
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = icmp eq %struct.TYPE_5__* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @ENOMEM, align 4
  store i32 %38, i32* %1, align 4
  br label %40

39:                                               ; preds = %32
  store i32 0, i32* %1, align 4
  br label %40

40:                                               ; preds = %39, %37, %31, %6
  %41 = load i32, i32* %1, align 4
  ret i32 %41
}

declare dso_local i32 @vlan_assert_lock_not_held(...) #1

declare dso_local %struct.TYPE_5__* @_MALLOC(i32, i32, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @vlan_lock(...) #1

declare dso_local i32 @vlan_unlock(...) #1

declare dso_local i32 @_FREE(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
