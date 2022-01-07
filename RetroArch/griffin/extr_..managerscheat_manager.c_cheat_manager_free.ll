; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..managerscheat_manager.c_cheat_manager_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..managerscheat_manager.c_cheat_manager_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64, i64, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__*, i32*, %struct.TYPE_3__*, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_3__*, %struct.TYPE_3__* }

@cheat_manager_state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cheat_manager_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cheat_manager_free() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 11), align 8
  %3 = icmp ne %struct.TYPE_3__* %2, null
  br i1 %3, label %4, label %48

4:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %42, %4
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 0), align 8
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %45

9:                                                ; preds = %5
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 11), align 8
  %11 = load i32, i32* %1, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %9
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 11), align 8
  %19 = load i32, i32* %1, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = call i32 @free(%struct.TYPE_3__* %23)
  br label %25

25:                                               ; preds = %17, %9
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 11), align 8
  %27 = load i32, i32* %1, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = icmp ne %struct.TYPE_3__* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 11), align 8
  %35 = load i32, i32* %1, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = call i32 @free(%struct.TYPE_3__* %39)
  br label %41

41:                                               ; preds = %33, %25
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %1, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %1, align 4
  br label %5

45:                                               ; preds = %5
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 11), align 8
  %47 = call i32 @free(%struct.TYPE_3__* %46)
  br label %48

48:                                               ; preds = %45, %0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 9), align 8
  %50 = icmp ne %struct.TYPE_3__* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 9), align 8
  %53 = call i32 @free(%struct.TYPE_3__* %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 5), align 8
  %56 = icmp ne %struct.TYPE_3__* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 5), align 8
  %59 = call i32 @free(%struct.TYPE_3__* %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 7), align 8
  %62 = icmp ne %struct.TYPE_3__* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 7), align 8
  %65 = call i32 @free(%struct.TYPE_3__* %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 6), align 8
  %68 = icmp ne %struct.TYPE_3__* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 6), align 8
  %71 = call i32 @free(%struct.TYPE_3__* %70)
  br label %72

72:                                               ; preds = %69, %66
  store %struct.TYPE_3__* null, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 11), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 10), align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 9), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 8), align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 7), align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 6), align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 5), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 3), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 2), align 8
  ret void
}

declare dso_local i32 @free(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
