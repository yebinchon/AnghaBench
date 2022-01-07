; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlz.c_decode_string.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlz.c_decode_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@FIRST_CODE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"MLZ offset error.\0A\00", align 1
@DIC_INDEX_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"MLZ dic index error.\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MLZ dic offset error.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i32, i32*, i64)* @decode_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_string(%struct.TYPE_5__* %0, i8* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %12, align 8
  store i64 0, i64* %13, align 8
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %15, align 4
  %22 = load i32*, i32** %10, align 8
  store i32 128, i32* %22, align 4
  br label %23

23:                                               ; preds = %153, %5
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* %11, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %154

27:                                               ; preds = %23
  %28 = load i32, i32* %15, align 4
  switch i32 %28, label %32 [
    i32 128, label %29
  ]

29:                                               ; preds = %27
  %30 = load i64, i64* %13, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %6, align 4
  br label %157

32:                                               ; preds = %27
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* @FIRST_CODE, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load i32, i32* %15, align 4
  %38 = load i32*, i32** %10, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %15, align 4
  %40 = trunc i32 %39 to i8
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  store i8 %40, i8* %42, align 1
  %43 = load i64, i64* %13, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %13, align 8
  %45 = load i64, i64* %13, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %6, align 4
  br label %157

47:                                               ; preds = %32
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %14, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %17, align 4
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* %11, align 8
  %64 = icmp uge i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %47
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @AV_LOG_ERROR, align 4
  %70 = call i32 @av_log(i32 %68, i32 %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %71 = load i64, i64* %13, align 8
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %6, align 4
  br label %157

73:                                               ; preds = %47
  %74 = load i32, i32* %17, align 4
  %75 = trunc i32 %74 to i8
  %76 = load i8*, i8** %8, align 8
  %77 = load i64, i64* %14, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8 %75, i8* %78, align 1
  %79 = load i64, i64* %13, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %13, align 8
  br label %81

81:                                               ; preds = %73
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %81
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* @DIC_INDEX_MAX, align 4
  %93 = sub nsw i32 %92, 1
  %94 = icmp sgt i32 %91, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %90, %81
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @AV_LOG_ERROR, align 4
  %100 = call i32 @av_log(i32 %98, i32 %99, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %101 = load i64, i64* %13, align 8
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %6, align 4
  br label %157

103:                                              ; preds = %90
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* @FIRST_CODE, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %152

107:                                              ; preds = %103
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %109 = load i32, i32* %15, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %16, align 4
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  store i64 %121, i64* %14, align 8
  %122 = load i32, i32* %16, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %107
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* @DIC_INDEX_MAX, align 4
  %127 = sub nsw i32 %126, 1
  %128 = icmp sgt i32 %125, %127
  br i1 %128, label %129, label %137

129:                                              ; preds = %124, %107
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @AV_LOG_ERROR, align 4
  %134 = call i32 @av_log(i32 %132, i32 %133, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %135 = load i64, i64* %13, align 8
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %6, align 4
  br label %157

137:                                              ; preds = %124
  %138 = load i64, i64* %14, align 8
  %139 = load i32, i32* @DIC_INDEX_MAX, align 4
  %140 = sub nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = icmp ugt i64 %138, %141
  br i1 %142, label %143, label %151

143:                                              ; preds = %137
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @AV_LOG_ERROR, align 4
  %148 = call i32 @av_log(i32 %146, i32 %147, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %149 = load i64, i64* %13, align 8
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %6, align 4
  br label %157

151:                                              ; preds = %137
  br label %152

152:                                              ; preds = %151, %103
  br label %153

153:                                              ; preds = %152
  br label %23

154:                                              ; preds = %23
  %155 = load i64, i64* %13, align 8
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %6, align 4
  br label %157

157:                                              ; preds = %154, %143, %129, %95, %65, %36, %29
  %158 = load i32, i32* %6, align 4
  ret i32 %158
}

declare dso_local i32 @av_log(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
