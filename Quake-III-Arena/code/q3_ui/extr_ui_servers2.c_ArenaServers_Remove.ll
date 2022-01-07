; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_servers2.c_ArenaServers_Remove.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_servers2.c_ArenaServers_Remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_11__*, %struct.TYPE_9__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }

@g_arenaservers = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@g_numfavoriteservers = common dso_local global i32 0, align 4
@g_favoriteserverlist = common dso_local global %struct.TYPE_11__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ArenaServers_Remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ArenaServers_Remove() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_arenaservers, i32 0, i32 4, i32 1), align 8
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %117

7:                                                ; preds = %0
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_arenaservers, i32 0, i32 5), align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_arenaservers, i32 0, i32 4, i32 0), align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i64 %9
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %3, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %2, align 8
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %32, %7
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_arenaservers, i32 0, i32 0), align 8
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_arenaservers, i32 0, i32 3), align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i64 %21
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @Q_stricmp(i32 %27, i32 %25)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %18
  br label %35

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %14

35:                                               ; preds = %30, %14
  %36 = load i32, i32* %1, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_arenaservers, i32 0, i32 0), align 8
  %38 = sub nsw i32 %37, 1
  %39 = icmp sle i32 %36, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %35
  %41 = load i32, i32* %1, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_arenaservers, i32 0, i32 0), align 8
  %43 = sub nsw i32 %42, 1
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %40
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_arenaservers, i32 0, i32 3), align 8
  %47 = load i32, i32* %1, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i64 %48
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_arenaservers, i32 0, i32 3), align 8
  %51 = load i32, i32* %1, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i64 %53
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_arenaservers, i32 0, i32 0), align 8
  %56 = load i32, i32* %1, align 4
  %57 = sub nsw i32 %55, %56
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = trunc i64 %60 to i32
  %62 = call i32 @memcpy(%struct.TYPE_11__* %49, %struct.TYPE_11__* %54, i32 %61)
  br label %63

63:                                               ; preds = %45, %40
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_arenaservers, i32 0, i32 0), align 8
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_arenaservers, i32 0, i32 0), align 8
  br label %66

66:                                               ; preds = %63, %35
  store i32 0, i32* %1, align 4
  br label %67

67:                                               ; preds = %80, %66
  %68 = load i32, i32* %1, align 4
  %69 = load i32, i32* @g_numfavoriteservers, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %67
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_favoriteserverlist, align 8
  %73 = load i32, i32* %1, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i64 %74
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %77 = icmp eq %struct.TYPE_11__* %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %83

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %1, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %1, align 4
  br label %67

83:                                               ; preds = %78, %67
  %84 = load i32, i32* %1, align 4
  %85 = load i32, i32* @g_numfavoriteservers, align 4
  %86 = sub nsw i32 %85, 1
  %87 = icmp sle i32 %84, %86
  br i1 %87, label %88, label %114

88:                                               ; preds = %83
  %89 = load i32, i32* %1, align 4
  %90 = load i32, i32* @g_numfavoriteservers, align 4
  %91 = sub nsw i32 %90, 1
  %92 = icmp slt i32 %89, %91
  br i1 %92, label %93, label %111

93:                                               ; preds = %88
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_favoriteserverlist, align 8
  %95 = load i32, i32* %1, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i64 %96
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_favoriteserverlist, align 8
  %99 = load i32, i32* %1, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i64 %101
  %103 = load i32, i32* @g_numfavoriteservers, align 4
  %104 = load i32, i32* %1, align 4
  %105 = sub nsw i32 %103, %104
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 4
  %109 = trunc i64 %108 to i32
  %110 = call i32 @memcpy(%struct.TYPE_11__* %97, %struct.TYPE_11__* %102, i32 %109)
  br label %111

111:                                              ; preds = %93, %88
  %112 = load i32, i32* @g_numfavoriteservers, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* @g_numfavoriteservers, align 4
  br label %114

114:                                              ; preds = %111, %83
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_arenaservers, i32 0, i32 0), align 8
  store i32 %115, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_arenaservers, i32 0, i32 1), align 4
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_arenaservers, i32 0, i32 0), align 8
  store i32 %116, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_arenaservers, i32 0, i32 2), align 8
  br label %117

117:                                              ; preds = %114, %6
  ret void
}

declare dso_local i32 @Q_stricmp(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_11__*, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
