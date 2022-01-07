; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_utils.c_sws_allocVec.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_utils.c_sws_allocVec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8* }

@INT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @sws_allocVec(i32 %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp sle i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = load i32, i32* @INT_MAX, align 4
  %11 = sext i32 %10 to i64
  %12 = udiv i64 %11, 8
  %13 = icmp ugt i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %7, %1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %40

15:                                               ; preds = %7
  %16 = call i8* @av_malloc(i32 16)
  %17 = bitcast i8* %16 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %4, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %40

21:                                               ; preds = %15
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 8, %26
  %28 = trunc i64 %27 to i32
  %29 = call i8* @av_malloc(i32 %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %21
  %37 = call i32 @av_freep(%struct.TYPE_4__** %4)
  br label %38

38:                                               ; preds = %36, %21
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %2, align 8
  br label %40

40:                                               ; preds = %38, %20, %14
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %41
}

declare dso_local i8* @av_malloc(i32) #1

declare dso_local i32 @av_freep(%struct.TYPE_4__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
