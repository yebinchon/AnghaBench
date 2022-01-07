; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_servers2.c_ArenaServers_Insert.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_servers2.c_ArenaServers_Insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64*, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32 }

@g_servertype = common dso_local global i64 0, align 8
@AS_FAVORITES = common dso_local global i64 0, align 8
@g_arenaservers = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MAX_ADDRESSLENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"hostname\00", align 1
@MAX_HOSTNAMELENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"mapname\00", align 1
@MAX_MAPNAMELENGTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"clients\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"sv_maxclients\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"minPing\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"maxPing\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"punkbuster\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"nettype\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"game\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"gametype\00", align 1
@gamenames = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @ArenaServers_Insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ArenaServers_Insert(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 (...) @ArenaServers_MaxPing()
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i64, i64* @g_servertype, align 8
  %15 = load i64, i64* @AS_FAVORITES, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %147

18:                                               ; preds = %13, %3
  %19 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_arenaservers, i32 0, i32 0), align 8
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_arenaservers, i32 0, i32 1), align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_arenaservers, i32 0, i32 2), align 8
  %25 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_arenaservers, i32 0, i32 0), align 8
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 -1
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %7, align 8
  br label %37

29:                                               ; preds = %18
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_arenaservers, i32 0, i32 2), align 8
  %31 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_arenaservers, i32 0, i32 0), align 8
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %7, align 8
  %34 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_arenaservers, i32 0, i32 0), align 8
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %34, align 8
  br label %37

37:                                               ; preds = %29, %23
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 11
  %40 = load i32, i32* %39, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* @MAX_ADDRESSLENGTH, align 4
  %43 = call i32 @Q_strncpyz(i32 %40, i8* %41, i32 %42)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 10
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = call i8* @Info_ValueForKey(i8* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @MAX_HOSTNAMELENGTH, align 4
  %50 = call i32 @Q_strncpyz(i32 %46, i8* %48, i32 %49)
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 10
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @Q_CleanStr(i32 %53)
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 10
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @Q_strupr(i32 %57)
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = call i8* @Info_ValueForKey(i8* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @MAX_MAPNAMELENGTH, align 4
  %65 = call i32 @Q_strncpyz(i32 %61, i8* %63, i32 %64)
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 9
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @Q_CleanStr(i32 %68)
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 9
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @Q_strupr(i32 %72)
  %74 = load i8*, i8** %5, align 8
  %75 = call i8* @Info_ValueForKey(i8* %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %76 = call i8* @atoi(i8* %75)
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 8
  store i8* %76, i8** %78, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = call i8* @Info_ValueForKey(i8* %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %81 = call i8* @atoi(i8* %80)
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 7
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load i8*, i8** %5, align 8
  %88 = call i8* @Info_ValueForKey(i8* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %89 = call i8* @atoi(i8* %88)
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 6
  store i8* %89, i8** %91, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = call i8* @Info_ValueForKey(i8* %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %94 = call i8* @atoi(i8* %93)
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 5
  store i8* %94, i8** %96, align 8
  %97 = load i8*, i8** %5, align 8
  %98 = call i8* @Info_ValueForKey(i8* %97, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %99 = call i8* @atoi(i8* %98)
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 4
  store i8* %99, i8** %101, align 8
  %102 = load i8*, i8** %5, align 8
  %103 = call i8* @Info_ValueForKey(i8* %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %104 = call i8* @atoi(i8* %103)
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 3
  store i8* %104, i8** %106, align 8
  %107 = load i8*, i8** %5, align 8
  %108 = call i8* @Info_ValueForKey(i8* %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  store i8* %108, i8** %8, align 8
  %109 = load i8*, i8** %5, align 8
  %110 = call i8* @Info_ValueForKey(i8* %109, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %111 = call i8* @atoi(i8* %110)
  %112 = ptrtoint i8* %111 to i32
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %37
  store i32 0, i32* %9, align 4
  br label %121

116:                                              ; preds = %37
  %117 = load i32, i32* %9, align 4
  %118 = icmp sgt i32 %117, 11
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store i32 12, i32* %9, align 4
  br label %120

120:                                              ; preds = %119, %116
  br label %121

121:                                              ; preds = %120, %115
  %122 = load i8*, i8** %8, align 8
  %123 = load i8, i8* %122, align 1
  %124 = icmp ne i8 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %121
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i8*, i8** %8, align 8
  %133 = call i32 @Q_strncpyz(i32 %131, i8* %132, i32 4)
  br label %147

134:                                              ; preds = %121
  %135 = load i32, i32* %9, align 4
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i8**, i8*** @gamenames, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @Q_strncpyz(i32 %140, i8* %145, i32 4)
  br label %147

147:                                              ; preds = %17, %134, %125
  ret void
}

declare dso_local i32 @ArenaServers_MaxPing(...) #1

declare dso_local i32 @Q_strncpyz(i32, i8*, i32) #1

declare dso_local i8* @Info_ValueForKey(i8*, i8*) #1

declare dso_local i32 @Q_CleanStr(i32) #1

declare dso_local i32 @Q_strupr(i32) #1

declare dso_local i8* @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
