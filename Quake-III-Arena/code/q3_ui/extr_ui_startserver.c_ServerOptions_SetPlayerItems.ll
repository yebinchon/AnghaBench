; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_startserver.c_ServerOptions_SetPlayerItems.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_startserver.c_ServerOptions_SetPlayerItems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_15__*, %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { i64 }

@s_serveroptions = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"Human\00", align 1
@QMF_HIDDEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Open\00", align 1
@PLAYER_SLOTS = common dso_local global i32 0, align 4
@QMF_INACTIVE = common dso_local global i32 0, align 4
@GT_TEAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ServerOptions_SetPlayerItems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ServerOptions_SetPlayerItems() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @s_serveroptions, i32 0, i32 5, i32 0), align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @s_serveroptions, i32 0, i32 4, i32 0), align 8
  %6 = load i32, i32* @QMF_HIDDEN, align 4
  %7 = xor i32 %6, -1
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @s_serveroptions, i32 0, i32 3), align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i64 0
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %7
  store i32 %13, i32* %11, align 4
  store i32 1, i32* %1, align 4
  br label %15

14:                                               ; preds = %0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @s_serveroptions, i32 0, i32 4, i32 0), align 8
  store i32 0, i32* %1, align 4
  br label %15

15:                                               ; preds = %14, %5
  %16 = load i32, i32* %1, align 4
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %55, %15
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @PLAYER_SLOTS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %58

21:                                               ; preds = %17
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @s_serveroptions, i32 0, i32 2), align 8
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %42

29:                                               ; preds = %21
  %30 = load i32, i32* @QMF_INACTIVE, align 4
  %31 = load i32, i32* @QMF_HIDDEN, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @s_serveroptions, i32 0, i32 3), align 8
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %33
  store i32 %41, i32* %39, align 4
  br label %54

42:                                               ; preds = %21
  %43 = load i32, i32* @QMF_INACTIVE, align 4
  %44 = load i32, i32* @QMF_HIDDEN, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @s_serveroptions, i32 0, i32 3), align 8
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %45
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %42, %29
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %2, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %2, align 4
  br label %17

58:                                               ; preds = %17
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @s_serveroptions, i32 0, i32 0), align 8
  %60 = load i64, i64* @GT_TEAM, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %106

63:                                               ; preds = %58
  %64 = load i32, i32* %1, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %103, %63
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* @PLAYER_SLOTS, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %106

69:                                               ; preds = %65
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @s_serveroptions, i32 0, i32 2), align 8
  %71 = load i32, i32* %2, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %77, label %89

77:                                               ; preds = %69
  %78 = load i32, i32* @QMF_INACTIVE, align 4
  %79 = load i32, i32* @QMF_HIDDEN, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @s_serveroptions, i32 0, i32 1), align 8
  %82 = load i32, i32* %2, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %80
  store i32 %88, i32* %86, align 4
  br label %102

89:                                               ; preds = %69
  %90 = load i32, i32* @QMF_INACTIVE, align 4
  %91 = load i32, i32* @QMF_HIDDEN, align 4
  %92 = or i32 %90, %91
  %93 = xor i32 %92, -1
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @s_serveroptions, i32 0, i32 1), align 8
  %95 = load i32, i32* %2, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, %93
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %89, %77
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %2, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %2, align 4
  br label %65

106:                                              ; preds = %62, %65
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
