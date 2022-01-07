; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_parseutils.c_test_av_parse_video_rate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_parseutils.c_test_av_parse_video_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@test_av_parse_video_rate.rates = internal constant [25 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [5 x i8] c"-inf\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"123/0\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"-123 / 0\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c" 123  /  321\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"foo/foo\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"foo/1\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"1/foo\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"0/0\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"/0\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"1/\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"-123/123\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"-foo\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"123.23\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c".23\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"-.23\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"-0.234\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"-0.0000001\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"  21332.2324   \00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c" -21332.2324   \00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"'%s' -> %d/%d %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_av_parse_video_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_av_parse_video_rate() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %28, %0
  %5 = load i32, i32* %1, align 4
  %6 = call i32 @FF_ARRAY_ELEMS(i8** getelementptr inbounds ([25 x i8*], [25 x i8*]* @test_av_parse_video_rate.rates, i64 0, i64 0))
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %31

8:                                                ; preds = %4
  %9 = bitcast %struct.TYPE_3__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 16, i1 false)
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [25 x i8*], [25 x i8*]* @test_av_parse_video_rate.rates, i64 0, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @av_parse_video_rate(%struct.TYPE_3__* %3, i8* %13)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [25 x i8*], [25 x i8*]* @test_av_parse_video_rate.rates, i64 0, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0)
  %27 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0), i8* %18, i32 %20, i32 %22, i8* %26)
  br label %28

28:                                               ; preds = %8
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4
  br label %4

31:                                               ; preds = %4
  ret void
}

declare dso_local i32 @FF_ARRAY_ELEMS(i8**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @av_parse_video_rate(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
