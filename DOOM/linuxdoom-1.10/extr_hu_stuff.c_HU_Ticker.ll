; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_hu_stuff.c_HU_Ticker.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_hu_stuff.c_HU_Ticker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }

@message_counter = common dso_local global i64 0, align 8
@message_on = common dso_local global i32 0, align 4
@message_nottobefuckedwith = common dso_local global i32 0, align 4
@showMessages = common dso_local global i64 0, align 8
@message_dontfuckwithme = common dso_local global i32 0, align 4
@plr = common dso_local global %struct.TYPE_11__* null, align 8
@w_message = common dso_local global i32 0, align 4
@HU_MSGTIMEOUT = common dso_local global i64 0, align 8
@netgame = common dso_local global i64 0, align 8
@MAXPLAYERS = common dso_local global i32 0, align 4
@playeringame = common dso_local global i32* null, align 8
@consoleplayer = common dso_local global i32 0, align 4
@players = common dso_local global %struct.TYPE_12__* null, align 8
@HU_BROADCAST = common dso_local global i8 0, align 1
@chat_dest = common dso_local global i32* null, align 8
@shiftxform = common dso_local global i64* null, align 8
@w_inputbuffer = common dso_local global %struct.TYPE_10__* null, align 8
@KEY_ENTER = common dso_local global i8 0, align 1
@player_names = common dso_local global i32* null, align 8
@gamemode = common dso_local global i64 0, align 8
@commercial = common dso_local global i64 0, align 8
@sfx_radio = common dso_local global i32 0, align 4
@sfx_tink = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HU_Ticker() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = load i64, i64* @message_counter, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = load i64, i64* @message_counter, align 8
  %8 = add nsw i64 %7, -1
  store i64 %8, i64* @message_counter, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  store i32 0, i32* @message_on, align 4
  store i32 0, i32* @message_nottobefuckedwith, align 4
  br label %11

11:                                               ; preds = %10, %6, %0
  %12 = load i64, i64* @showMessages, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* @message_dontfuckwithme, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %14, %11
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** @plr, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @message_nottobefuckedwith, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22, %17
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** @plr, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load i32, i32* @message_dontfuckwithme, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30, %22
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** @plr, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @HUlib_addMessageToSText(i32* @w_message, i32 0, i64 %36)
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** @plr, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  store i32 1, i32* @message_on, align 4
  %40 = load i64, i64* @HU_MSGTIMEOUT, align 8
  store i64 %40, i64* @message_counter, align 8
  %41 = load i32, i32* @message_dontfuckwithme, align 4
  store i32 %41, i32* @message_nottobefuckedwith, align 4
  store i32 0, i32* @message_dontfuckwithme, align 4
  br label %42

42:                                               ; preds = %33, %30, %25
  br label %43

43:                                               ; preds = %42, %14
  %44 = load i64, i64* @netgame, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %187

46:                                               ; preds = %43
  store i32 0, i32* %1, align 4
  br label %47

47:                                               ; preds = %183, %46
  %48 = load i32, i32* %1, align 4
  %49 = load i32, i32* @MAXPLAYERS, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %186

51:                                               ; preds = %47
  %52 = load i32*, i32** @playeringame, align 8
  %53 = load i32, i32* %1, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  br label %183

59:                                               ; preds = %51
  %60 = load i32, i32* %1, align 4
  %61 = load i32, i32* @consoleplayer, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %182

63:                                               ; preds = %59
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** @players, align 8
  %65 = load i32, i32* %1, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i8, i8* %69, align 1
  store i8 %70, i8* %3, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %182

73:                                               ; preds = %63
  %74 = load i8, i8* %3, align 1
  %75 = sext i8 %74 to i32
  %76 = load i8, i8* @HU_BROADCAST, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp sle i32 %75, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = load i8, i8* %3, align 1
  %81 = sext i8 %80 to i32
  %82 = load i32*, i32** @chat_dest, align 8
  %83 = load i32, i32* %1, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %81, i32* %85, align 4
  br label %175

86:                                               ; preds = %73
  %87 = load i8, i8* %3, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp sge i32 %88, 97
  br i1 %89, label %90, label %101

90:                                               ; preds = %86
  %91 = load i8, i8* %3, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp sle i32 %92, 122
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = load i64*, i64** @shiftxform, align 8
  %96 = load i8, i8* %3, align 1
  %97 = zext i8 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i8
  store i8 %100, i8* %3, align 1
  br label %101

101:                                              ; preds = %94, %90, %86
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** @w_inputbuffer, align 8
  %103 = load i32, i32* %1, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i64 %104
  %106 = load i8, i8* %3, align 1
  %107 = call i32 @HUlib_keyInIText(%struct.TYPE_10__* %105, i8 signext %106)
  store i32 %107, i32* %2, align 4
  %108 = load i32, i32* %2, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %174

110:                                              ; preds = %101
  %111 = load i8, i8* %3, align 1
  %112 = sext i8 %111 to i32
  %113 = load i8, i8* @KEY_ENTER, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %174

116:                                              ; preds = %110
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** @w_inputbuffer, align 8
  %118 = load i32, i32* %1, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %168

125:                                              ; preds = %116
  %126 = load i32*, i32** @chat_dest, align 8
  %127 = load i32, i32* %1, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @consoleplayer, align 4
  %132 = add nsw i32 %131, 1
  %133 = icmp eq i32 %130, %132
  br i1 %133, label %143, label %134

134:                                              ; preds = %125
  %135 = load i32*, i32** @chat_dest, align 8
  %136 = load i32, i32* %1, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i8, i8* @HU_BROADCAST, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %139, %141
  br i1 %142, label %143, label %168

143:                                              ; preds = %134, %125
  %144 = load i32*, i32** @player_names, align 8
  %145 = load i32, i32* %1, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** @w_inputbuffer, align 8
  %150 = load i32, i32* %1, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @HUlib_addMessageToSText(i32* @w_message, i32 %148, i64 %155)
  store i32 1, i32* @message_nottobefuckedwith, align 4
  store i32 1, i32* @message_on, align 4
  %157 = load i64, i64* @HU_MSGTIMEOUT, align 8
  store i64 %157, i64* @message_counter, align 8
  %158 = load i64, i64* @gamemode, align 8
  %159 = load i64, i64* @commercial, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %143
  %162 = load i32, i32* @sfx_radio, align 4
  %163 = call i32 @S_StartSound(i32 0, i32 %162)
  br label %167

164:                                              ; preds = %143
  %165 = load i32, i32* @sfx_tink, align 4
  %166 = call i32 @S_StartSound(i32 0, i32 %165)
  br label %167

167:                                              ; preds = %164, %161
  br label %168

168:                                              ; preds = %167, %134, %116
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** @w_inputbuffer, align 8
  %170 = load i32, i32* %1, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i64 %171
  %173 = call i32 @HUlib_resetIText(%struct.TYPE_10__* %172)
  br label %174

174:                                              ; preds = %168, %110, %101
  br label %175

175:                                              ; preds = %174, %79
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** @players, align 8
  %177 = load i32, i32* %1, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  store i8 0, i8* %181, align 1
  br label %182

182:                                              ; preds = %175, %63, %59
  br label %183

183:                                              ; preds = %182, %58
  %184 = load i32, i32* %1, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %1, align 4
  br label %47

186:                                              ; preds = %47
  br label %187

187:                                              ; preds = %186, %43
  ret void
}

declare dso_local i32 @HUlib_addMessageToSText(i32*, i32, i64) #1

declare dso_local i32 @HUlib_keyInIText(%struct.TYPE_10__*, i8 signext) #1

declare dso_local i32 @S_StartSound(i32, i32) #1

declare dso_local i32 @HUlib_resetIText(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
