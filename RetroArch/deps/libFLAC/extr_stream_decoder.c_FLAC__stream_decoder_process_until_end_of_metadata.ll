; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_stream_decoder.c_FLAC__stream_decoder_process_until_end_of_metadata.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_stream_decoder.c_FLAC__stream_decoder_process_until_end_of_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FLAC__stream_decoder_process_until_end_of_metadata(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %5 = icmp ne %struct.TYPE_7__* null, %4
  %6 = zext i1 %5 to i32
  %7 = call i32 @FLAC__ASSERT(i32 %6)
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = icmp ne %struct.TYPE_6__* null, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @FLAC__ASSERT(i32 %12)
  br label %14

14:                                               ; preds = %1, %35
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %33 [
    i32 128, label %20
    i32 130, label %26
    i32 129, label %32
    i32 131, label %32
    i32 132, label %32
    i32 133, label %32
  ]

20:                                               ; preds = %14
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = call i32 @find_metadata_(%struct.TYPE_7__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %36

25:                                               ; preds = %20
  br label %35

26:                                               ; preds = %14
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = call i32 @read_metadata_(%struct.TYPE_7__* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %36

31:                                               ; preds = %26
  br label %35

32:                                               ; preds = %14, %14, %14, %14
  store i32 1, i32* %2, align 4
  br label %36

33:                                               ; preds = %14
  %34 = call i32 @FLAC__ASSERT(i32 0)
  store i32 0, i32* %2, align 4
  br label %36

35:                                               ; preds = %31, %25
  br label %14

36:                                               ; preds = %33, %32, %30, %24
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @FLAC__ASSERT(i32) #1

declare dso_local i32 @find_metadata_(%struct.TYPE_7__*) #1

declare dso_local i32 @read_metadata_(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
