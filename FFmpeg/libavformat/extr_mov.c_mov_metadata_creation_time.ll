; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_metadata_creation_time.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_metadata_creation_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"creation_time is not representable\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"creation_time\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32, i8*)* @mov_metadata_creation_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mov_metadata_creation_time(i32** %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32** %0, i32*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  %11 = icmp sge i32 %10, 2082844800
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = sub nsw i32 %13, 2082844800
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %12, %9
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 1000000
  %19 = trunc i64 %18 to i32
  %20 = sdiv i32 %19, 1000000
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* @AV_LOG_DEBUG, align 4
  %26 = call i32 @av_log(i8* %24, i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %32

27:                                               ; preds = %15
  %28 = load i32**, i32*** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = mul nsw i32 %29, 1000000
  %31 = call i32 @avpriv_dict_set_timestamp(i32** %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %23, %27, %3
  ret void
}

declare dso_local i32 @av_log(i8*, i32, i8*) #1

declare dso_local i32 @avpriv_dict_set_timestamp(i32**, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
