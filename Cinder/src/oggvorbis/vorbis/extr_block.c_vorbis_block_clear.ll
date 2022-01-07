; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_block.c_vorbis_block_clear.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_block.c_vorbis_block_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_8__** }

@PACKETBLOBS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vorbis_block_clear(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %4, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = call i32 @_vorbis_block_ripcord(%struct.TYPE_9__* %8)
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = icmp ne %struct.TYPE_8__* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = call i32 @_ogg_free(%struct.TYPE_8__* %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = icmp ne %struct.TYPE_8__* %20, null
  br i1 %21, label %22, label %56

22:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %50, %22
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @PACKETBLOBS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %53

27:                                               ; preds = %23
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %30, i64 %32
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = call i32 @oggpack_writeclear(%struct.TYPE_8__* %34)
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @PACKETBLOBS, align 4
  %38 = sdiv i32 %37, 2
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %27
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %43, i64 %45
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = call i32 @_ogg_free(%struct.TYPE_8__* %47)
  br label %49

49:                                               ; preds = %40, %27
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %23

53:                                               ; preds = %23
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = call i32 @_ogg_free(%struct.TYPE_8__* %54)
  br label %56

56:                                               ; preds = %53, %19
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %58 = call i32 @memset(%struct.TYPE_9__* %57, i32 0, i32 16)
  ret i32 0
}

declare dso_local i32 @_vorbis_block_ripcord(%struct.TYPE_9__*) #1

declare dso_local i32 @_ogg_free(%struct.TYPE_8__*) #1

declare dso_local i32 @oggpack_writeclear(%struct.TYPE_8__*) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
