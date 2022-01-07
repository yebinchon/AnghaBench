; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vdp2debug.c_Vdp2DebugStatsNBG0.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vdp2debug.c_Vdp2DebugStatsNBG0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@Vdp2Regs = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"RBG1 mode\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Coefficient Table Enabled(Mode %d)\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"NBG0 mode\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Tile(%dH x %dV)\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Plane Size = %dH x %dV\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Pattern Name data size = 2 words\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Pattern Name data size = 1 word\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Character Number Supplement bit = %d\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Special Priority bit = %d\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Special Color Calculation bit = %d\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Supplementary Palette number = %d\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Supplementary Color number = %d\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Read KAst Parameter = TRUE\0D\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"Read KAst Parameter = FALSE\0D\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Read Yst Parameter = TRUE\0D\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"Read Yst Parameter = FALSE\0D\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"Read Xst Parameter = TRUE\0D\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"Read Xst Parameter = FALSE\0D\0A\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"Screen Scroll x = %d, y = %d\0D\0A\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"Coordinate Increments x = %f, y = %f\0D\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"Horizontal Reduction = 1/2\0D\0A\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"Horizontal Reduction = 1/4\0D\0A\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"Line Zoom enabled\0D\0A\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"Line Scroll Vertical enabled\0D\0A\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"Line Scroll Horizontal enabled\0D\0A\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"Line Scroll Enabled\0D\0A\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"Line Scroll Table Address = %08X\0D\0A\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"Line Scroll Interval = Each Line\0D\0A\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"Line Scroll Interval = Every 2 Lines\0D\0A\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"Line Scroll Interval = Every 4 Lines\0D\0A\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"Line Scroll Interval = Every 8 Lines\0D\0A\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"Vertical Cell Scroll enabled\0D\0A\00", align 1
@.str.32 = private unnamed_addr constant [44 x i8] c"Vertical Cell Scroll Table Address = %08X\0D\0A\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"Color Ram Address Offset = %X\0D\0A\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"Priority = %d\0D\0A\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"Special Color Calculation %d\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Vdp2DebugStatsNBG0(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 63
  store i32 %16, i32* %5, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 2
  store i32 %20, i32* %6, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 1
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %2
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %390

37:                                               ; preds = %31, %2
  %38 = load i32*, i32** %4, align 8
  store i32 1, i32* %38, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %37
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 (i8*, i8*, ...) @AddString(i8* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 256
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %44
  %53 = load i8*, i8** %3, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 10
  %58 = and i32 %57, 3
  %59 = call i32 (i8*, i8*, ...) @AddString(i8* %53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %52, %44
  br label %64

61:                                               ; preds = %37
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 (i8*, i8*, ...) @AddString(i8* %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %60
  %65 = load i8*, i8** %3, align 8
  %66 = call i8* @AddMosaicString(i8* %65, i32 1)
  store i8* %66, i8** %3, align 8
  %67 = load i8*, i8** %3, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 112
  %72 = ashr i32 %71, 4
  %73 = call i8* @AddBppString(i8* %67, i32 %72)
  store i8* %73, i8** %3, align 8
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %96

76:                                               ; preds = %64
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %96, label %82

82:                                               ; preds = %76
  %83 = load i8*, i8** %3, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 12
  %88 = ashr i32 %87, 2
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 23
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @AddBitmapInfoString(i8* %83, i32 %88, i32 %91, i32 %94)
  store i8* %95, i8** %3, align 8
  br label %191

96:                                               ; preds = %76, %64
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 1023
  store i32 %100, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 32768
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %96
  store i32 1, i32* %9, align 4
  br label %108

107:                                              ; preds = %96
  store i32 2, i32* %9, align 4
  br label %108

108:                                              ; preds = %107, %106
  %109 = load i8*, i8** %3, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call i32 (i8*, i8*, ...) @AddString(i8* %109, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %110, i32 %111)
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, 3
  %117 = call i32 @Vdp2GetPlaneSize(i32 %116, i32* %11, i32* %12)
  %118 = load i8*, i8** %3, align 8
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %12, align 4
  %121 = call i32 (i8*, i8*, ...) @AddString(i8* %118, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %119, i32 %120)
  %122 = load i32, i32* %9, align 4
  %123 = icmp eq i32 %122, 2
  br i1 %123, label %124, label %127

124:                                              ; preds = %108
  %125 = load i8*, i8** %3, align 8
  %126 = call i32 (i8*, i8*, ...) @AddString(i8* %125, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %154

127:                                              ; preds = %108
  %128 = load i8*, i8** %3, align 8
  %129 = call i32 (i8*, i8*, ...) @AddString(i8* %128, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %130 = load i8*, i8** %3, align 8
  %131 = load i32, i32* %10, align 4
  %132 = ashr i32 %131, 14
  %133 = and i32 %132, 1
  %134 = call i32 (i8*, i8*, ...) @AddString(i8* %130, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %133)
  %135 = load i8*, i8** %3, align 8
  %136 = load i32, i32* %10, align 4
  %137 = ashr i32 %136, 9
  %138 = and i32 %137, 1
  %139 = call i32 (i8*, i8*, ...) @AddString(i8* %135, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %138)
  %140 = load i8*, i8** %3, align 8
  %141 = load i32, i32* %10, align 4
  %142 = ashr i32 %141, 8
  %143 = and i32 %142, 1
  %144 = call i32 (i8*, i8*, ...) @AddString(i8* %140, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %143)
  %145 = load i8*, i8** %3, align 8
  %146 = load i32, i32* %10, align 4
  %147 = ashr i32 %146, 5
  %148 = and i32 %147, 7
  %149 = call i32 (i8*, i8*, ...) @AddString(i8* %145, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %148)
  %150 = load i8*, i8** %3, align 8
  %151 = load i32, i32* %10, align 4
  %152 = and i32 %151, 31
  %153 = call i32 (i8*, i8*, ...) @AddString(i8* %150, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %127, %124
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, 255
  %159 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %158, i32* %159, align 16
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 7
  %162 = load i32, i32* %161, align 4
  %163 = ashr i32 %162, 8
  %164 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %163, i32* %164, align 4
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 8
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %167, 255
  %169 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 %168, i32* %169, align 8
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 8
  %172 = load i32, i32* %171, align 4
  %173 = ashr i32 %172, 8
  %174 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 %173, i32* %174, align 4
  %175 = load i8*, i8** %3, align 8
  %176 = load i32, i32* %7, align 4
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 4
  %183 = and i32 %182, 3
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 4
  %187 = and i32 %186, 7
  %188 = shl i32 %187, 6
  %189 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %190 = call i8* @AddMapInfo(i8* %175, i32 %176, i32 %179, i32 %183, i32 %188, i32 4, i32* %189)
  store i8* %190, i8** %3, align 8
  br label %191

191:                                              ; preds = %154, %82
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = and i32 %194, 32
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %234

197:                                              ; preds = %191
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 9
  %200 = load i32, i32* %199, align 4
  %201 = and i32 %200, 1024
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %197
  %204 = load i8*, i8** %3, align 8
  %205 = call i32 (i8*, i8*, ...) @AddString(i8* %204, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  br label %209

206:                                              ; preds = %197
  %207 = load i8*, i8** %3, align 8
  %208 = call i32 (i8*, i8*, ...) @AddString(i8* %207, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  br label %209

209:                                              ; preds = %206, %203
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 9
  %212 = load i32, i32* %211, align 4
  %213 = and i32 %212, 512
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %209
  %216 = load i8*, i8** %3, align 8
  %217 = call i32 (i8*, i8*, ...) @AddString(i8* %216, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  br label %221

218:                                              ; preds = %209
  %219 = load i8*, i8** %3, align 8
  %220 = call i32 (i8*, i8*, ...) @AddString(i8* %219, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0))
  br label %221

221:                                              ; preds = %218, %215
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 9
  %224 = load i32, i32* %223, align 4
  %225 = and i32 %224, 256
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %221
  %228 = load i8*, i8** %3, align 8
  %229 = call i32 (i8*, i8*, ...) @AddString(i8* %228, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  br label %233

230:                                              ; preds = %221
  %231 = load i8*, i8** %3, align 8
  %232 = call i32 (i8*, i8*, ...) @AddString(i8* %231, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0))
  br label %233

233:                                              ; preds = %230, %227
  br label %347

234:                                              ; preds = %191
  %235 = load i8*, i8** %3, align 8
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 10
  %238 = load i32, i32* %237, align 4
  %239 = and i32 %238, 2047
  %240 = srem i32 %239, 512
  %241 = sub nsw i32 0, %240
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 11
  %244 = load i32, i32* %243, align 4
  %245 = and i32 %244, 2047
  %246 = srem i32 %245, 512
  %247 = sub nsw i32 0, %246
  %248 = call i32 (i8*, i8*, ...) @AddString(i8* %235, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i32 %241, i32 %247)
  %249 = load i8*, i8** %3, align 8
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 22
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = and i32 %253, 524032
  %255 = sitofp i32 %254 to float
  %256 = fdiv float 6.553600e+04, %255
  %257 = fpext float %256 to double
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 21
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = and i32 %261, 524032
  %263 = sitofp i32 %262 to float
  %264 = fdiv float 6.553600e+04, %263
  %265 = fpext float %264 to double
  %266 = call i32 (i8*, i8*, ...) @AddString(i8* %249, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19, i64 0, i64 0), double %257, double %265)
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 12
  %269 = load i32, i32* %268, align 4
  %270 = and i32 %269, 3
  switch i32 %270, label %277 [
    i32 1, label %271
    i32 2, label %274
    i32 3, label %274
  ]

271:                                              ; preds = %234
  %272 = load i8*, i8** %3, align 8
  %273 = call i32 (i8*, i8*, ...) @AddString(i8* %272, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0))
  br label %278

274:                                              ; preds = %234, %234
  %275 = load i8*, i8** %3, align 8
  %276 = call i32 (i8*, i8*, ...) @AddString(i8* %275, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0))
  br label %278

277:                                              ; preds = %234
  br label %278

278:                                              ; preds = %277, %274, %271
  %279 = load i32, i32* %5, align 4
  %280 = and i32 %279, 8
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %278
  %283 = load i8*, i8** %3, align 8
  %284 = call i32 (i8*, i8*, ...) @AddString(i8* %283, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0))
  br label %285

285:                                              ; preds = %282, %278
  %286 = load i32, i32* %5, align 4
  %287 = and i32 %286, 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %285
  %290 = load i8*, i8** %3, align 8
  %291 = call i32 (i8*, i8*, ...) @AddString(i8* %290, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i64 0, i64 0))
  br label %292

292:                                              ; preds = %289, %285
  %293 = load i32, i32* %5, align 4
  %294 = and i32 %293, 2
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %292
  %297 = load i8*, i8** %3, align 8
  %298 = call i32 (i8*, i8*, ...) @AddString(i8* %297, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0))
  br label %299

299:                                              ; preds = %296, %292
  %300 = load i32, i32* %5, align 4
  %301 = and i32 %300, 6
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %330

303:                                              ; preds = %299
  %304 = load i8*, i8** %3, align 8
  %305 = call i32 (i8*, i8*, ...) @AddString(i8* %304, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0))
  %306 = load i8*, i8** %3, align 8
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 20
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = and i32 %310, 524286
  %312 = shl i32 %311, 1
  %313 = add nsw i32 98566144, %312
  %314 = call i32 (i8*, i8*, ...) @AddString(i8* %306, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0), i32 %313)
  %315 = load i32, i32* %5, align 4
  %316 = ashr i32 %315, 4
  switch i32 %316, label %329 [
    i32 0, label %317
    i32 1, label %320
    i32 2, label %323
    i32 3, label %326
  ]

317:                                              ; preds = %303
  %318 = load i8*, i8** %3, align 8
  %319 = call i32 (i8*, i8*, ...) @AddString(i8* %318, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i64 0, i64 0))
  br label %329

320:                                              ; preds = %303
  %321 = load i8*, i8** %3, align 8
  %322 = call i32 (i8*, i8*, ...) @AddString(i8* %321, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i64 0, i64 0))
  br label %329

323:                                              ; preds = %303
  %324 = load i8*, i8** %3, align 8
  %325 = call i32 (i8*, i8*, ...) @AddString(i8* %324, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i64 0, i64 0))
  br label %329

326:                                              ; preds = %303
  %327 = load i8*, i8** %3, align 8
  %328 = call i32 (i8*, i8*, ...) @AddString(i8* %327, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0))
  br label %329

329:                                              ; preds = %303, %326, %323, %320, %317
  br label %330

330:                                              ; preds = %329, %299
  %331 = load i32, i32* %5, align 4
  %332 = and i32 %331, 1
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %346

334:                                              ; preds = %330
  %335 = load i8*, i8** %3, align 8
  %336 = call i32 (i8*, i8*, ...) @AddString(i8* %335, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i64 0, i64 0))
  %337 = load i8*, i8** %3, align 8
  %338 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %339 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %338, i32 0, i32 19
  %340 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = and i32 %341, 524286
  %343 = shl i32 %342, 1
  %344 = add nsw i32 98566144, %343
  %345 = call i32 (i8*, i8*, ...) @AddString(i8* %337, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.32, i64 0, i64 0), i32 %344)
  br label %346

346:                                              ; preds = %334, %330
  br label %347

347:                                              ; preds = %346, %233
  %348 = load i8*, i8** %3, align 8
  %349 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %350 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %349, i32 0, i32 18
  %351 = load i32, i32* %350, align 4
  %352 = call i8* @AddWindowInfoString(i8* %348, i32 %351, i32 0)
  store i8* %352, i8** %3, align 8
  %353 = load i8*, i8** %3, align 8
  %354 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %355 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %354, i32 0, i32 13
  %356 = load i32, i32* %355, align 4
  %357 = and i32 %356, 7
  %358 = shl i32 %357, 8
  %359 = call i32 (i8*, i8*, ...) @AddString(i8* %353, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i64 0, i64 0), i32 %358)
  %360 = load i8*, i8** %3, align 8
  %361 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %362 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %361, i32 0, i32 17
  %363 = load i32, i32* %362, align 4
  %364 = call i8* @AddSpecialPriorityInfo(i8* %360, i32 %363)
  store i8* %364, i8** %3, align 8
  %365 = load i8*, i8** %3, align 8
  %366 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %367 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %366, i32 0, i32 14
  %368 = load i32, i32* %367, align 4
  %369 = and i32 %368, 7
  %370 = call i32 (i8*, i8*, ...) @AddString(i8* %365, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0), i32 %369)
  %371 = load i8*, i8** %3, align 8
  %372 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %373 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %372, i32 0, i32 15
  %374 = load i32, i32* %373, align 4
  %375 = and i32 %374, 31
  %376 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %377 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %376, i32 0, i32 16
  %378 = load i32, i32* %377, align 4
  %379 = and i32 %378, 3
  %380 = call i8* @AddColorCalcInfo(i8* %371, i32 1, i32 2, i32 %375, i32 %379)
  store i8* %380, i8** %3, align 8
  %381 = load i8*, i8** %3, align 8
  %382 = call i8* @AddColorOffsetInfo(i8* %381, i32 1)
  store i8* %382, i8** %3, align 8
  %383 = load i8*, i8** %3, align 8
  %384 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2Regs, align 8
  %385 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %384, i32 0, i32 16
  %386 = load i32, i32* %385, align 4
  %387 = ashr i32 %386, 0
  %388 = and i32 %387, 3
  %389 = call i32 (i8*, i8*, ...) @AddString(i8* %383, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0), i32 %388)
  br label %392

390:                                              ; preds = %31
  %391 = load i32*, i32** %4, align 8
  store i32 0, i32* %391, align 4
  br label %392

392:                                              ; preds = %390, %347
  ret void
}

declare dso_local i32 @AddString(i8*, i8*, ...) #1

declare dso_local i8* @AddMosaicString(i8*, i32) #1

declare dso_local i8* @AddBppString(i8*, i32) #1

declare dso_local i8* @AddBitmapInfoString(i8*, i32, i32, i32) #1

declare dso_local i32 @Vdp2GetPlaneSize(i32, i32*, i32*) #1

declare dso_local i8* @AddMapInfo(i8*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i8* @AddWindowInfoString(i8*, i32, i32) #1

declare dso_local i8* @AddSpecialPriorityInfo(i8*, i32) #1

declare dso_local i8* @AddColorCalcInfo(i8*, i32, i32, i32, i32) #1

declare dso_local i8* @AddColorOffsetInfo(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
