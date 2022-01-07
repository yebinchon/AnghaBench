; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_concatdec.c_add_file.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_concatdec.c_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unsafe file name '%s'\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, %struct.TYPE_10__**, i32*)* @add_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_file(%struct.TYPE_12__* %0, i8* %1, %struct.TYPE_10__** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_10__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_10__** %2, %struct.TYPE_10__*** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %10, align 8
  store i8* null, i8** %12, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %4
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @safe_filename(i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = load i32, i32* @AV_LOG_ERROR, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @av_log(%struct.TYPE_12__* %31, i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* @EPERM, align 4
  %36 = call i32 @AVERROR(i32 %35)
  %37 = call i32 @FAIL(i32 %36)
  br label %38

38:                                               ; preds = %30, %26, %4
  %39 = load i8*, i8** %7, align 8
  %40 = call i8* @avio_find_protocol_name(i8* %39)
  store i8* %40, i8** %13, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i8*, i8** %13, align 8
  %45 = call i32 @strlen(i8* %44)
  br label %47

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %43
  %48 = phi i32 [ %45, %43 ], [ 0, %46 ]
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %15, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %74

52:                                               ; preds = %47
  %53 = load i8*, i8** %7, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = load i64, i64* %15, align 8
  %56 = call i32 @memcmp(i8* %53, i8* %54, i64 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %74, label %58

58:                                               ; preds = %52
  %59 = load i8*, i8** %7, align 8
  %60 = load i64, i64* %15, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 58
  br i1 %64, label %72, label %65

65:                                               ; preds = %58
  %66 = load i8*, i8** %7, align 8
  %67 = load i64, i64* %15, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 44
  br i1 %71, label %72, label %74

72:                                               ; preds = %65, %58
  %73 = load i8*, i8** %7, align 8
  store i8* %73, i8** %12, align 8
  store i8* null, i8** %7, align 8
  br label %100

74:                                               ; preds = %65, %52, %47
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @strlen(i8* %77)
  %79 = load i8*, i8** %7, align 8
  %80 = call i32 @strlen(i8* %79)
  %81 = add nsw i32 %78, %80
  %82 = add nsw i32 %81, 16
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %14, align 8
  %84 = load i64, i64* %14, align 8
  %85 = call i8* @av_malloc(i64 %84)
  store i8* %85, i8** %12, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %74
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = call i32 @AVERROR(i32 %88)
  %90 = call i32 @FAIL(i32 %89)
  br label %91

91:                                               ; preds = %87, %74
  %92 = load i8*, i8** %12, align 8
  %93 = load i64, i64* %14, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 @ff_make_absolute_url(i8* %92, i64 %93, i8* %96, i8* %97)
  %99 = call i32 @av_freep(i8** %7)
  br label %100

100:                                              ; preds = %91, %72
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32*, i32** %9, align 8
  %105 = load i32, i32* %104, align 4
  %106 = icmp uge i32 %103, %105
  br i1 %106, label %107, label %143

107:                                              ; preds = %100
  %108 = load i32*, i32** %9, align 8
  %109 = load i32, i32* %108, align 4
  %110 = mul i32 %109, 2
  %111 = call i64 @FFMAX(i32 %110, i32 16)
  store i64 %111, i64* %17, align 8
  %112 = load i64, i64* %17, align 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = zext i32 %115 to i64
  %117 = icmp ule i64 %112, %116
  br i1 %117, label %132, label %118

118:                                              ; preds = %107
  %119 = load i64, i64* %17, align 8
  %120 = load i32, i32* @SIZE_MAX, align 4
  %121 = sext i32 %120 to i64
  %122 = udiv i64 %121, 56
  %123 = icmp ugt i64 %119, %122
  br i1 %123, label %132, label %124

124:                                              ; preds = %118
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = load i64, i64* %17, align 8
  %129 = mul i64 %128, 56
  %130 = call %struct.TYPE_10__* @av_realloc(%struct.TYPE_10__* %127, i64 %129)
  store %struct.TYPE_10__* %130, %struct.TYPE_10__** %18, align 8
  %131 = icmp ne %struct.TYPE_10__* %130, null
  br i1 %131, label %136, label %132

132:                                              ; preds = %124, %118, %107
  %133 = load i32, i32* @ENOMEM, align 4
  %134 = call i32 @AVERROR(i32 %133)
  %135 = call i32 @FAIL(i32 %134)
  br label %136

136:                                              ; preds = %132, %124
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 2
  store %struct.TYPE_10__* %137, %struct.TYPE_10__** %139, align 8
  %140 = load i64, i64* %17, align 8
  %141 = trunc i64 %140 to i32
  %142 = load i32*, i32** %9, align 8
  store i32 %141, i32* %142, align 4
  br label %143

143:                                              ; preds = %136, %100
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = add i32 %149, 1
  store i32 %150, i32* %148, align 8
  %151 = zext i32 %149 to i64
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i64 %151
  store %struct.TYPE_10__* %152, %struct.TYPE_10__** %11, align 8
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %154 = call i32 @memset(%struct.TYPE_10__* %153, i32 0, i32 56)
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %156 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  store %struct.TYPE_10__* %155, %struct.TYPE_10__** %156, align 8
  %157 = load i8*, i8** %12, align 8
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  store i8* %157, i8** %159, align 8
  %160 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 6
  store i8* %160, i8** %162, align 8
  %163 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 5
  store i8* %163, i8** %165, align 8
  %166 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 4
  store i8* %166, i8** %168, align 8
  %169 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 3
  store i8* %169, i8** %171, align 8
  %172 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 2
  store i8* %172, i8** %174, align 8
  %175 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 1
  store i8* %175, i8** %177, align 8
  store i32 0, i32* %5, align 4
  br label %184

178:                                              ; No predecessors!
  %179 = load i8*, i8** %12, align 8
  %180 = call i32 @av_free(i8* %179)
  %181 = load i8*, i8** %7, align 8
  %182 = call i32 @av_free(i8* %181)
  %183 = load i32, i32* %16, align 4
  store i32 %183, i32* %5, align 4
  br label %184

184:                                              ; preds = %178, %143
  %185 = load i32, i32* %5, align 4
  ret i32 %185
}

declare dso_local i32 @safe_filename(i8*) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*, i8*) #1

declare dso_local i32 @FAIL(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @avio_find_protocol_name(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

declare dso_local i8* @av_malloc(i64) #1

declare dso_local i32 @ff_make_absolute_url(i8*, i64, i8*, i8*) #1

declare dso_local i32 @av_freep(i8**) #1

declare dso_local i64 @FFMAX(i32, i32) #1

declare dso_local %struct.TYPE_10__* @av_realloc(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @av_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
