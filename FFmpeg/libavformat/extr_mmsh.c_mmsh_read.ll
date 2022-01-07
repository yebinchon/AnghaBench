; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mmsh.c_mmsh_read.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mmsh.c_mmsh_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32)* @mmsh_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmsh_read(%struct.TYPE_8__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %9, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %10, align 8
  br label %16

16:                                               ; preds = %46, %3
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @ff_mms_read_header(%struct.TYPE_10__* %25, i32* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  br label %45

29:                                               ; preds = %16
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %36 = call i32 @handle_chunk_type(%struct.TYPE_9__* %35)
  store i32 %36, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %52

40:                                               ; preds = %34, %29
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @ff_mms_read_data(%struct.TYPE_10__* %41, i32* %42, i32 %43)
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %40, %24
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br i1 %49, label %16, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %38
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @ff_mms_read_header(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @handle_chunk_type(%struct.TYPE_9__*) #1

declare dso_local i32 @ff_mms_read_data(%struct.TYPE_10__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
