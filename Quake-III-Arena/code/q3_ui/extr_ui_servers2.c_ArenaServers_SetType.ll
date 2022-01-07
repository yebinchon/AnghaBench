; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_servers2.c_ArenaServers_SetType.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_servers2.c_ArenaServers_SetType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i64*, i64, i64, i8*, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@g_servertype = common dso_local global i32 0, align 4
@QMF_INACTIVE = common dso_local global i32 0, align 4
@QMF_HIDDEN = common dso_local global i32 0, align 4
@g_arenaservers = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@g_localserverlist = common dso_local global i32 0, align 4
@g_numlocalservers = common dso_local global i64 0, align 8
@MAX_LOCALSERVERS = common dso_local global i8* null, align 8
@g_globalserverlist = common dso_local global i32 0, align 4
@g_numglobalservers = common dso_local global i64 0, align 8
@MAX_GLOBALSERVERS = common dso_local global i8* null, align 8
@g_favoriteserverlist = common dso_local global i32 0, align 4
@g_numfavoriteservers = common dso_local global i64 0, align 8
@MAX_FAVORITESERVERS = common dso_local global i8* null, align 8
@g_mplayerserverlist = common dso_local global i32 0, align 4
@g_nummplayerservers = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"hit refresh to update\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ArenaServers_SetType(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @g_servertype, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %59

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  store i32 %8, i32* @g_servertype, align 4
  %9 = load i32, i32* %2, align 4
  switch i32 %9, label %10 [
    i32 129, label %11
    i32 130, label %19
    i32 131, label %27
    i32 128, label %36
  ]

10:                                               ; preds = %7
  br label %11

11:                                               ; preds = %7, %10
  %12 = load i32, i32* @QMF_INACTIVE, align 4
  %13 = load i32, i32* @QMF_HIDDEN, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 6, i32 0, i32 0), align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 6, i32 0, i32 0), align 4
  %17 = load i32, i32* @g_localserverlist, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 5), align 8
  store i64* @g_numlocalservers, i64** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 1), align 8
  %18 = load i8*, i8** @MAX_LOCALSERVERS, align 8
  store i8* %18, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 4), align 8
  br label %44

19:                                               ; preds = %7
  %20 = load i32, i32* @QMF_INACTIVE, align 4
  %21 = load i32, i32* @QMF_HIDDEN, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 6, i32 0, i32 0), align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 6, i32 0, i32 0), align 4
  %25 = load i32, i32* @g_globalserverlist, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 5), align 8
  store i64* @g_numglobalservers, i64** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 1), align 8
  %26 = load i8*, i8** @MAX_GLOBALSERVERS, align 8
  store i8* %26, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 4), align 8
  br label %44

27:                                               ; preds = %7
  %28 = load i32, i32* @QMF_INACTIVE, align 4
  %29 = load i32, i32* @QMF_HIDDEN, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 6, i32 0, i32 0), align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 6, i32 0, i32 0), align 4
  %34 = load i32, i32* @g_favoriteserverlist, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 5), align 8
  store i64* @g_numfavoriteservers, i64** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 1), align 8
  %35 = load i8*, i8** @MAX_FAVORITESERVERS, align 8
  store i8* %35, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 4), align 8
  br label %44

36:                                               ; preds = %7
  %37 = load i32, i32* @QMF_INACTIVE, align 4
  %38 = load i32, i32* @QMF_HIDDEN, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 6, i32 0, i32 0), align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 6, i32 0, i32 0), align 4
  %42 = load i32, i32* @g_mplayerserverlist, align 4
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 5), align 8
  store i64* @g_nummplayerservers, i64** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 1), align 8
  %43 = load i8*, i8** @MAX_GLOBALSERVERS, align 8
  store i8* %43, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 4), align 8
  br label %44

44:                                               ; preds = %36, %27, %19, %11
  %45 = load i64*, i64** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 1), align 8
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = call i32 (...) @ArenaServers_StartRefresh()
  br label %56

50:                                               ; preds = %44
  %51 = load i64*, i64** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 1), align 8
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 3), align 8
  %53 = load i64*, i64** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 1), align 8
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 2), align 8
  %55 = call i32 (...) @ArenaServers_UpdateMenu()
  br label %56

56:                                               ; preds = %50, %48
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 0, i32 0), align 8
  %58 = call i32 @strcpy(i32 %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %6
  ret void
}

declare dso_local i32 @ArenaServers_StartRefresh(...) #1

declare dso_local i32 @ArenaServers_UpdateMenu(...) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
