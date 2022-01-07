; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vdp2debug.c_Vdp2DebugStatsGeneral.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vdp2debug.c_Vdp2DebugStatsGeneral.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@Vdp2Regs = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"Border Color Mode = %s\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Back screen\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Black\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Display Resolution = \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"320\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"352\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"640\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"704\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Invalid\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" x \00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"224\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"240\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"256\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"(PAL)\0D\0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"(NTSC)\0D\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"Interlace Mode = \00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"Non-Interlace\0D\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"Single-Density Interlace\0D\0A\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"Double-Density Interlace\0D\0A\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"Invalid\0D\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"Latches HV counter when %s\0D\0A\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"external signal triggers it\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"external latch flag is read\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"External Sync is being inputed\0D\0A\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"HV is latched\0D\0A\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"During H-Blank\0D\0A\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"During V-Blank\0D\0A\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"During %s Field\0D\0A\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"Odd\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"Even\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"H Counter = %d\0D\0A\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"V Counter = %d\0D\0A\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"Line Color Screen Stuff\0D\0A\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"-----------------------\0D\0A\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"Mode = %s\0D\0A\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"Color per line\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"Single color\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"Address = %08lX\0D\0A\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"Back Screen Stuff\0D\0A\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"-----------------\0D\0A\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"Address = %08X\0D\0A\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"Sprite Stuff\0D\0A\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"------------\0D\0A\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"Sprite Type = %X\0D\0A\00", align 1
@.str.45 = private unnamed_addr constant [36 x i8] c"VDP1 Framebuffer Data Format = %s\0D\0A\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"RGB and palette\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"Palette only\00", align 1
@.str.48 = private unnamed_addr constant [29 x i8] c"Transparent Shadow Enabled\0D\0A\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"Sprite Window Enabled\0D\0A\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"Color RAM Offset = %X\0D\0A\00", align 1
@.str.51 = private unnamed_addr constant [28 x i8] c"Color Calculation Enabled\0D\0A\00", align 1
@.str.52 = private unnamed_addr constant [32 x i8] c"Gradation Calculation Enabled\0D\0A\00", align 1
@.str.53 = private unnamed_addr constant [37 x i8] c"Extended Color Calculation Enabled\0D\0A\00", align 1
@.str.54 = private unnamed_addr constant [31 x i8] c"Color Calculation Condition = \00", align 1
@.str.55 = private unnamed_addr constant [32 x i8] c"Priority <= CC Condition Number\00", align 1
@.str.56 = private unnamed_addr constant [32 x i8] c"Priority == CC Condition Number\00", align 1
@.str.57 = private unnamed_addr constant [32 x i8] c"Priority >= CC Condition Number\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"Color Data MSB\00", align 1
@.str.59 = private unnamed_addr constant [42 x i8] c"Color Calculation Condition Number = %d\0D\0A\00", align 1
@.str.60 = private unnamed_addr constant [37 x i8] c"Color Calculation Ratio %d = %d:%d\0D\0A\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"Priority %d = %d\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Vdp2DebugStatsGeneral(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 14
  store i32* %11, i32** %5, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 13
  store i32* %13, i32** %6, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 32768
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %398

19:                                               ; preds = %2
  %20 = load i8*, i8** %3, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 256
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %28 = call i32 (i8*, i8*, ...) @AddString(i8* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 (i8*, i8*, ...) @AddString(i8* %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 7
  switch i32 %34, label %47 [
    i32 0, label %35
    i32 4, label %35
    i32 1, label %38
    i32 5, label %38
    i32 2, label %41
    i32 6, label %41
    i32 3, label %44
    i32 7, label %44
  ]

35:                                               ; preds = %19, %19
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 (i8*, i8*, ...) @AddString(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %50

38:                                               ; preds = %19, %19
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 (i8*, i8*, ...) @AddString(i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %50

41:                                               ; preds = %19, %19
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 (i8*, i8*, ...) @AddString(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %50

44:                                               ; preds = %19, %19
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 (i8*, i8*, ...) @AddString(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %50

47:                                               ; preds = %19
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 (i8*, i8*, ...) @AddString(i8* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %44, %41, %38, %35
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 (i8*, i8*, ...) @AddString(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 4
  %57 = and i32 %56, 3
  switch i32 %57, label %67 [
    i32 0, label %58
    i32 1, label %61
    i32 2, label %64
  ]

58:                                               ; preds = %50
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 (i8*, i8*, ...) @AddString(i8* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  br label %70

61:                                               ; preds = %50
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 (i8*, i8*, ...) @AddString(i8* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  br label %70

64:                                               ; preds = %50
  %65 = load i8*, i8** %3, align 8
  %66 = call i32 (i8*, i8*, ...) @AddString(i8* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  br label %70

67:                                               ; preds = %50
  %68 = load i8*, i8** %3, align 8
  %69 = call i32 (i8*, i8*, ...) @AddString(i8* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %64, %61, %58
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 1
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i8*, i8** %3, align 8
  %78 = call i32 (i8*, i8*, ...) @AddString(i8* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  br label %82

79:                                               ; preds = %70
  %80 = load i8*, i8** %3, align 8
  %81 = call i32 (i8*, i8*, ...) @AddString(i8* %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i8*, i8** %3, align 8
  %84 = call i32 (i8*, i8*, ...) @AddString(i8* %83, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = ashr i32 %87, 6
  %89 = and i32 %88, 3
  switch i32 %89, label %99 [
    i32 0, label %90
    i32 2, label %93
    i32 3, label %96
  ]

90:                                               ; preds = %82
  %91 = load i8*, i8** %3, align 8
  %92 = call i32 (i8*, i8*, ...) @AddString(i8* %91, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  br label %102

93:                                               ; preds = %82
  %94 = load i8*, i8** %3, align 8
  %95 = call i32 (i8*, i8*, ...) @AddString(i8* %94, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0))
  br label %102

96:                                               ; preds = %82
  %97 = load i8*, i8** %3, align 8
  %98 = call i32 (i8*, i8*, ...) @AddString(i8* %97, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0))
  br label %102

99:                                               ; preds = %82
  %100 = load i8*, i8** %3, align 8
  %101 = call i32 (i8*, i8*, ...) @AddString(i8* %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %96, %93, %90
  %103 = load i8*, i8** %3, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 512
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0)
  %111 = call i32 (i8*, i8*, ...) @AddString(i8* %103, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i8* %110)
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 256
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %102
  %118 = load i8*, i8** %3, align 8
  %119 = call i32 (i8*, i8*, ...) @AddString(i8* %118, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i64 0, i64 0))
  br label %120

120:                                              ; preds = %117, %102
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, 512
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = load i8*, i8** %3, align 8
  %128 = call i32 (i8*, i8*, ...) @AddString(i8* %127, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0))
  br label %129

129:                                              ; preds = %126, %120
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %129
  %136 = load i8*, i8** %3, align 8
  %137 = call i32 (i8*, i8*, ...) @AddString(i8* %136, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0))
  br label %138

138:                                              ; preds = %135, %129
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = load i8*, i8** %3, align 8
  %146 = call i32 (i8*, i8*, ...) @AddString(i8* %145, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0))
  br label %147

147:                                              ; preds = %144, %138
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = ashr i32 %150, 6
  %152 = and i32 %151, 2
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %147
  %155 = load i8*, i8** %3, align 8
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, 2
  %160 = icmp ne i32 %159, 0
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0)
  %163 = call i32 (i8*, i8*, ...) @AddString(i8* %155, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0), i8* %162)
  br label %164

164:                                              ; preds = %154, %147
  %165 = load i8*, i8** %3, align 8
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 12
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (i8*, i8*, ...) @AddString(i8* %165, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i64 0, i64 0), i32 %168)
  %170 = load i8*, i8** %3, align 8
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 11
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (i8*, i8*, ...) @AddString(i8* %170, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0), i32 %173)
  %175 = load i8*, i8** %3, align 8
  %176 = call i32 (i8*, i8*, ...) @AddString(i8* %175, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0))
  %177 = load i8*, i8** %3, align 8
  %178 = call i32 (i8*, i8*, ...) @AddString(i8* %177, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i64 0, i64 0))
  %179 = load i8*, i8** %3, align 8
  %180 = call i32 (i8*, i8*, ...) @AddString(i8* %179, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.34, i64 0, i64 0))
  %181 = load i8*, i8** %3, align 8
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 10
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = and i32 %186, 32768
  %188 = icmp ne i32 %187, 0
  %189 = zext i1 %188 to i64
  %190 = select i1 %188, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0)
  %191 = call i32 (i8*, i8*, ...) @AddString(i8* %181, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i8* %190)
  %192 = load i8*, i8** %3, align 8
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 10
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = and i64 %197, 524287
  %199 = mul i64 %198, 2
  %200 = or i64 98566144, %199
  %201 = call i32 (i8*, i8*, ...) @AddString(i8* %192, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i64 0, i64 0), i64 %200)
  %202 = load i8*, i8** %3, align 8
  %203 = call i32 (i8*, i8*, ...) @AddString(i8* %202, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0))
  %204 = load i8*, i8** %3, align 8
  %205 = call i32 (i8*, i8*, ...) @AddString(i8* %204, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i64 0, i64 0))
  %206 = load i8*, i8** %3, align 8
  %207 = call i32 (i8*, i8*, ...) @AddString(i8* %206, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i64 0, i64 0))
  %208 = load i8*, i8** %3, align 8
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = and i32 %211, 32768
  %213 = icmp ne i32 %212, 0
  %214 = zext i1 %213 to i64
  %215 = select i1 %213, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0)
  %216 = call i32 (i8*, i8*, ...) @AddString(i8* %208, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i8* %215)
  %217 = load i8*, i8** %3, align 8
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = and i32 %220, 7
  %222 = shl i32 %221, 16
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 4
  %226 = or i32 %222, %225
  %227 = mul nsw i32 %226, 2
  %228 = or i32 98566144, %227
  %229 = call i32 (i8*, i8*, ...) @AddString(i8* %217, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i64 0, i64 0), i32 %228)
  %230 = load i8*, i8** %3, align 8
  %231 = call i8* @AddColorOffsetInfo(i8* %230, i32 32)
  store i8* %231, i8** %3, align 8
  %232 = load i8*, i8** %3, align 8
  %233 = call i32 (i8*, i8*, ...) @AddString(i8* %232, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0))
  %234 = load i8*, i8** %3, align 8
  %235 = call i32 (i8*, i8*, ...) @AddString(i8* %234, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i64 0, i64 0))
  %236 = load i8*, i8** %3, align 8
  %237 = call i32 (i8*, i8*, ...) @AddString(i8* %236, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i64 0, i64 0))
  %238 = load i8*, i8** %3, align 8
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 4
  %242 = and i32 %241, 15
  %243 = call i32 (i8*, i8*, ...) @AddString(i8* %238, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i64 0, i64 0), i32 %242)
  %244 = load i8*, i8** %3, align 8
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 5
  %247 = load i32, i32* %246, align 4
  %248 = and i32 %247, 32
  %249 = icmp ne i32 %248, 0
  %250 = zext i1 %249 to i64
  %251 = select i1 %249, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i64 0, i64 0)
  %252 = call i32 (i8*, i8*, ...) @AddString(i8* %244, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.45, i64 0, i64 0), i8* %251)
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 6
  %255 = load i32, i32* %254, align 4
  %256 = and i32 %255, 256
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %164
  %259 = load i8*, i8** %3, align 8
  %260 = call i32 (i8*, i8*, ...) @AddString(i8* %259, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.48, i64 0, i64 0))
  br label %261

261:                                              ; preds = %258, %164
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 5
  %264 = load i32, i32* %263, align 4
  %265 = and i32 %264, 32
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %261
  %268 = load i8*, i8** %3, align 8
  %269 = call i32 (i8*, i8*, ...) @AddString(i8* %268, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.49, i64 0, i64 0))
  br label %270

270:                                              ; preds = %267, %261
  %271 = load i8*, i8** %3, align 8
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 7
  %274 = load i32, i32* %273, align 4
  %275 = ashr i32 %274, 8
  %276 = call i8* @AddWindowInfoString(i8* %271, i32 %275, i32 1)
  store i8* %276, i8** %3, align 8
  %277 = load i8*, i8** %3, align 8
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 8
  %280 = load i32, i32* %279, align 4
  %281 = ashr i32 %280, 4
  %282 = and i32 %281, 7
  %283 = call i32 (i8*, i8*, ...) @AddString(i8* %277, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.50, i64 0, i64 0), i32 %282)
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 9
  %286 = load i32, i32* %285, align 4
  %287 = and i32 %286, 64
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %376

289:                                              ; preds = %270
  %290 = load i8*, i8** %3, align 8
  %291 = call i32 (i8*, i8*, ...) @AddString(i8* %290, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.51, i64 0, i64 0))
  %292 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 9
  %294 = load i32, i32* %293, align 4
  %295 = and i32 %294, 32768
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %306

297:                                              ; preds = %289
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 9
  %300 = load i32, i32* %299, align 4
  %301 = and i32 %300, 1792
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %306

303:                                              ; preds = %297
  %304 = load i8*, i8** %3, align 8
  %305 = call i32 (i8*, i8*, ...) @AddString(i8* %304, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.52, i64 0, i64 0))
  br label %316

306:                                              ; preds = %297, %289
  %307 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i32 0, i32 9
  %309 = load i32, i32* %308, align 4
  %310 = and i32 %309, 1024
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %315

312:                                              ; preds = %306
  %313 = load i8*, i8** %3, align 8
  %314 = call i32 (i8*, i8*, ...) @AddString(i8* %313, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.53, i64 0, i64 0))
  br label %315

315:                                              ; preds = %312, %306
  br label %316

316:                                              ; preds = %315, %303
  %317 = load i8*, i8** %3, align 8
  %318 = call i32 (i8*, i8*, ...) @AddString(i8* %317, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.54, i64 0, i64 0))
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 5
  %321 = load i32, i32* %320, align 4
  %322 = ashr i32 %321, 12
  %323 = and i32 %322, 3
  switch i32 %323, label %336 [
    i32 0, label %324
    i32 1, label %327
    i32 2, label %330
    i32 3, label %333
  ]

324:                                              ; preds = %316
  %325 = load i8*, i8** %3, align 8
  %326 = call i32 (i8*, i8*, ...) @AddString(i8* %325, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.55, i64 0, i64 0))
  br label %337

327:                                              ; preds = %316
  %328 = load i8*, i8** %3, align 8
  %329 = call i32 (i8*, i8*, ...) @AddString(i8* %328, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.56, i64 0, i64 0))
  br label %337

330:                                              ; preds = %316
  %331 = load i8*, i8** %3, align 8
  %332 = call i32 (i8*, i8*, ...) @AddString(i8* %331, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.57, i64 0, i64 0))
  br label %337

333:                                              ; preds = %316
  %334 = load i8*, i8** %3, align 8
  %335 = call i32 (i8*, i8*, ...) @AddString(i8* %334, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i64 0, i64 0))
  br label %337

336:                                              ; preds = %316
  br label %337

337:                                              ; preds = %336, %333, %330, %327, %324
  %338 = load i8*, i8** %3, align 8
  %339 = call i32 (i8*, i8*, ...) @AddString(i8* %338, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0))
  %340 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 5
  %342 = load i32, i32* %341, align 4
  %343 = ashr i32 %342, 12
  %344 = and i32 %343, 3
  %345 = icmp ne i32 %344, 3
  br i1 %345, label %346, label %354

346:                                              ; preds = %337
  %347 = load i8*, i8** %3, align 8
  %348 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %349 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %348, i32 0, i32 5
  %350 = load i32, i32* %349, align 4
  %351 = ashr i32 %350, 8
  %352 = and i32 %351, 7
  %353 = call i32 (i8*, i8*, ...) @AddString(i8* %347, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.59, i64 0, i64 0), i32 %352)
  br label %354

354:                                              ; preds = %346, %337
  store i32 0, i32* %7, align 4
  br label %355

355:                                              ; preds = %372, %354
  %356 = load i32, i32* %7, align 4
  %357 = icmp slt i32 %356, 8
  br i1 %357, label %358, label %375

358:                                              ; preds = %355
  %359 = load i32*, i32** %6, align 8
  %360 = load i32, i32* %7, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %359, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = and i32 %363, 7
  store i32 %364, i32* %8, align 4
  %365 = load i8*, i8** %3, align 8
  %366 = load i32, i32* %7, align 4
  %367 = load i32, i32* %8, align 4
  %368 = sub nsw i32 31, %367
  %369 = load i32, i32* %8, align 4
  %370 = add nsw i32 1, %369
  %371 = call i32 (i8*, i8*, ...) @AddString(i8* %365, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.60, i64 0, i64 0), i32 %366, i32 %368, i32 %370)
  br label %372

372:                                              ; preds = %358
  %373 = load i32, i32* %7, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %7, align 4
  br label %355

375:                                              ; preds = %355
  br label %376

376:                                              ; preds = %375, %270
  store i32 0, i32* %7, align 4
  br label %377

377:                                              ; preds = %391, %376
  %378 = load i32, i32* %7, align 4
  %379 = icmp slt i32 %378, 8
  br i1 %379, label %380, label %394

380:                                              ; preds = %377
  %381 = load i32*, i32** %5, align 8
  %382 = load i32, i32* %7, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  %385 = load i32, i32* %384, align 4
  %386 = and i32 %385, 7
  store i32 %386, i32* %9, align 4
  %387 = load i8*, i8** %3, align 8
  %388 = load i32, i32* %7, align 4
  %389 = load i32, i32* %9, align 4
  %390 = call i32 (i8*, i8*, ...) @AddString(i8* %387, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.61, i64 0, i64 0), i32 %388, i32 %389)
  br label %391

391:                                              ; preds = %380
  %392 = load i32, i32* %7, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %7, align 4
  br label %377

394:                                              ; preds = %377
  %395 = load i8*, i8** %3, align 8
  %396 = call i8* @AddColorOffsetInfo(i8* %395, i32 64)
  store i8* %396, i8** %3, align 8
  %397 = load i32*, i32** %4, align 8
  store i32 1, i32* %397, align 4
  br label %400

398:                                              ; preds = %2
  %399 = load i32*, i32** %4, align 8
  store i32 0, i32* %399, align 4
  br label %400

400:                                              ; preds = %398, %394
  ret void
}

declare dso_local i32 @AddString(i8*, i8*, ...) #1

declare dso_local i8* @AddColorOffsetInfo(i8*, i32) #1

declare dso_local i8* @AddWindowInfoString(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
