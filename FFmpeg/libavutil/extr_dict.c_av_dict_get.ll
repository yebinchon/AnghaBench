; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_dict.c_av_dict_get.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_dict.c_av_dict_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }

@AV_DICT_MATCH_CASE = common dso_local global i32 0, align 4
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @av_dict_get(%struct.TYPE_7__* %0, i8* %1, %struct.TYPE_6__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %144

16:                                               ; preds = %4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = ptrtoint %struct.TYPE_6__* %20 to i64
  %25 = ptrtoint %struct.TYPE_6__* %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 8
  %28 = add nsw i64 %27, 1
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %10, align 4
  br label %31

30:                                               ; preds = %16
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %30, %19
  br label %32

32:                                               ; preds = %140, %31
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %38, label %143

38:                                               ; preds = %32
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %12, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @AV_DICT_MATCH_CASE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %81

51:                                               ; preds = %38
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %77, %51
  %53 = load i8*, i8** %12, align 8
  %54 = load i32, i32* %11, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* %11, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %58, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %52
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %11, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  br label %74

74:                                               ; preds = %66, %52
  %75 = phi i1 [ false, %52 ], [ %73, %66 ]
  br i1 %75, label %76, label %80

76:                                               ; preds = %74
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %11, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %52

80:                                               ; preds = %74
  br label %111

81:                                               ; preds = %38
  store i32 0, i32* %11, align 4
  br label %82

82:                                               ; preds = %107, %81
  %83 = load i8*, i8** %12, align 8
  %84 = load i32, i32* %11, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = call i64 @av_toupper(i8 signext %87)
  %89 = load i8*, i8** %7, align 8
  %90 = load i32, i32* %11, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = call i64 @av_toupper(i8 signext %93)
  %95 = icmp eq i64 %88, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %82
  %97 = load i8*, i8** %7, align 8
  %98 = load i32, i32* %11, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  br label %104

104:                                              ; preds = %96, %82
  %105 = phi i1 [ false, %82 ], [ %103, %96 ]
  br i1 %105, label %106, label %110

106:                                              ; preds = %104
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %11, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %11, align 4
  br label %82

110:                                              ; preds = %104
  br label %111

111:                                              ; preds = %110, %80
  %112 = load i8*, i8** %7, align 8
  %113 = load i32, i32* %11, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = icmp ne i8 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  br label %140

119:                                              ; preds = %111
  %120 = load i8*, i8** %12, align 8
  %121 = load i32, i32* %11, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %119
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %127
  br label %140

133:                                              ; preds = %127, %119
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i64 %138
  store %struct.TYPE_6__* %139, %struct.TYPE_6__** %5, align 8
  br label %144

140:                                              ; preds = %132, %118
  %141 = load i32, i32* %10, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %10, align 4
  br label %32

143:                                              ; preds = %32
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %144

144:                                              ; preds = %143, %133, %15
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  ret %struct.TYPE_6__* %145
}

declare dso_local i64 @av_toupper(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
