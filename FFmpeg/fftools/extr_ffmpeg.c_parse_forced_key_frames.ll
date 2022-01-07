; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg.c_parse_forced_key_frames.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg.c_parse_forced_key_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_8__ = type { i64, i32, i64* }
%struct.TYPE_10__ = type { i32 }

@AV_LOG_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Could not allocate forced key frames array.\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"chapters\00", align 1
@output_files = common dso_local global %struct.TYPE_12__** null, align 8
@INT_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"force_key_frames\00", align 1
@AV_TIME_BASE_Q = common dso_local global i32 0, align 4
@compare_int64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_8__*, %struct.TYPE_10__*)* @parse_forced_key_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_forced_key_frames(i8* %0, %struct.TYPE_8__* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_11__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %6, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %18 = load i8*, i8** %4, align 8
  store i8* %18, i8** %7, align 8
  br label %19

19:                                               ; preds = %32, %3
  %20 = load i8*, i8** %7, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load i8*, i8** %7, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 44
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %28, %23
  br label %32

32:                                               ; preds = %31
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %7, align 8
  br label %19

35:                                               ; preds = %19
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i64* @av_malloc_array(i32 %37, i32 8)
  store i64* %38, i64** %13, align 8
  %39 = load i64*, i64** %13, align 8
  %40 = icmp ne i64* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @AV_LOG_FATAL, align 4
  %43 = call i32 @av_log(i32* null, i32 %42, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %44 = call i32 @exit_program(i32 1)
  br label %45

45:                                               ; preds = %41, %35
  %46 = load i8*, i8** %4, align 8
  store i8* %46, i8** %7, align 8
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %173, %45
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %176

51:                                               ; preds = %47
  %52 = load i8*, i8** %7, align 8
  %53 = call i8* @strchr(i8* %52, i8 signext 44)
  store i8* %53, i8** %14, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i8*, i8** %14, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %14, align 8
  store i8 0, i8* %57, align 1
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @memcmp(i8* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %152, label %63

63:                                               ; preds = %59
  %64 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @output_files, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %64, i64 %67
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  store %struct.TYPE_9__* %71, %struct.TYPE_9__** %15, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @INT_MAX, align 4
  %76 = load i32, i32* %10, align 4
  %77 = sub nsw i32 %75, %76
  %78 = icmp sgt i32 %74, %77
  br i1 %78, label %89, label %79

79:                                               ; preds = %63
  %80 = load i64*, i64** %13, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sub nsw i32 %83, 1
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %10, align 4
  %87 = call i64* @av_realloc_f(i64* %80, i32 %86, i32 8)
  store i64* %87, i64** %13, align 8
  %88 = icmp ne i64* %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %79, %63
  %90 = load i32, i32* @AV_LOG_FATAL, align 4
  %91 = call i32 @av_log(i32* null, i32 %90, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %92 = call i32 @exit_program(i32 1)
  br label %93

93:                                               ; preds = %89, %79
  %94 = load i8*, i8** %7, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load i8*, i8** %7, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 8
  %102 = call i64 @parse_time_or_die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %101, i32 1)
  br label %104

103:                                              ; preds = %93
  br label %104

104:                                              ; preds = %103, %99
  %105 = phi i64 [ %102, %99 ], [ 0, %103 ]
  store i64 %105, i64* %12, align 8
  %106 = load i64, i64* %12, align 8
  %107 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @av_rescale_q(i64 %106, i32 %107, i32 %110)
  store i64 %111, i64* %12, align 8
  store i32 0, i32* %16, align 4
  br label %112

112:                                              ; preds = %148, %104
  %113 = load i32, i32* %16, align 4
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %151

118:                                              ; preds = %112
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %120, align 8
  %122 = load i32, i32* %16, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %121, i64 %123
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  store %struct.TYPE_11__* %125, %struct.TYPE_11__** %17, align 8
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp slt i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 @av_assert1(i32 %129)
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @av_rescale_q(i64 %133, i32 %136, i32 %139)
  %141 = load i64, i64* %12, align 8
  %142 = add nsw i64 %140, %141
  %143 = load i64*, i64** %13, align 8
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %11, align 4
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i64, i64* %143, i64 %146
  store i64 %142, i64* %147, align 8
  br label %148

148:                                              ; preds = %118
  %149 = load i32, i32* %16, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %16, align 4
  br label %112

151:                                              ; preds = %112
  br label %171

152:                                              ; preds = %59
  %153 = load i8*, i8** %7, align 8
  %154 = call i64 @parse_time_or_die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %153, i32 1)
  store i64 %154, i64* %12, align 8
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* %10, align 4
  %157 = icmp slt i32 %155, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @av_assert1(i32 %158)
  %160 = load i64, i64* %12, align 8
  %161 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i64 @av_rescale_q(i64 %160, i32 %161, i32 %164)
  %166 = load i64*, i64** %13, align 8
  %167 = load i32, i32* %11, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %11, align 4
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i64, i64* %166, i64 %169
  store i64 %165, i64* %170, align 8
  br label %171

171:                                              ; preds = %152, %151
  %172 = load i8*, i8** %14, align 8
  store i8* %172, i8** %7, align 8
  br label %173

173:                                              ; preds = %171
  %174 = load i32, i32* %9, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %9, align 4
  br label %47

176:                                              ; preds = %47
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* %10, align 4
  %179 = icmp eq i32 %177, %178
  %180 = zext i1 %179 to i32
  %181 = call i32 @av_assert0(i32 %180)
  %182 = load i64*, i64** %13, align 8
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* @compare_int64, align 4
  %185 = call i32 @qsort(i64* %182, i32 %183, i32 8, i32 %184)
  %186 = load i32, i32* %10, align 4
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 8
  %189 = load i64*, i64** %13, align 8
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 2
  store i64* %189, i64** %191, align 8
  ret void
}

declare dso_local i64* @av_malloc_array(i32, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @exit_program(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i64* @av_realloc_f(i64*, i32, i32) #1

declare dso_local i64 @parse_time_or_die(i8*, i8*, i32) #1

declare dso_local i64 @av_rescale_q(i64, i32, i32) #1

declare dso_local i32 @av_assert1(i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @qsort(i64*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
