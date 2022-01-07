; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_get_content_url.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_get_content_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@XML_TEXT_NODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"$RepresentationID$\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"$Bandwidth$\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_4__**, i32, i32, i8*, i8*, i8*)* @get_content_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_content_url(%struct.TYPE_4__** %0, i32 %1, i32 %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* null, i8** %16, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call i8* @av_mallocz(i32 %19)
  store i8* %20, i8** %17, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i8* @av_mallocz(i32 %21)
  store i8* %22, i8** %18, align 8
  %23 = load i8*, i8** %17, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load i8*, i8** %18, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %6
  store i8* null, i8** %7, align 8
  br label %146

29:                                               ; preds = %25
  store i32 0, i32* %14, align 4
  br label %30

30:                                               ; preds = %93, %29
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %96

34:                                               ; preds = %30
  %35 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %35, i64 %37
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = icmp ne %struct.TYPE_4__* %39, null
  br i1 %40, label %41, label %92

41:                                               ; preds = %34
  %42 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %42, i64 %44
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = icmp ne %struct.TYPE_5__* %48, null
  br i1 %49, label %50, label %92

50:                                               ; preds = %41
  %51 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %51, i64 %53
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @XML_TEXT_NODE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %92

62:                                               ; preds = %50
  %63 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %63, i64 %65
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = call i8* @xmlNodeGetContent(%struct.TYPE_5__* %69)
  store i8* %70, i8** %15, align 8
  %71 = load i8*, i8** %15, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %91

73:                                               ; preds = %62
  %74 = load i8*, i8** %17, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @memset(i8* %74, i32 0, i32 %75)
  %77 = load i8*, i8** %18, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @memset(i8* %77, i32 0, i32 %78)
  %80 = load i8*, i8** %18, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i8*, i8** %17, align 8
  %83 = load i8*, i8** %15, align 8
  %84 = call i32 @ff_make_absolute_url(i8* %80, i32 %81, i8* %82, i8* %83)
  %85 = load i8*, i8** %17, align 8
  %86 = load i8*, i8** %18, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @av_strlcpy(i8* %85, i8* %86, i32 %87)
  %89 = load i8*, i8** %15, align 8
  %90 = call i32 @xmlFree(i8* %89)
  br label %91

91:                                               ; preds = %73, %62
  br label %92

92:                                               ; preds = %91, %50, %41, %34
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %14, align 4
  br label %30

96:                                               ; preds = %30
  %97 = load i8*, i8** %13, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i8*, i8** %17, align 8
  %101 = load i32, i32* %10, align 4
  %102 = load i8*, i8** %17, align 8
  %103 = load i8*, i8** %13, align 8
  %104 = call i32 @ff_make_absolute_url(i8* %100, i32 %101, i8* %102, i8* %103)
  br label %105

105:                                              ; preds = %99, %96
  %106 = load i8*, i8** %11, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %120

108:                                              ; preds = %105
  %109 = load i8*, i8** %17, align 8
  %110 = load i8*, i8** %11, align 8
  %111 = call i8* @av_strireplace(i8* %109, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %110)
  store i8* %111, i8** %16, align 8
  %112 = load i8*, i8** %16, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %108
  br label %140

115:                                              ; preds = %108
  %116 = load i8*, i8** %17, align 8
  %117 = load i8*, i8** %16, align 8
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @av_strlcpy(i8* %116, i8* %117, i32 %118)
  br label %120

120:                                              ; preds = %115, %105
  %121 = load i8*, i8** %12, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %139

123:                                              ; preds = %120
  %124 = load i8*, i8** %17, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %123
  %130 = load i8*, i8** %16, align 8
  %131 = call i32 @av_free(i8* %130)
  %132 = load i8*, i8** %17, align 8
  %133 = load i8*, i8** %12, align 8
  %134 = call i8* @av_strireplace(i8* %132, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %133)
  store i8* %134, i8** %16, align 8
  %135 = load i8*, i8** %16, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %129
  br label %140

138:                                              ; preds = %129
  br label %139

139:                                              ; preds = %138, %123, %120
  br label %140

140:                                              ; preds = %139, %137, %114
  %141 = load i8*, i8** %17, align 8
  %142 = call i32 @av_free(i8* %141)
  %143 = load i8*, i8** %18, align 8
  %144 = call i32 @av_free(i8* %143)
  %145 = load i8*, i8** %16, align 8
  store i8* %145, i8** %7, align 8
  br label %146

146:                                              ; preds = %140, %28
  %147 = load i8*, i8** %7, align 8
  ret i8* %147
}

declare dso_local i8* @av_mallocz(i32) #1

declare dso_local i8* @xmlNodeGetContent(%struct.TYPE_5__*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ff_make_absolute_url(i8*, i32, i8*, i8*) #1

declare dso_local i32 @av_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @xmlFree(i8*) #1

declare dso_local i8* @av_strireplace(i8*, i8*, i8*) #1

declare dso_local i32 @av_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
