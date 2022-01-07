; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_h264.c_parse_profile_level_id.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_h264.c_parse_profile_level_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8* }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"RTP Profile IDC: %x Profile IOP: %x Level: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i8*)* @parse_profile_level_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_profile_level_id(i32* %0, %struct.TYPE_3__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [3 x i8], align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  store i8 %13, i8* %14, align 1
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 2
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %21 = call i8* @strtol(i8* %20, i32* null, i32 16)
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 2
  %24 = load i8, i8* %23, align 1
  %25 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  store i8 %24, i8* %25, align 1
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 3
  %28 = load i8, i8* %27, align 1
  %29 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %31 = call i8* @strtol(i8* %30, i32* null, i32 16)
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 4
  %34 = load i8, i8* %33, align 1
  %35 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  store i8 %34, i8* %35, align 1
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 5
  %38 = load i8, i8* %37, align 1
  %39 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  store i8 %38, i8* %39, align 1
  %40 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %41 = call i8* @strtol(i8* %40, i32* null, i32 16)
  store i8* %41, i8** %10, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* @AV_LOG_DEBUG, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @av_log(i32* %42, i32 %43, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %44, i8* %45, i8* %46)
  %48 = load i8*, i8** %8, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  ret void
}

declare dso_local i8* @strtol(i8*, i32*, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
