; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_servers2.c_ArenaServers_UpdatePicture.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_servers2.c_ArenaServers_UpdatePicture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_8__, %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@ArenaServers_UpdatePicture.picname = internal global [64 x i8] zeroinitializer, align 16
@g_arenaservers = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str = private unnamed_addr constant [18 x i8] c"levelshots/%s.tga\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ArenaServers_UpdatePicture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ArenaServers_UpdatePicture() #0 {
  %1 = alloca %struct.TYPE_11__*, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_arenaservers, i32 0, i32 1, i32 1), align 8
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_arenaservers, i32 0, i32 0, i32 1, i32 0), align 8
  br label %15

5:                                                ; preds = %0
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_arenaservers, i32 0, i32 2), align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_arenaservers, i32 0, i32 1, i32 0), align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %1, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @Com_sprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @ArenaServers_UpdatePicture.picname, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @ArenaServers_UpdatePicture.picname, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_arenaservers, i32 0, i32 0, i32 1, i32 0), align 8
  br label %15

15:                                               ; preds = %5, %4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_arenaservers, i32 0, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
