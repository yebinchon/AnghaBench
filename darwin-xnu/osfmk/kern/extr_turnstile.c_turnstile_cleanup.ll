; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_turnstile_cleanup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_turnstile_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.turnstile = type { i32 }
%struct.workqueue = type { i32 }

@THREAD_NULL = common dso_local global i64 0, align 8
@TURNSTILE_UPDATE_FLAGS_NONE = common dso_local global i32 0, align 4
@TURNSTILE_INHERITOR_NULL = common dso_local global i64 0, align 8
@TURNSTILE_INHERITOR_NEEDS_PRI_UPDATE = common dso_local global i32 0, align 4
@TURNSTILE_INHERITOR_THREAD = common dso_local global i32 0, align 4
@TURNSTILE_INHERITOR_TURNSTILE = common dso_local global i32 0, align 4
@TURNSTILE_INHERITOR_WORKQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Inheritor flags lost along the way\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @turnstile_cleanup() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = call %struct.TYPE_3__* (...) @current_thread()
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %1, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %2, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  %11 = load i64, i64* @THREAD_NULL, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load i32, i32* @TURNSTILE_UPDATE_FLAGS_NONE, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* @TURNSTILE_INHERITOR_NULL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %0
  br label %60

21:                                               ; preds = %0
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @TURNSTILE_INHERITOR_NEEDS_PRI_UPDATE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i64, i64* %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @turnstile_update_inheritor_priority_chain(i64 %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %21
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @TURNSTILE_INHERITOR_THREAD, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i64, i64* %2, align 8
  %37 = call i32 @thread_deallocate_safe(i64 %36)
  br label %60

38:                                               ; preds = %30
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @TURNSTILE_INHERITOR_TURNSTILE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i64, i64* %2, align 8
  %45 = inttoptr i64 %44 to %struct.turnstile*
  %46 = call i32 @turnstile_deallocate_safe(%struct.turnstile* %45)
  br label %59

47:                                               ; preds = %38
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @TURNSTILE_INHERITOR_WORKQ, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i64, i64* %2, align 8
  %54 = inttoptr i64 %53 to %struct.workqueue*
  %55 = call i32 @workq_deallocate_safe(%struct.workqueue* %54)
  br label %58

56:                                               ; preds = %47
  %57 = call i32 @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %52
  br label %59

59:                                               ; preds = %58, %43
  br label %60

60:                                               ; preds = %20, %59, %35
  ret void
}

declare dso_local %struct.TYPE_3__* @current_thread(...) #1

declare dso_local i32 @turnstile_update_inheritor_priority_chain(i64, i32) #1

declare dso_local i32 @thread_deallocate_safe(i64) #1

declare dso_local i32 @turnstile_deallocate_safe(%struct.turnstile*) #1

declare dso_local i32 @workq_deallocate_safe(%struct.workqueue*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
