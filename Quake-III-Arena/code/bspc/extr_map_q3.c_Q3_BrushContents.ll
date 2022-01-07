; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map_q3.c_Q3_BrushContents.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map_q3.c_Q3_BrushContents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@SURF_HINT = common dso_local global i32 0, align 4
@SURF_SKIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"WARNING: hint brush with contents: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"brush contents is: \00", align 1
@CONTENTS_LADDER = common dso_local global i32 0, align 4
@CONTENTS_FOG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Entity %i, Brush %i: mixed face contents \00", align 1
@CONTENTS_DONOTENTER = common dso_local global i32 0, align 4
@CONTENTS_LAVA = common dso_local global i32 0, align 4
@CONTENTS_SLIME = common dso_local global i32 0, align 4
@CONTENTS_WATER = common dso_local global i32 0, align 4
@CONTENTS_PLAYERCLIP = common dso_local global i32 0, align 4
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@CONTENTS_STRUCTURAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"brush %i is a donotenter brush, c = %X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Q3_BrushContents(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 0
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %8, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %5, align 4
  br label %16

16:                                               ; preds = %51, %1
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %54

22:                                               ; preds = %16
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %8, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  store i32 1, i32* %6, align 4
  br label %35

35:                                               ; preds = %34, %22
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SURF_HINT, align 4
  %40 = load i32, i32* @SURF_SKIP, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i32 1, i32* %7, align 4
  br label %45

45:                                               ; preds = %44, %35
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %16

54:                                               ; preds = %16
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %54
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = call i32 (i8*, ...) @Log_Write(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @PrintContents(i32 %62)
  %64 = call i32 (i8*, ...) @Log_Write(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %65 = call i32 (i8*, ...) @Log_Write(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @PrintContents(i32 %68)
  %70 = call i32 (i8*, ...) @Log_Write(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %60, %57
  store i32 0, i32* %2, align 4
  br label %154

72:                                               ; preds = %54
  %73 = load i32, i32* @CONTENTS_LADDER, align 4
  %74 = load i32, i32* @CONTENTS_FOG, align 4
  %75 = or i32 %73, %74
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %4, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %134

81:                                               ; preds = %72
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (i8*, ...) @Log_Write(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %84, i32 %87)
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @PrintContents(i32 %89)
  %91 = call i32 (i8*, ...) @Log_Write(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %92 = call i32 (i8*, ...) @Log_Write(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @PrintContents(i32 %95)
  %97 = call i32 (i8*, ...) @Log_Write(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @CONTENTS_DONOTENTER, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %81
  %103 = load i32, i32* @CONTENTS_DONOTENTER, align 4
  store i32 %103, i32* %2, align 4
  br label %154

104:                                              ; preds = %81
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @CONTENTS_LAVA, align 4
  %107 = load i32, i32* @CONTENTS_SLIME, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @CONTENTS_WATER, align 4
  %110 = or i32 %108, %109
  %111 = and i32 %105, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %104
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @CONTENTS_LAVA, align 4
  %116 = load i32, i32* @CONTENTS_SLIME, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @CONTENTS_WATER, align 4
  %119 = or i32 %117, %118
  %120 = and i32 %114, %119
  store i32 %120, i32* %2, align 4
  br label %154

121:                                              ; preds = %104
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @CONTENTS_PLAYERCLIP, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* @CONTENTS_PLAYERCLIP, align 4
  %129 = and i32 %127, %128
  store i32 %129, i32* %2, align 4
  br label %154

130:                                              ; preds = %121
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @CONTENTS_SOLID, align 4
  %133 = and i32 %131, %132
  store i32 %133, i32* %2, align 4
  br label %154

134:                                              ; preds = %72
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* @CONTENTS_STRUCTURAL, align 4
  %138 = and i32 %136, %137
  %139 = icmp eq i32 %135, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %140, %134
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* @CONTENTS_DONOTENTER, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %4, align 4
  %151 = call i32 @Log_Print(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %146, %141
  %153 = load i32, i32* %4, align 4
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %152, %130, %126, %113, %102, %71
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32 @Log_Write(i8*, ...) #1

declare dso_local i32 @PrintContents(i32) #1

declare dso_local i32 @Log_Print(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
