; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonstreamsinterface_stream.c_intfstream_seek.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonstreamsinterface_stream.c_intfstream_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_6__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@RETRO_VFS_SEEK_POSITION_START = common dso_local global i32 0, align 4
@RETRO_VFS_SEEK_POSITION_CURRENT = common dso_local global i32 0, align 4
@RETRO_VFS_SEEK_POSITION_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intfstream_seek(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %10 = icmp ne %struct.TYPE_9__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %42

12:                                               ; preds = %3
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %41 [
    i32 132, label %16
    i32 131, label %32
    i32 133, label %40
  ]

16:                                               ; preds = %12
  store i32 0, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %24 [
    i32 128, label %18
    i32 130, label %20
    i32 129, label %22
  ]

18:                                               ; preds = %16
  %19 = load i32, i32* @RETRO_VFS_SEEK_POSITION_START, align 4
  store i32 %19, i32* %8, align 4
  br label %24

20:                                               ; preds = %16
  %21 = load i32, i32* @RETRO_VFS_SEEK_POSITION_CURRENT, align 4
  store i32 %21, i32* %8, align 4
  br label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @RETRO_VFS_SEEK_POSITION_END, align 4
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %16, %22, %20, %18
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @filestream_seek(i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %42

32:                                               ; preds = %12
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @memstream_seek(i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %42

40:                                               ; preds = %12
  br label %41

41:                                               ; preds = %12, %40
  store i32 -1, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %32, %24, %11
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @filestream_seek(i32, i32, i32) #1

declare dso_local i32 @memstream_seek(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
