; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_g_game.c_G_Responder.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_g_game.c_G_Responder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8, i32, i32 }

@gamestate = common dso_local global i64 0, align 8
@GS_LEVEL = common dso_local global i64 0, align 8
@KEY_F12 = common dso_local global i8 0, align 1
@singledemo = common dso_local global i64 0, align 8
@deathmatch = common dso_local global i32 0, align 4
@displayplayer = common dso_local global i64 0, align 8
@MAXPLAYERS = common dso_local global i64 0, align 8
@playeringame = common dso_local global i32* null, align 8
@consoleplayer = common dso_local global i64 0, align 8
@gameaction = common dso_local global i64 0, align 8
@ga_nothing = common dso_local global i64 0, align 8
@demoplayback = common dso_local global i64 0, align 8
@GS_DEMOSCREEN = common dso_local global i64 0, align 8
@GS_FINALE = common dso_local global i64 0, align 8
@KEY_PAUSE = common dso_local global i8 0, align 1
@sendpause = common dso_local global i32 0, align 4
@NUMKEYS = common dso_local global i8 0, align 1
@gamekeydown = common dso_local global i32* null, align 8
@mousebuttons = common dso_local global i32* null, align 8
@mouseSensitivity = common dso_local global i32 0, align 4
@mousex = common dso_local global i32 0, align 4
@mousey = common dso_local global i32 0, align 4
@joybuttons = common dso_local global i32* null, align 8
@joyxmove = common dso_local global i32 0, align 4
@joyymove = common dso_local global i32 0, align 4
@devparm = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @G_Responder(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %4 = load i64, i64* @gamestate, align 8
  %5 = load i64, i64* @GS_LEVEL, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %48

7:                                                ; preds = %1
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 130
  br i1 %11, label %12, label %48

12:                                               ; preds = %7
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i8, i8* %14, align 4
  %16 = sext i8 %15 to i32
  %17 = load i8, i8* @KEY_F12, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %48

20:                                               ; preds = %12
  %21 = load i64, i64* @singledemo, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @deathmatch, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %48, label %26

26:                                               ; preds = %23, %20
  br label %27

27:                                               ; preds = %45, %26
  %28 = load i64, i64* @displayplayer, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* @displayplayer, align 8
  %30 = load i64, i64* @displayplayer, align 8
  %31 = load i64, i64* @MAXPLAYERS, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i64 0, i64* @displayplayer, align 8
  br label %34

34:                                               ; preds = %33, %27
  br label %35

35:                                               ; preds = %34
  %36 = load i32*, i32** @playeringame, align 8
  %37 = load i64, i64* @displayplayer, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = load i64, i64* @displayplayer, align 8
  %43 = load i64, i64* @consoleplayer, align 8
  %44 = icmp ne i64 %42, %43
  br label %45

45:                                               ; preds = %41, %35
  %46 = phi i1 [ false, %35 ], [ %44, %41 ]
  br i1 %46, label %27, label %47

47:                                               ; preds = %45
  store i32 1, i32* %2, align 4
  br label %240

48:                                               ; preds = %23, %12, %7, %1
  %49 = load i64, i64* @gameaction, align 8
  %50 = load i64, i64* @ga_nothing, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %92

52:                                               ; preds = %48
  %53 = load i64, i64* @singledemo, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %92, label %55

55:                                               ; preds = %52
  %56 = load i64, i64* @demoplayback, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* @gamestate, align 8
  %60 = load i64, i64* @GS_DEMOSCREEN, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %92

62:                                               ; preds = %58, %55
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 130
  br i1 %66, label %89, label %67

67:                                               ; preds = %62
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 128
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i8, i8* %74, align 4
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %72, %67
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 131
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i8, i8* %85, align 4
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83, %72, %62
  %90 = call i32 (...) @M_StartControlPanel()
  store i32 1, i32* %2, align 4
  br label %240

91:                                               ; preds = %83, %78
  store i32 0, i32* %2, align 4
  br label %240

92:                                               ; preds = %58, %52, %48
  %93 = load i64, i64* @gamestate, align 8
  %94 = load i64, i64* @GS_LEVEL, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %112

96:                                               ; preds = %92
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %98 = call i64 @HU_Responder(%struct.TYPE_7__* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i32 1, i32* %2, align 4
  br label %240

101:                                              ; preds = %96
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %103 = call i64 @ST_Responder(%struct.TYPE_7__* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store i32 1, i32* %2, align 4
  br label %240

106:                                              ; preds = %101
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %108 = call i64 @AM_Responder(%struct.TYPE_7__* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i32 1, i32* %2, align 4
  br label %240

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %111, %92
  %113 = load i64, i64* @gamestate, align 8
  %114 = load i64, i64* @GS_FINALE, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %112
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %118 = call i64 @F_Responder(%struct.TYPE_7__* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  store i32 1, i32* %2, align 4
  br label %240

121:                                              ; preds = %116
  br label %122

122:                                              ; preds = %121, %112
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  switch i32 %125, label %238 [
    i32 130, label %126
    i32 129, label %151
    i32 128, label %167
    i32 131, label %203
  ]

126:                                              ; preds = %122
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load i8, i8* %128, align 4
  %130 = sext i8 %129 to i32
  %131 = load i8, i8* @KEY_PAUSE, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %130, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %126
  store i32 1, i32* @sendpause, align 4
  store i32 1, i32* %2, align 4
  br label %240

135:                                              ; preds = %126
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i8, i8* %137, align 4
  %139 = sext i8 %138 to i32
  %140 = load i8, i8* @NUMKEYS, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp slt i32 %139, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %135
  %144 = load i32*, i32** @gamekeydown, align 8
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = load i8, i8* %146, align 4
  %148 = sext i8 %147 to i64
  %149 = getelementptr inbounds i32, i32* %144, i64 %148
  store i32 1, i32* %149, align 4
  br label %150

150:                                              ; preds = %143, %135
  store i32 1, i32* %2, align 4
  br label %240

151:                                              ; preds = %122
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load i8, i8* %153, align 4
  %155 = sext i8 %154 to i32
  %156 = load i8, i8* @NUMKEYS, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp slt i32 %155, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %151
  %160 = load i32*, i32** @gamekeydown, align 8
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 1
  %163 = load i8, i8* %162, align 4
  %164 = sext i8 %163 to i64
  %165 = getelementptr inbounds i32, i32* %160, i64 %164
  store i32 0, i32* %165, align 4
  br label %166

166:                                              ; preds = %159, %151
  store i32 0, i32* %2, align 4
  br label %240

167:                                              ; preds = %122
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 1
  %170 = load i8, i8* %169, align 4
  %171 = sext i8 %170 to i32
  %172 = and i32 %171, 1
  %173 = load i32*, i32** @mousebuttons, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  store i32 %172, i32* %174, align 4
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 1
  %177 = load i8, i8* %176, align 4
  %178 = sext i8 %177 to i32
  %179 = and i32 %178, 2
  %180 = load i32*, i32** @mousebuttons, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  store i32 %179, i32* %181, align 4
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 1
  %184 = load i8, i8* %183, align 4
  %185 = sext i8 %184 to i32
  %186 = and i32 %185, 4
  %187 = load i32*, i32** @mousebuttons, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 2
  store i32 %186, i32* %188, align 4
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @mouseSensitivity, align 4
  %193 = add nsw i32 %192, 5
  %194 = mul nsw i32 %191, %193
  %195 = sdiv i32 %194, 10
  store i32 %195, i32* @mousex, align 4
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @mouseSensitivity, align 4
  %200 = add nsw i32 %199, 5
  %201 = mul nsw i32 %198, %200
  %202 = sdiv i32 %201, 10
  store i32 %202, i32* @mousey, align 4
  store i32 1, i32* %2, align 4
  br label %240

203:                                              ; preds = %122
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 1
  %206 = load i8, i8* %205, align 4
  %207 = sext i8 %206 to i32
  %208 = and i32 %207, 1
  %209 = load i32*, i32** @joybuttons, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  store i32 %208, i32* %210, align 4
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 1
  %213 = load i8, i8* %212, align 4
  %214 = sext i8 %213 to i32
  %215 = and i32 %214, 2
  %216 = load i32*, i32** @joybuttons, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 1
  store i32 %215, i32* %217, align 4
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 1
  %220 = load i8, i8* %219, align 4
  %221 = sext i8 %220 to i32
  %222 = and i32 %221, 4
  %223 = load i32*, i32** @joybuttons, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 2
  store i32 %222, i32* %224, align 4
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 1
  %227 = load i8, i8* %226, align 4
  %228 = sext i8 %227 to i32
  %229 = and i32 %228, 8
  %230 = load i32*, i32** @joybuttons, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 3
  store i32 %229, i32* %231, align 4
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  store i32 %234, i32* @joyxmove, align 4
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  store i32 %237, i32* @joyymove, align 4
  store i32 1, i32* %2, align 4
  br label %240

238:                                              ; preds = %122
  br label %239

239:                                              ; preds = %238
  store i32 0, i32* %2, align 4
  br label %240

240:                                              ; preds = %239, %203, %167, %166, %150, %134, %120, %110, %105, %100, %91, %89, %47
  %241 = load i32, i32* %2, align 4
  ret i32 %241
}

declare dso_local i32 @M_StartControlPanel(...) #1

declare dso_local i64 @HU_Responder(%struct.TYPE_7__*) #1

declare dso_local i64 @ST_Responder(%struct.TYPE_7__*) #1

declare dso_local i64 @AM_Responder(%struct.TYPE_7__*) #1

declare dso_local i64 @F_Responder(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
