; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vdp2debug.c_Vdp2DebugStatsNBG2.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vdp2debug.c_Vdp2DebugStatsNBG2.c"
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
define dso_local void @Vdp2DebugStatsNBG2(i8* %0, i32* %1) #0 {
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
  %14 = and i32 %13, 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %185

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
  %24 = and i32 %23, 1
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %10, align 4
  %26 = load i32*, i32** %4, align 8
  store i32 1, i32* %26, align 4
  %27 = load i8*, i8** %3, align 8
  %28 = call i8* @AddMosaicString(i8* %27, i32 4)
  store i8* %28, i8** %3, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 2
  %34 = ashr i32 %33, 1
  %35 = call i8* @AddBppString(i8* %29, i32 %34)
  store i8* %35, i8** %3, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 32768
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %16
  store i32 1, i32* %6, align 4
  br label %43

42:                                               ; preds = %16
  store i32 2, i32* %6, align 4
  br label %43

43:                                               ; preds = %42, %41
  %44 = load i8*, i8** %3, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 (i8*, i8*, ...) @AddString(i8* %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 48
  %52 = ashr i32 %51, 4
  %53 = call i32 @Vdp2GetPlaneSize(i32 %52, i32* %8, i32* %9)
  %54 = load i8*, i8** %3, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 (i8*, i8*, ...) @AddString(i8* %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %63

60:                                               ; preds = %43
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 (i8*, i8*, ...) @AddString(i8* %61, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %90

63:                                               ; preds = %43
  %64 = load i8*, i8** %3, align 8
  %65 = call i32 (i8*, i8*, ...) @AddString(i8* %64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i8*, i8** %3, align 8
  %67 = load i32, i32* %7, align 4
  %68 = ashr i32 %67, 14
  %69 = and i32 %68, 1
  %70 = call i32 (i8*, i8*, ...) @AddString(i8* %66, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  %71 = load i8*, i8** %3, align 8
  %72 = load i32, i32* %7, align 4
  %73 = ashr i32 %72, 9
  %74 = and i32 %73, 1
  %75 = call i32 (i8*, i8*, ...) @AddString(i8* %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %74)
  %76 = load i8*, i8** %3, align 8
  %77 = load i32, i32* %7, align 4
  %78 = ashr i32 %77, 8
  %79 = and i32 %78, 1
  %80 = call i32 (i8*, i8*, ...) @AddString(i8* %76, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %79)
  %81 = load i8*, i8** %3, align 8
  %82 = load i32, i32* %7, align 4
  %83 = ashr i32 %82, 5
  %84 = and i32 %83, 7
  %85 = call i32 (i8*, i8*, ...) @AddString(i8* %81, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %84)
  %86 = load i8*, i8** %3, align 8
  %87 = load i32, i32* %7, align 4
  %88 = and i32 %87, 31
  %89 = call i32 (i8*, i8*, ...) @AddString(i8* %86, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %63, %60
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 255
  %95 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  store i32 %94, i32* %95, align 16
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = ashr i32 %98, 8
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  store i32 %99, i32* %100, align 4
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 255
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  store i32 %104, i32* %105, align 8
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = ashr i32 %108, 8
  %110 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  store i32 %109, i32* %110, align 4
  %111 = load i8*, i8** %3, align 8
  %112 = load i32, i32* %10, align 4
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = ashr i32 %118, 4
  %120 = and i32 %119, 3
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, 1792
  %125 = ashr i32 %124, 2
  %126 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %127 = call i8* @AddMapInfo(i8* %111, i32 %112, i32 %115, i32 %120, i32 %125, i32 4, i32* %126)
  store i8* %127, i8** %3, align 8
  %128 = load i8*, i8** %3, align 8
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, 2047
  %133 = srem i32 %132, 512
  %134 = sub nsw i32 0, %133
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 8
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, 2047
  %139 = srem i32 %138, 512
  %140 = sub nsw i32 0, %139
  %141 = call i32 (i8*, i8*, ...) @AddString(i8* %128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %134, i32 %140)
  %142 = load i8*, i8** %3, align 8
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 14
  %145 = load i32, i32* %144, align 4
  %146 = call i8* @AddWindowInfoString(i8* %142, i32 %145, i32 0)
  store i8* %146, i8** %3, align 8
  %147 = load i8*, i8** %3, align 8
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 9
  %150 = load i32, i32* %149, align 4
  %151 = and i32 %150, 1792
  %152 = call i32 (i8*, i8*, ...) @AddString(i8* %147, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %151)
  %153 = load i8*, i8** %3, align 8
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 10
  %156 = load i32, i32* %155, align 4
  %157 = ashr i32 %156, 4
  %158 = call i8* @AddSpecialPriorityInfo(i8* %153, i32 %157)
  store i8* %158, i8** %3, align 8
  %159 = load i8*, i8** %3, align 8
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 11
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %162, 7
  %164 = call i32 (i8*, i8*, ...) @AddString(i8* %159, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 %163)
  %165 = load i8*, i8** %3, align 8
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 12
  %168 = load i32, i32* %167, align 4
  %169 = and i32 %168, 31
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 13
  %172 = load i32, i32* %171, align 4
  %173 = ashr i32 %172, 4
  %174 = and i32 %173, 3
  %175 = call i8* @AddColorCalcInfo(i8* %165, i32 4, i32 5, i32 %169, i32 %174)
  store i8* %175, i8** %3, align 8
  %176 = load i8*, i8** %3, align 8
  %177 = call i8* @AddColorOffsetInfo(i8* %176, i32 4)
  store i8* %177, i8** %3, align 8
  %178 = load i8*, i8** %3, align 8
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 13
  %181 = load i32, i32* %180, align 4
  %182 = ashr i32 %181, 4
  %183 = and i32 %182, 3
  %184 = call i32 (i8*, i8*, ...) @AddString(i8* %178, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i32 %183)
  br label %187

185:                                              ; preds = %2
  %186 = load i32*, i32** %4, align 8
  store i32 0, i32* %186, align 4
  br label %187

187:                                              ; preds = %185, %90
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
