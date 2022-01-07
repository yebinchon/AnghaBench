; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dolby_e.c_parse_indices.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dolby_e.c_parse_indices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i8**, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid start index\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_8__*)* @parse_indices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_indices(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 0, i32* %8, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %7, align 8
  br label %14

14:                                               ; preds = %139, %2
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %145

20:                                               ; preds = %14
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = call i64 @get_bits1(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %86

25:                                               ; preds = %20
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = call i8* @get_bits(i32* %27, i32 6)
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %25
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @AV_LOG_ERROR, align 4
  %40 = call i32 @av_log(i32 %38, i32 %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %41, i32* %3, align 4
  br label %146

42:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %58, %42
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %43
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i8**, i8*** %49, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %50, i64 %56
  store i8* null, i8** %57, align 8
  br label %58

58:                                               ; preds = %47
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %43

61:                                               ; preds = %43
  br label %62

62:                                               ; preds = %82, %61
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %62
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = call i8* @get_bits(i32* %70, i32 2)
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i8**, i8*** %73, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %74, i64 %80
  store i8* %71, i8** %81, align 8
  br label %82

82:                                               ; preds = %68
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %62

85:                                               ; preds = %62
  br label %138

86:                                               ; preds = %20
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %121

89:                                               ; preds = %86
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %92, %95
  br i1 %96, label %97, label %121

97:                                               ; preds = %89
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i8**, i8*** %99, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %100, i64 %104
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i8**, i8*** %107, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %108, i64 %112
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = mul i64 %117, 8
  %119 = trunc i64 %118 to i32
  %120 = call i32 @memcpy(i8** %105, i8** %113, i32 %119)
  br label %137

121:                                              ; preds = %89, %86
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = load i8**, i8*** %123, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %124, i64 %128
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = mul i64 %133, 8
  %135 = trunc i64 %134 to i32
  %136 = call i32 @memset(i8** %129, i32 0, i32 %135)
  br label %137

137:                                              ; preds = %121, %97
  br label %138

138:                                              ; preds = %137, %85
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %8, align 4
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %142, %struct.TYPE_6__** %6, align 8
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 1
  store %struct.TYPE_6__* %144, %struct.TYPE_6__** %7, align 8
  br label %14

145:                                              ; preds = %14
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %145, %35
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @memcpy(i8**, i8**, i32) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
