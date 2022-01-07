; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vdp2debug.c_Vdp2DebugStatsRBG0.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vdp2debug.c_Vdp2DebugStatsRBG0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@Vdp2Regs = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"Using Parameter %C\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Using Parameter B\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Parameter A/B switched via coefficients\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Parameter A/B switched parameter window\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Rotation Window 0 Enabled\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Horizontal start = %d\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Vertical start = %d\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Horizontal end = %d\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Vertical end = %d\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Rotation Window 1 Enabled\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Coefficient Table Enabled(Mode %d)\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Tile(%dH x %dV)\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Plane Size = %dH x %dV\0D\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Pattern Name data size = 2 words\0D\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"Pattern Name data size = 1 word\0D\0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"Character Number Supplement bit = %d\0D\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"Special Priority bit = %d\0D\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"Special Color Calculation bit = %d\0D\0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"Supplementary Palette number = %d\0D\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"Supplementary Color number = %d\0D\0A\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"Color Ram Address Offset = %X\0D\0A\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"Priority = %d\0D\0A\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"Special Color Calculation %d\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Vdp2DebugStatsRBG0(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [16 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 256
  %22 = ashr i32 %21, 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 16
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %482

29:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %30 = load i32*, i32** %4, align 8
  store i32 1, i32* %30, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 3
  switch i32 %34, label %112 [
    i32 0, label %35
    i32 1, label %49
    i32 2, label %61
    i32 3, label %64
  ]

35:                                               ; preds = %29
  store i32 0, i32* %11, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 1
  store i32 %39, i32* %12, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 2
  %44 = and i32 %43, 3
  store i32 %44, i32* %13, align 4
  %45 = load i8*, i8** %3, align 8
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 65, %46
  %48 = call i32 (i8*, i8*, ...) @AddString(i8* %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %112

49:                                               ; preds = %29
  store i32 1, i32* %11, align 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 256
  store i32 %53, i32* %12, align 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 10
  %58 = and i32 %57, 3
  store i32 %58, i32* %13, align 4
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 (i8*, i8*, ...) @AddString(i8* %59, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %112

61:                                               ; preds = %29
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 (i8*, i8*, ...) @AddString(i8* %62, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %112

64:                                               ; preds = %29
  %65 = load i8*, i8** %3, align 8
  %66 = call i32 (i8*, i8*, ...) @AddString(i8* %65, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 2
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %64
  %73 = load i8*, i8** %3, align 8
  %74 = call i32 (i8*, i8*, ...) @AddString(i8* %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %75 = call i32 @CalcWindowCoordinates(i32 0, i32* %7, i32* %8, i32* %9, i32* %10)
  %76 = load i8*, i8** %3, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 (i8*, i8*, ...) @AddString(i8* %76, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %77)
  %79 = load i8*, i8** %3, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 (i8*, i8*, ...) @AddString(i8* %79, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %80)
  %82 = load i8*, i8** %3, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 (i8*, i8*, ...) @AddString(i8* %82, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %83)
  %85 = load i8*, i8** %3, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 (i8*, i8*, ...) @AddString(i8* %85, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %86)
  br label %111

88:                                               ; preds = %64
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %88
  %95 = load i8*, i8** %3, align 8
  %96 = call i32 (i8*, i8*, ...) @AddString(i8* %95, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %97 = call i32 @CalcWindowCoordinates(i32 1, i32* %7, i32* %8, i32* %9, i32* %10)
  %98 = load i8*, i8** %3, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 (i8*, i8*, ...) @AddString(i8* %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %99)
  %101 = load i8*, i8** %3, align 8
  %102 = load i32, i32* %8, align 4
  %103 = call i32 (i8*, i8*, ...) @AddString(i8* %101, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %102)
  %104 = load i8*, i8** %3, align 8
  %105 = load i32, i32* %9, align 4
  %106 = call i32 (i8*, i8*, ...) @AddString(i8* %104, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %105)
  %107 = load i8*, i8** %3, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 (i8*, i8*, ...) @AddString(i8* %107, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %94, %88
  br label %111

111:                                              ; preds = %110, %72
  br label %112

112:                                              ; preds = %29, %111, %61, %49, %35
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load i8*, i8** %3, align 8
  %117 = load i32, i32* %13, align 4
  %118 = call i32 (i8*, i8*, ...) @AddString(i8* %116, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %115, %112
  %120 = load i8*, i8** %3, align 8
  %121 = call i8* @AddMosaicString(i8* %120, i32 16)
  store i8* %121, i8** %3, align 8
  %122 = load i8*, i8** %3, align 8
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = ashr i32 %125, 12
  %127 = and i32 %126, 7
  %128 = call i8* @AddBppString(i8* %122, i32 %127)
  store i8* %128, i8** %3, align 8
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, 512
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %167

134:                                              ; preds = %119
  %135 = load i32, i32* %11, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %134
  %138 = load i8*, i8** %3, align 8
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, 1024
  %143 = ashr i32 %142, 10
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 30
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = call i8* @AddBitmapInfoString(i8* %138, i32 %143, i32 %146, i32 %149)
  store i8* %150, i8** %3, align 8
  br label %166

151:                                              ; preds = %134
  %152 = load i8*, i8** %3, align 8
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, 1024
  %157 = ashr i32 %156, 10
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 30
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = ashr i32 %163, 4
  %165 = call i8* @AddBitmapInfoString(i8* %152, i32 %157, i32 %160, i32 %164)
  store i8* %165, i8** %3, align 8
  br label %166

166:                                              ; preds = %151, %137
  br label %437

167:                                              ; preds = %119
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, 1023
  store i32 %171, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 4
  %175 = and i32 %174, 32768
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %167
  store i32 1, i32* %14, align 4
  br label %179

178:                                              ; preds = %167
  store i32 2, i32* %14, align 4
  br label %179

179:                                              ; preds = %178, %177
  %180 = load i8*, i8** %3, align 8
  %181 = load i32, i32* %5, align 4
  %182 = load i32, i32* %5, align 4
  %183 = call i32 (i8*, i8*, ...) @AddString(i8* %180, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %181, i32 %182)
  %184 = load i32, i32* %11, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %179
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 7
  %189 = load i32, i32* %188, align 4
  %190 = and i32 %189, 768
  %191 = ashr i32 %190, 8
  %192 = call i32 @Vdp2GetPlaneSize(i32 %191, i32* %16, i32* %17)
  br label %200

193:                                              ; preds = %179
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 7
  %196 = load i32, i32* %195, align 4
  %197 = and i32 %196, 12288
  %198 = ashr i32 %197, 8
  %199 = call i32 @Vdp2GetPlaneSize(i32 %198, i32* %16, i32* %17)
  br label %200

200:                                              ; preds = %193, %186
  %201 = load i8*, i8** %3, align 8
  %202 = load i32, i32* %16, align 4
  %203 = load i32, i32* %17, align 4
  %204 = call i32 (i8*, i8*, ...) @AddString(i8* %201, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %202, i32 %203)
  %205 = load i32, i32* %14, align 4
  %206 = icmp eq i32 %205, 2
  br i1 %206, label %207, label %210

207:                                              ; preds = %200
  %208 = load i8*, i8** %3, align 8
  %209 = call i32 (i8*, i8*, ...) @AddString(i8* %208, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  br label %237

210:                                              ; preds = %200
  %211 = load i8*, i8** %3, align 8
  %212 = call i32 (i8*, i8*, ...) @AddString(i8* %211, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  %213 = load i8*, i8** %3, align 8
  %214 = load i32, i32* %15, align 4
  %215 = ashr i32 %214, 14
  %216 = and i32 %215, 1
  %217 = call i32 (i8*, i8*, ...) @AddString(i8* %213, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i32 %216)
  %218 = load i8*, i8** %3, align 8
  %219 = load i32, i32* %15, align 4
  %220 = ashr i32 %219, 9
  %221 = and i32 %220, 1
  %222 = call i32 (i8*, i8*, ...) @AddString(i8* %218, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), i32 %221)
  %223 = load i8*, i8** %3, align 8
  %224 = load i32, i32* %15, align 4
  %225 = ashr i32 %224, 8
  %226 = and i32 %225, 1
  %227 = call i32 (i8*, i8*, ...) @AddString(i8* %223, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), i32 %226)
  %228 = load i8*, i8** %3, align 8
  %229 = load i32, i32* %15, align 4
  %230 = ashr i32 %229, 5
  %231 = and i32 %230, 7
  %232 = call i32 (i8*, i8*, ...) @AddString(i8* %228, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0), i32 %231)
  %233 = load i8*, i8** %3, align 8
  %234 = load i32, i32* %15, align 4
  %235 = and i32 %234, 31
  %236 = call i32 (i8*, i8*, ...) @AddString(i8* %233, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i32 %235)
  br label %237

237:                                              ; preds = %210, %207
  %238 = load i32, i32* %11, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %338

240:                                              ; preds = %237
  %241 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 8
  %243 = load i32, i32* %242, align 4
  %244 = and i32 %243, 255
  %245 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  store i32 %244, i32* %245, align 16
  %246 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i32 0, i32 8
  %248 = load i32, i32* %247, align 4
  %249 = ashr i32 %248, 8
  %250 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 1
  store i32 %249, i32* %250, align 4
  %251 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 9
  %253 = load i32, i32* %252, align 4
  %254 = and i32 %253, 255
  %255 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 2
  store i32 %254, i32* %255, align 8
  %256 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 9
  %258 = load i32, i32* %257, align 4
  %259 = ashr i32 %258, 8
  %260 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 3
  store i32 %259, i32* %260, align 4
  %261 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 10
  %263 = load i32, i32* %262, align 4
  %264 = and i32 %263, 255
  %265 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 4
  store i32 %264, i32* %265, align 16
  %266 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i32 0, i32 10
  %268 = load i32, i32* %267, align 4
  %269 = ashr i32 %268, 8
  %270 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 5
  store i32 %269, i32* %270, align 4
  %271 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %272 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %271, i32 0, i32 11
  %273 = load i32, i32* %272, align 4
  %274 = and i32 %273, 255
  %275 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 6
  store i32 %274, i32* %275, align 8
  %276 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i32 0, i32 11
  %278 = load i32, i32* %277, align 4
  %279 = ashr i32 %278, 8
  %280 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 7
  store i32 %279, i32* %280, align 4
  %281 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 12
  %283 = load i32, i32* %282, align 4
  %284 = and i32 %283, 255
  %285 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 8
  store i32 %284, i32* %285, align 16
  %286 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %287 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %286, i32 0, i32 12
  %288 = load i32, i32* %287, align 4
  %289 = ashr i32 %288, 8
  %290 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 9
  store i32 %289, i32* %290, align 4
  %291 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %292 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %291, i32 0, i32 13
  %293 = load i32, i32* %292, align 4
  %294 = and i32 %293, 255
  %295 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 10
  store i32 %294, i32* %295, align 8
  %296 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %297 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %296, i32 0, i32 13
  %298 = load i32, i32* %297, align 4
  %299 = ashr i32 %298, 8
  %300 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 11
  store i32 %299, i32* %300, align 4
  %301 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %302 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %301, i32 0, i32 14
  %303 = load i32, i32* %302, align 4
  %304 = and i32 %303, 255
  %305 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 12
  store i32 %304, i32* %305, align 16
  %306 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %307 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %306, i32 0, i32 14
  %308 = load i32, i32* %307, align 4
  %309 = ashr i32 %308, 8
  %310 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 13
  store i32 %309, i32* %310, align 4
  %311 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %312 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %311, i32 0, i32 15
  %313 = load i32, i32* %312, align 4
  %314 = and i32 %313, 255
  %315 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 14
  store i32 %314, i32* %315, align 8
  %316 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %317 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %316, i32 0, i32 15
  %318 = load i32, i32* %317, align 4
  %319 = ashr i32 %318, 8
  %320 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 15
  store i32 %319, i32* %320, align 4
  %321 = load i8*, i8** %3, align 8
  %322 = load i32, i32* %5, align 4
  %323 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %324 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %323, i32 0, i32 6
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %327 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %326, i32 0, i32 7
  %328 = load i32, i32* %327, align 4
  %329 = ashr i32 %328, 8
  %330 = and i32 %329, 3
  %331 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %332 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %331, i32 0, i32 5
  %333 = load i32, i32* %332, align 4
  %334 = and i32 %333, 7
  %335 = shl i32 %334, 6
  %336 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %337 = call i8* @AddMapInfo(i8* %321, i32 %322, i32 %325, i32 %330, i32 %335, i32 16, i32* %336)
  store i8* %337, i8** %3, align 8
  br label %436

338:                                              ; preds = %237
  %339 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %340 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %339, i32 0, i32 16
  %341 = load i32, i32* %340, align 4
  %342 = and i32 %341, 255
  %343 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  store i32 %342, i32* %343, align 16
  %344 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %345 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %344, i32 0, i32 16
  %346 = load i32, i32* %345, align 4
  %347 = ashr i32 %346, 8
  %348 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 1
  store i32 %347, i32* %348, align 4
  %349 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %350 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %349, i32 0, i32 17
  %351 = load i32, i32* %350, align 4
  %352 = and i32 %351, 255
  %353 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 2
  store i32 %352, i32* %353, align 8
  %354 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %355 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %354, i32 0, i32 17
  %356 = load i32, i32* %355, align 4
  %357 = ashr i32 %356, 8
  %358 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 3
  store i32 %357, i32* %358, align 4
  %359 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %360 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %359, i32 0, i32 18
  %361 = load i32, i32* %360, align 4
  %362 = and i32 %361, 255
  %363 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 4
  store i32 %362, i32* %363, align 16
  %364 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %365 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %364, i32 0, i32 18
  %366 = load i32, i32* %365, align 4
  %367 = ashr i32 %366, 8
  %368 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 5
  store i32 %367, i32* %368, align 4
  %369 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %370 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %369, i32 0, i32 19
  %371 = load i32, i32* %370, align 4
  %372 = and i32 %371, 255
  %373 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 6
  store i32 %372, i32* %373, align 8
  %374 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %375 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %374, i32 0, i32 19
  %376 = load i32, i32* %375, align 4
  %377 = ashr i32 %376, 8
  %378 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 7
  store i32 %377, i32* %378, align 4
  %379 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %380 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %379, i32 0, i32 20
  %381 = load i32, i32* %380, align 4
  %382 = and i32 %381, 255
  %383 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 8
  store i32 %382, i32* %383, align 16
  %384 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %385 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %384, i32 0, i32 20
  %386 = load i32, i32* %385, align 4
  %387 = ashr i32 %386, 8
  %388 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 9
  store i32 %387, i32* %388, align 4
  %389 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %390 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %389, i32 0, i32 21
  %391 = load i32, i32* %390, align 4
  %392 = and i32 %391, 255
  %393 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 10
  store i32 %392, i32* %393, align 8
  %394 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %395 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %394, i32 0, i32 21
  %396 = load i32, i32* %395, align 4
  %397 = ashr i32 %396, 8
  %398 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 11
  store i32 %397, i32* %398, align 4
  %399 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %400 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %399, i32 0, i32 22
  %401 = load i32, i32* %400, align 4
  %402 = and i32 %401, 255
  %403 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 12
  store i32 %402, i32* %403, align 16
  %404 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %405 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %404, i32 0, i32 22
  %406 = load i32, i32* %405, align 4
  %407 = ashr i32 %406, 8
  %408 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 13
  store i32 %407, i32* %408, align 4
  %409 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %410 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %409, i32 0, i32 23
  %411 = load i32, i32* %410, align 4
  %412 = and i32 %411, 255
  %413 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 14
  store i32 %412, i32* %413, align 8
  %414 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %415 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %414, i32 0, i32 23
  %416 = load i32, i32* %415, align 4
  %417 = ashr i32 %416, 8
  %418 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 15
  store i32 %417, i32* %418, align 4
  %419 = load i8*, i8** %3, align 8
  %420 = load i32, i32* %5, align 4
  %421 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %422 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %421, i32 0, i32 6
  %423 = load i32, i32* %422, align 4
  %424 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %425 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %424, i32 0, i32 7
  %426 = load i32, i32* %425, align 4
  %427 = ashr i32 %426, 12
  %428 = and i32 %427, 3
  %429 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %430 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %429, i32 0, i32 5
  %431 = load i32, i32* %430, align 4
  %432 = and i32 %431, 112
  %433 = shl i32 %432, 2
  %434 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %435 = call i8* @AddMapInfo(i8* %419, i32 %420, i32 %423, i32 %428, i32 %433, i32 16, i32* %434)
  store i8* %435, i8** %3, align 8
  br label %436

436:                                              ; preds = %338, %240
  br label %437

437:                                              ; preds = %436, %166
  %438 = load i8*, i8** %3, align 8
  %439 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %440 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %439, i32 0, i32 29
  %441 = load i32, i32* %440, align 4
  %442 = call i8* @AddWindowInfoString(i8* %438, i32 %441, i32 0)
  store i8* %442, i8** %3, align 8
  %443 = load i8*, i8** %3, align 8
  %444 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %445 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %444, i32 0, i32 24
  %446 = load i32, i32* %445, align 4
  %447 = and i32 %446, 7
  %448 = shl i32 %447, 8
  %449 = call i32 (i8*, i8*, ...) @AddString(i8* %443, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0), i32 %448)
  %450 = load i8*, i8** %3, align 8
  %451 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %452 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %451, i32 0, i32 25
  %453 = load i32, i32* %452, align 4
  %454 = ashr i32 %453, 8
  %455 = call i8* @AddSpecialPriorityInfo(i8* %450, i32 %454)
  store i8* %455, i8** %3, align 8
  %456 = load i8*, i8** %3, align 8
  %457 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %458 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %457, i32 0, i32 26
  %459 = load i32, i32* %458, align 4
  %460 = and i32 %459, 7
  %461 = call i32 (i8*, i8*, ...) @AddString(i8* %456, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i32 %460)
  %462 = load i8*, i8** %3, align 8
  %463 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %464 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %463, i32 0, i32 27
  %465 = load i32, i32* %464, align 4
  %466 = and i32 %465, 31
  %467 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %468 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %467, i32 0, i32 28
  %469 = load i32, i32* %468, align 4
  %470 = ashr i32 %469, 8
  %471 = and i32 %470, 3
  %472 = call i8* @AddColorCalcInfo(i8* %462, i32 16, i32 1, i32 %466, i32 %471)
  store i8* %472, i8** %3, align 8
  %473 = load i8*, i8** %3, align 8
  %474 = call i8* @AddColorOffsetInfo(i8* %473, i32 16)
  store i8* %474, i8** %3, align 8
  %475 = load i8*, i8** %3, align 8
  %476 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %477 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %476, i32 0, i32 28
  %478 = load i32, i32* %477, align 4
  %479 = ashr i32 %478, 8
  %480 = and i32 %479, 3
  %481 = call i32 (i8*, i8*, ...) @AddString(i8* %475, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0), i32 %480)
  br label %484

482:                                              ; preds = %2
  %483 = load i32*, i32** %4, align 8
  store i32 0, i32* %483, align 4
  br label %484

484:                                              ; preds = %482, %437
  ret void
}

declare dso_local i32 @AddString(i8*, i8*, ...) #1

declare dso_local i32 @CalcWindowCoordinates(i32, i32*, i32*, i32*, i32*) #1

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
