; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/tests/extr_avpacket.c_setup_side_data_entry.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/tests/extr_avpacket.c_setup_side_data_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_PKT_DATA_NEW_EXTRADATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Error occurred: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Error occurred in av_packet_add_side_data: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @setup_side_data_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_side_data_entry(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32 0, i32* %4, align 4
  store i32* null, i32** %6, align 8
  %7 = load i32, i32* @AV_PKT_DATA_NEW_EXTRADATA, align 4
  %8 = call i32* @av_packet_side_data_name(i32 %7)
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @strlen(i32* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32* @av_malloc(i32 %11)
  store i32* %12, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = call i32 @AVERROR(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @stderr, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i8* @av_err2str(i32 %18)
  %20 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = call i32 @exit(i32 1) #3
  unreachable

22:                                               ; preds = %1
  %23 = load i32*, i32** %6, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @memcpy(i32* %23, i32* %24, i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* @AV_PKT_DATA_NEW_EXTRADATA, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @av_packet_add_side_data(i32* %27, i32 %28, i32* %29, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %22
  %35 = load i32, i32* @stderr, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i8* @av_err2str(i32 %36)
  %38 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %34, %22
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32* @av_packet_side_data_name(i32) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @av_err2str(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @av_packet_add_side_data(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
