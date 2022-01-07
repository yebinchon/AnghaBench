; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_riffdec.c_ff_read_riff_info.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_riffdec.c_ff_read_riff_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"INFO subchunk truncated\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"too big INFO subchunk\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"truncated file\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"out of memory, unable to read INFO tag\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"premature end of file while reading INFO tag\0A\00", align 1
@AV_DICT_DONT_STRDUP_VAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_read_riff_info(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [5 x i8], align 1
  %13 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %9, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %18 = call i32 @avio_tell(%struct.TYPE_11__* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %151, %123, %2
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %24 = call i32 @avio_tell(%struct.TYPE_11__* %23)
  store i32 %24, i32* %8, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %28, 8
  %30 = icmp sle i32 %27, %29
  br label %31

31:                                               ; preds = %26, %22
  %32 = phi i1 [ false, %22 ], [ %30, %26 ]
  br i1 %32, label %33, label %158

33:                                               ; preds = %31
  %34 = bitcast [5 x i8]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %34, i8 0, i64 5, i1 false)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %36 = call i8* @avio_rl32(%struct.TYPE_11__* %35)
  store i8* %36, i8** %10, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %38 = call i8* @avio_rl32(%struct.TYPE_11__* %37)
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* %11, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %41 = call i64 @avio_feof(%struct.TYPE_11__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %33
  %44 = load i8*, i8** %10, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46, %43
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %51 = load i32, i32* @AV_LOG_WARNING, align 4
  %52 = call i32 @av_log(%struct.TYPE_12__* %50, i32 %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %53, i32* %3, align 4
  br label %159

54:                                               ; preds = %46
  %55 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %55, i32* %3, align 4
  br label %159

56:                                               ; preds = %33
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %70, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %11, align 4
  %63 = sub nsw i32 %61, %62
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @UINT_MAX, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %98

70:                                               ; preds = %66, %60, %56
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %72 = load i32, i32* @SEEK_CUR, align 4
  %73 = call i32 @avio_seek(%struct.TYPE_11__* %71, i32 -9, i32 %72)
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %75 = call i8* @avio_rl32(%struct.TYPE_11__* %74)
  store i8* %75, i8** %10, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %77 = call i8* @avio_rl32(%struct.TYPE_11__* %76)
  %78 = ptrtoint i8* %77 to i32
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %92, label %82

82:                                               ; preds = %70
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %11, align 4
  %85 = sub nsw i32 %83, %84
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %82
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @UINT_MAX, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %88, %82, %70
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %94 = load i32, i32* @AV_LOG_WARNING, align 4
  %95 = call i32 @av_log(%struct.TYPE_12__* %93, i32 %94, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %96 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %96, i32* %3, align 4
  br label %159

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %97, %66
  %99 = load i32, i32* %11, align 4
  %100 = and i32 %99, 1
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %11, align 4
  %103 = load i8*, i8** %10, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %124, label %105

105:                                              ; preds = %98
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @avio_skip(%struct.TYPE_11__* %109, i32 %110)
  br label %123

112:                                              ; preds = %105
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %119 = load i32, i32* @AV_LOG_WARNING, align 4
  %120 = call i32 @av_log(%struct.TYPE_12__* %118, i32 %119, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %121 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %121, i32* %3, align 4
  br label %159

122:                                              ; preds = %112
  br label %123

123:                                              ; preds = %122, %108
  br label %22

124:                                              ; preds = %98
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 1
  %127 = call i8* @av_mallocz(i32 %126)
  store i8* %127, i8** %13, align 8
  %128 = load i8*, i8** %13, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %136, label %130

130:                                              ; preds = %124
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %132 = load i32, i32* @AV_LOG_ERROR, align 4
  %133 = call i32 @av_log(%struct.TYPE_12__* %131, i32 %132, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %134 = load i32, i32* @ENOMEM, align 4
  %135 = call i32 @AVERROR(i32 %134)
  store i32 %135, i32* %3, align 4
  br label %159

136:                                              ; preds = %124
  %137 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 0
  %138 = load i8*, i8** %10, align 8
  %139 = call i32 @AV_WL32(i8* %137, i8* %138)
  %140 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 4
  store i8 0, i8* %140, align 1
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %142 = load i8*, i8** %13, align 8
  %143 = load i32, i32* %11, align 4
  %144 = call i32 @avio_read(%struct.TYPE_11__* %141, i8* %142, i32 %143)
  %145 = load i32, i32* %11, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %136
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %149 = load i32, i32* @AV_LOG_WARNING, align 4
  %150 = call i32 @av_log(%struct.TYPE_12__* %148, i32 %149, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  br label %151

151:                                              ; preds = %147, %136
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 0
  %155 = load i8*, i8** %13, align 8
  %156 = load i32, i32* @AV_DICT_DONT_STRDUP_VAL, align 4
  %157 = call i32 @av_dict_set(i32* %153, i8* %154, i8* %155, i32 %156)
  br label %22

158:                                              ; preds = %31
  store i32 0, i32* %3, align 4
  br label %159

159:                                              ; preds = %158, %130, %117, %92, %54, %49
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i32 @avio_tell(%struct.TYPE_11__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @avio_rl32(%struct.TYPE_11__*) #1

declare dso_local i64 @avio_feof(%struct.TYPE_11__*) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @avio_seek(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @avio_skip(%struct.TYPE_11__*, i32) #1

declare dso_local i8* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @AV_WL32(i8*, i8*) #1

declare dso_local i32 @avio_read(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @av_dict_set(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
