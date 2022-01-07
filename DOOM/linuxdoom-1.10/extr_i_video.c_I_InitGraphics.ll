; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_i_video.c_I_InitGraphics.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_i_video.c_I_InitGraphics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i64 }
%struct.TYPE_14__ = type { i32, i64, i32 }
%struct.TYPE_15__ = type { i32 }

@I_InitGraphics.firsttime = internal global i32 1, align 4
@SIGINT = common dso_local global i32 0, align 4
@I_Quit = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"-2\00", align 1
@multiply = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"-3\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-4\00", align 1
@SCREENWIDTH = common dso_local global i32 0, align 4
@X_width = common dso_local global i32 0, align 4
@SCREENHEIGHT = common dso_local global i32 0, align 4
@X_height = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"-disp\00", align 1
@myargv = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"-grabmouse\00", align 1
@grabMouse = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"-geom\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%c%d%c%d\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"bad -geom parameter\00", align 1
@X_display = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"Could not open display [%s]\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Could not open display (DISPLAY=[%s])\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@X_screen = common dso_local global i32 0, align 4
@PseudoColor = common dso_local global i32 0, align 4
@X_visualinfo = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@.str.11 = private unnamed_addr constant [60 x i8] c"xdoom currently only supports 256-color PseudoColor screens\00", align 1
@X_visual = common dso_local global i32 0, align 4
@doShm = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"unix\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [24 x i8] c"Using MITSHM extension\0A\00", align 1
@AllocAll = common dso_local global i32 0, align 4
@X_cmap = common dso_local global i32 0, align 4
@CWEventMask = common dso_local global i64 0, align 8
@CWColormap = common dso_local global i64 0, align 8
@CWBorderPixel = common dso_local global i64 0, align 8
@KeyPressMask = common dso_local global i32 0, align 4
@KeyReleaseMask = common dso_local global i32 0, align 4
@ExposureMask = common dso_local global i32 0, align 4
@InputOutput = common dso_local global i32 0, align 4
@X_mainWindow = common dso_local global i32 0, align 4
@GCGraphicsExposures = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4
@X_gc = common dso_local global i32 0, align 4
@X_event = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@Expose = common dso_local global i64 0, align 8
@True = common dso_local global i32 0, align 4
@ButtonPressMask = common dso_local global i32 0, align 4
@ButtonReleaseMask = common dso_local global i32 0, align 4
@PointerMotionMask = common dso_local global i32 0, align 4
@GrabModeAsync = common dso_local global i32 0, align 4
@None = common dso_local global i32 0, align 4
@CurrentTime = common dso_local global i32 0, align 4
@ShmCompletion = common dso_local global i64 0, align 8
@X_shmeventtype = common dso_local global i64 0, align 8
@ZPixmap = common dso_local global i32 0, align 4
@X_shminfo = common dso_local global i32 0, align 4
@image = common dso_local global %struct.TYPE_16__* null, align 8
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"shmat() failed in InitGraphics()\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"XShmAttach() failed in InitGraphics()\00", align 1
@screens = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @I_InitGraphics() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_14__, align 8
  %12 = alloca %struct.TYPE_15__, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i8 32, i8* %7, align 1
  store i8 32, i8* %8, align 1
  %14 = load i32, i32* @I_InitGraphics.firsttime, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %0
  br label %317

17:                                               ; preds = %0
  store i32 0, i32* @I_InitGraphics.firsttime, align 4
  %18 = load i32, i32* @SIGINT, align 4
  %19 = load i64, i64* @I_Quit, align 8
  %20 = inttoptr i64 %19 to void (i32)*
  %21 = call i32 @signal(i32 %18, void (i32)* %20)
  %22 = call i32 @M_CheckParm(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 2, i32* @multiply, align 4
  br label %25

25:                                               ; preds = %24, %17
  %26 = call i32 @M_CheckParm(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 3, i32* @multiply, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = call i32 @M_CheckParm(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 4, i32* @multiply, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, i32* @SCREENWIDTH, align 4
  %35 = load i32, i32* @multiply, align 4
  %36 = mul nsw i32 %34, %35
  store i32 %36, i32* @X_width, align 4
  %37 = load i32, i32* @SCREENHEIGHT, align 4
  %38 = load i32, i32* @multiply, align 4
  %39 = mul nsw i32 %37, %38
  store i32 %39, i32* @X_height, align 4
  %40 = call i32 @M_CheckParm(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 %40, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %33
  %43 = load i8**, i8*** @myargv, align 8
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %43, i64 %46
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %1, align 8
  br label %50

49:                                               ; preds = %33
  store i8* null, i8** %1, align 8
  br label %50

50:                                               ; preds = %49, %42
  %51 = call i32 @M_CheckParm(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  store i32 %55, i32* @grabMouse, align 4
  %56 = call i32 @M_CheckParm(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i32 %56, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %91

58:                                               ; preds = %50
  %59 = load i8**, i8*** @myargv, align 8
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %59, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @sscanf(i8* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %7, i32* %5, i8* %8, i32* %6)
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %3, align 4
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %90

69:                                               ; preds = %58
  %70 = load i32, i32* %3, align 4
  %71 = icmp eq i32 %70, 6
  br i1 %71, label %72, label %87

72:                                               ; preds = %69
  %73 = load i8, i8* %7, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 45
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* %5, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %76, %72
  %80 = load i8, i8* %8, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 45
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32, i32* %6, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %83, %79
  br label %89

87:                                               ; preds = %69
  %88 = call i32 (i8*, ...) @I_Error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %86
  br label %90

90:                                               ; preds = %89, %68
  br label %91

91:                                               ; preds = %90, %50
  %92 = load i8*, i8** %1, align 8
  %93 = call i32 @XOpenDisplay(i8* %92)
  store i32 %93, i32* @X_display, align 4
  %94 = load i32, i32* @X_display, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %106, label %96

96:                                               ; preds = %91
  %97 = load i8*, i8** %1, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i8*, i8** %1, align 8
  %101 = call i32 (i8*, ...) @I_Error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i8* %100)
  br label %105

102:                                              ; preds = %96
  %103 = call i64 @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %104 = call i32 (i8*, ...) @I_Error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i64 %103)
  br label %105

105:                                              ; preds = %102, %99
  br label %106

106:                                              ; preds = %105, %91
  %107 = load i32, i32* @X_display, align 4
  %108 = call i32 @DefaultScreen(i32 %107)
  store i32 %108, i32* @X_screen, align 4
  %109 = load i32, i32* @X_display, align 4
  %110 = load i32, i32* @X_screen, align 4
  %111 = load i32, i32* @PseudoColor, align 4
  %112 = call i32 @XMatchVisualInfo(i32 %109, i32 %110, i32 8, i32 %111, %struct.TYPE_17__* @X_visualinfo)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %106
  %115 = call i32 (i8*, ...) @I_Error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.11, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %106
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @X_visualinfo, i32 0, i32 0), align 4
  store i32 %117, i32* @X_visual, align 4
  %118 = load i32, i32* @X_display, align 4
  %119 = call i32 @XShmQueryExtension(i32 %118)
  store i32 %119, i32* @doShm, align 4
  %120 = load i32, i32* @doShm, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %165

122:                                              ; preds = %116
  %123 = load i8*, i8** %1, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = call i64 @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %127 = inttoptr i64 %126 to i8*
  store i8* %127, i8** %1, align 8
  br label %128

128:                                              ; preds = %125, %122
  %129 = load i8*, i8** %1, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %164

131:                                              ; preds = %128
  %132 = load i8*, i8** %1, align 8
  store i8* %132, i8** %2, align 8
  br label %133

133:                                              ; preds = %145, %131
  %134 = load i8*, i8** %2, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load i8*, i8** %2, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %141, 58
  br label %143

143:                                              ; preds = %138, %133
  %144 = phi i1 [ false, %133 ], [ %142, %138 ]
  br i1 %144, label %145, label %148

145:                                              ; preds = %143
  %146 = load i8*, i8** %2, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %2, align 8
  br label %133

148:                                              ; preds = %143
  %149 = load i8*, i8** %2, align 8
  %150 = load i8, i8* %149, align 1
  %151 = icmp ne i8 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = load i8*, i8** %2, align 8
  store i8 0, i8* %153, align 1
  br label %154

154:                                              ; preds = %152, %148
  %155 = load i8*, i8** %1, align 8
  %156 = call i32 @strcasecmp(i8* %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = load i8*, i8** %1, align 8
  %160 = load i8, i8* %159, align 1
  %161 = icmp ne i8 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  store i32 0, i32* @doShm, align 4
  br label %163

163:                                              ; preds = %162, %158, %154
  br label %164

164:                                              ; preds = %163, %128
  br label %165

165:                                              ; preds = %164, %116
  %166 = load i32, i32* @stderr, align 4
  %167 = call i32 @fprintf(i32 %166, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  %168 = load i32, i32* @X_display, align 4
  %169 = load i32, i32* @X_display, align 4
  %170 = load i32, i32* @X_screen, align 4
  %171 = call i32 @RootWindow(i32 %169, i32 %170)
  %172 = load i32, i32* @X_visual, align 4
  %173 = load i32, i32* @AllocAll, align 4
  %174 = call i32 @XCreateColormap(i32 %168, i32 %171, i32 %172, i32 %173)
  store i32 %174, i32* @X_cmap, align 4
  %175 = load i64, i64* @CWEventMask, align 8
  %176 = load i64, i64* @CWColormap, align 8
  %177 = or i64 %175, %176
  %178 = load i64, i64* @CWBorderPixel, align 8
  %179 = or i64 %177, %178
  store i64 %179, i64* %10, align 8
  %180 = load i32, i32* @KeyPressMask, align 4
  %181 = load i32, i32* @KeyReleaseMask, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @ExposureMask, align 4
  %184 = or i32 %182, %183
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  store i32 %184, i32* %185, align 8
  %186 = load i32, i32* @X_cmap, align 4
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  store i32 %186, i32* %187, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  store i64 0, i64* %188, align 8
  %189 = load i32, i32* @X_display, align 4
  %190 = load i32, i32* @X_display, align 4
  %191 = load i32, i32* @X_screen, align 4
  %192 = call i32 @RootWindow(i32 %190, i32 %191)
  %193 = load i32, i32* %5, align 4
  %194 = load i32, i32* %6, align 4
  %195 = load i32, i32* @X_width, align 4
  %196 = load i32, i32* @X_height, align 4
  %197 = load i32, i32* @InputOutput, align 4
  %198 = load i32, i32* @X_visual, align 4
  %199 = load i64, i64* %10, align 8
  %200 = call i32 @XCreateWindow(i32 %189, i32 %192, i32 %193, i32 %194, i32 %195, i32 %196, i32 0, i32 8, i32 %197, i32 %198, i64 %199, %struct.TYPE_14__* %11)
  store i32 %200, i32* @X_mainWindow, align 4
  %201 = load i32, i32* @X_display, align 4
  %202 = load i32, i32* @X_mainWindow, align 4
  %203 = load i32, i32* @X_display, align 4
  %204 = load i32, i32* @X_mainWindow, align 4
  %205 = call i32 @createnullcursor(i32 %203, i32 %204)
  %206 = call i32 @XDefineCursor(i32 %201, i32 %202, i32 %205)
  %207 = load i32, i32* @GCGraphicsExposures, align 4
  store i32 %207, i32* %13, align 4
  %208 = load i32, i32* @False, align 4
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  store i32 %208, i32* %209, align 4
  %210 = load i32, i32* @X_display, align 4
  %211 = load i32, i32* @X_mainWindow, align 4
  %212 = load i32, i32* %13, align 4
  %213 = call i32 @XCreateGC(i32 %210, i32 %211, i32 %212, %struct.TYPE_15__* %12)
  store i32 %213, i32* @X_gc, align 4
  %214 = load i32, i32* @X_display, align 4
  %215 = load i32, i32* @X_mainWindow, align 4
  %216 = call i32 @XMapWindow(i32 %214, i32 %215)
  store i32 0, i32* %9, align 4
  br label %217

217:                                              ; preds = %231, %165
  %218 = load i32, i32* %9, align 4
  %219 = icmp ne i32 %218, 0
  %220 = xor i1 %219, true
  br i1 %220, label %221, label %232

221:                                              ; preds = %217
  %222 = load i32, i32* @X_display, align 4
  %223 = call i32 @XNextEvent(i32 %222, %struct.TYPE_18__* @X_event)
  %224 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @X_event, i32 0, i32 0), align 8
  %225 = load i64, i64* @Expose, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %231

227:                                              ; preds = %221
  %228 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @X_event, i32 0, i32 1, i32 0), align 8
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %231, label %230

230:                                              ; preds = %227
  store i32 1, i32* %9, align 4
  br label %231

231:                                              ; preds = %230, %227, %221
  br label %217

232:                                              ; preds = %217
  %233 = load i32, i32* @grabMouse, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %250

235:                                              ; preds = %232
  %236 = load i32, i32* @X_display, align 4
  %237 = load i32, i32* @X_mainWindow, align 4
  %238 = load i32, i32* @True, align 4
  %239 = load i32, i32* @ButtonPressMask, align 4
  %240 = load i32, i32* @ButtonReleaseMask, align 4
  %241 = or i32 %239, %240
  %242 = load i32, i32* @PointerMotionMask, align 4
  %243 = or i32 %241, %242
  %244 = load i32, i32* @GrabModeAsync, align 4
  %245 = load i32, i32* @GrabModeAsync, align 4
  %246 = load i32, i32* @X_mainWindow, align 4
  %247 = load i32, i32* @None, align 4
  %248 = load i32, i32* @CurrentTime, align 4
  %249 = call i32 @XGrabPointer(i32 %236, i32 %237, i32 %238, i32 %243, i32 %244, i32 %245, i32 %246, i32 %247, i32 %248)
  br label %250

250:                                              ; preds = %235, %232
  %251 = load i32, i32* @doShm, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %286

253:                                              ; preds = %250
  %254 = load i32, i32* @X_display, align 4
  %255 = call i64 @XShmGetEventBase(i32 %254)
  %256 = load i64, i64* @ShmCompletion, align 8
  %257 = add nsw i64 %255, %256
  store i64 %257, i64* @X_shmeventtype, align 8
  %258 = load i32, i32* @X_display, align 4
  %259 = load i32, i32* @X_visual, align 4
  %260 = load i32, i32* @ZPixmap, align 4
  %261 = load i32, i32* @X_width, align 4
  %262 = load i32, i32* @X_height, align 4
  %263 = call %struct.TYPE_16__* @XShmCreateImage(i32 %258, i32 %259, i32 8, i32 %260, i32 0, i32* @X_shminfo, i32 %261, i32 %262)
  store %struct.TYPE_16__* %263, %struct.TYPE_16__** @image, align 8
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** @image, align 8
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** @image, align 8
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = mul nsw i32 %266, %269
  %271 = call i32 @grabsharedmemory(i32 %270)
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** @image, align 8
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 2
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %279, label %276

276:                                              ; preds = %253
  %277 = call i32 @perror(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0))
  %278 = call i32 (i8*, ...) @I_Error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0))
  br label %279

279:                                              ; preds = %276, %253
  %280 = load i32, i32* @X_display, align 4
  %281 = call i32 @XShmAttach(i32 %280, i32* @X_shminfo)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %285, label %283

283:                                              ; preds = %279
  %284 = call i32 (i8*, ...) @I_Error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0))
  br label %285

285:                                              ; preds = %283, %279
  br label %299

286:                                              ; preds = %250
  %287 = load i32, i32* @X_display, align 4
  %288 = load i32, i32* @X_visual, align 4
  %289 = load i32, i32* @ZPixmap, align 4
  %290 = load i32, i32* @X_width, align 4
  %291 = load i32, i32* @X_height, align 4
  %292 = mul nsw i32 %290, %291
  %293 = call i64 @malloc(i32 %292)
  %294 = inttoptr i64 %293 to i8*
  %295 = load i32, i32* @X_width, align 4
  %296 = load i32, i32* @X_height, align 4
  %297 = load i32, i32* @X_width, align 4
  %298 = call %struct.TYPE_16__* @XCreateImage(i32 %287, i32 %288, i32 8, i32 %289, i32 0, i8* %294, i32 %295, i32 %296, i32 8, i32 %297)
  store %struct.TYPE_16__* %298, %struct.TYPE_16__** @image, align 8
  br label %299

299:                                              ; preds = %286, %285
  %300 = load i32, i32* @multiply, align 4
  %301 = icmp eq i32 %300, 1
  br i1 %301, label %302, label %309

302:                                              ; preds = %299
  %303 = load %struct.TYPE_16__*, %struct.TYPE_16__** @image, align 8
  %304 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %303, i32 0, i32 2
  %305 = load i64, i64* %304, align 8
  %306 = inttoptr i64 %305 to i8*
  %307 = load i8**, i8*** @screens, align 8
  %308 = getelementptr inbounds i8*, i8** %307, i64 0
  store i8* %306, i8** %308, align 8
  br label %317

309:                                              ; preds = %299
  %310 = load i32, i32* @SCREENWIDTH, align 4
  %311 = load i32, i32* @SCREENHEIGHT, align 4
  %312 = mul nsw i32 %310, %311
  %313 = call i64 @malloc(i32 %312)
  %314 = inttoptr i64 %313 to i8*
  %315 = load i8**, i8*** @screens, align 8
  %316 = getelementptr inbounds i8*, i8** %315, i64 0
  store i8* %314, i8** %316, align 8
  br label %317

317:                                              ; preds = %16, %309, %302
  ret void
}

declare dso_local i32 @signal(i32, void (i32)*) #1

declare dso_local i32 @M_CheckParm(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i32*, i8*, i32*) #1

declare dso_local i32 @I_Error(i8*, ...) #1

declare dso_local i32 @XOpenDisplay(i8*) #1

declare dso_local i64 @getenv(i8*) #1

declare dso_local i32 @DefaultScreen(i32) #1

declare dso_local i32 @XMatchVisualInfo(i32, i32, i32, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @XShmQueryExtension(i32) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @XCreateColormap(i32, i32, i32, i32) #1

declare dso_local i32 @RootWindow(i32, i32) #1

declare dso_local i32 @XCreateWindow(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_14__*) #1

declare dso_local i32 @XDefineCursor(i32, i32, i32) #1

declare dso_local i32 @createnullcursor(i32, i32) #1

declare dso_local i32 @XCreateGC(i32, i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @XMapWindow(i32, i32) #1

declare dso_local i32 @XNextEvent(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @XGrabPointer(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @XShmGetEventBase(i32) #1

declare dso_local %struct.TYPE_16__* @XShmCreateImage(i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @grabsharedmemory(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @XShmAttach(i32, i32*) #1

declare dso_local %struct.TYPE_16__* @XCreateImage(i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
