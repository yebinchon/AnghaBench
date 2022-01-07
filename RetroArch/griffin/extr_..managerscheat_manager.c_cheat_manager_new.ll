; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..managerscheat_manager.c_cheat_manager_new.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..managerscheat_manager.c_cheat_manager_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, %struct.item_cheat* }
%struct.item_cheat = type { i32, i32, i32, i64, i32*, i32* }

@cheat_manager_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @cheat_manager_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cheat_manager_new(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 (...) @cheat_manager_free()
  %5 = load i32, i32* %2, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 0), align 8
  %6 = load i32, i32* %2, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 1), align 4
  store i32 3, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 2), align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 0), align 8
  %8 = call i64 @calloc(i32 %7, i32 40)
  %9 = inttoptr i64 %8 to %struct.item_cheat*
  store %struct.item_cheat* %9, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 3), align 8
  %10 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 3), align 8
  %11 = icmp ne %struct.item_cheat* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 1), align 4
  store %struct.item_cheat* null, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 3), align 8
  br label %52

13:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %49, %13
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 1), align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %14
  %19 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 3), align 8
  %20 = load i32, i32* %3, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %19, i64 %21
  %23 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %22, i32 0, i32 5
  store i32* null, i32** %23, align 8
  %24 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 3), align 8
  %25 = load i32, i32* %3, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %24, i64 %26
  %28 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %27, i32 0, i32 4
  store i32* null, i32** %28, align 8
  %29 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 3), align 8
  %30 = load i32, i32* %3, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %29, i64 %31
  %33 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 3), align 8
  %35 = load i32, i32* %3, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %34, i64 %36
  %38 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 3), align 8
  %40 = load i32, i32* %3, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %39, i64 %41
  %43 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 3), align 8
  %45 = load i32, i32* %3, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %44, i64 %46
  %48 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %47, i32 0, i32 2
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %18
  %50 = load i32, i32* %3, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %14

52:                                               ; preds = %12, %14
  ret void
}

declare dso_local i32 @cheat_manager_free(...) #1

declare dso_local i64 @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
