; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_v4l2.c_v4l2_is_v4l_dev.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_v4l2.c_v4l2_is_v4l_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"video\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"radio\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"vbi\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"v4l-subdev\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @v4l2_is_v4l_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l2_is_v4l_dev(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @strncmp(i8* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @strncmp(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @strncmp(i8* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 10)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %14, %10, %6, %1
  %20 = phi i1 [ true, %10 ], [ true, %6 ], [ true, %1 ], [ %18, %14 ]
  %21 = zext i1 %20 to i32
  ret i32 %21
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
