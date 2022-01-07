; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/tests/extr_movenc.c_init_out.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/tests/extr_movenc.c_init_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cur_name = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@format = common dso_local global i8* null, align 8
@md5 = common dso_local global i32 0, align 4
@write_file = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@out = common dso_local global i32 0, align 4
@out_size = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @init_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_out(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [100 x i8], align 16
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  store i8* %4, i8** @cur_name, align 8
  %5 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %6 = load i8*, i8** @cur_name, align 8
  %7 = load i8*, i8** @format, align 8
  %8 = call i32 @snprintf(i8* %5, i32 100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %6, i8* %7)
  %9 = load i32, i32* @md5, align 4
  %10 = call i32 @av_md5_init(i32 %9)
  %11 = load i64, i64* @write_file, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %15 = call i32 @fopen(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %15, i32* @out, align 4
  %16 = load i32, i32* @out, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %20 = call i32 @perror(i8* %19)
  br label %21

21:                                               ; preds = %18, %13
  br label %22

22:                                               ; preds = %21, %1
  store i64 0, i64* @out_size, align 8
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @av_md5_init(i32) #1

declare dso_local i32 @fopen(i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
