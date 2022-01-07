; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_timecode.c_av_timecode_make_smpte_tc_string.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_timecode.c_av_timecode_make_smpte_tc_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_TIMECODE_STR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%02u:%02u:%02u%c%02u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @av_timecode_make_smpte_tc_string(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 63
  %14 = call i32 @bcd2uint(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = ashr i32 %15, 8
  %17 = and i32 %16, 127
  %18 = call i32 @bcd2uint(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %5, align 4
  %20 = ashr i32 %19, 16
  %21 = and i32 %20, 127
  %22 = call i32 @bcd2uint(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %23, 24
  %25 = and i32 %24, 63
  %26 = call i32 @bcd2uint(i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, 1073741824
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %30, %3
  %35 = phi i1 [ false, %3 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %11, align 4
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* @AV_TIMECODE_STR_SIZE, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 59, i32 58
  %46 = trunc i32 %45 to i8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @snprintf(i8* %37, i32 %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40, i32 %41, i8 signext %46, i32 %47)
  %49 = load i8*, i8** %4, align 8
  ret i8* %49
}

declare dso_local i32 @bcd2uint(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
