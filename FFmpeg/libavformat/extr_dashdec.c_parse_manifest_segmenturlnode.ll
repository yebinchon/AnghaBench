; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_parse_manifest_segmenturlnode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_parse_manifest_segmenturlnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.representation = type { i32, i32, %struct.fragment* }
%struct.fragment = type { i8* }
%struct.TYPE_9__ = type { i32 }

@MAX_URL_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Initialization\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"sourceURL\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"SegmentURL\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"media\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"mediaRange\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.representation*, %struct.TYPE_9__*, %struct.TYPE_9__**, i8*, i8*)* @parse_manifest_segmenturlnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_manifest_segmenturlnode(%struct.TYPE_11__* %0, %struct.representation* %1, %struct.TYPE_9__* %2, %struct.TYPE_9__** %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.representation*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_9__**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.fragment*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store %struct.representation* %1, %struct.representation** %9, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__** %3, %struct.TYPE_9__*** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %24 = icmp ne %struct.TYPE_10__* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %6
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  br label %31

29:                                               ; preds = %6
  %30 = load i32, i32* @MAX_URL_SIZE, align 4
  br label %31

31:                                               ; preds = %29, %25
  %32 = phi i32 [ %28, %25 ], [ %30, %29 ]
  store i32 %32, i32* %18, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @av_strcasecmp(i32 %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %99, label %38

38:                                               ; preds = %31
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %40 = call i8* @xmlGetProp(%struct.TYPE_9__* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %40, i8** %15, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %42 = call i8* @xmlGetProp(%struct.TYPE_9__* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i8* %42, i8** %17, align 8
  %43 = load i8*, i8** %15, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i8*, i8** %17, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %98

48:                                               ; preds = %45, %38
  %49 = load i8*, i8** %17, align 8
  %50 = call i8* @get_Fragment(i8* %49)
  %51 = bitcast i8* %50 to %struct.fragment*
  %52 = load %struct.representation*, %struct.representation** %9, align 8
  %53 = getelementptr inbounds %struct.representation, %struct.representation* %52, i32 0, i32 2
  store %struct.fragment* %51, %struct.fragment** %53, align 8
  %54 = load %struct.representation*, %struct.representation** %9, align 8
  %55 = getelementptr inbounds %struct.representation, %struct.representation* %54, i32 0, i32 2
  %56 = load %struct.fragment*, %struct.fragment** %55, align 8
  %57 = icmp ne %struct.fragment* %56, null
  br i1 %57, label %65, label %58

58:                                               ; preds = %48
  %59 = load i8*, i8** %15, align 8
  %60 = call i32 @xmlFree(i8* %59)
  %61 = load i8*, i8** %17, align 8
  %62 = call i32 @xmlFree(i8* %61)
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = call i32 @AVERROR(i32 %63)
  store i32 %64, i32* %7, align 4
  br label %164

65:                                               ; preds = %48
  %66 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %11, align 8
  %67 = load i32, i32* %18, align 4
  %68 = load i8*, i8** %12, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = load i8*, i8** %15, align 8
  %71 = call i8* @get_content_url(%struct.TYPE_9__** %66, i32 4, i32 %67, i8* %68, i8* %69, i8* %70)
  %72 = load %struct.representation*, %struct.representation** %9, align 8
  %73 = getelementptr inbounds %struct.representation, %struct.representation* %72, i32 0, i32 2
  %74 = load %struct.fragment*, %struct.fragment** %73, align 8
  %75 = getelementptr inbounds %struct.fragment, %struct.fragment* %74, i32 0, i32 0
  store i8* %71, i8** %75, align 8
  %76 = load %struct.representation*, %struct.representation** %9, align 8
  %77 = getelementptr inbounds %struct.representation, %struct.representation* %76, i32 0, i32 2
  %78 = load %struct.fragment*, %struct.fragment** %77, align 8
  %79 = getelementptr inbounds %struct.fragment, %struct.fragment* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %93, label %82

82:                                               ; preds = %65
  %83 = load %struct.representation*, %struct.representation** %9, align 8
  %84 = getelementptr inbounds %struct.representation, %struct.representation* %83, i32 0, i32 2
  %85 = load %struct.fragment*, %struct.fragment** %84, align 8
  %86 = call i32 @av_free(%struct.fragment* %85)
  %87 = load i8*, i8** %15, align 8
  %88 = call i32 @xmlFree(i8* %87)
  %89 = load i8*, i8** %17, align 8
  %90 = call i32 @xmlFree(i8* %89)
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = call i32 @AVERROR(i32 %91)
  store i32 %92, i32* %7, align 4
  br label %164

93:                                               ; preds = %65
  %94 = load i8*, i8** %15, align 8
  %95 = call i32 @xmlFree(i8* %94)
  %96 = load i8*, i8** %17, align 8
  %97 = call i32 @xmlFree(i8* %96)
  br label %98

98:                                               ; preds = %93, %45
  br label %163

99:                                               ; preds = %31
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @av_strcasecmp(i32 %102, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %162, label %105

105:                                              ; preds = %99
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %107 = call i8* @xmlGetProp(%struct.TYPE_9__* %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i8* %107, i8** %16, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %109 = call i8* @xmlGetProp(%struct.TYPE_9__* %108, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  store i8* %109, i8** %17, align 8
  %110 = load i8*, i8** %16, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %105
  %113 = load i8*, i8** %17, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %161

115:                                              ; preds = %112, %105
  %116 = load i8*, i8** %17, align 8
  %117 = call i8* @get_Fragment(i8* %116)
  %118 = bitcast i8* %117 to %struct.fragment*
  store %struct.fragment* %118, %struct.fragment** %19, align 8
  %119 = load %struct.fragment*, %struct.fragment** %19, align 8
  %120 = icmp ne %struct.fragment* %119, null
  br i1 %120, label %128, label %121

121:                                              ; preds = %115
  %122 = load i8*, i8** %16, align 8
  %123 = call i32 @xmlFree(i8* %122)
  %124 = load i8*, i8** %17, align 8
  %125 = call i32 @xmlFree(i8* %124)
  %126 = load i32, i32* @ENOMEM, align 4
  %127 = call i32 @AVERROR(i32 %126)
  store i32 %127, i32* %7, align 4
  br label %164

128:                                              ; preds = %115
  %129 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %11, align 8
  %130 = load i32, i32* %18, align 4
  %131 = load i8*, i8** %12, align 8
  %132 = load i8*, i8** %13, align 8
  %133 = load i8*, i8** %16, align 8
  %134 = call i8* @get_content_url(%struct.TYPE_9__** %129, i32 4, i32 %130, i8* %131, i8* %132, i8* %133)
  %135 = load %struct.fragment*, %struct.fragment** %19, align 8
  %136 = getelementptr inbounds %struct.fragment, %struct.fragment* %135, i32 0, i32 0
  store i8* %134, i8** %136, align 8
  %137 = load %struct.fragment*, %struct.fragment** %19, align 8
  %138 = getelementptr inbounds %struct.fragment, %struct.fragment* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %150, label %141

141:                                              ; preds = %128
  %142 = load %struct.fragment*, %struct.fragment** %19, align 8
  %143 = call i32 @av_free(%struct.fragment* %142)
  %144 = load i8*, i8** %16, align 8
  %145 = call i32 @xmlFree(i8* %144)
  %146 = load i8*, i8** %17, align 8
  %147 = call i32 @xmlFree(i8* %146)
  %148 = load i32, i32* @ENOMEM, align 4
  %149 = call i32 @AVERROR(i32 %148)
  store i32 %149, i32* %7, align 4
  br label %164

150:                                              ; preds = %128
  %151 = load %struct.representation*, %struct.representation** %9, align 8
  %152 = getelementptr inbounds %struct.representation, %struct.representation* %151, i32 0, i32 1
  %153 = load %struct.representation*, %struct.representation** %9, align 8
  %154 = getelementptr inbounds %struct.representation, %struct.representation* %153, i32 0, i32 0
  %155 = load %struct.fragment*, %struct.fragment** %19, align 8
  %156 = call i32 @dynarray_add(i32* %152, i32* %154, %struct.fragment* %155)
  %157 = load i8*, i8** %16, align 8
  %158 = call i32 @xmlFree(i8* %157)
  %159 = load i8*, i8** %17, align 8
  %160 = call i32 @xmlFree(i8* %159)
  br label %161

161:                                              ; preds = %150, %112
  br label %162

162:                                              ; preds = %161, %99
  br label %163

163:                                              ; preds = %162, %98
  store i32 0, i32* %7, align 4
  br label %164

164:                                              ; preds = %163, %141, %121, %82, %58
  %165 = load i32, i32* %7, align 4
  ret i32 %165
}

declare dso_local i32 @av_strcasecmp(i32, i8*) #1

declare dso_local i8* @xmlGetProp(%struct.TYPE_9__*, i8*) #1

declare dso_local i8* @get_Fragment(i8*) #1

declare dso_local i32 @xmlFree(i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @get_content_url(%struct.TYPE_9__**, i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @av_free(%struct.fragment*) #1

declare dso_local i32 @dynarray_add(i32*, i32*, %struct.fragment*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
