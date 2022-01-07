; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vdp2debug.c_Vdp2DebugStatsNBG3.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vdp2debug.c_Vdp2DebugStatsNBG3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@Vdp2Regs = common dso_local global %struct.TYPE_2__* null, align 8
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
@.str.10 = private unnamed_addr constant [32 x i8] c"Color Ram Address Offset = %X\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Priority = %d\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Special Color Calculation %d\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Vdp2DebugStatsNBG3(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %189

16:                                               ; preds = %2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 1023
  store i32 %20, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 16
  %25 = ashr i32 %24, 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %10, align 4
  %27 = load i32*, i32** %4, align 8
  store i32 1, i32* %27, align 4
  %28 = load i8*, i8** %3, align 8
  %29 = call i8* @AddMosaicString(i8* %28, i32 8)
  store i8* %29, i8** %3, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 32
  %35 = ashr i32 %34, 5
  %36 = call i8* @AddBppString(i8* %30, i32 %35)
  store i8* %36, i8** %3, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 32768
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %16
  store i32 1, i32* %6, align 4
  br label %44

43:                                               ; preds = %16
  store i32 2, i32* %6, align 4
  br label %44

44:                                               ; preds = %43, %42
  %45 = load i8*, i8** %3, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 (i8*, i8*, ...) @AddString(i8* %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 192
  %53 = ashr i32 %52, 6
  %54 = call i32 @Vdp2GetPlaneSize(i32 %53, i32* %8, i32* %9)
  %55 = load i8*, i8** %3, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 (i8*, i8*, ...) @AddString(i8* %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %64

61:                                               ; preds = %44
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 (i8*, i8*, ...) @AddString(i8* %62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %91

64:                                               ; preds = %44
  %65 = load i8*, i8** %3, align 8
  %66 = call i32 (i8*, i8*, ...) @AddString(i8* %65, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i8*, i8** %3, align 8
  %68 = load i32, i32* %7, align 4
  %69 = ashr i32 %68, 14
  %70 = and i32 %69, 1
  %71 = call i32 (i8*, i8*, ...) @AddString(i8* %67, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  %72 = load i8*, i8** %3, align 8
  %73 = load i32, i32* %7, align 4
  %74 = ashr i32 %73, 9
  %75 = and i32 %74, 1
  %76 = call i32 (i8*, i8*, ...) @AddString(i8* %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %75)
  %77 = load i8*, i8** %3, align 8
  %78 = load i32, i32* %7, align 4
  %79 = ashr i32 %78, 8
  %80 = and i32 %79, 1
  %81 = call i32 (i8*, i8*, ...) @AddString(i8* %77, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %80)
  %82 = load i8*, i8** %3, align 8
  %83 = load i32, i32* %7, align 4
  %84 = ashr i32 %83, 5
  %85 = and i32 %84, 7
  %86 = call i32 (i8*, i8*, ...) @AddString(i8* %82, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %85)
  %87 = load i8*, i8** %3, align 8
  %88 = load i32, i32* %7, align 4
  %89 = and i32 %88, 31
  %90 = call i32 (i8*, i8*, ...) @AddString(i8* %87, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %64, %61
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 255
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  store i32 %95, i32* %96, align 16
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = ashr i32 %99, 8
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  store i32 %100, i32* %101, align 4
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 255
  %106 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  store i32 %105, i32* %106, align 8
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = ashr i32 %109, 8
  %111 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  store i32 %110, i32* %111, align 4
  %112 = load i8*, i8** %3, align 8
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 192
  %121 = ashr i32 %120, 6
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 28672
  %126 = ashr i32 %125, 6
  %127 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %128 = call i8* @AddMapInfo(i8* %112, i32 %113, i32 %116, i32 %121, i32 %126, i32 4, i32* %127)
  store i8* %128, i8** %3, align 8
  %129 = load i8*, i8** %3, align 8
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, 2047
  %134 = srem i32 %133, 512
  %135 = sub nsw i32 0, %134
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 8
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, 2047
  %140 = srem i32 %139, 512
  %141 = sub nsw i32 0, %140
  %142 = call i32 (i8*, i8*, ...) @AddString(i8* %129, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %135, i32 %141)
  %143 = load i8*, i8** %3, align 8
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 9
  %146 = load i32, i32* %145, align 4
  %147 = ashr i32 %146, 8
  %148 = call i8* @AddWindowInfoString(i8* %143, i32 %147, i32 0)
  store i8* %148, i8** %3, align 8
  %149 = load i8*, i8** %3, align 8
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 10
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, 28672
  %154 = call i32 (i8*, i8*, ...) @AddString(i8* %149, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %153)
  %155 = load i8*, i8** %3, align 8
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 11
  %158 = load i32, i32* %157, align 4
  %159 = ashr i32 %158, 6
  %160 = call i8* @AddSpecialPriorityInfo(i8* %155, i32 %159)
  store i8* %160, i8** %3, align 8
  %161 = load i8*, i8** %3, align 8
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 12
  %164 = load i32, i32* %163, align 4
  %165 = ashr i32 %164, 8
  %166 = and i32 %165, 7
  %167 = call i32 (i8*, i8*, ...) @AddString(i8* %161, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 %166)
  %168 = load i8*, i8** %3, align 8
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 13
  %171 = load i32, i32* %170, align 4
  %172 = ashr i32 %171, 8
  %173 = and i32 %172, 31
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 14
  %176 = load i32, i32* %175, align 4
  %177 = ashr i32 %176, 6
  %178 = and i32 %177, 3
  %179 = call i8* @AddColorCalcInfo(i8* %168, i32 8, i32 6, i32 %173, i32 %178)
  store i8* %179, i8** %3, align 8
  %180 = load i8*, i8** %3, align 8
  %181 = call i8* @AddColorOffsetInfo(i8* %180, i32 8)
  store i8* %181, i8** %3, align 8
  %182 = load i8*, i8** %3, align 8
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 14
  %185 = load i32, i32* %184, align 4
  %186 = ashr i32 %185, 6
  %187 = and i32 %186, 3
  %188 = call i32 (i8*, i8*, ...) @AddString(i8* %182, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i32 %187)
  br label %191

189:                                              ; preds = %2
  %190 = load i32*, i32** %4, align 8
  store i32 0, i32* %190, align 4
  br label %191

191:                                              ; preds = %189, %91
  ret void
}

declare dso_local i8* @AddMosaicString(i8*, i32) #1

declare dso_local i8* @AddBppString(i8*, i32) #1

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
