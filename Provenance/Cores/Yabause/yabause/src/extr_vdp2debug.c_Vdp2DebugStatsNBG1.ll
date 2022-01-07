; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vdp2debug.c_Vdp2DebugStatsNBG1.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vdp2debug.c_Vdp2DebugStatsNBG1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@Vdp2Regs = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"Tile(%dH x %dV)\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Plane Size = %dH x %dV\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Pattern Name data size = 2 words\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Pattern Name data size = 1 word\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Character Number Supplement bit = %d\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Special Priority bit = %d\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Special Color Calculation bit = %d\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Supplementary Palette number = %d\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Supplementary Color number = %d\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Screen Scroll x = %d, y = %d\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"Coordinate Increments x = %f, y = %f\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Horizontal Reduction = 1/2\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Horizontal Reduction = 1/4\0D\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"Line Zoom X enabled\0D\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"Line Scroll Vertical enabled\0D\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"Line Scroll Horizontal enabled\0D\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Line Scroll Enabled\0D\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"Line Scroll Table Address = %08X\0D\0A\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"Line Scroll Interval = Each Line\0D\0A\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"Line Scroll Interval = Every 2 Lines\0D\0A\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"Line Scroll Interval = Every 4 Lines\0D\0A\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"Line Scroll Interval = Every 8 Lines\0D\0A\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"Vertical Cell Scroll enabled\0D\0A\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"Vertical Cell Scroll Table Address = %08X\0D\0A\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"Color Ram Address Offset = %X\0D\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"Priority = %d\0D\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Special Color Calculation %d\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Vdp2DebugStatsNBG1(i8* %0, i32* %1) #0 {
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
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = ashr i32 %15, 8
  %17 = and i32 %16, 63
  store i32 %17, i32* %5, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 512
  store i32 %21, i32* %6, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 256
  %26 = ashr i32 %25, 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 2
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %320

33:                                               ; preds = %2
  %34 = load i32*, i32** %4, align 8
  store i32 1, i32* %34, align 4
  %35 = load i8*, i8** %3, align 8
  %36 = call i8* @AddMosaicString(i8* %35, i32 2)
  store i8* %36, i8** %3, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 12288
  %42 = ashr i32 %41, 12
  %43 = call i8* @AddBppString(i8* %37, i32 %42)
  store i8* %43, i8** %3, align 8
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %33
  %47 = load i8*, i8** %3, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 3072
  %52 = ashr i32 %51, 10
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %59, 4
  %61 = call i8* @AddBitmapInfoString(i8* %47, i32 %52, i32 %56, i32 %60)
  store i8* %61, i8** %3, align 8
  br label %159

62:                                               ; preds = %33
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 1023
  store i32 %66, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 32768
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  store i32 1, i32* %9, align 4
  br label %74

73:                                               ; preds = %62
  store i32 2, i32* %9, align 4
  br label %74

74:                                               ; preds = %73, %72
  %75 = load i8*, i8** %3, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 (i8*, i8*, ...) @AddString(i8* %75, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 12
  %83 = ashr i32 %82, 2
  %84 = call i32 @Vdp2GetPlaneSize(i32 %83, i32* %11, i32* %12)
  %85 = load i8*, i8** %3, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 (i8*, i8*, ...) @AddString(i8* %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %87)
  %89 = load i32, i32* %9, align 4
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %91, label %94

91:                                               ; preds = %74
  %92 = load i8*, i8** %3, align 8
  %93 = call i32 (i8*, i8*, ...) @AddString(i8* %92, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %121

94:                                               ; preds = %74
  %95 = load i8*, i8** %3, align 8
  %96 = call i32 (i8*, i8*, ...) @AddString(i8* %95, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %97 = load i8*, i8** %3, align 8
  %98 = load i32, i32* %10, align 4
  %99 = ashr i32 %98, 14
  %100 = and i32 %99, 1
  %101 = call i32 (i8*, i8*, ...) @AddString(i8* %97, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  %102 = load i8*, i8** %3, align 8
  %103 = load i32, i32* %10, align 4
  %104 = ashr i32 %103, 9
  %105 = and i32 %104, 1
  %106 = call i32 (i8*, i8*, ...) @AddString(i8* %102, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %105)
  %107 = load i8*, i8** %3, align 8
  %108 = load i32, i32* %10, align 4
  %109 = ashr i32 %108, 8
  %110 = and i32 %109, 1
  %111 = call i32 (i8*, i8*, ...) @AddString(i8* %107, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %110)
  %112 = load i8*, i8** %3, align 8
  %113 = load i32, i32* %10, align 4
  %114 = ashr i32 %113, 5
  %115 = and i32 %114, 7
  %116 = call i32 (i8*, i8*, ...) @AddString(i8* %112, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %115)
  %117 = load i8*, i8** %3, align 8
  %118 = load i32, i32* %10, align 4
  %119 = and i32 %118, 31
  %120 = call i32 (i8*, i8*, ...) @AddString(i8* %117, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %94, %91
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 255
  %126 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %125, i32* %126, align 16
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 4
  %130 = ashr i32 %129, 8
  %131 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %130, i32* %131, align 4
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 8
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, 255
  %136 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 %135, i32* %136, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 8
  %139 = load i32, i32* %138, align 4
  %140 = ashr i32 %139, 8
  %141 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 %140, i32* %141, align 4
  %142 = load i8*, i8** %3, align 8
  %143 = load i32, i32* %7, align 4
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, 12
  %151 = ashr i32 %150, 2
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, 112
  %156 = shl i32 %155, 2
  %157 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %158 = call i8* @AddMapInfo(i8* %142, i32 %143, i32 %146, i32 %151, i32 %156, i32 4, i32* %157)
  store i8* %158, i8** %3, align 8
  br label %159

159:                                              ; preds = %121, %46
  %160 = load i8*, i8** %3, align 8
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 9
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %163, 2047
  %165 = srem i32 %164, 512
  %166 = sub nsw i32 0, %165
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 10
  %169 = load i32, i32* %168, align 4
  %170 = and i32 %169, 2047
  %171 = srem i32 %170, 512
  %172 = sub nsw i32 0, %171
  %173 = call i32 (i8*, i8*, ...) @AddString(i8* %160, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %166, i32 %172)
  %174 = load i8*, i8** %3, align 8
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 20
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = and i32 %178, 524032
  %180 = sitofp i32 %179 to float
  %181 = fdiv float 6.553600e+04, %180
  %182 = fpext float %181 to double
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 20
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = and i32 %186, 524032
  %188 = sitofp i32 %187 to float
  %189 = fdiv float 6.553600e+04, %188
  %190 = fpext float %189 to double
  %191 = call i32 (i8*, i8*, ...) @AddString(i8* %174, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), double %182, double %190)
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 11
  %194 = load i32, i32* %193, align 4
  %195 = ashr i32 %194, 8
  %196 = and i32 %195, 3
  switch i32 %196, label %203 [
    i32 1, label %197
    i32 2, label %200
    i32 3, label %200
  ]

197:                                              ; preds = %159
  %198 = load i8*, i8** %3, align 8
  %199 = call i32 (i8*, i8*, ...) @AddString(i8* %198, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  br label %204

200:                                              ; preds = %159, %159
  %201 = load i8*, i8** %3, align 8
  %202 = call i32 (i8*, i8*, ...) @AddString(i8* %201, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  br label %204

203:                                              ; preds = %159
  br label %204

204:                                              ; preds = %203, %200, %197
  %205 = load i32, i32* %5, align 4
  %206 = and i32 %205, 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8
  %210 = call i32 (i8*, i8*, ...) @AddString(i8* %209, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  br label %211

211:                                              ; preds = %208, %204
  %212 = load i32, i32* %5, align 4
  %213 = and i32 %212, 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %211
  %216 = load i8*, i8** %3, align 8
  %217 = call i32 (i8*, i8*, ...) @AddString(i8* %216, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0))
  br label %218

218:                                              ; preds = %215, %211
  %219 = load i32, i32* %5, align 4
  %220 = and i32 %219, 2
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %218
  %223 = load i8*, i8** %3, align 8
  %224 = call i32 (i8*, i8*, ...) @AddString(i8* %223, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0))
  br label %225

225:                                              ; preds = %222, %218
  %226 = load i32, i32* %5, align 4
  %227 = and i32 %226, 6
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %256

229:                                              ; preds = %225
  %230 = load i8*, i8** %3, align 8
  %231 = call i32 (i8*, i8*, ...) @AddString(i8* %230, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0))
  %232 = load i8*, i8** %3, align 8
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 19
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = and i32 %236, 524286
  %238 = shl i32 %237, 1
  %239 = add nsw i32 98566144, %238
  %240 = call i32 (i8*, i8*, ...) @AddString(i8* %232, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0), i32 %239)
  %241 = load i32, i32* %5, align 4
  %242 = ashr i32 %241, 4
  switch i32 %242, label %255 [
    i32 0, label %243
    i32 1, label %246
    i32 2, label %249
    i32 3, label %252
  ]

243:                                              ; preds = %229
  %244 = load i8*, i8** %3, align 8
  %245 = call i32 (i8*, i8*, ...) @AddString(i8* %244, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0))
  br label %255

246:                                              ; preds = %229
  %247 = load i8*, i8** %3, align 8
  %248 = call i32 (i8*, i8*, ...) @AddString(i8* %247, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19, i64 0, i64 0))
  br label %255

249:                                              ; preds = %229
  %250 = load i8*, i8** %3, align 8
  %251 = call i32 (i8*, i8*, ...) @AddString(i8* %250, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i64 0, i64 0))
  br label %255

252:                                              ; preds = %229
  %253 = load i8*, i8** %3, align 8
  %254 = call i32 (i8*, i8*, ...) @AddString(i8* %253, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0))
  br label %255

255:                                              ; preds = %229, %252, %249, %246, %243
  br label %256

256:                                              ; preds = %255, %225
  %257 = load i32, i32* %5, align 4
  %258 = and i32 %257, 1
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %272

260:                                              ; preds = %256
  %261 = load i8*, i8** %3, align 8
  %262 = call i32 (i8*, i8*, ...) @AddString(i8* %261, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0))
  %263 = load i8*, i8** %3, align 8
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 18
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = and i32 %267, 524286
  %269 = shl i32 %268, 1
  %270 = add nsw i32 98566144, %269
  %271 = call i32 (i8*, i8*, ...) @AddString(i8* %263, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.23, i64 0, i64 0), i32 %270)
  br label %272

272:                                              ; preds = %260, %256
  %273 = load i8*, i8** %3, align 8
  %274 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 12
  %276 = load i32, i32* %275, align 4
  %277 = ashr i32 %276, 8
  %278 = call i8* @AddWindowInfoString(i8* %273, i32 %277, i32 0)
  store i8* %278, i8** %3, align 8
  %279 = load i8*, i8** %3, align 8
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 13
  %282 = load i32, i32* %281, align 4
  %283 = and i32 %282, 112
  %284 = shl i32 %283, 4
  %285 = call i32 (i8*, i8*, ...) @AddString(i8* %279, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0), i32 %284)
  %286 = load i8*, i8** %3, align 8
  %287 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i32 0, i32 14
  %289 = load i32, i32* %288, align 4
  %290 = ashr i32 %289, 2
  %291 = call i8* @AddSpecialPriorityInfo(i8* %286, i32 %290)
  store i8* %291, i8** %3, align 8
  %292 = load i8*, i8** %3, align 8
  %293 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 15
  %295 = load i32, i32* %294, align 4
  %296 = ashr i32 %295, 8
  %297 = and i32 %296, 7
  %298 = call i32 (i8*, i8*, ...) @AddString(i8* %292, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i32 %297)
  %299 = load i8*, i8** %3, align 8
  %300 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 16
  %302 = load i32, i32* %301, align 4
  %303 = ashr i32 %302, 8
  %304 = and i32 %303, 31
  %305 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 17
  %307 = load i32, i32* %306, align 4
  %308 = ashr i32 %307, 2
  %309 = and i32 %308, 3
  %310 = call i8* @AddColorCalcInfo(i8* %299, i32 2, i32 4, i32 %304, i32 %309)
  store i8* %310, i8** %3, align 8
  %311 = load i8*, i8** %3, align 8
  %312 = call i8* @AddColorOffsetInfo(i8* %311, i32 2)
  store i8* %312, i8** %3, align 8
  %313 = load i8*, i8** %3, align 8
  %314 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 17
  %316 = load i32, i32* %315, align 4
  %317 = ashr i32 %316, 2
  %318 = and i32 %317, 3
  %319 = call i32 (i8*, i8*, ...) @AddString(i8* %313, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i32 %318)
  br label %322

320:                                              ; preds = %2
  %321 = load i32*, i32** %4, align 8
  store i32 0, i32* %321, align 4
  br label %322

322:                                              ; preds = %320, %272
  ret void
}

declare dso_local i8* @AddMosaicString(i8*, i32) #1

declare dso_local i8* @AddBppString(i8*, i32) #1

declare dso_local i8* @AddBitmapInfoString(i8*, i32, i32, i32) #1

declare dso_local i32 @AddString(i8*, i8*, ...) #1

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
