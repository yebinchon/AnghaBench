; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_st_stuff.c_ST_updateWidgets.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_st_stuff.c_ST_updateWidgets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i64, i32*, i64*, i64* }
%struct.TYPE_5__ = type { i32*, i64 }

@ST_updateWidgets.largeammo = internal global i32 1994, align 4
@weaponinfo = common dso_local global %struct.TYPE_4__* null, align 8
@plyr = common dso_local global %struct.TYPE_6__* null, align 8
@am_noammo = common dso_local global i64 0, align 8
@w_ready = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@keyboxes = common dso_local global i32* null, align 8
@deathmatch = common dso_local global i64 0, align 8
@st_notdeathmatch = common dso_local global i32 0, align 4
@st_statusbaron = common dso_local global i64 0, align 8
@st_armson = common dso_local global i32 0, align 4
@st_fragson = common dso_local global i32 0, align 4
@st_fragscount = common dso_local global i64 0, align 8
@MAXPLAYERS = common dso_local global i32 0, align 4
@consoleplayer = common dso_local global i32 0, align 4
@st_msgcounter = common dso_local global i32 0, align 4
@st_oldchat = common dso_local global i32 0, align 4
@st_chat = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ST_updateWidgets() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @weaponinfo, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** @plyr, align 8
  %4 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i64 %5
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @am_noammo, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store i32* @ST_updateWidgets.largeammo, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @w_ready, i32 0, i32 0), align 8
  br label %24

12:                                               ; preds = %0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @plyr, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @weaponinfo, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @plyr, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %15, i64 %22
  store i32* %23, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @w_ready, i32 0, i32 0), align 8
  br label %24

24:                                               ; preds = %12, %11
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @plyr, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @w_ready, i32 0, i32 1), align 8
  store i32 0, i32* %1, align 4
  br label %28

28:                                               ; preds = %66, %24
  %29 = load i32, i32* %1, align 4
  %30 = icmp slt i32 %29, 3
  br i1 %30, label %31, label %69

31:                                               ; preds = %28
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @plyr, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %1, align 4
  br label %43

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ -1, %42 ]
  %45 = load i32*, i32** @keyboxes, align 8
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %44, i32* %48, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @plyr, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %1, align 4
  %53 = add nsw i32 %52, 3
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %51, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %43
  %59 = load i32, i32* %1, align 4
  %60 = add nsw i32 %59, 3
  %61 = load i32*, i32** @keyboxes, align 8
  %62 = load i32, i32* %1, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %60, i32* %64, align 4
  br label %65

65:                                               ; preds = %58, %43
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %1, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %1, align 4
  br label %28

69:                                               ; preds = %28
  %70 = call i32 (...) @ST_updateFaceWidget()
  %71 = load i64, i64* @deathmatch, align 8
  %72 = icmp ne i64 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  store i32 %74, i32* @st_notdeathmatch, align 4
  %75 = load i64, i64* @st_statusbaron, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %69
  %78 = load i64, i64* @deathmatch, align 8
  %79 = icmp ne i64 %78, 0
  %80 = xor i1 %79, true
  br label %81

81:                                               ; preds = %77, %69
  %82 = phi i1 [ false, %69 ], [ %80, %77 ]
  %83 = zext i1 %82 to i32
  store i32 %83, i32* @st_armson, align 4
  %84 = load i64, i64* @deathmatch, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i64, i64* @st_statusbaron, align 8
  %88 = icmp ne i64 %87, 0
  br label %89

89:                                               ; preds = %86, %81
  %90 = phi i1 [ false, %81 ], [ %88, %86 ]
  %91 = zext i1 %90 to i32
  store i32 %91, i32* @st_fragson, align 4
  store i64 0, i64* @st_fragscount, align 8
  store i32 0, i32* %1, align 4
  br label %92

92:                                               ; preds = %121, %89
  %93 = load i32, i32* %1, align 4
  %94 = load i32, i32* @MAXPLAYERS, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %124

96:                                               ; preds = %92
  %97 = load i32, i32* %1, align 4
  %98 = load i32, i32* @consoleplayer, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %96
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** @plyr, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %1, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @st_fragscount, align 8
  %109 = add nsw i64 %108, %107
  store i64 %109, i64* @st_fragscount, align 8
  br label %120

110:                                              ; preds = %96
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** @plyr, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = load i64*, i64** %112, align 8
  %114 = load i32, i32* %1, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @st_fragscount, align 8
  %119 = sub nsw i64 %118, %117
  store i64 %119, i64* @st_fragscount, align 8
  br label %120

120:                                              ; preds = %110, %100
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %1, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %1, align 4
  br label %92

124:                                              ; preds = %92
  %125 = load i32, i32* @st_msgcounter, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* @st_msgcounter, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %124
  %129 = load i32, i32* @st_oldchat, align 4
  store i32 %129, i32* @st_chat, align 4
  br label %130

130:                                              ; preds = %128, %124
  ret void
}

declare dso_local i32 @ST_updateFaceWidget(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
