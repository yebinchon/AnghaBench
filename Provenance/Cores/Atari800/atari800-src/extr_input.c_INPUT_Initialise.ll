; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_input.c_INPUT_Initialise.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_input.c_INPUT_Initialise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"-mouse\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@INPUT_MOUSE_OFF = common dso_local global i64 0, align 8
@INPUT_mouse_mode = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"pad\00", align 1
@INPUT_MOUSE_PAD = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"touch\00", align 1
@INPUT_MOUSE_TOUCH = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"koala\00", align 1
@INPUT_MOUSE_KOALA = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"pen\00", align 1
@INPUT_MOUSE_PEN = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"gun\00", align 1
@INPUT_MOUSE_GUN = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"amiga\00", align 1
@INPUT_MOUSE_AMIGA = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"st\00", align 1
@INPUT_MOUSE_ST = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"trak\00", align 1
@INPUT_MOUSE_TRAK = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"joy\00", align 1
@INPUT_MOUSE_JOY = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"-mouseport\00", align 1
@INPUT_mouse_port = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [54 x i8] c"Invalid mouse port number - should be between 0 and 3\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"-mousespeed\00", align 1
@INPUT_mouse_speed = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [48 x i8] c"Invalid mouse speed - should be between 1 and 9\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"-multijoy\00", align 1
@INPUT_joy_multijoy = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [13 x i8] c"-directmouse\00", align 1
@INPUT_direct_mouse = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"-cx85\00", align 1
@INPUT_cx85 = common dso_local global i32 0, align 4
@cx85_port = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [46 x i8] c"Invalid cx85 port - should be between 0 and 3\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"\09-mouse off       Do not use mouse\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"\09-mouse pad       Emulate paddles\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"\09-mouse touch     Emulate Atari Touch Tablet\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"\09-mouse koala     Emulate Koala Pad\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"\09-mouse pen       Emulate Light Pen\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"\09-mouse gun       Emulate Light Gun\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"\09-mouse amiga     Emulate Amiga mouse\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"\09-mouse st        Emulate Atari ST mouse\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"\09-mouse trak      Emulate Atari Trak-Ball\00", align 1
@.str.29 = private unnamed_addr constant [47 x i8] c"\09-mouse joy       Emulate joystick using mouse\00", align 1
@.str.30 = private unnamed_addr constant [49 x i8] c"\09-mouseport <n>   Set mouse port 1-4 (default 1)\00", align 1
@.str.31 = private unnamed_addr constant [50 x i8] c"\09-mousespeed <n>  Set mouse speed 1-9 (default 3)\00", align 1
@.str.32 = private unnamed_addr constant [48 x i8] c"\09-directmouse     Use absolute X/Y mouse coords\00", align 1
@.str.33 = private unnamed_addr constant [58 x i8] c"\09-cx85 <n>        Emulate CX85 numeric keypad on port <n>\00", align 1
@.str.34 = private unnamed_addr constant [46 x i8] c"\09-multijoy        Emulate MultiJoy4 interface\00", align 1
@.str.35 = private unnamed_addr constant [41 x i8] c"\09-record <file>   Record input to <file>\00", align 1
@.str.36 = private unnamed_addr constant [45 x i8] c"\09-playback <file> Playback input from <file>\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"Missing argument for '%s'\00", align 1
@.str.38 = private unnamed_addr constant [52 x i8] c"-directmouse only valid with -mouse pad|touch|koala\00", align 1
@EVENT_RECORDING_VERSION = common dso_local global i64 0, align 8
@GZBUFSIZE = common dso_local global i32 0, align 4
@gzbuf = common dso_local global i32 0, align 4
@playbackfp = common dso_local global i32* null, align 8
@playingback = common dso_local global i32 0, align 4
@recordfp = common dso_local global i32* null, align 8
@recording = common dso_local global i32 0, align 4
@recording_version = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @INPUT_Initialise(i32* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %11

11:                                               ; preds = %280, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %283

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, 1
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %18, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %113

31:                                               ; preds = %16
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %110

34:                                               ; preds = %31
  %35 = load i8**, i8*** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %35, i64 %38
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %10, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i64, i64* @INPUT_MOUSE_OFF, align 8
  store i64 %45, i64* @INPUT_mouse_mode, align 8
  br label %109

46:                                               ; preds = %34
  %47 = load i8*, i8** %10, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i64, i64* @INPUT_MOUSE_PAD, align 8
  store i64 %51, i64* @INPUT_mouse_mode, align 8
  br label %108

52:                                               ; preds = %46
  %53 = load i8*, i8** %10, align 8
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i64, i64* @INPUT_MOUSE_TOUCH, align 8
  store i64 %57, i64* @INPUT_mouse_mode, align 8
  br label %107

58:                                               ; preds = %52
  %59 = load i8*, i8** %10, align 8
  %60 = call i64 @strcmp(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i64, i64* @INPUT_MOUSE_KOALA, align 8
  store i64 %63, i64* @INPUT_mouse_mode, align 8
  br label %106

64:                                               ; preds = %58
  %65 = load i8*, i8** %10, align 8
  %66 = call i64 @strcmp(i8* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i64, i64* @INPUT_MOUSE_PEN, align 8
  store i64 %69, i64* @INPUT_mouse_mode, align 8
  br label %105

70:                                               ; preds = %64
  %71 = load i8*, i8** %10, align 8
  %72 = call i64 @strcmp(i8* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i64, i64* @INPUT_MOUSE_GUN, align 8
  store i64 %75, i64* @INPUT_mouse_mode, align 8
  br label %104

76:                                               ; preds = %70
  %77 = load i8*, i8** %10, align 8
  %78 = call i64 @strcmp(i8* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i64, i64* @INPUT_MOUSE_AMIGA, align 8
  store i64 %81, i64* @INPUT_mouse_mode, align 8
  br label %103

82:                                               ; preds = %76
  %83 = load i8*, i8** %10, align 8
  %84 = call i64 @strcmp(i8* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i64, i64* @INPUT_MOUSE_ST, align 8
  store i64 %87, i64* @INPUT_mouse_mode, align 8
  br label %102

88:                                               ; preds = %82
  %89 = load i8*, i8** %10, align 8
  %90 = call i64 @strcmp(i8* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i64, i64* @INPUT_MOUSE_TRAK, align 8
  store i64 %93, i64* @INPUT_mouse_mode, align 8
  br label %101

94:                                               ; preds = %88
  %95 = load i8*, i8** %10, align 8
  %96 = call i64 @strcmp(i8* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i64, i64* @INPUT_MOUSE_JOY, align 8
  store i64 %99, i64* @INPUT_mouse_mode, align 8
  br label %100

100:                                              ; preds = %98, %94
  br label %101

101:                                              ; preds = %100, %92
  br label %102

102:                                              ; preds = %101, %86
  br label %103

103:                                              ; preds = %102, %80
  br label %104

104:                                              ; preds = %103, %74
  br label %105

105:                                              ; preds = %104, %68
  br label %106

106:                                              ; preds = %105, %62
  br label %107

107:                                              ; preds = %106, %56
  br label %108

108:                                              ; preds = %107, %50
  br label %109

109:                                              ; preds = %108, %44
  br label %112

110:                                              ; preds = %31
  %111 = load i32, i32* @TRUE, align 4
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %110, %109
  br label %268

113:                                              ; preds = %16
  %114 = load i8**, i8*** %5, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %114, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = call i64 @strcmp(i8* %118, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %145

121:                                              ; preds = %113
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %142

124:                                              ; preds = %121
  %125 = load i8**, i8*** %5, align 8
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %125, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @Util_sscandec(i8* %130)
  %132 = sub nsw i32 %131, 1
  store i32 %132, i32* @INPUT_mouse_port, align 4
  %133 = load i32, i32* @INPUT_mouse_port, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %124
  %136 = load i32, i32* @INPUT_mouse_port, align 4
  %137 = icmp sgt i32 %136, 3
  br i1 %137, label %138, label %141

138:                                              ; preds = %135, %124
  %139 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i64 0, i64 0))
  %140 = load i32, i32* @FALSE, align 4
  store i32 %140, i32* %3, align 4
  br label %306

141:                                              ; preds = %135
  br label %144

142:                                              ; preds = %121
  %143 = load i32, i32* @TRUE, align 4
  store i32 %143, i32* %9, align 4
  br label %144

144:                                              ; preds = %142, %141
  br label %267

145:                                              ; preds = %113
  %146 = load i8**, i8*** %5, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %146, i64 %148
  %150 = load i8*, i8** %149, align 8
  %151 = call i64 @strcmp(i8* %150, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %176

153:                                              ; preds = %145
  %154 = load i32, i32* %8, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %173

156:                                              ; preds = %153
  %157 = load i8**, i8*** %5, align 8
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8*, i8** %157, i64 %160
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @Util_sscandec(i8* %162)
  store i32 %163, i32* @INPUT_mouse_speed, align 4
  %164 = load i32, i32* @INPUT_mouse_speed, align 4
  %165 = icmp slt i32 %164, 1
  br i1 %165, label %169, label %166

166:                                              ; preds = %156
  %167 = load i32, i32* @INPUT_mouse_speed, align 4
  %168 = icmp sgt i32 %167, 9
  br i1 %168, label %169, label %172

169:                                              ; preds = %166, %156
  %170 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i64 0, i64 0))
  %171 = load i32, i32* @FALSE, align 4
  store i32 %171, i32* %3, align 4
  br label %306

172:                                              ; preds = %166
  br label %175

173:                                              ; preds = %153
  %174 = load i32, i32* @TRUE, align 4
  store i32 %174, i32* %9, align 4
  br label %175

175:                                              ; preds = %173, %172
  br label %266

176:                                              ; preds = %145
  %177 = load i8**, i8*** %5, align 8
  %178 = load i32, i32* %6, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8*, i8** %177, i64 %179
  %181 = load i8*, i8** %180, align 8
  %182 = call i64 @strcmp(i8* %181, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %176
  store i32 1, i32* @INPUT_joy_multijoy, align 4
  br label %265

185:                                              ; preds = %176
  %186 = load i8**, i8*** %5, align 8
  %187 = load i32, i32* %6, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8*, i8** %186, i64 %188
  %190 = load i8*, i8** %189, align 8
  %191 = call i64 @strcmp(i8* %190, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %185
  store i32 1, i32* @INPUT_direct_mouse, align 4
  br label %264

194:                                              ; preds = %185
  %195 = load i8**, i8*** %5, align 8
  %196 = load i32, i32* %6, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8*, i8** %195, i64 %197
  %199 = load i8*, i8** %198, align 8
  %200 = call i64 @strcmp(i8* %199, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %226

202:                                              ; preds = %194
  %203 = load i32, i32* %8, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %223

205:                                              ; preds = %202
  store i32 1, i32* @INPUT_cx85, align 4
  %206 = load i8**, i8*** %5, align 8
  %207 = load i32, i32* %6, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %6, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8*, i8** %206, i64 %209
  %211 = load i8*, i8** %210, align 8
  %212 = call i32 @Util_sscandec(i8* %211)
  %213 = sub nsw i32 %212, 1
  store i32 %213, i32* @cx85_port, align 4
  %214 = load i32, i32* @cx85_port, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %219, label %216

216:                                              ; preds = %205
  %217 = load i32, i32* @cx85_port, align 4
  %218 = icmp sgt i32 %217, 3
  br i1 %218, label %219, label %222

219:                                              ; preds = %216, %205
  %220 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0))
  %221 = load i32, i32* @FALSE, align 4
  store i32 %221, i32* %3, align 4
  br label %306

222:                                              ; preds = %216
  br label %225

223:                                              ; preds = %202
  %224 = load i32, i32* @TRUE, align 4
  store i32 %224, i32* %9, align 4
  br label %225

225:                                              ; preds = %223, %222
  br label %263

226:                                              ; preds = %194
  %227 = load i8**, i8*** %5, align 8
  %228 = load i32, i32* %6, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8*, i8** %227, i64 %229
  %231 = load i8*, i8** %230, align 8
  %232 = call i64 @strcmp(i8* %231, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %252

234:                                              ; preds = %226
  %235 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i64 0, i64 0))
  %236 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0))
  %237 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i64 0, i64 0))
  %238 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i64 0, i64 0))
  %239 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.24, i64 0, i64 0))
  %240 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i64 0, i64 0))
  %241 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.26, i64 0, i64 0))
  %242 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.27, i64 0, i64 0))
  %243 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.28, i64 0, i64 0))
  %244 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.29, i64 0, i64 0))
  %245 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.30, i64 0, i64 0))
  %246 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.31, i64 0, i64 0))
  %247 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.32, i64 0, i64 0))
  %248 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.33, i64 0, i64 0))
  %249 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.34, i64 0, i64 0))
  %250 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.35, i64 0, i64 0))
  %251 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.36, i64 0, i64 0))
  br label %252

252:                                              ; preds = %234, %226
  %253 = load i8**, i8*** %5, align 8
  %254 = load i32, i32* %6, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8*, i8** %253, i64 %255
  %257 = load i8*, i8** %256, align 8
  %258 = load i8**, i8*** %5, align 8
  %259 = load i32, i32* %7, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %7, align 4
  %261 = sext i32 %259 to i64
  %262 = getelementptr inbounds i8*, i8** %258, i64 %261
  store i8* %257, i8** %262, align 8
  br label %263

263:                                              ; preds = %252, %225
  br label %264

264:                                              ; preds = %263, %193
  br label %265

265:                                              ; preds = %264, %184
  br label %266

266:                                              ; preds = %265, %175
  br label %267

267:                                              ; preds = %266, %144
  br label %268

268:                                              ; preds = %267, %112
  %269 = load i32, i32* %9, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %279

271:                                              ; preds = %268
  %272 = load i8**, i8*** %5, align 8
  %273 = load i32, i32* %6, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8*, i8** %272, i64 %274
  %276 = load i8*, i8** %275, align 8
  %277 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i64 0, i64 0), i8* %276)
  %278 = load i32, i32* @FALSE, align 4
  store i32 %278, i32* %3, align 4
  br label %306

279:                                              ; preds = %268
  br label %280

280:                                              ; preds = %279
  %281 = load i32, i32* %6, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %6, align 4
  br label %11

283:                                              ; preds = %11
  %284 = load i32, i32* @INPUT_direct_mouse, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %301

286:                                              ; preds = %283
  %287 = load i64, i64* @INPUT_mouse_mode, align 8
  %288 = load i64, i64* @INPUT_MOUSE_PAD, align 8
  %289 = icmp eq i64 %287, %288
  br i1 %289, label %301, label %290

290:                                              ; preds = %286
  %291 = load i64, i64* @INPUT_mouse_mode, align 8
  %292 = load i64, i64* @INPUT_MOUSE_TOUCH, align 8
  %293 = icmp eq i64 %291, %292
  br i1 %293, label %301, label %294

294:                                              ; preds = %290
  %295 = load i64, i64* @INPUT_mouse_mode, align 8
  %296 = load i64, i64* @INPUT_MOUSE_KOALA, align 8
  %297 = icmp eq i64 %295, %296
  br i1 %297, label %301, label %298

298:                                              ; preds = %294
  %299 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.38, i64 0, i64 0))
  %300 = load i32, i32* @FALSE, align 4
  store i32 %300, i32* %3, align 4
  br label %306

301:                                              ; preds = %294, %290, %286, %283
  %302 = call i32 (...) @INPUT_CenterMousePointer()
  %303 = load i32, i32* %7, align 4
  %304 = load i32*, i32** %4, align 8
  store i32 %303, i32* %304, align 4
  %305 = load i32, i32* @TRUE, align 4
  store i32 %305, i32* %3, align 4
  br label %306

306:                                              ; preds = %301, %298, %271, %219, %169, %138
  %307 = load i32, i32* %3, align 4
  ret i32 %307
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @Util_sscandec(i8*) #1

declare dso_local i32 @Log_print(i8*, ...) #1

declare dso_local i32 @INPUT_CenterMousePointer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
