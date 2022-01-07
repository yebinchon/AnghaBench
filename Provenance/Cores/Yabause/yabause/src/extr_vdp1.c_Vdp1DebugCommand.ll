; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vdp1.c_Vdp1DebugCommand.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vdp1.c_Vdp1DebugCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@Vdp1Ram = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Command is skipped\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Normal Sprite\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"x = %d, y = %d\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Scaled Sprite\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Zoom Point: \00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Only two coordinates\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Upper-left\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Upper-center\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Upper-right\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Center-left\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Center-center\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Center-right\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Lower-left\0D\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"Lower-center\0D\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"Lower-right\0D\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"xa = %d, ya = %d, xc = %d, yc = %d\0D\0A\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"xa = %d, ya = %d, xb = %d, yb = %d\0D\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"Distorted Sprite\0D\0A\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"x1 = %d, y1 = %d, x2 = %d, y2 = %d\0D\0A\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"x3 = %d, y3 = %d, x4 = %d, y4 = %d\0D\0A\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"Distorted Sprite *\0D\0A\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"Polygon\0D\0A\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"Polyline\0D\0A\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"Line\0D\0A\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"Polyline *\0D\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"User Clipping\0D\0A\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"System Clipping\0D\0A\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"x1 = 0, y1 = 0, x2 = %d, y2 = %d\0D\0A\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"Local Coordinates\0D\0A\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"Invalid command\0D\0A\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"Texture address = %08X\0D\0A\00", align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"Texture width = %d, height = %d\0D\0A\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"Texture read direction: \00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"Normal\0D\0A\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"Reversed horizontal\0D\0A\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"Reversed vertical\0D\0A\00", align 1
@.str.36 = private unnamed_addr constant [35 x i8] c"Reversed horizontal and vertical\0D\0A\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"MSB set\0D\0A\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"High Speed Shrink Enabled\0D\0A\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"Pre-clipping Enabled\0D\0A\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"User Clipping Enabled\0D\0A\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"Clipping Mode = %d\0D\0A\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"Mesh Enabled\0D\0A\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"End Code Enabled\0D\0A\00", align 1
@.str.44 = private unnamed_addr constant [28 x i8] c"Transparent Pixel Enabled\0D\0A\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"Color mode: \00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"4 BPP(16 color bank)\0D\0A\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"Color bank: %08X\0D\0A\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"4 BPP(16 color LUT)\0D\0A\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"Color lookup table: %08X\0D\0A\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"8 BPP(64 color bank)\0D\0A\00", align 1
@.str.51 = private unnamed_addr constant [24 x i8] c"8 BPP(128 color bank)\0D\0A\00", align 1
@.str.52 = private unnamed_addr constant [24 x i8] c"8 BPP(256 color bank)\0D\0A\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"15 BPP(RGB)\0D\0A\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"Non-textured color: %04X\0D\0A\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"Color Calc. mode: \00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"Replace\0D\0A\00", align 1
@.str.57 = private unnamed_addr constant [26 x i8] c"Cannot overwrite/Shadow\0D\0A\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"Half-luminance\0D\0A\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"Replace/Half-transparent\0D\0A\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"Gouraud Shading\0D\0A\00", align 1
@.str.61 = private unnamed_addr constant [31 x i8] c"Gouraud Shading Table = %08X\0D\0A\00", align 1
@.str.62 = private unnamed_addr constant [35 x i8] c"Gouraud Shading + Half-luminance\0D\0A\00", align 1
@.str.63 = private unnamed_addr constant [53 x i8] c"Gouraud Shading/Gouraud Shading + Half-transparent\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Vdp1DebugCommand(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @Vdp1DebugGetCommandNumberAddr(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %492

12:                                               ; preds = %2
  %13 = load i32, i32* @Vdp1Ram, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @T1ReadWord(i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 32768
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 0, i8* %21, align 1
  br label %492

22:                                               ; preds = %12
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 16384
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 (i8*, i8*, ...) @AddString(i8* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %492

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @Vdp1Ram, align 4
  %32 = call i32 @Vdp1ReadCommand(%struct.TYPE_3__* %6, i32 %30, i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, 15
  switch i32 %35, label %273 [
    i32 0, label %36
    i32 1, label %45
    i32 2, label %114
    i32 3, label %137
    i32 4, label %160
    i32 5, label %183
    i32 6, label %206
    i32 7, label %219
    i32 8, label %242
    i32 9, label %255
    i32 10, label %264
  ]

36:                                               ; preds = %29
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 (i8*, i8*, ...) @AddString(i8* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i8*, i8*, ...) @AddString(i8* %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %43)
  br label %276

45:                                               ; preds = %29
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 (i8*, i8*, ...) @AddString(i8* %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 (i8*, i8*, ...) @AddString(i8* %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = ashr i32 %51, 8
  %53 = and i32 %52, 15
  switch i32 %53, label %84 [
    i32 0, label %54
    i32 5, label %57
    i32 6, label %60
    i32 7, label %63
    i32 9, label %66
    i32 10, label %69
    i32 11, label %72
    i32 12, label %75
    i32 14, label %78
    i32 15, label %81
  ]

54:                                               ; preds = %45
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 (i8*, i8*, ...) @AddString(i8* %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %85

57:                                               ; preds = %45
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 (i8*, i8*, ...) @AddString(i8* %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %85

60:                                               ; preds = %45
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 (i8*, i8*, ...) @AddString(i8* %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %85

63:                                               ; preds = %45
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 (i8*, i8*, ...) @AddString(i8* %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %85

66:                                               ; preds = %45
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 (i8*, i8*, ...) @AddString(i8* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  br label %85

69:                                               ; preds = %45
  %70 = load i8*, i8** %4, align 8
  %71 = call i32 (i8*, i8*, ...) @AddString(i8* %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  br label %85

72:                                               ; preds = %45
  %73 = load i8*, i8** %4, align 8
  %74 = call i32 (i8*, i8*, ...) @AddString(i8* %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  br label %85

75:                                               ; preds = %45
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 (i8*, i8*, ...) @AddString(i8* %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  br label %85

78:                                               ; preds = %45
  %79 = load i8*, i8** %4, align 8
  %80 = call i32 (i8*, i8*, ...) @AddString(i8* %79, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  br label %85

81:                                               ; preds = %45
  %82 = load i8*, i8** %4, align 8
  %83 = call i32 (i8*, i8*, ...) @AddString(i8* %82, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  br label %85

84:                                               ; preds = %45
  br label %85

85:                                               ; preds = %84, %81, %78, %75, %72, %69, %66, %63, %60, %57, %54
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = ashr i32 %87, 8
  %89 = and i32 %88, 15
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %85
  %92 = load i8*, i8** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 7
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 9
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 8
  %100 = load i32, i32* %99, align 8
  %101 = call i32 (i8*, i8*, ...) @AddString(i8* %92, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i32 %94, i32 %96, i32 %98, i32 %100)
  br label %113

102:                                              ; preds = %85
  %103 = load i8*, i8** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 7
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 13
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 12
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (i8*, i8*, ...) @AddString(i8* %103, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0), i32 %105, i32 %107, i32 %109, i32 %111)
  br label %113

113:                                              ; preds = %102, %91
  br label %276

114:                                              ; preds = %29
  %115 = load i8*, i8** %4, align 8
  %116 = call i32 (i8*, i8*, ...) @AddString(i8* %115, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0))
  %117 = load i8*, i8** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 7
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 6
  %121 = load i32, i32* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 13
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 12
  %125 = load i32, i32* %124, align 8
  %126 = call i32 (i8*, i8*, ...) @AddString(i8* %117, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0), i32 %119, i32 %121, i32 %123, i32 %125)
  %127 = load i8*, i8** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 9
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 8
  %131 = load i32, i32* %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 11
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 10
  %135 = load i32, i32* %134, align 8
  %136 = call i32 (i8*, i8*, ...) @AddString(i8* %127, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0), i32 %129, i32 %131, i32 %133, i32 %135)
  br label %276

137:                                              ; preds = %29
  %138 = load i8*, i8** %4, align 8
  %139 = call i32 (i8*, i8*, ...) @AddString(i8* %138, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0))
  %140 = load i8*, i8** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 7
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 6
  %144 = load i32, i32* %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 13
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 12
  %148 = load i32, i32* %147, align 8
  %149 = call i32 (i8*, i8*, ...) @AddString(i8* %140, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0), i32 %142, i32 %144, i32 %146, i32 %148)
  %150 = load i8*, i8** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 9
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 8
  %154 = load i32, i32* %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 11
  %156 = load i32, i32* %155, align 4
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 10
  %158 = load i32, i32* %157, align 8
  %159 = call i32 (i8*, i8*, ...) @AddString(i8* %150, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0), i32 %152, i32 %154, i32 %156, i32 %158)
  br label %276

160:                                              ; preds = %29
  %161 = load i8*, i8** %4, align 8
  %162 = call i32 (i8*, i8*, ...) @AddString(i8* %161, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  %163 = load i8*, i8** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 7
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 6
  %167 = load i32, i32* %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 13
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 12
  %171 = load i32, i32* %170, align 8
  %172 = call i32 (i8*, i8*, ...) @AddString(i8* %163, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0), i32 %165, i32 %167, i32 %169, i32 %171)
  %173 = load i8*, i8** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 9
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 8
  %177 = load i32, i32* %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 11
  %179 = load i32, i32* %178, align 4
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 10
  %181 = load i32, i32* %180, align 8
  %182 = call i32 (i8*, i8*, ...) @AddString(i8* %173, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0), i32 %175, i32 %177, i32 %179, i32 %181)
  br label %276

183:                                              ; preds = %29
  %184 = load i8*, i8** %4, align 8
  %185 = call i32 (i8*, i8*, ...) @AddString(i8* %184, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0))
  %186 = load i8*, i8** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 7
  %188 = load i32, i32* %187, align 4
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 6
  %190 = load i32, i32* %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 13
  %192 = load i32, i32* %191, align 4
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 12
  %194 = load i32, i32* %193, align 8
  %195 = call i32 (i8*, i8*, ...) @AddString(i8* %186, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0), i32 %188, i32 %190, i32 %192, i32 %194)
  %196 = load i8*, i8** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 9
  %198 = load i32, i32* %197, align 4
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 8
  %200 = load i32, i32* %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 11
  %202 = load i32, i32* %201, align 4
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 10
  %204 = load i32, i32* %203, align 8
  %205 = call i32 (i8*, i8*, ...) @AddString(i8* %196, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0), i32 %198, i32 %200, i32 %202, i32 %204)
  br label %276

206:                                              ; preds = %29
  %207 = load i8*, i8** %4, align 8
  %208 = call i32 (i8*, i8*, ...) @AddString(i8* %207, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  %209 = load i8*, i8** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 7
  %211 = load i32, i32* %210, align 4
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 6
  %213 = load i32, i32* %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 13
  %215 = load i32, i32* %214, align 4
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 12
  %217 = load i32, i32* %216, align 8
  %218 = call i32 (i8*, i8*, ...) @AddString(i8* %209, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0), i32 %211, i32 %213, i32 %215, i32 %217)
  br label %276

219:                                              ; preds = %29
  %220 = load i8*, i8** %4, align 8
  %221 = call i32 (i8*, i8*, ...) @AddString(i8* %220, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0))
  %222 = load i8*, i8** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 7
  %224 = load i32, i32* %223, align 4
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 6
  %226 = load i32, i32* %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 13
  %228 = load i32, i32* %227, align 4
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 12
  %230 = load i32, i32* %229, align 8
  %231 = call i32 (i8*, i8*, ...) @AddString(i8* %222, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0), i32 %224, i32 %226, i32 %228, i32 %230)
  %232 = load i8*, i8** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 9
  %234 = load i32, i32* %233, align 4
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 8
  %236 = load i32, i32* %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 11
  %238 = load i32, i32* %237, align 4
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 10
  %240 = load i32, i32* %239, align 8
  %241 = call i32 (i8*, i8*, ...) @AddString(i8* %232, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0), i32 %234, i32 %236, i32 %238, i32 %240)
  br label %276

242:                                              ; preds = %29
  %243 = load i8*, i8** %4, align 8
  %244 = call i32 (i8*, i8*, ...) @AddString(i8* %243, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0))
  %245 = load i8*, i8** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 7
  %247 = load i32, i32* %246, align 4
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 6
  %249 = load i32, i32* %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 9
  %251 = load i32, i32* %250, align 4
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 8
  %253 = load i32, i32* %252, align 8
  %254 = call i32 (i8*, i8*, ...) @AddString(i8* %245, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0), i32 %247, i32 %249, i32 %251, i32 %253)
  br label %276

255:                                              ; preds = %29
  %256 = load i8*, i8** %4, align 8
  %257 = call i32 (i8*, i8*, ...) @AddString(i8* %256, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0))
  %258 = load i8*, i8** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 9
  %260 = load i32, i32* %259, align 4
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 8
  %262 = load i32, i32* %261, align 8
  %263 = call i32 (i8*, i8*, ...) @AddString(i8* %258, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i64 0, i64 0), i32 %260, i32 %262)
  br label %276

264:                                              ; preds = %29
  %265 = load i8*, i8** %4, align 8
  %266 = call i32 (i8*, i8*, ...) @AddString(i8* %265, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i64 0, i64 0))
  %267 = load i8*, i8** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 7
  %269 = load i32, i32* %268, align 4
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 6
  %271 = load i32, i32* %270, align 8
  %272 = call i32 (i8*, i8*, ...) @AddString(i8* %267, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %269, i32 %271)
  br label %276

273:                                              ; preds = %29
  %274 = load i8*, i8** %4, align 8
  %275 = call i32 (i8*, i8*, ...) @AddString(i8* %274, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0))
  br label %492

276:                                              ; preds = %264, %255, %242, %219, %206, %183, %160, %137, %114, %113, %36
  %277 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = and i32 %278, 12
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %317, label %281

281:                                              ; preds = %276
  %282 = load i8*, i8** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 5
  %284 = load i64, i64* %283, align 8
  %285 = trunc i64 %284 to i32
  %286 = shl i32 %285, 3
  %287 = call i32 (i8*, i8*, ...) @AddString(i8* %282, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0), i32 %286)
  %288 = load i8*, i8** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = and i32 %290, 16128
  %292 = ashr i32 %291, 5
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = and i32 %294, 255
  %296 = call i32 (i8*, i8*, ...) @AddString(i8* %288, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.31, i64 0, i64 0), i32 %292, i32 %295)
  %297 = load i8*, i8** %4, align 8
  %298 = call i32 (i8*, i8*, ...) @AddString(i8* %297, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i64 0, i64 0))
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = ashr i32 %300, 4
  %302 = and i32 %301, 3
  switch i32 %302, label %315 [
    i32 0, label %303
    i32 1, label %306
    i32 2, label %309
    i32 3, label %312
  ]

303:                                              ; preds = %281
  %304 = load i8*, i8** %4, align 8
  %305 = call i32 (i8*, i8*, ...) @AddString(i8* %304, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0))
  br label %316

306:                                              ; preds = %281
  %307 = load i8*, i8** %4, align 8
  %308 = call i32 (i8*, i8*, ...) @AddString(i8* %307, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0))
  br label %316

309:                                              ; preds = %281
  %310 = load i8*, i8** %4, align 8
  %311 = call i32 (i8*, i8*, ...) @AddString(i8* %310, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i64 0, i64 0))
  br label %316

312:                                              ; preds = %281
  %313 = load i8*, i8** %4, align 8
  %314 = call i32 (i8*, i8*, ...) @AddString(i8* %313, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.36, i64 0, i64 0))
  br label %316

315:                                              ; preds = %281
  br label %316

316:                                              ; preds = %315, %312, %309, %306, %303
  br label %317

317:                                              ; preds = %316, %276
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = and i32 %319, 8
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %492, label %322

322:                                              ; preds = %317
  %323 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %324 = load i32, i32* %323, align 8
  %325 = and i32 %324, 32768
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %330

327:                                              ; preds = %322
  %328 = load i8*, i8** %4, align 8
  %329 = call i32 (i8*, i8*, ...) @AddString(i8* %328, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0))
  br label %330

330:                                              ; preds = %327, %322
  %331 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %332 = load i32, i32* %331, align 8
  %333 = and i32 %332, 4096
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %338

335:                                              ; preds = %330
  %336 = load i8*, i8** %4, align 8
  %337 = call i32 (i8*, i8*, ...) @AddString(i8* %336, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.38, i64 0, i64 0))
  br label %338

338:                                              ; preds = %335, %330
  %339 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %340 = load i32, i32* %339, align 8
  %341 = and i32 %340, 2048
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %346, label %343

343:                                              ; preds = %338
  %344 = load i8*, i8** %4, align 8
  %345 = call i32 (i8*, i8*, ...) @AddString(i8* %344, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0))
  br label %346

346:                                              ; preds = %343, %338
  %347 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %348 = load i32, i32* %347, align 8
  %349 = and i32 %348, 1024
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %360

351:                                              ; preds = %346
  %352 = load i8*, i8** %4, align 8
  %353 = call i32 (i8*, i8*, ...) @AddString(i8* %352, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.40, i64 0, i64 0))
  %354 = load i8*, i8** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %356 = load i32, i32* %355, align 8
  %357 = ashr i32 %356, 9
  %358 = and i32 %357, 1
  %359 = call i32 (i8*, i8*, ...) @AddString(i8* %354, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i64 0, i64 0), i32 %358)
  br label %360

360:                                              ; preds = %351, %346
  %361 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %362 = load i32, i32* %361, align 8
  %363 = and i32 %362, 256
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %368

365:                                              ; preds = %360
  %366 = load i8*, i8** %4, align 8
  %367 = call i32 (i8*, i8*, ...) @AddString(i8* %366, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i64 0, i64 0))
  br label %368

368:                                              ; preds = %365, %360
  %369 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %370 = load i32, i32* %369, align 8
  %371 = and i32 %370, 128
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %376, label %373

373:                                              ; preds = %368
  %374 = load i8*, i8** %4, align 8
  %375 = call i32 (i8*, i8*, ...) @AddString(i8* %374, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i64 0, i64 0))
  br label %376

376:                                              ; preds = %373, %368
  %377 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %378 = load i32, i32* %377, align 8
  %379 = and i32 %378, 64
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %384, label %381

381:                                              ; preds = %376
  %382 = load i8*, i8** %4, align 8
  %383 = call i32 (i8*, i8*, ...) @AddString(i8* %382, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.44, i64 0, i64 0))
  br label %384

384:                                              ; preds = %381, %376
  %385 = load i8*, i8** %4, align 8
  %386 = call i32 (i8*, i8*, ...) @AddString(i8* %385, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i64 0, i64 0))
  %387 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %388 = load i32, i32* %387, align 8
  %389 = ashr i32 %388, 3
  %390 = and i32 %389, 7
  switch i32 %390, label %444 [
    i32 0, label %391
    i32 1, label %399
    i32 2, label %407
    i32 3, label %415
    i32 4, label %423
    i32 5, label %431
  ]

391:                                              ; preds = %384
  %392 = load i8*, i8** %4, align 8
  %393 = call i32 (i8*, i8*, ...) @AddString(i8* %392, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i64 0, i64 0))
  %394 = load i8*, i8** %4, align 8
  %395 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %396 = load i32, i32* %395, align 4
  %397 = shl i32 %396, 3
  %398 = call i32 (i8*, i8*, ...) @AddString(i8* %394, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.47, i64 0, i64 0), i32 %397)
  br label %445

399:                                              ; preds = %384
  %400 = load i8*, i8** %4, align 8
  %401 = call i32 (i8*, i8*, ...) @AddString(i8* %400, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.48, i64 0, i64 0))
  %402 = load i8*, i8** %4, align 8
  %403 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %404 = load i32, i32* %403, align 4
  %405 = shl i32 %404, 3
  %406 = call i32 (i8*, i8*, ...) @AddString(i8* %402, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i64 0, i64 0), i32 %405)
  br label %445

407:                                              ; preds = %384
  %408 = load i8*, i8** %4, align 8
  %409 = call i32 (i8*, i8*, ...) @AddString(i8* %408, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.50, i64 0, i64 0))
  %410 = load i8*, i8** %4, align 8
  %411 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %412 = load i32, i32* %411, align 4
  %413 = shl i32 %412, 3
  %414 = call i32 (i8*, i8*, ...) @AddString(i8* %410, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.47, i64 0, i64 0), i32 %413)
  br label %445

415:                                              ; preds = %384
  %416 = load i8*, i8** %4, align 8
  %417 = call i32 (i8*, i8*, ...) @AddString(i8* %416, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.51, i64 0, i64 0))
  %418 = load i8*, i8** %4, align 8
  %419 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %420 = load i32, i32* %419, align 4
  %421 = shl i32 %420, 3
  %422 = call i32 (i8*, i8*, ...) @AddString(i8* %418, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.47, i64 0, i64 0), i32 %421)
  br label %445

423:                                              ; preds = %384
  %424 = load i8*, i8** %4, align 8
  %425 = call i32 (i8*, i8*, ...) @AddString(i8* %424, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.52, i64 0, i64 0))
  %426 = load i8*, i8** %4, align 8
  %427 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %428 = load i32, i32* %427, align 4
  %429 = shl i32 %428, 3
  %430 = call i32 (i8*, i8*, ...) @AddString(i8* %426, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.47, i64 0, i64 0), i32 %429)
  br label %445

431:                                              ; preds = %384
  %432 = load i8*, i8** %4, align 8
  %433 = call i32 (i8*, i8*, ...) @AddString(i8* %432, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i64 0, i64 0))
  %434 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %435 = load i32, i32* %434, align 8
  %436 = and i32 %435, 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %443

438:                                              ; preds = %431
  %439 = load i8*, i8** %4, align 8
  %440 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %441 = load i32, i32* %440, align 4
  %442 = call i32 (i8*, i8*, ...) @AddString(i8* %439, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.54, i64 0, i64 0), i32 %441)
  br label %443

443:                                              ; preds = %438, %431
  br label %445

444:                                              ; preds = %384
  br label %445

445:                                              ; preds = %444, %443, %423, %415, %407, %399, %391
  %446 = load i8*, i8** %4, align 8
  %447 = call i32 (i8*, i8*, ...) @AddString(i8* %446, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.55, i64 0, i64 0))
  %448 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %449 = load i32, i32* %448, align 8
  %450 = and i32 %449, 7
  switch i32 %450, label %490 [
    i32 0, label %451
    i32 1, label %454
    i32 2, label %457
    i32 3, label %460
    i32 4, label %463
    i32 6, label %472
    i32 7, label %481
  ]

451:                                              ; preds = %445
  %452 = load i8*, i8** %4, align 8
  %453 = call i32 (i8*, i8*, ...) @AddString(i8* %452, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i64 0, i64 0))
  br label %491

454:                                              ; preds = %445
  %455 = load i8*, i8** %4, align 8
  %456 = call i32 (i8*, i8*, ...) @AddString(i8* %455, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.57, i64 0, i64 0))
  br label %491

457:                                              ; preds = %445
  %458 = load i8*, i8** %4, align 8
  %459 = call i32 (i8*, i8*, ...) @AddString(i8* %458, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.58, i64 0, i64 0))
  br label %491

460:                                              ; preds = %445
  %461 = load i8*, i8** %4, align 8
  %462 = call i32 (i8*, i8*, ...) @AddString(i8* %461, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.59, i64 0, i64 0))
  br label %491

463:                                              ; preds = %445
  %464 = load i8*, i8** %4, align 8
  %465 = call i32 (i8*, i8*, ...) @AddString(i8* %464, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.60, i64 0, i64 0))
  %466 = load i8*, i8** %4, align 8
  %467 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 4
  %468 = load i64, i64* %467, align 8
  %469 = trunc i64 %468 to i32
  %470 = shl i32 %469, 3
  %471 = call i32 (i8*, i8*, ...) @AddString(i8* %466, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.61, i64 0, i64 0), i32 %470)
  br label %491

472:                                              ; preds = %445
  %473 = load i8*, i8** %4, align 8
  %474 = call i32 (i8*, i8*, ...) @AddString(i8* %473, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0))
  %475 = load i8*, i8** %4, align 8
  %476 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 4
  %477 = load i64, i64* %476, align 8
  %478 = trunc i64 %477 to i32
  %479 = shl i32 %478, 3
  %480 = call i32 (i8*, i8*, ...) @AddString(i8* %475, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.61, i64 0, i64 0), i32 %479)
  br label %491

481:                                              ; preds = %445
  %482 = load i8*, i8** %4, align 8
  %483 = call i32 (i8*, i8*, ...) @AddString(i8* %482, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.63, i64 0, i64 0))
  %484 = load i8*, i8** %4, align 8
  %485 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 4
  %486 = load i64, i64* %485, align 8
  %487 = trunc i64 %486 to i32
  %488 = shl i32 %487, 3
  %489 = call i32 (i8*, i8*, ...) @AddString(i8* %484, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.61, i64 0, i64 0), i32 %488)
  br label %491

490:                                              ; preds = %445
  br label %491

491:                                              ; preds = %490, %481, %472, %463, %460, %457, %454, %451
  br label %492

492:                                              ; preds = %11, %19, %26, %273, %491, %317
  ret void
}

declare dso_local i32 @Vdp1DebugGetCommandNumberAddr(i32) #1

declare dso_local i32 @T1ReadWord(i32, i32) #1

declare dso_local i32 @AddString(i8*, i8*, ...) #1

declare dso_local i32 @Vdp1ReadCommand(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
