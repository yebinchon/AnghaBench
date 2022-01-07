; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__decode_jpeg_image.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__decode_jpeg_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_15__*, i8*, i64, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_13__ = type { i32*, i32* }

@STBI__SCAN_load = common dso_local global i32 0, align 4
@STBI__MARKER_none = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"bad DNL len\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Corrupt JPEG\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"bad DNL height\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @stbi__decode_jpeg_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__decode_jpeg_image(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %26, %1
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %11, label %29

11:                                               ; preds = %8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %11
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %8

29:                                               ; preds = %8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = load i32, i32* @STBI__SCAN_load, align 4
  %34 = call i32 @stbi__decode_jpeg_header(%struct.TYPE_14__* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %141

37:                                               ; preds = %29
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %39 = call i32 @stbi__get_marker(%struct.TYPE_14__* %38)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %129, %37
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @stbi__EOI(i32 %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br i1 %44, label %45, label %132

45:                                               ; preds = %40
  %46 = load i32, i32* %4, align 4
  %47 = call i64 @stbi__SOS(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %91

49:                                               ; preds = %45
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %51 = call i32 @stbi__process_scan_header(%struct.TYPE_14__* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %141

54:                                               ; preds = %49
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %56 = call i32 @stbi__parse_entropy_coded_data(%struct.TYPE_14__* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %141

59:                                               ; preds = %54
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = load i8*, i8** @STBI__MARKER_none, align 8
  %64 = icmp eq i8* %62, %63
  br i1 %64, label %65, label %90

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %88, %65
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = call i32 @stbi__at_eof(%struct.TYPE_15__* %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  br i1 %72, label %73, label %89

73:                                               ; preds = %66
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %75, align 8
  %77 = call i8* @stbi__get8(%struct.TYPE_15__* %76)
  %78 = ptrtoint i8* %77 to i32
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp eq i32 %79, 255
  br i1 %80, label %81, label %88

81:                                               ; preds = %73
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %83, align 8
  %85 = call i8* @stbi__get8(%struct.TYPE_15__* %84)
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 2
  store i8* %85, i8** %87, align 8
  br label %89

88:                                               ; preds = %73
  br label %66

89:                                               ; preds = %81, %66
  br label %90

90:                                               ; preds = %89, %59
  br label %129

91:                                               ; preds = %45
  %92 = load i32, i32* %4, align 4
  %93 = call i64 @stbi__DNL(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %121

95:                                               ; preds = %91
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %97, align 8
  %99 = call i8* @stbi__get16be(%struct.TYPE_15__* %98)
  %100 = ptrtoint i8* %99 to i32
  store i32 %100, i32* %6, align 4
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %102, align 8
  %104 = call i8* @stbi__get16be(%struct.TYPE_15__* %103)
  %105 = ptrtoint i8* %104 to i64
  store i64 %105, i64* %7, align 8
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 4
  br i1 %107, label %108, label %110

108:                                              ; preds = %95
  %109 = call i32 @stbi__err(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %109, i32* %2, align 4
  br label %141

110:                                              ; preds = %95
  %111 = load i64, i64* %7, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %111, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  %119 = call i32 @stbi__err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %119, i32* %2, align 4
  br label %141

120:                                              ; preds = %110
  br label %128

121:                                              ; preds = %91
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %123 = load i32, i32* %4, align 4
  %124 = call i32 @stbi__process_marker(%struct.TYPE_14__* %122, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %121
  store i32 0, i32* %2, align 4
  br label %141

127:                                              ; preds = %121
  br label %128

128:                                              ; preds = %127, %120
  br label %129

129:                                              ; preds = %128, %90
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %131 = call i32 @stbi__get_marker(%struct.TYPE_14__* %130)
  store i32 %131, i32* %4, align 4
  br label %40

132:                                              ; preds = %40
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %139 = call i32 @stbi__jpeg_finish(%struct.TYPE_14__* %138)
  br label %140

140:                                              ; preds = %137, %132
  store i32 1, i32* %2, align 4
  br label %141

141:                                              ; preds = %140, %126, %118, %108, %58, %53, %36
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i32 @stbi__decode_jpeg_header(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @stbi__get_marker(%struct.TYPE_14__*) #1

declare dso_local i32 @stbi__EOI(i32) #1

declare dso_local i64 @stbi__SOS(i32) #1

declare dso_local i32 @stbi__process_scan_header(%struct.TYPE_14__*) #1

declare dso_local i32 @stbi__parse_entropy_coded_data(%struct.TYPE_14__*) #1

declare dso_local i32 @stbi__at_eof(%struct.TYPE_15__*) #1

declare dso_local i8* @stbi__get8(%struct.TYPE_15__*) #1

declare dso_local i64 @stbi__DNL(i32) #1

declare dso_local i8* @stbi__get16be(%struct.TYPE_15__*) #1

declare dso_local i32 @stbi__err(i8*, i8*) #1

declare dso_local i32 @stbi__process_marker(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @stbi__jpeg_finish(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
