; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_active.c_ClientInactivityTimer.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_active.c_ClientInactivityTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i8*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64, i64, i64 }

@g_inactivity = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@level = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@qfalse = common dso_local global i8* null, align 8
@BUTTON_ATTACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Dropped due to inactivity\00", align 1
@qtrue = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"cp \22Ten seconds until inactivity drop!\0A\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ClientInactivityTimer(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @g_inactivity, i32 0, i32 0), align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @level, i32 0, i32 0), align 4
  %8 = add nsw i32 %7, 60000
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load i8*, i8** @qfalse, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  store i8* %11, i8** %13, align 8
  br label %99

14:                                               ; preds = %1
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %44, label %21

21:                                               ; preds = %14
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %21
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %28
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @BUTTON_ATTACK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %35, %28, %21, %14
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @level, i32 0, i32 0), align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @g_inactivity, i32 0, i32 0), align 4
  %47 = mul nsw i32 %46, 1000
  %48 = add nsw i32 %45, %47
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i8*, i8** @qfalse, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  br label %98

54:                                               ; preds = %35
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %97, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @level, i32 0, i32 0), align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp sgt i32 %61, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @level, i32 0, i32 1), align 4
  %69 = sext i32 %68 to i64
  %70 = sub i64 0, %69
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i64 %70
  %72 = call i32 @trap_DropClient(%struct.TYPE_11__* %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %73 = load i8*, i8** @qfalse, align 8
  store i8* %73, i8** %2, align 8
  br label %101

74:                                               ; preds = %60
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @level, i32 0, i32 0), align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %78, 10000
  %80 = icmp sgt i32 %75, %79
  br i1 %80, label %81, label %96

81:                                               ; preds = %74
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %96, label %86

86:                                               ; preds = %81
  %87 = load i8*, i8** @qtrue, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @level, i32 0, i32 1), align 4
  %92 = sext i32 %91 to i64
  %93 = sub i64 0, %92
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i64 %93
  %95 = call i32 @trap_SendServerCommand(%struct.TYPE_11__* %94, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %96

96:                                               ; preds = %86, %81, %74
  br label %97

97:                                               ; preds = %96, %54
  br label %98

98:                                               ; preds = %97, %44
  br label %99

99:                                               ; preds = %98, %6
  %100 = load i8*, i8** @qtrue, align 8
  store i8* %100, i8** %2, align 8
  br label %101

101:                                              ; preds = %99, %66
  %102 = load i8*, i8** %2, align 8
  ret i8* %102
}

declare dso_local i32 @trap_DropClient(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @trap_SendServerCommand(%struct.TYPE_11__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
