; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_libopencv.c_read_shape_from_file.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_libopencv.c_read_shape_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Overflow on the number of rows in the file\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Overflow on the number of columns in the file\0A\00", align 1
@SIZE_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"File with size %dx%d is too big\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32**, i8*, i8*)* @read_shape_from_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_shape_from_file(i32* %0, i32* %1, i32** %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = call i32 @av_file_map(i8* %20, i8** %12, i64* %15, i32 0, i8* %21)
  store i32 %22, i32* %16, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* %16, align 4
  store i32 %25, i32* %6, align 4
  br label %167

26:                                               ; preds = %5
  store i32 0, i32* %19, align 4
  store i32 0, i32* %17, align 4
  br label %27

27:                                               ; preds = %72, %26
  %28 = load i32, i32* %17, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %15, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %75

32:                                               ; preds = %27
  %33 = load i8*, i8** %12, align 8
  %34 = load i32, i32* %17, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 10
  br i1 %39, label %40, label %59

40:                                               ; preds = %32
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @INT_MAX, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i8*, i8** %11, align 8
  %47 = load i32, i32* @AV_LOG_ERROR, align 4
  %48 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %46, i32 %47, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %49, i32* %16, align 4
  br label %163

50:                                               ; preds = %40
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %19, align 4
  %57 = call i32 @FFMAX(i32 %55, i32 %56)
  %58 = load i32*, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  store i32 0, i32* %19, align 4
  br label %69

59:                                               ; preds = %32
  %60 = load i32, i32* %19, align 4
  %61 = load i32, i32* @INT_MAX, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i8*, i8** %11, align 8
  %65 = load i32, i32* @AV_LOG_ERROR, align 4
  %66 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %64, i32 %65, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %67, i32* %6, align 4
  br label %167

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %50
  %70 = load i32, i32* %19, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %19, align 4
  br label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %17, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %17, align 4
  br label %27

75:                                               ; preds = %27
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = load i32, i32* @SIZE_MAX, align 4
  %80 = sext i32 %79 to i64
  %81 = udiv i64 %80, 4
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = udiv i64 %81, %84
  %86 = icmp ugt i64 %78, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %75
  %88 = load i8*, i8** %11, align 8
  %89 = load i32, i32* @AV_LOG_ERROR, align 4
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %88, i32 %89, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %91, i32 %93)
  %95 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %95, i32* %16, align 4
  br label %163

96:                                               ; preds = %75
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = mul i64 4, %99
  %101 = trunc i64 %100 to i32
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %102, align 4
  %104 = call i32* @av_mallocz_array(i32 %101, i32 %103)
  %105 = load i32**, i32*** %9, align 8
  store i32* %104, i32** %105, align 8
  %106 = icmp ne i32* %104, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %96
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = call i32 @AVERROR(i32 %108)
  store i32 %109, i32* %16, align 4
  br label %163

110:                                              ; preds = %96
  %111 = load i8*, i8** %12, align 8
  store i8* %111, i8** %13, align 8
  %112 = load i8*, i8** %12, align 8
  %113 = load i64, i64* %15, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  %115 = getelementptr inbounds i8, i8* %114, i64 -1
  store i8* %115, i8** %14, align 8
  store i32 0, i32* %17, align 4
  br label %116

116:                                              ; preds = %159, %110
  %117 = load i32, i32* %17, align 4
  %118 = load i32*, i32** %8, align 8
  %119 = load i32, i32* %118, align 4
  %120 = icmp slt i32 %117, %119
  br i1 %120, label %121, label %162

121:                                              ; preds = %116
  store i32 0, i32* %18, align 4
  br label %122

122:                                              ; preds = %155, %121
  %123 = load i8*, i8** %13, align 8
  %124 = load i8*, i8** %14, align 8
  %125 = icmp ugt i8* %123, %124
  br i1 %125, label %131, label %126

126:                                              ; preds = %122
  %127 = load i8*, i8** %13, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 10
  br i1 %130, label %131, label %134

131:                                              ; preds = %126, %122
  %132 = load i8*, i8** %13, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %13, align 8
  br label %158

134:                                              ; preds = %126
  %135 = load i8*, i8** %13, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %13, align 8
  %137 = load i8, i8* %135, align 1
  %138 = sext i8 %137 to i32
  %139 = call i32 @av_isgraph(i32 %138)
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = load i32**, i32*** %9, align 8
  %145 = load i32*, i32** %144, align 8
  %146 = load i32*, i32** %7, align 8
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %17, align 4
  %149 = mul nsw i32 %147, %148
  %150 = load i32, i32* %18, align 4
  %151 = add nsw i32 %149, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %145, i64 %152
  store i32 %143, i32* %153, align 4
  br label %154

154:                                              ; preds = %134
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %18, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %18, align 4
  br label %122

158:                                              ; preds = %131
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %17, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %17, align 4
  br label %116

162:                                              ; preds = %116
  br label %163

163:                                              ; preds = %162, %107, %87, %45
  %164 = load i8*, i8** %12, align 8
  %165 = load i64, i64* %15, align 8
  %166 = call i32 @av_file_unmap(i8* %164, i64 %165)
  store i32 0, i32* %6, align 4
  br label %167

167:                                              ; preds = %163, %63, %24
  %168 = load i32, i32* %6, align 4
  ret i32 %168
}

declare dso_local i32 @av_file_map(i8*, i8**, i64*, i32, i8*) #1

declare dso_local i32 @av_log(i8*, i32, i8*, ...) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32* @av_mallocz_array(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_isgraph(i32) #1

declare dso_local i32 @av_file_unmap(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
