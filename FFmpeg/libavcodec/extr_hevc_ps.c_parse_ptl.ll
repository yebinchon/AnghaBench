; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_ps.c_parse_ptl.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_ps.c_parse_ptl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__*, i8**, i8**, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"PTL information too short\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"PTL information for sublayer %i too short\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Not enough data for sublayer %i level_idc\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_4__*, i32)* @parse_ptl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_ptl(i32* %0, i32* %1, %struct.TYPE_4__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  %15 = call i64 @decode_profile_tier_level(i32* %11, i32* %12, %struct.TYPE_5__* %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %4
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @get_bits_left(i32* %18)
  %20 = load i32, i32* %9, align 4
  %21 = sub nsw i32 %20, 1
  %22 = icmp sgt i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = mul nsw i32 16, %23
  %25 = add nsw i32 8, %24
  %26 = icmp slt i32 %19, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %17, %4
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* @AV_LOG_ERROR, align 4
  %30 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %28, i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %144

31:                                               ; preds = %17
  %32 = load i32*, i32** %6, align 8
  %33 = call i8* @get_bits(i32* %32, i32 8)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i8* %33, i8** %36, align 8
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %59, %31
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = sub nsw i32 %39, 1
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %37
  %43 = load i32*, i32** %6, align 8
  %44 = call i8* @get_bits1(i32* %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i8**, i8*** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  store i8* %44, i8** %50, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = call i8* @get_bits1(i32* %51)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i8**, i8*** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  store i8* %52, i8** %58, align 8
  br label %59

59:                                               ; preds = %42
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %37

62:                                               ; preds = %37
  %63 = load i32, i32* %9, align 4
  %64 = sub nsw i32 %63, 1
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = load i32, i32* %9, align 4
  %68 = sub nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %75, %66
  %70 = load i32, i32* %10, align 4
  %71 = icmp slt i32 %70, 8
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @skip_bits(i32* %73, i32 2)
  br label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %69

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %78, %62
  store i32 0, i32* %10, align 4
  br label %80

80:                                               ; preds = %140, %79
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %9, align 4
  %83 = sub nsw i32 %82, 1
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %85, label %143

85:                                               ; preds = %80
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i8**, i8*** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %110

94:                                               ; preds = %85
  %95 = load i32*, i32** %6, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i64 %101
  %103 = call i64 @decode_profile_tier_level(i32* %95, i32* %96, %struct.TYPE_5__* %102)
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %94
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* @AV_LOG_ERROR, align 4
  %108 = load i32, i32* %10, align 4
  %109 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %106, i32 %107, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  store i32 -1, i32* %5, align 4
  br label %144

110:                                              ; preds = %94, %85
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i8**, i8*** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %113, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %139

119:                                              ; preds = %110
  %120 = load i32*, i32** %6, align 8
  %121 = call i32 @get_bits_left(i32* %120)
  %122 = icmp slt i32 %121, 8
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load i32*, i32** %7, align 8
  %125 = load i32, i32* @AV_LOG_ERROR, align 4
  %126 = load i32, i32* %10, align 4
  %127 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %124, i32 %125, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %126)
  store i32 -1, i32* %5, align 4
  br label %144

128:                                              ; preds = %119
  %129 = load i32*, i32** %6, align 8
  %130 = call i8* @get_bits(i32* %129, i32 8)
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  store i8* %130, i8** %137, align 8
  br label %138

138:                                              ; preds = %128
  br label %139

139:                                              ; preds = %138, %110
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %10, align 4
  br label %80

143:                                              ; preds = %80
  store i32 0, i32* %5, align 4
  br label %144

144:                                              ; preds = %143, %123, %105, %27
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local i64 @decode_profile_tier_level(i32*, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i8* @get_bits1(i32*) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
