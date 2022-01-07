; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_spec.c_P_SpawnSpecials.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_spec.c_P_SpawnSpecials.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"texture2\00", align 1
@levelTimer = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"-avg\00", align 1
@deathmatch = common dso_local global i64 0, align 8
@levelTimeCount = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"-timer\00", align 1
@myargv = common dso_local global i32* null, align 8
@sectors = common dso_local global %struct.TYPE_11__* null, align 8
@numsectors = common dso_local global i32 0, align 4
@FASTDARK = common dso_local global i32 0, align 4
@SLOWDARK = common dso_local global i32 0, align 4
@totalsecret = common dso_local global i32 0, align 4
@numlinespecials = common dso_local global i64 0, align 8
@numlines = common dso_local global i32 0, align 4
@lines = common dso_local global %struct.TYPE_12__* null, align 8
@linespeciallist = common dso_local global %struct.TYPE_12__** null, align 8
@MAXCEILINGS = common dso_local global i32 0, align 4
@activeceilings = common dso_local global i32** null, align 8
@MAXPLATS = common dso_local global i32 0, align 4
@activeplats = common dso_local global i32** null, align 8
@MAXBUTTONS = common dso_local global i32 0, align 4
@buttonlist = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_SpawnSpecials() #0 {
  %1 = alloca %struct.TYPE_11__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 1, i32* %3, align 4
  %5 = call i64 @W_CheckNumForName(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %6 = icmp sge i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 2, i32* %3, align 4
  br label %8

8:                                                ; preds = %7, %0
  store i32 0, i32* @levelTimer, align 4
  %9 = call i32 @M_CheckParm(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load i64, i64* @deathmatch, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 1, i32* @levelTimer, align 4
  store i32 42000, i32* @levelTimeCount, align 4
  br label %16

16:                                               ; preds = %15, %12, %8
  %17 = call i32 @M_CheckParm(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = load i64, i64* @deathmatch, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load i32*, i32** @myargv, align 8
  %25 = load i32, i32* %2, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @atoi(i32 %29)
  %31 = mul nsw i32 %30, 60
  %32 = mul nsw i32 %31, 35
  store i32 %32, i32* %4, align 4
  store i32 1, i32* @levelTimer, align 4
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* @levelTimeCount, align 4
  br label %34

34:                                               ; preds = %23, %20, %16
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sectors, align 8
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %1, align 8
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %92, %34
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @numsectors, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %97

40:                                               ; preds = %36
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %92

46:                                               ; preds = %40
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %91 [
    i32 1, label %50
    i32 2, label %53
    i32 3, label %57
    i32 4, label %61
    i32 8, label %67
    i32 9, label %70
    i32 10, label %73
    i32 12, label %76
    i32 13, label %80
    i32 14, label %84
    i32 17, label %88
  ]

50:                                               ; preds = %46
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %52 = call i32 @P_SpawnLightFlash(%struct.TYPE_11__* %51)
  br label %91

53:                                               ; preds = %46
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %55 = load i32, i32* @FASTDARK, align 4
  %56 = call i32 @P_SpawnStrobeFlash(%struct.TYPE_11__* %54, i32 %55, i32 0)
  br label %91

57:                                               ; preds = %46
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %59 = load i32, i32* @SLOWDARK, align 4
  %60 = call i32 @P_SpawnStrobeFlash(%struct.TYPE_11__* %58, i32 %59, i32 0)
  br label %91

61:                                               ; preds = %46
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %63 = load i32, i32* @FASTDARK, align 4
  %64 = call i32 @P_SpawnStrobeFlash(%struct.TYPE_11__* %62, i32 %63, i32 0)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  store i32 4, i32* %66, align 4
  br label %91

67:                                               ; preds = %46
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %69 = call i32 @P_SpawnGlowingLight(%struct.TYPE_11__* %68)
  br label %91

70:                                               ; preds = %46
  %71 = load i32, i32* @totalsecret, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* @totalsecret, align 4
  br label %91

73:                                               ; preds = %46
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %75 = call i32 @P_SpawnDoorCloseIn30(%struct.TYPE_11__* %74)
  br label %91

76:                                               ; preds = %46
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %78 = load i32, i32* @SLOWDARK, align 4
  %79 = call i32 @P_SpawnStrobeFlash(%struct.TYPE_11__* %77, i32 %78, i32 1)
  br label %91

80:                                               ; preds = %46
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %82 = load i32, i32* @FASTDARK, align 4
  %83 = call i32 @P_SpawnStrobeFlash(%struct.TYPE_11__* %81, i32 %82, i32 1)
  br label %91

84:                                               ; preds = %46
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %86 = load i32, i32* %2, align 4
  %87 = call i32 @P_SpawnDoorRaiseIn5Mins(%struct.TYPE_11__* %85, i32 %86)
  br label %91

88:                                               ; preds = %46
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %90 = call i32 @P_SpawnFireFlicker(%struct.TYPE_11__* %89)
  br label %91

91:                                               ; preds = %46, %88, %84, %80, %76, %73, %70, %67, %61, %57, %53, %50
  br label %92

92:                                               ; preds = %91, %45
  %93 = load i32, i32* %2, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %2, align 4
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 1
  store %struct.TYPE_11__* %96, %struct.TYPE_11__** %1, align 8
  br label %36

97:                                               ; preds = %36
  store i64 0, i64* @numlinespecials, align 8
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %120, %97
  %99 = load i32, i32* %2, align 4
  %100 = load i32, i32* @numlines, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %123

102:                                              ; preds = %98
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** @lines, align 8
  %104 = load i32, i32* %2, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  switch i32 %108, label %119 [
    i32 48, label %109
  ]

109:                                              ; preds = %102
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** @lines, align 8
  %111 = load i32, i32* %2, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i64 %112
  %114 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @linespeciallist, align 8
  %115 = load i64, i64* @numlinespecials, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %114, i64 %115
  store %struct.TYPE_12__* %113, %struct.TYPE_12__** %116, align 8
  %117 = load i64, i64* @numlinespecials, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* @numlinespecials, align 8
  br label %119

119:                                              ; preds = %102, %109
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %2, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %2, align 4
  br label %98

123:                                              ; preds = %98
  store i32 0, i32* %2, align 4
  br label %124

124:                                              ; preds = %133, %123
  %125 = load i32, i32* %2, align 4
  %126 = load i32, i32* @MAXCEILINGS, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %136

128:                                              ; preds = %124
  %129 = load i32**, i32*** @activeceilings, align 8
  %130 = load i32, i32* %2, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32*, i32** %129, i64 %131
  store i32* null, i32** %132, align 8
  br label %133

133:                                              ; preds = %128
  %134 = load i32, i32* %2, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %2, align 4
  br label %124

136:                                              ; preds = %124
  store i32 0, i32* %2, align 4
  br label %137

137:                                              ; preds = %146, %136
  %138 = load i32, i32* %2, align 4
  %139 = load i32, i32* @MAXPLATS, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %149

141:                                              ; preds = %137
  %142 = load i32**, i32*** @activeplats, align 8
  %143 = load i32, i32* %2, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32*, i32** %142, i64 %144
  store i32* null, i32** %145, align 8
  br label %146

146:                                              ; preds = %141
  %147 = load i32, i32* %2, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %2, align 4
  br label %137

149:                                              ; preds = %137
  store i32 0, i32* %2, align 4
  br label %150

150:                                              ; preds = %160, %149
  %151 = load i32, i32* %2, align 4
  %152 = load i32, i32* @MAXBUTTONS, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %163

154:                                              ; preds = %150
  %155 = load i32*, i32** @buttonlist, align 8
  %156 = load i32, i32* %2, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = call i32 @memset(i32* %158, i32 0, i32 4)
  br label %160

160:                                              ; preds = %154
  %161 = load i32, i32* %2, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %2, align 4
  br label %150

163:                                              ; preds = %150
  ret void
}

declare dso_local i64 @W_CheckNumForName(i8*) #1

declare dso_local i32 @M_CheckParm(i8*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @P_SpawnLightFlash(%struct.TYPE_11__*) #1

declare dso_local i32 @P_SpawnStrobeFlash(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @P_SpawnGlowingLight(%struct.TYPE_11__*) #1

declare dso_local i32 @P_SpawnDoorCloseIn30(%struct.TYPE_11__*) #1

declare dso_local i32 @P_SpawnDoorRaiseIn5Mins(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @P_SpawnFireFlicker(%struct.TYPE_11__*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
