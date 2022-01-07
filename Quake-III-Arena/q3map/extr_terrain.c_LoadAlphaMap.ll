; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_terrain.c_LoadAlphaMap.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_terrain.c_LoadAlphaMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mapent = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"layers\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"SetTerrainTextures: invalid value for 'layers' (%d)\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"alphamap\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"LoadAlphaMap: No alphamap specified on terrain\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"tga\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"LoadAlphaMap: alphamap width/height must be at least 2x2.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @LoadAlphaMap(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [128 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @assert(i32* %16)
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @assert(i32* %18)
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @assert(i32* %20)
  %22 = load i32, i32* @mapent, align 4
  %23 = call i8* @ValueForKey(i32 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @atoi(i8* %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* %13, align 4
  %29 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %27, %3
  %31 = load i32, i32* @mapent, align 4
  %32 = call i8* @ValueForKey(i32 %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i8* %32, i8** %9, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  %38 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %30
  %40 = load i8*, i8** %9, align 8
  %41 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %42 = call i32 @ExtractFileExtension(i8* %40, i8* %41)
  %43 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %44 = call i32 @Q_stricmp(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %92, label %46

46:                                               ; preds = %39
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @ExpandGamePath(i8* %47)
  %49 = call i32 @Load32BitImage(i32 %48, i32** %7, i32* %11, i32* %12)
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = mul nsw i32 %50, %51
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = call i32* @malloc(i32 %53)
  store i32* %54, i32** %8, align 8
  store i32 0, i32* %15, align 4
  br label %55

55:                                               ; preds = %88, %46
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %91

59:                                               ; preds = %55
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 255
  %66 = load i32, i32* %13, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sdiv i32 %67, 256
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %15, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %68, i32* %72, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %59
  %81 = load i32, i32* %13, align 4
  %82 = sub nsw i32 %81, 1
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %82, i32* %86, align 4
  br label %87

87:                                               ; preds = %80, %59
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %15, align 4
  br label %55

91:                                               ; preds = %55
  br label %123

92:                                               ; preds = %39
  %93 = load i8*, i8** %9, align 8
  %94 = call i32 @ExpandGamePath(i8* %93)
  %95 = call i32 @Load256Image(i32 %94, i32** %8, i32* null, i32* %11, i32* %12)
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %12, align 4
  %98 = mul nsw i32 %96, %97
  store i32 %98, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %99

99:                                               ; preds = %119, %92
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %122

103:                                              ; preds = %99
  %104 = load i32*, i32** %8, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %13, align 4
  %110 = icmp sge i32 %108, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %103
  %112 = load i32, i32* %13, align 4
  %113 = sub nsw i32 %112, 1
  %114 = load i32*, i32** %8, align 8
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %113, i32* %117, align 4
  br label %118

118:                                              ; preds = %111, %103
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %15, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %15, align 4
  br label %99

122:                                              ; preds = %99
  br label %123

123:                                              ; preds = %122, %91
  %124 = load i32, i32* %11, align 4
  %125 = icmp slt i32 %124, 2
  br i1 %125, label %129, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %12, align 4
  %128 = icmp slt i32 %127, 2
  br i1 %128, label %129, label %131

129:                                              ; preds = %126, %123
  %130 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %126
  %132 = load i32, i32* %13, align 4
  %133 = load i32*, i32** %4, align 8
  store i32 %132, i32* %133, align 4
  %134 = load i32, i32* %11, align 4
  %135 = load i32*, i32** %5, align 8
  store i32 %134, i32* %135, align 4
  %136 = load i32, i32* %12, align 4
  %137 = load i32*, i32** %6, align 8
  store i32 %136, i32* %137, align 4
  %138 = load i32*, i32** %8, align 8
  ret i32* %138
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @ValueForKey(i32, i8*) #1

declare dso_local i32 @Error(i8*, ...) #1

declare dso_local i32 @ExtractFileExtension(i8*, i8*) #1

declare dso_local i32 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @Load32BitImage(i32, i32**, i32*, i32*) #1

declare dso_local i32 @ExpandGamePath(i8*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @Load256Image(i32, i32**, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
