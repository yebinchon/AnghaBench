; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_matroska_convert_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_matroska_convert_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i8*, %struct.TYPE_5__, i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"und\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Skipping invalid tag with no TagName.\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@ff_mkv_metadata_conv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i32**, i8*)* @matroska_convert_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @matroska_convert_tag(i32* %0, %struct.TYPE_5__* %1, i32** %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %9, align 8
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %158, %4
  %17 = load i32, i32* %11, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %161

22:                                               ; preds = %16
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %46

30:                                               ; preds = %22
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strcmp(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %30
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  br label %47

46:                                               ; preds = %30, %22
  br label %47

47:                                               ; preds = %46, %39
  %48 = phi i8* [ %45, %39 ], [ null, %46 ]
  store i8* %48, i8** %12, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %47
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* @AV_LOG_WARNING, align 4
  %59 = call i32 @av_log(i32* %57, i32 %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %158

60:                                               ; preds = %47
  %61 = load i8*, i8** %8, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %65 = load i8*, i8** %8, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @snprintf(i8* %64, i32 1024, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %65, i8* %71)
  br label %82

73:                                               ; preds = %60
  %74 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @av_strlcpy(i8* %74, i8* %80, i32 1024)
  br label %82

82:                                               ; preds = %73, %63
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %82
  %91 = load i8*, i8** %12, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %121, label %93

93:                                               ; preds = %90, %82
  %94 = load i32**, i32*** %7, align 8
  %95 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @av_dict_set(i32** %94, i8* %95, i32 %101, i32 0)
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %93
  %112 = load i32*, i32** %5, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  %118 = load i32**, i32*** %7, align 8
  %119 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  call void @matroska_convert_tag(i32* %112, %struct.TYPE_5__* %117, i32** %118, i8* %119)
  br label %120

120:                                              ; preds = %111, %93
  br label %121

121:                                              ; preds = %120, %90
  %122 = load i8*, i8** %12, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %157

124:                                              ; preds = %121
  %125 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %126 = call i32 @av_strlcat(i8* %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1024)
  %127 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %128 = load i8*, i8** %12, align 8
  %129 = call i32 @av_strlcat(i8* %127, i8* %128, i32 1024)
  %130 = load i32**, i32*** %7, align 8
  %131 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @av_dict_set(i32** %130, i8* %131, i32 %137, i32 0)
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %124
  %148 = load i32*, i32** %5, align 8
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 2
  %154 = load i32**, i32*** %7, align 8
  %155 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  call void @matroska_convert_tag(i32* %148, %struct.TYPE_5__* %153, i32** %154, i8* %155)
  br label %156

156:                                              ; preds = %147, %124
  br label %157

157:                                              ; preds = %156, %121
  br label %158

158:                                              ; preds = %157, %56
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %16

161:                                              ; preds = %16
  %162 = load i32**, i32*** %7, align 8
  %163 = load i32, i32* @ff_mkv_metadata_conv, align 4
  %164 = call i32 @ff_metadata_conv(i32** %162, i32* null, i32 %163)
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @av_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i32, i32) #1

declare dso_local i32 @av_strlcat(i8*, i8*, i32) #1

declare dso_local i32 @ff_metadata_conv(i32**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
