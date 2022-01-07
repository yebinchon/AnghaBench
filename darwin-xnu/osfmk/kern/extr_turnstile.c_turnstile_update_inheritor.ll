; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_turnstile_update_inheritor.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_turnstile_update_inheritor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.workqueue = type { i32 }

@TURNSTILE_INHERITOR_NULL = common dso_local global i64 0, align 8
@TURNSTILE_UPDATE_FLAGS_NONE = common dso_local global i32 0, align 4
@TURNSTILE_INHERITOR_THREAD = common dso_local global i32 0, align 4
@TURNSTILE_INHERITOR_TURNSTILE = common dso_local global i32 0, align 4
@TURNSTILE_INHERITOR_WORKQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Missing type in flags (%x) for inheritor (%p)\00", align 1
@TURNSTILE_DELAYED_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @turnstile_update_inheritor(%struct.turnstile* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.turnstile*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  store %struct.turnstile* %0, %struct.turnstile** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call %struct.TYPE_4__* (...) @current_thread()
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %7, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TURNSTILE_INHERITOR_NULL, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* @TURNSTILE_UPDATE_FLAGS_NONE, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @TURNSTILE_INHERITOR_NULL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %76

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @TURNSTILE_INHERITOR_THREAD, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load i32, i32* @TURNSTILE_INHERITOR_THREAD, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load i64, i64* %5, align 8
  %39 = inttoptr i64 %38 to %struct.TYPE_4__*
  %40 = call i32 @thread_reference(%struct.TYPE_4__* %39)
  br label %75

41:                                               ; preds = %27
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @TURNSTILE_INHERITOR_TURNSTILE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load i32, i32* @TURNSTILE_INHERITOR_TURNSTILE, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load i64, i64* %5, align 8
  %53 = inttoptr i64 %52 to %struct.turnstile*
  %54 = call i32 @turnstile_reference(%struct.turnstile* %53)
  br label %74

55:                                               ; preds = %41
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @TURNSTILE_INHERITOR_WORKQ, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load i32, i32* @TURNSTILE_INHERITOR_WORKQ, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load i64, i64* %5, align 8
  %67 = inttoptr i64 %66 to %struct.workqueue*
  %68 = call i32 @workq_reference(%struct.workqueue* %67)
  br label %73

69:                                               ; preds = %55
  %70 = load i32, i32* %6, align 4
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @panic(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %70, i64 %71)
  br label %73

73:                                               ; preds = %69, %60
  br label %74

74:                                               ; preds = %73, %46
  br label %75

75:                                               ; preds = %74, %32
  br label %76

76:                                               ; preds = %75, %26
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @TURNSTILE_DELAYED_UPDATE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %94

82:                                               ; preds = %76
  %83 = call i32 (...) @splsched()
  store i32 %83, i32* %8, align 4
  %84 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  %85 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %84, i32 0, i32 0
  %86 = call i32 @waitq_lock(i32* %85)
  %87 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  %88 = call i32 @turnstile_update_inheritor_locked(%struct.turnstile* %87)
  %89 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  %90 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %89, i32 0, i32 0
  %91 = call i32 @waitq_unlock(i32* %90)
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @splx(i32 %92)
  br label %94

94:                                               ; preds = %82, %81
  ret void
}

declare dso_local %struct.TYPE_4__* @current_thread(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @thread_reference(%struct.TYPE_4__*) #1

declare dso_local i32 @turnstile_reference(%struct.turnstile*) #1

declare dso_local i32 @workq_reference(%struct.workqueue*) #1

declare dso_local i32 @panic(i8*, i32, i64) #1

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @waitq_lock(i32*) #1

declare dso_local i32 @turnstile_update_inheritor_locked(%struct.turnstile*) #1

declare dso_local i32 @waitq_unlock(i32*) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
