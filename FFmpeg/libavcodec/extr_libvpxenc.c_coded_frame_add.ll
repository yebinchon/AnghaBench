; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libvpxenc.c_coded_frame_add.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libvpxenc.c_coded_frame_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FrameListData = type { %struct.FrameListData* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.FrameListData*)* @coded_frame_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coded_frame_add(i8* %0, %struct.FrameListData* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.FrameListData*, align 8
  %5 = alloca %struct.FrameListData**, align 8
  store i8* %0, i8** %3, align 8
  store %struct.FrameListData* %1, %struct.FrameListData** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.FrameListData**
  store %struct.FrameListData** %7, %struct.FrameListData*** %5, align 8
  br label %8

8:                                                ; preds = %12, %2
  %9 = load %struct.FrameListData**, %struct.FrameListData*** %5, align 8
  %10 = load %struct.FrameListData*, %struct.FrameListData** %9, align 8
  %11 = icmp ne %struct.FrameListData* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load %struct.FrameListData**, %struct.FrameListData*** %5, align 8
  %14 = load %struct.FrameListData*, %struct.FrameListData** %13, align 8
  %15 = getelementptr inbounds %struct.FrameListData, %struct.FrameListData* %14, i32 0, i32 0
  store %struct.FrameListData** %15, %struct.FrameListData*** %5, align 8
  br label %8

16:                                               ; preds = %8
  %17 = load %struct.FrameListData*, %struct.FrameListData** %4, align 8
  %18 = load %struct.FrameListData**, %struct.FrameListData*** %5, align 8
  store %struct.FrameListData* %17, %struct.FrameListData** %18, align 8
  %19 = load %struct.FrameListData*, %struct.FrameListData** %4, align 8
  %20 = getelementptr inbounds %struct.FrameListData, %struct.FrameListData* %19, i32 0, i32 0
  store %struct.FrameListData* null, %struct.FrameListData** %20, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
