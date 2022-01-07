; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_redspark.c_redspark_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_redspark.c_redspark_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"RedSpark\00", align 1
@AVPROBE_SCORE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @redspark_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redspark_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [8 x i8], align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @AV_RB32(i64 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = xor i32 %11, 1382376531
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = xor i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @AV_WB32(i8* %16, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @rol(i32 %19, i32 11)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @rol(i32 %21, i32 3)
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 4
  %29 = call i32 @AV_RB32(i64 %28)
  %30 = load i32, i32* %4, align 4
  %31 = xor i32 %29, %30
  store i32 %31, i32* %5, align 4
  %32 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %33 = getelementptr inbounds i8, i8* %32, i64 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @AV_WB32(i8* %33, i32 %34)
  %36 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %37 = call i64 @AV_RB64(i8* %36)
  %38 = call i64 @AV_RB64(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %1
  %41 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  store i32 %41, i32* %2, align 4
  br label %43

42:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %40
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @AV_RB32(i64) #1

declare dso_local i32 @AV_WB32(i8*, i32) #1

declare dso_local i32 @rol(i32, i32) #1

declare dso_local i64 @AV_RB64(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
