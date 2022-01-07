; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_d_main.c_D_Display.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_d_main.c_D_Display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@D_Display.viewactivestate = internal global i32 0, align 4
@D_Display.menuactivestate = internal global i32 0, align 4
@D_Display.inhelpscreensstate = internal global i32 0, align 4
@D_Display.fullscreen = internal global i32 0, align 4
@D_Display.oldgamestate = internal global i32 -1, align 4
@D_Display.borderdrawcount = internal global i32 0, align 4
@nodrawers = common dso_local global i64 0, align 8
@setsizeneeded = common dso_local global i64 0, align 8
@gamestate = common dso_local global i32 0, align 4
@wipegamestate = common dso_local global i32 0, align 4
@SCREENWIDTH = common dso_local global i32 0, align 4
@SCREENHEIGHT = common dso_local global i32 0, align 4
@gametic = common dso_local global i64 0, align 8
@automapactive = common dso_local global i64 0, align 8
@viewheight = common dso_local global i32 0, align 4
@inhelpscreens = common dso_local global i32 0, align 4
@players = common dso_local global i32* null, align 8
@displayplayer = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"PLAYPAL\00", align 1
@PU_CACHE = common dso_local global i32 0, align 4
@scaledviewwidth = common dso_local global i32 0, align 4
@menuactive = common dso_local global i32 0, align 4
@viewactive = common dso_local global i32 0, align 4
@paused = common dso_local global i64 0, align 8
@viewwindowy = common dso_local global i32 0, align 4
@viewwindowx = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"M_PAUSE\00", align 1
@wipe_Melt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @D_Display() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i64, i64* @nodrawers, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %207

11:                                               ; preds = %0
  store i32 0, i32* %7, align 4
  %12 = load i64, i64* @setsizeneeded, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 (...) @R_ExecuteSetViewSize()
  store i32 -1, i32* @D_Display.oldgamestate, align 4
  store i32 3, i32* @D_Display.borderdrawcount, align 4
  br label %16

16:                                               ; preds = %14, %11
  %17 = load i32, i32* @gamestate, align 4
  %18 = load i32, i32* @wipegamestate, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  store i32 1, i32* %6, align 4
  %21 = load i32, i32* @SCREENWIDTH, align 4
  %22 = load i32, i32* @SCREENHEIGHT, align 4
  %23 = call i32 @wipe_StartScreen(i32 0, i32 0, i32 %21, i32 %22)
  br label %25

24:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %24, %20
  %26 = load i32, i32* @gamestate, align 4
  %27 = icmp eq i32 %26, 128
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i64, i64* @gametic, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 (...) @HU_Erase()
  br label %33

33:                                               ; preds = %31, %28, %25
  %34 = load i32, i32* @gamestate, align 4
  switch i32 %34, label %76 [
    i32 128, label %35
    i32 129, label %70
    i32 130, label %72
    i32 131, label %74
  ]

35:                                               ; preds = %33
  %36 = load i64, i64* @gametic, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  br label %76

39:                                               ; preds = %35
  %40 = load i64, i64* @automapactive, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i32 (...) @AM_Drawer()
  br label %44

44:                                               ; preds = %42, %39
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* @viewheight, align 4
  %49 = icmp ne i32 %48, 200
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* @D_Display.fullscreen, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50, %44
  store i32 1, i32* %7, align 4
  br label %54

54:                                               ; preds = %53, %50, %47
  %55 = load i32, i32* @D_Display.inhelpscreensstate, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* @inhelpscreens, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  store i32 1, i32* %7, align 4
  br label %61

61:                                               ; preds = %60, %57, %54
  %62 = load i32, i32* @viewheight, align 4
  %63 = icmp eq i32 %62, 200
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @ST_Drawer(i32 %64, i32 %65)
  %67 = load i32, i32* @viewheight, align 4
  %68 = icmp eq i32 %67, 200
  %69 = zext i1 %68 to i32
  store i32 %69, i32* @D_Display.fullscreen, align 4
  br label %76

70:                                               ; preds = %33
  %71 = call i32 (...) @WI_Drawer()
  br label %76

72:                                               ; preds = %33
  %73 = call i32 (...) @F_Drawer()
  br label %76

74:                                               ; preds = %33
  %75 = call i32 (...) @D_PageDrawer()
  br label %76

76:                                               ; preds = %33, %74, %72, %70, %61, %38
  %77 = call i32 (...) @I_UpdateNoBlit()
  %78 = load i32, i32* @gamestate, align 4
  %79 = icmp eq i32 %78, 128
  br i1 %79, label %80, label %91

80:                                               ; preds = %76
  %81 = load i64, i64* @automapactive, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %80
  %84 = load i64, i64* @gametic, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i32*, i32** @players, align 8
  %88 = load i64, i64* @displayplayer, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = call i32 @R_RenderPlayerView(i32* %89)
  br label %91

91:                                               ; preds = %86, %83, %80, %76
  %92 = load i32, i32* @gamestate, align 4
  %93 = icmp eq i32 %92, 128
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load i64, i64* @gametic, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = call i32 (...) @HU_Drawer()
  br label %99

99:                                               ; preds = %97, %94, %91
  %100 = load i32, i32* @gamestate, align 4
  %101 = load i32, i32* @D_Display.oldgamestate, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %99
  %104 = load i32, i32* @gamestate, align 4
  %105 = icmp ne i32 %104, 128
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i32, i32* @PU_CACHE, align 4
  %108 = call i32 @W_CacheLumpName(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %107)
  %109 = call i32 @I_SetPalette(i32 %108)
  br label %110

110:                                              ; preds = %106, %103, %99
  %111 = load i32, i32* @gamestate, align 4
  %112 = icmp eq i32 %111, 128
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load i32, i32* @D_Display.oldgamestate, align 4
  %115 = icmp ne i32 %114, 128
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  store i32 0, i32* @D_Display.viewactivestate, align 4
  %117 = call i32 (...) @R_FillBackScreen()
  br label %118

118:                                              ; preds = %116, %113, %110
  %119 = load i32, i32* @gamestate, align 4
  %120 = icmp eq i32 %119, 128
  br i1 %120, label %121, label %145

121:                                              ; preds = %118
  %122 = load i64, i64* @automapactive, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %145, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* @scaledviewwidth, align 4
  %126 = icmp ne i32 %125, 320
  br i1 %126, label %127, label %145

127:                                              ; preds = %124
  %128 = load i32, i32* @menuactive, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* @D_Display.menuactivestate, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* @D_Display.viewactivestate, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %133, %130, %127
  store i32 3, i32* @D_Display.borderdrawcount, align 4
  br label %137

137:                                              ; preds = %136, %133
  %138 = load i32, i32* @D_Display.borderdrawcount, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = call i32 (...) @R_DrawViewBorder()
  %142 = load i32, i32* @D_Display.borderdrawcount, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* @D_Display.borderdrawcount, align 4
  br label %144

144:                                              ; preds = %140, %137
  br label %145

145:                                              ; preds = %144, %124, %121, %118
  %146 = load i32, i32* @menuactive, align 4
  store i32 %146, i32* @D_Display.menuactivestate, align 4
  %147 = load i32, i32* @viewactive, align 4
  store i32 %147, i32* @D_Display.viewactivestate, align 4
  %148 = load i32, i32* @inhelpscreens, align 4
  store i32 %148, i32* @D_Display.inhelpscreensstate, align 4
  %149 = load i32, i32* @gamestate, align 4
  store i32 %149, i32* @wipegamestate, align 4
  store i32 %149, i32* @D_Display.oldgamestate, align 4
  %150 = load i64, i64* @paused, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %170

152:                                              ; preds = %145
  %153 = load i64, i64* @automapactive, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  store i32 4, i32* %4, align 4
  br label %159

156:                                              ; preds = %152
  %157 = load i32, i32* @viewwindowy, align 4
  %158 = add nsw i32 %157, 4
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %156, %155
  %160 = load i64, i64* @viewwindowx, align 8
  %161 = load i32, i32* @scaledviewwidth, align 4
  %162 = sub nsw i32 %161, 68
  %163 = sdiv i32 %162, 2
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %160, %164
  %166 = load i32, i32* %4, align 4
  %167 = load i32, i32* @PU_CACHE, align 4
  %168 = call i32 @W_CacheLumpName(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %167)
  %169 = call i32 @V_DrawPatchDirect(i64 %165, i32 %166, i32 0, i32 %168)
  br label %170

170:                                              ; preds = %159, %145
  %171 = call i32 (...) @M_Drawer()
  %172 = call i32 (...) @NetUpdate()
  %173 = load i32, i32* %6, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %170
  %176 = call i32 (...) @I_FinishUpdate()
  br label %207

177:                                              ; preds = %170
  %178 = load i32, i32* @SCREENWIDTH, align 4
  %179 = load i32, i32* @SCREENHEIGHT, align 4
  %180 = call i32 @wipe_EndScreen(i32 0, i32 0, i32 %178, i32 %179)
  %181 = call i32 (...) @I_GetTime()
  %182 = sub nsw i32 %181, 1
  store i32 %182, i32* %3, align 4
  br label %183

183:                                              ; preds = %203, %177
  br label %184

184:                                              ; preds = %189, %183
  %185 = call i32 (...) @I_GetTime()
  store i32 %185, i32* %1, align 4
  %186 = load i32, i32* %1, align 4
  %187 = load i32, i32* %3, align 4
  %188 = sub nsw i32 %186, %187
  store i32 %188, i32* %2, align 4
  br label %189

189:                                              ; preds = %184
  %190 = load i32, i32* %2, align 4
  %191 = icmp ne i32 %190, 0
  %192 = xor i1 %191, true
  br i1 %192, label %184, label %193

193:                                              ; preds = %189
  %194 = load i32, i32* %1, align 4
  store i32 %194, i32* %3, align 4
  %195 = load i32, i32* @wipe_Melt, align 4
  %196 = load i32, i32* @SCREENWIDTH, align 4
  %197 = load i32, i32* @SCREENHEIGHT, align 4
  %198 = load i32, i32* %2, align 4
  %199 = call i32 @wipe_ScreenWipe(i32 %195, i32 0, i32 0, i32 %196, i32 %197, i32 %198)
  store i32 %199, i32* %5, align 4
  %200 = call i32 (...) @I_UpdateNoBlit()
  %201 = call i32 (...) @M_Drawer()
  %202 = call i32 (...) @I_FinishUpdate()
  br label %203

203:                                              ; preds = %193
  %204 = load i32, i32* %5, align 4
  %205 = icmp ne i32 %204, 0
  %206 = xor i1 %205, true
  br i1 %206, label %183, label %207

207:                                              ; preds = %10, %175, %203
  ret void
}

declare dso_local i32 @R_ExecuteSetViewSize(...) #1

declare dso_local i32 @wipe_StartScreen(i32, i32, i32, i32) #1

declare dso_local i32 @HU_Erase(...) #1

declare dso_local i32 @AM_Drawer(...) #1

declare dso_local i32 @ST_Drawer(i32, i32) #1

declare dso_local i32 @WI_Drawer(...) #1

declare dso_local i32 @F_Drawer(...) #1

declare dso_local i32 @D_PageDrawer(...) #1

declare dso_local i32 @I_UpdateNoBlit(...) #1

declare dso_local i32 @R_RenderPlayerView(i32*) #1

declare dso_local i32 @HU_Drawer(...) #1

declare dso_local i32 @I_SetPalette(i32) #1

declare dso_local i32 @W_CacheLumpName(i8*, i32) #1

declare dso_local i32 @R_FillBackScreen(...) #1

declare dso_local i32 @R_DrawViewBorder(...) #1

declare dso_local i32 @V_DrawPatchDirect(i64, i32, i32, i32) #1

declare dso_local i32 @M_Drawer(...) #1

declare dso_local i32 @NetUpdate(...) #1

declare dso_local i32 @I_FinishUpdate(...) #1

declare dso_local i32 @wipe_EndScreen(i32, i32, i32, i32) #1

declare dso_local i32 @I_GetTime(...) #1

declare dso_local i32 @wipe_ScreenWipe(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
