; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_servers2.c_ArenaServers_LoadFavorites.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_servers2.c_ArenaServers_LoadFavorites.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i32* }

@MAX_INFO_STRING = common dso_local global i32 0, align 4
@MAX_ADDRESSLENGTH = common dso_local global i32 0, align 4
@MAX_FAVORITESERVERS = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@g_favoriteserverlist = common dso_local global %struct.TYPE_7__* null, align 8
@g_numfavoriteservers = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"server%d\00", align 1
@g_arenaservers = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ArenaServers_LoadFavorites() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = load i32, i32* @MAX_INFO_STRING, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i32, i32* @MAX_ADDRESSLENGTH, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %16 = load i32, i32* @MAX_FAVORITESERVERS, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca %struct.TYPE_7__, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %19 = load i32, i32* @qfalse, align 4
  store i32 %19, i32* %8, align 4
  %20 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 0, i8* %20, align 16
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_favoriteserverlist, align 8
  %22 = load i32, i32* @MAX_FAVORITESERVERS, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 8, %23
  %25 = trunc i64 %24 to i32
  %26 = call i32 @memcpy(%struct.TYPE_7__* %18, %struct.TYPE_7__* %21, i32 %25)
  %27 = load i64, i64* @g_numfavoriteservers, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %3, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_favoriteserverlist, align 8
  %30 = load i32, i32* @MAX_FAVORITESERVERS, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 8, %31
  %33 = trunc i64 %32 to i32
  %34 = call i32 @memset(%struct.TYPE_7__* %29, i32 0, i32 %33)
  store i64 0, i64* @g_numfavoriteservers, align 8
  store i32 0, i32* %1, align 4
  br label %35

35:                                               ; preds = %112, %0
  %36 = load i32, i32* %1, align 4
  %37 = load i32, i32* @MAX_FAVORITESERVERS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %115

39:                                               ; preds = %35
  %40 = load i32, i32* %1, align 4
  %41 = add nsw i32 %40, 1
  %42 = call i32 @va(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @MAX_ADDRESSLENGTH, align 4
  %44 = call i32 @trap_Cvar_VariableStringBuffer(i32 %42, i8* %15, i32 %43)
  %45 = getelementptr inbounds i8, i8* %15, i64 0
  %46 = load i8, i8* %45, align 16
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %39
  br label %112

49:                                               ; preds = %39
  %50 = getelementptr inbounds i8, i8* %15, i64 0
  %51 = load i8, i8* %50, align 16
  %52 = sext i8 %51 to i32
  %53 = icmp slt i32 %52, 48
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds i8, i8* %15, i64 0
  %56 = load i8, i8* %55, align 16
  %57 = sext i8 %56 to i32
  %58 = icmp sgt i32 %57, 57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54, %49
  br label %112

60:                                               ; preds = %54
  %61 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 1), align 8
  %62 = load i64, i64* @g_numfavoriteservers, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @strcpy(i32 %64, i8* %15)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %80, %60
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* %3, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = load i32, i32* %2, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @Q_stricmp(i32 %75, i8* %15)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %70
  br label %83

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %2, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %2, align 4
  br label %66

83:                                               ; preds = %78, %66
  %84 = load i32, i32* %2, align 4
  %85 = load i32, i32* %3, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_favoriteserverlist, align 8
  %89 = load i64, i64* @g_numfavoriteservers, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i64 %89
  %91 = load i32, i32* %2, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i64 %92
  %94 = call i32 @memcpy(%struct.TYPE_7__* %90, %struct.TYPE_7__* %93, i32 8)
  %95 = load i32, i32* @qtrue, align 4
  store i32 %95, i32* %8, align 4
  br label %109

96:                                               ; preds = %83
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_favoriteserverlist, align 8
  %98 = load i64, i64* @g_numfavoriteservers, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @MAX_ADDRESSLENGTH, align 4
  %103 = call i32 @Q_strncpyz(i32 %101, i8* %15, i32 %102)
  %104 = call i32 (...) @ArenaServers_MaxPing()
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_favoriteserverlist, align 8
  %106 = load i64, i64* @g_numfavoriteservers, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  store i32 %104, i32* %108, align 4
  br label %109

109:                                              ; preds = %96, %87
  %110 = load i64, i64* @g_numfavoriteservers, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* @g_numfavoriteservers, align 8
  br label %112

112:                                              ; preds = %109, %59, %48
  %113 = load i32, i32* %1, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %1, align 4
  br label %35

115:                                              ; preds = %35
  %116 = load i64, i64* @g_numfavoriteservers, align 8
  store i64 %116, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 0), align 8
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %115
  store i64 0, i64* @g_numfavoriteservers, align 8
  br label %120

120:                                              ; preds = %119, %115
  %121 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %121)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, %struct.TYPE_7__*, i32) #2

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i32 @trap_Cvar_VariableStringBuffer(i32, i8*, i32) #2

declare dso_local i32 @va(i8*, i32) #2

declare dso_local i32 @strcpy(i32, i8*) #2

declare dso_local i32 @Q_stricmp(i32, i8*) #2

declare dso_local i32 @Q_strncpyz(i32, i8*, i32) #2

declare dso_local i32 @ArenaServers_MaxPing(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
