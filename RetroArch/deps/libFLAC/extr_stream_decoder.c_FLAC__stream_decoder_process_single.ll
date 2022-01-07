; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_stream_decoder.c_FLAC__stream_decoder_process_single.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_stream_decoder.c_FLAC__stream_decoder_process_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FLAC__stream_decoder_process_single(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %6 = icmp ne %struct.TYPE_9__* null, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @FLAC__ASSERT(i32 %7)
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = icmp ne %struct.TYPE_8__* null, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @FLAC__ASSERT(i32 %13)
  br label %15

15:                                               ; preds = %1, %52
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %50 [
    i32 128, label %21
    i32 130, label %27
    i32 129, label %33
    i32 131, label %39
    i32 132, label %49
    i32 133, label %49
  ]

21:                                               ; preds = %15
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = call i32 @find_metadata_(%struct.TYPE_9__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %53

26:                                               ; preds = %21
  br label %52

27:                                               ; preds = %15
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = call i32 @read_metadata_(%struct.TYPE_9__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %53

32:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %53

33:                                               ; preds = %15
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = call i32 @frame_sync_(%struct.TYPE_9__* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %53

38:                                               ; preds = %33
  br label %52

39:                                               ; preds = %15
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = call i32 @read_frame_(%struct.TYPE_9__* %40, i32* %4, i32 1)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %53

44:                                               ; preds = %39
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 1, i32* %2, align 4
  br label %53

48:                                               ; preds = %44
  br label %52

49:                                               ; preds = %15, %15
  store i32 1, i32* %2, align 4
  br label %53

50:                                               ; preds = %15
  %51 = call i32 @FLAC__ASSERT(i32 0)
  store i32 0, i32* %2, align 4
  br label %53

52:                                               ; preds = %48, %38, %26
  br label %15

53:                                               ; preds = %50, %49, %47, %43, %37, %32, %31, %25
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @FLAC__ASSERT(i32) #1

declare dso_local i32 @find_metadata_(%struct.TYPE_9__*) #1

declare dso_local i32 @read_metadata_(%struct.TYPE_9__*) #1

declare dso_local i32 @frame_sync_(%struct.TYPE_9__*) #1

declare dso_local i32 @read_frame_(%struct.TYPE_9__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
