; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_genpng.c_main.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_genpng.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i8*, i64, i64, i32, i32*, i32 }
%struct.arg = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"--8bit\00", align 1
@PNG_IMAGE_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@PNG_FORMAT_LINEAR_RGB_ALPHA = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"genpng: %s: too many arguments\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"genpng: write stdout: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"genpng: out of memory: %lu bytes\0A\00", align 1
@.str.6 = private unnamed_addr constant [1416 x i8] c"genpng: usage: genpng [--8bit] width height {shape}\0A Generate a transparent PNG in RGBA (truecolor+alpha) format\0A containing the given shape or shapes.  Shapes are defined:\0A\0A  shape ::= color width shape x1 y1 x2 y2\0A  color ::= black|white|red|green|yellow|blue\0A  color ::= brown|purple|pink|orange|gray|cyan\0A  width ::= filled|<number>\0A  shape ::= circle|square|line\0A  x1,x2 ::= <number>\0A  y1,y2 ::= <number>\0A\0A Numbers are floating point numbers describing points relative to\0A the top left of the output PNG as pixel coordinates.  The 'width'\0A parameter is either the width of the line (in output pixels) used\0A to draw the shape or 'filled' to indicate that the shape should\0A be filled with the color.\0A\0A Colors are interpreted loosely to give access to the eight full\0A intensity RGB values:\0A\0A  black, red, green, blue, yellow, cyan, purple, white,\0A\0A Cyan is full intensity blue+green; RGB(0,1,1), plus the following\0A lower intensity values:\0A\0A  brown:  red+orange:  RGB(0.5, 0.125, 0) (dark red+orange)\0A  pink:   red+white:   RGB(1.0, 0.5,   0.5)\0A  orange: red+yellow:  RGB(1.0, 0.5,   0)\0A  gray:   black+white: RGB(0.5, 0.5,   0.5)\0A\0A The RGB values are selected to make detection of aliasing errors\0A easy. The names are selected to make the description of errors\0A easy.\0A\0A The PNG is written to stdout, if --8bit is given a 32bpp RGBA sRGB\0A file is produced, otherwise a 64bpp RGBA linear encoded file is\0A written.\0A\00", align 1
@max_shapes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca [256 x %struct.arg], align 16
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i32 1
  store i8** %25, i8*** %5, align 8
  store i32 1, i32* %6, align 4
  br label %26

26:                                               ; preds = %21, %15, %2
  %27 = load i32, i32* %4, align 4
  %28 = icmp sge i32 %27, 3
  br i1 %28, label %29, label %154

29:                                               ; preds = %26
  %30 = call i32 @memset(%struct.TYPE_5__* %9, i32 0, i32 64)
  %31 = load i32, i32* @PNG_IMAGE_VERSION, align 4
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 7
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 6
  store i32* null, i32** %33, align 8
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i8* @read_wh(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = ptrtoint i8* %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i64 %38, i64* %39, align 8
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 2
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @read_wh(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  %44 = ptrtoint i8* %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  store i64 %44, i64* %45, align 8
  %46 = load i32, i32* @PNG_FORMAT_LINEAR_RGB_ALPHA, align 4
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 5
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  store i64 0, i64* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  store i64 0, i64* %49, align 8
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %74, %29
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  %53 = mul nsw i32 7, %52
  %54 = add nsw i32 3, %53
  %55 = load i32, i32* %4, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 256
  br label %60

60:                                               ; preds = %57, %50
  %61 = phi i1 [ false, %50 ], [ %59, %57 ]
  br i1 %61, label %62, label %77

62:                                               ; preds = %60
  %63 = getelementptr inbounds [256 x %struct.arg], [256 x %struct.arg]* %10, i64 0, i64 0
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.arg, %struct.arg* %63, i64 %65
  %67 = load i8**, i8*** %5, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 3
  %69 = load i32, i32* %8, align 4
  %70 = mul nsw i32 7, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %68, i64 %71
  %73 = call i32 @parse_arg(%struct.arg* %66, i8** %72)
  br label %74

74:                                               ; preds = %62
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %50

77:                                               ; preds = %60
  %78 = load i32, i32* %8, align 4
  %79 = mul nsw i32 7, %78
  %80 = add nsw i32 3, %79
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %77
  %84 = load i32, i32* @stderr, align 4
  %85 = load i8**, i8*** %5, align 8
  %86 = load i32, i32* %8, align 4
  %87 = mul nsw i32 7, %86
  %88 = add nsw i32 3, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %85, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 (i32, i8*, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %91)
  store i32 1, i32* %3, align 4
  br label %158

93:                                               ; preds = %77
  %94 = call i64 @PNG_IMAGE_SIZE(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %9)
  %95 = call i32* @malloc(i64 %94)
  store i32* %95, i32** %7, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %149

98:                                               ; preds = %93
  store i64 0, i64* %11, align 8
  br label %99

99:                                               ; preds = %129, %98
  %100 = load i64, i64* %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp slt i64 %100, %102
  br i1 %103, label %104, label %132

104:                                              ; preds = %99
  store i64 0, i64* %12, align 8
  br label %105

105:                                              ; preds = %125, %104
  %106 = load i64, i64* %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp slt i64 %106, %108
  br i1 %109, label %110, label %128

110:                                              ; preds = %105
  %111 = load i32*, i32** %7, align 8
  %112 = load i64, i64* %12, align 8
  %113 = load i64, i64* %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = mul nsw i64 %113, %115
  %117 = add nsw i64 %112, %116
  %118 = mul nsw i64 4, %117
  %119 = getelementptr inbounds i32, i32* %111, i64 %118
  %120 = getelementptr inbounds [256 x %struct.arg], [256 x %struct.arg]* %10, i64 0, i64 0
  %121 = load i32, i32* %8, align 4
  %122 = load i64, i64* %12, align 8
  %123 = load i64, i64* %11, align 8
  %124 = call i32 @pixel(i32* %119, %struct.arg* %120, i32 %121, i64 %122, i64 %123)
  br label %125

125:                                              ; preds = %110
  %126 = load i64, i64* %12, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %12, align 8
  br label %105

128:                                              ; preds = %105
  br label %129

129:                                              ; preds = %128
  %130 = load i64, i64* %11, align 8
  %131 = add nsw i64 %130, 1
  store i64 %131, i64* %11, align 8
  br label %99

132:                                              ; preds = %99
  %133 = load i32, i32* @stdout, align 4
  %134 = load i32, i32* %6, align 4
  %135 = load i32*, i32** %7, align 8
  %136 = call i64 @png_image_write_to_stdio(%struct.TYPE_5__* %9, i32 %133, i32 %134, i32* %135, i32 0, i32* null)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load i32*, i32** %7, align 8
  %140 = call i32 @free(i32* %139)
  store i32 0, i32* %3, align 4
  br label %158

141:                                              ; preds = %132
  %142 = load i32, i32* @stderr, align 4
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 (i32, i8*, ...) @fprintf(i32 %142, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %144)
  br label %146

146:                                              ; preds = %141
  %147 = load i32*, i32** %7, align 8
  %148 = call i32 @free(i32* %147)
  br label %153

149:                                              ; preds = %93
  %150 = load i32, i32* @stderr, align 4
  %151 = call i64 @PNG_IMAGE_SIZE(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %9)
  %152 = call i32 (i32, i8*, ...) @fprintf(i32 %150, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i64 %151)
  br label %153

153:                                              ; preds = %149, %146
  br label %157

154:                                              ; preds = %26
  %155 = load i32, i32* @stderr, align 4
  %156 = call i32 (i32, i8*, ...) @fprintf(i32 %155, i8* getelementptr inbounds ([1416 x i8], [1416 x i8]* @.str.6, i64 0, i64 0))
  br label %157

157:                                              ; preds = %154, %153
  store i32 1, i32* %3, align 4
  br label %158

158:                                              ; preds = %157, %138, %83
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i8* @read_wh(i8*, i8*) #1

declare dso_local i32 @parse_arg(%struct.arg*, i8**) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i64 @PNG_IMAGE_SIZE(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8) #1

declare dso_local i32 @pixel(i32*, %struct.arg*, i32, i64, i64) #1

declare dso_local i64 @png_image_write_to_stdio(%struct.TYPE_5__*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
