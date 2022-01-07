; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_input.c_pad_config.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_input.c_pad_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32** }

@inputs_disabled = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"PAD #%d is not connected !\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@keyname = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"N.A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Press key for %s\0A(D-PAD to return)\00", align 1
@PAD_BUTTON_A = common dso_local global i32 0, align 4
@PAD_BUTTON_B = common dso_local global i32 0, align 4
@PAD_BUTTON_X = common dso_local global i32 0, align 4
@PAD_BUTTON_Y = common dso_local global i32 0, align 4
@PAD_TRIGGER_R = common dso_local global i32 0, align 4
@PAD_TRIGGER_L = common dso_local global i32 0, align 4
@PAD_TRIGGER_Z = common dso_local global i32 0, align 4
@PAD_BUTTON_START = common dso_local global i32 0, align 4
@MAX_KEYS = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"Press key(s) for MENU\00", align 1
@KEY_MENU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @pad_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pad_config(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [64 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* @inputs_disabled, align 4
  %9 = call i32 (...) @VIDEO_WaitVSync()
  %10 = call i32 (...) @PAD_ScanPads()
  %11 = load i32, i32* %4, align 4
  %12 = shl i32 1, %11
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  %19 = call i32 (i8*, i8*, ...) @sprintf(i8* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %21 = call i32 @GUI_WaitPrompt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  store i32 0, i32* @inputs_disabled, align 4
  br label %190

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %139, %22
  %24 = load i8**, i8*** @keyname, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %138

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %36, %31
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @PAD_ButtonsHeld(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = call i32 (...) @VIDEO_WaitVSync()
  %38 = call i32 (...) @PAD_ScanPads()
  br label %32

39:                                               ; preds = %32
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %41 = load i8**, i8*** @keyname, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i8*, i8*, ...) @sprintf(i8* %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %45)
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %48 = call i32 @GUI_MsgBoxUpdate(i32 0, i8* %47)
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %53, %39
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = call i32 (...) @VIDEO_WaitVSync()
  %55 = call i32 (...) @PAD_ScanPads()
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @PAD_ButtonsDown(i32 %56)
  store i32 %57, i32* %7, align 4
  br label %49

58:                                               ; preds = %49
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @PAD_BUTTON_A, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @PAD_BUTTON_A, align 4
  store i32 %64, i32* %7, align 4
  br label %123

65:                                               ; preds = %58
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @PAD_BUTTON_B, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @PAD_BUTTON_B, align 4
  store i32 %71, i32* %7, align 4
  br label %122

72:                                               ; preds = %65
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @PAD_BUTTON_X, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* @PAD_BUTTON_X, align 4
  store i32 %78, i32* %7, align 4
  br label %121

79:                                               ; preds = %72
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @PAD_BUTTON_Y, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* @PAD_BUTTON_Y, align 4
  store i32 %85, i32* %7, align 4
  br label %120

86:                                               ; preds = %79
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @PAD_TRIGGER_R, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* @PAD_TRIGGER_R, align 4
  store i32 %92, i32* %7, align 4
  br label %119

93:                                               ; preds = %86
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @PAD_TRIGGER_L, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i32, i32* @PAD_TRIGGER_L, align 4
  store i32 %99, i32* %7, align 4
  br label %118

100:                                              ; preds = %93
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @PAD_TRIGGER_Z, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* @PAD_TRIGGER_Z, align 4
  store i32 %106, i32* %7, align 4
  br label %117

107:                                              ; preds = %100
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @PAD_BUTTON_START, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32, i32* @PAD_BUTTON_START, align 4
  store i32 %113, i32* %7, align 4
  br label %116

114:                                              ; preds = %107
  %115 = load i32, i32* @MAX_KEYS, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %114, %112
  br label %117

117:                                              ; preds = %116, %105
  br label %118

118:                                              ; preds = %117, %98
  br label %119

119:                                              ; preds = %118, %91
  br label %120

120:                                              ; preds = %119, %84
  br label %121

121:                                              ; preds = %120, %77
  br label %122

122:                                              ; preds = %121, %70
  br label %123

123:                                              ; preds = %122, %63
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @MAX_KEYS, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %137

127:                                              ; preds = %123
  %128 = load i32, i32* %7, align 4
  %129 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %130 = load i32, i32* %4, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32*, i32** %129, i64 %131
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %128, i32* %136, align 4
  br label %137

137:                                              ; preds = %127, %123
  br label %138

138:                                              ; preds = %137, %23
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %5, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp slt i32 %140, %142
  br i1 %143, label %23, label %144

144:                                              ; preds = %139
  br label %145

145:                                              ; preds = %149, %144
  %146 = load i32, i32* %4, align 4
  %147 = call i32 @PAD_ButtonsHeld(i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = call i32 (...) @VIDEO_WaitVSync()
  %151 = call i32 (...) @PAD_ScanPads()
  br label %145

152:                                              ; preds = %145
  %153 = call i32 @GUI_MsgBoxUpdate(i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %154 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %155 = load i32, i32* %4, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32*, i32** %154, i64 %156
  %158 = load i32*, i32** %157, align 8
  %159 = load i64, i64* @KEY_MENU, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  store i32 0, i32* %160, align 4
  store i32 0, i32* %7, align 4
  br label %161

161:                                              ; preds = %165, %152
  %162 = load i32, i32* %7, align 4
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  br i1 %164, label %165, label %170

165:                                              ; preds = %161
  %166 = call i32 (...) @VIDEO_WaitVSync()
  %167 = call i32 (...) @PAD_ScanPads()
  %168 = load i32, i32* %4, align 4
  %169 = call i32 @PAD_ButtonsHeld(i32 %168)
  store i32 %169, i32* %7, align 4
  br label %161

170:                                              ; preds = %161
  br label %171

171:                                              ; preds = %174, %170
  %172 = load i32, i32* %7, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %189

174:                                              ; preds = %171
  %175 = load i32, i32* %7, align 4
  %176 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %177 = load i32, i32* %4, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32*, i32** %176, i64 %178
  %180 = load i32*, i32** %179, align 8
  %181 = load i64, i64* @KEY_MENU, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %183, %175
  store i32 %184, i32* %182, align 4
  %185 = call i32 (...) @VIDEO_WaitVSync()
  %186 = call i32 (...) @PAD_ScanPads()
  %187 = load i32, i32* %4, align 4
  %188 = call i32 @PAD_ButtonsHeld(i32 %187)
  store i32 %188, i32* %7, align 4
  br label %171

189:                                              ; preds = %171
  store i32 0, i32* @inputs_disabled, align 4
  br label %190

190:                                              ; preds = %189, %15
  ret void
}

declare dso_local i32 @VIDEO_WaitVSync(...) #1

declare dso_local i32 @PAD_ScanPads(...) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @GUI_WaitPrompt(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @PAD_ButtonsHeld(i32) #1

declare dso_local i32 @GUI_MsgBoxUpdate(i32, i8*) #1

declare dso_local i32 @PAD_ButtonsDown(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
