; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_assdec.c_ass_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_assdec.c_ass_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"[Script Info]\00", align 1
@AVPROBE_SCORE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @ass_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ass_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca [13 x i8], align 1
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ff_text_init_buf(i32* %5, i32 %8, i32 %11)
  br label %13

13:                                               ; preds = %23, %1
  %14 = call signext i8 @ff_text_peek_r8(i32* %5)
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 13
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = call signext i8 @ff_text_peek_r8(i32* %5)
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 10
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i1 [ true, %13 ], [ %20, %17 ]
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = call i32 @ff_text_r8(i32* %5)
  br label %13

25:                                               ; preds = %21
  %26 = getelementptr inbounds [13 x i8], [13 x i8]* %4, i64 0, i64 0
  %27 = call i32 @ff_text_read(i32* %5, i8* %26, i32 13)
  %28 = getelementptr inbounds [13 x i8], [13 x i8]* %4, i64 0, i64 0
  %29 = call i32 @memcmp(i8* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 13)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  store i32 %32, i32* %2, align 4
  br label %34

33:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %31
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @ff_text_init_buf(i32*, i32, i32) #1

declare dso_local signext i8 @ff_text_peek_r8(i32*) #1

declare dso_local i32 @ff_text_r8(i32*) #1

declare dso_local i32 @ff_text_read(i32*, i8*, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
