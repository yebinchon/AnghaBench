; ModuleID = '/home/carl/AnghaBench/RetroArch/cheevos-new/extr_cheevos.c_rcheevos_test_cheevo_set.c'
source_filename = "/home/carl/AnghaBench/RetroArch/cheevos-new/extr_cheevos.c_rcheevos_test_cheevo_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__, %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@RCHEEVOS_ACTIVE_SOFTCORE = common dso_local global i32 0, align 4
@rcheevos_hardcore_paused = common dso_local global i32 0, align 4
@RCHEEVOS_ACTIVE_HARDCORE = common dso_local global i32 0, align 4
@rcheevos_locals = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@rcheevos_peek = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @rcheevos_test_cheevo_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcheevos_test_cheevo_set(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = call %struct.TYPE_10__* (...) @config_get_ptr()
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %3, align 8
  %10 = load i32, i32* @RCHEEVOS_ACTIVE_SOFTCORE, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = icmp ne %struct.TYPE_10__* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load i32, i32* @rcheevos_hardcore_paused, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @RCHEEVOS_ACTIVE_HARDCORE, align 4
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %22, %19, %13, %1
  %25 = load i32, i32* %2, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @rcheevos_locals, i32 0, i32 2), align 8
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %5, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @rcheevos_locals, i32 0, i32 0, i32 0), align 8
  store i32 %29, i32* %7, align 4
  br label %33

30:                                               ; preds = %24
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @rcheevos_locals, i32 0, i32 1), align 8
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %5, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @rcheevos_locals, i32 0, i32 0, i32 1), align 4
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %30, %27
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %81, %33
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %86

38:                                               ; preds = %34
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %81

46:                                               ; preds = %38
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %4, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %80

53:                                               ; preds = %46
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @rcheevos_peek, align 4
  %58 = call i32 @rc_test_trigger(i32 %56, i32 %57, i32* null, i32* null)
  store i32 %58, i32* %8, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %53
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @rc_reset_trigger(i32 %66)
  br label %76

68:                                               ; preds = %53
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @rcheevos_award(%struct.TYPE_11__* %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %68
  br label %76

76:                                               ; preds = %75, %63
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %76, %46
  br label %81

81:                                               ; preds = %80, %45
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 1
  store %struct.TYPE_11__* %85, %struct.TYPE_11__** %5, align 8
  br label %34

86:                                               ; preds = %34
  ret void
}

declare dso_local %struct.TYPE_10__* @config_get_ptr(...) #1

declare dso_local i32 @rc_test_trigger(i32, i32, i32*, i32*) #1

declare dso_local i32 @rc_reset_trigger(i32) #1

declare dso_local i32 @rcheevos_award(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
