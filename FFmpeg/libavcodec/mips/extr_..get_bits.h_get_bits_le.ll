; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_..get_bits.h_get_bits_le.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_..get_bits.h_get_bits_le.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@re = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32)* @get_bits_le to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_bits_le(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @re, align 4
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = call i32 @OPEN_READER(i32 %6, %struct.TYPE_10__* %7)
  %9 = load i32, i32* %4, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp sle i32 %12, 25
  br label %14

14:                                               ; preds = %11, %2
  %15 = phi i1 [ false, %2 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @av_assert2(i32 %16)
  %18 = load i32, i32* @re, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = call i32 @UPDATE_CACHE_LE(i32 %18, %struct.TYPE_10__* %19)
  %21 = load i32, i32* @re, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @SHOW_UBITS_LE(i32 %21, %struct.TYPE_10__* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @re, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @LAST_SKIP_BITS(i32 %25, %struct.TYPE_10__* %26, i32 %27)
  %29 = load i32, i32* @re, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = call i32 @CLOSE_READER(i32 %29, %struct.TYPE_10__* %30)
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @OPEN_READER(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @av_assert2(i32) #1

declare dso_local i32 @UPDATE_CACHE_LE(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @SHOW_UBITS_LE(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @LAST_SKIP_BITS(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @CLOSE_READER(i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
