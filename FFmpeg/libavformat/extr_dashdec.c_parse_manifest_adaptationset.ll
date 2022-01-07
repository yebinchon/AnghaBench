; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_parse_manifest_adaptationset.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_parse_manifest_adaptationset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_27__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"contentType\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"par\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"lang\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"minBandwidth\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"maxBandwidth\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"minWidth\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"maxWidth\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"minHeight\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"maxHeight\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"minFrameRate\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"maxFrameRate\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"segmentAlignment\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"bitstreamSwitching\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"SegmentTemplate\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"ContentComponent\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"BaseURL\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"SegmentList\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"SupplementalProperty\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"Representation\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_29__*, i8*, %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*)* @parse_manifest_adaptationset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_manifest_adaptationset(%struct.TYPE_29__* %0, i8* %1, %struct.TYPE_27__* %2, %struct.TYPE_27__* %3, %struct.TYPE_27__* %4, %struct.TYPE_27__* %5, %struct.TYPE_27__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca %struct.TYPE_27__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_28__*, align 8
  %18 = alloca %struct.TYPE_27__*, align 8
  %19 = alloca %struct.TYPE_27__*, align 8
  %20 = alloca %struct.TYPE_27__*, align 8
  %21 = alloca %struct.TYPE_27__*, align 8
  %22 = alloca %struct.TYPE_27__*, align 8
  %23 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %11, align 8
  store %struct.TYPE_27__* %3, %struct.TYPE_27__** %12, align 8
  store %struct.TYPE_27__* %4, %struct.TYPE_27__** %13, align 8
  store %struct.TYPE_27__* %5, %struct.TYPE_27__** %14, align 8
  store %struct.TYPE_27__* %6, %struct.TYPE_27__** %15, align 8
  store i32 0, i32* %16, align 4
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  store %struct.TYPE_28__* %26, %struct.TYPE_28__** %17, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %18, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %19, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %20, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %21, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %22, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %23, align 8
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %28 = call i8* @xmlGetProp(%struct.TYPE_27__* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %30 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %29, i32 0, i32 12
  store i8* %28, i8** %30, align 8
  %31 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %32 = call i8* @xmlGetProp(%struct.TYPE_27__* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %34 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %33, i32 0, i32 11
  store i8* %32, i8** %34, align 8
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %36 = call i8* @xmlGetProp(%struct.TYPE_27__* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %37, i32 0, i32 10
  store i8* %36, i8** %38, align 8
  %39 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %40 = call i8* @xmlGetProp(%struct.TYPE_27__* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 9
  store i8* %40, i8** %42, align 8
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %44 = call i8* @xmlGetProp(%struct.TYPE_27__* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %46 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %45, i32 0, i32 8
  store i8* %44, i8** %46, align 8
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %48 = call i8* @xmlGetProp(%struct.TYPE_27__* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %50 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 7
  store i8* %48, i8** %50, align 8
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %52 = call i8* @xmlGetProp(%struct.TYPE_27__* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %54 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %53, i32 0, i32 6
  store i8* %52, i8** %54, align 8
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %56 = call i8* @xmlGetProp(%struct.TYPE_27__* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i32 0, i32 5
  store i8* %56, i8** %58, align 8
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %60 = call i8* @xmlGetProp(%struct.TYPE_27__* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %61, i32 0, i32 4
  store i8* %60, i8** %62, align 8
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %64 = call i8* @xmlGetProp(%struct.TYPE_27__* %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %68 = call i8* @xmlGetProp(%struct.TYPE_27__* %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %72 = call i8* @xmlGetProp(%struct.TYPE_27__* %71, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %74 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %76 = call i8* @xmlGetProp(%struct.TYPE_27__* %75, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  %77 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %80 = call %struct.TYPE_27__* @xmlFirstElementChild(%struct.TYPE_27__* %79)
  store %struct.TYPE_27__* %80, %struct.TYPE_27__** %23, align 8
  br label %81

81:                                               ; preds = %155, %7
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %83 = icmp ne %struct.TYPE_27__* %82, null
  br i1 %83, label %84, label %158

84:                                               ; preds = %81
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %86 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @av_strcasecmp(i32 %87, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %84
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  store %struct.TYPE_27__* %91, %struct.TYPE_27__** %18, align 8
  br label %155

92:                                               ; preds = %84
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %94 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @av_strcasecmp(i32 %95, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %92
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  store %struct.TYPE_27__* %99, %struct.TYPE_27__** %19, align 8
  br label %154

100:                                              ; preds = %92
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @av_strcasecmp(i32 %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %100
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  store %struct.TYPE_27__* %107, %struct.TYPE_27__** %20, align 8
  br label %153

108:                                              ; preds = %100
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @av_strcasecmp(i32 %111, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %108
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  store %struct.TYPE_27__* %115, %struct.TYPE_27__** %21, align 8
  br label %152

116:                                              ; preds = %108
  %117 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %118 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @av_strcasecmp(i32 %119, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %116
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  store %struct.TYPE_27__* %123, %struct.TYPE_27__** %22, align 8
  br label %151

124:                                              ; preds = %116
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @av_strcasecmp(i32 %127, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %150, label %130

130:                                              ; preds = %124
  %131 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %132 = load i8*, i8** %10, align 8
  %133 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %134 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %136 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %137 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %138 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %141 = load %struct.TYPE_27__*, %struct.TYPE_27__** %20, align 8
  %142 = load %struct.TYPE_27__*, %struct.TYPE_27__** %21, align 8
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %22, align 8
  %144 = call i32 @parse_manifest_representation(%struct.TYPE_29__* %131, i8* %132, %struct.TYPE_27__* %133, %struct.TYPE_27__* %134, %struct.TYPE_27__* %135, %struct.TYPE_27__* %136, %struct.TYPE_27__* %137, %struct.TYPE_27__* %138, %struct.TYPE_27__* %139, %struct.TYPE_27__* %140, %struct.TYPE_27__* %141, %struct.TYPE_27__* %142, %struct.TYPE_27__* %143)
  store i32 %144, i32* %16, align 4
  %145 = load i32, i32* %16, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %130
  %148 = load i32, i32* %16, align 4
  store i32 %148, i32* %8, align 4
  br label %159

149:                                              ; preds = %130
  br label %150

150:                                              ; preds = %149, %124
  br label %151

151:                                              ; preds = %150, %122
  br label %152

152:                                              ; preds = %151, %114
  br label %153

153:                                              ; preds = %152, %106
  br label %154

154:                                              ; preds = %153, %98
  br label %155

155:                                              ; preds = %154, %90
  %156 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %157 = call %struct.TYPE_27__* @xmlNextElementSibling(%struct.TYPE_27__* %156)
  store %struct.TYPE_27__* %157, %struct.TYPE_27__** %23, align 8
  br label %81

158:                                              ; preds = %81
  store i32 0, i32* %8, align 4
  br label %159

159:                                              ; preds = %158, %147
  %160 = load i32, i32* %8, align 4
  ret i32 %160
}

declare dso_local i8* @xmlGetProp(%struct.TYPE_27__*, i8*) #1

declare dso_local %struct.TYPE_27__* @xmlFirstElementChild(%struct.TYPE_27__*) #1

declare dso_local i32 @av_strcasecmp(i32, i8*) #1

declare dso_local i32 @parse_manifest_representation(%struct.TYPE_29__*, i8*, %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_27__* @xmlNextElementSibling(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
