; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_get_sample_flags.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_get_sample_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MOV_SYNC_SAMPLE = common dso_local global i32 0, align 4
@MOV_FRAG_SAMPLE_FLAG_DEPENDS_NO = common dso_local global i32 0, align 4
@MOV_FRAG_SAMPLE_FLAG_DEPENDS_YES = common dso_local global i32 0, align 4
@MOV_FRAG_SAMPLE_FLAG_IS_NON_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @get_sample_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sample_flags(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @MOV_SYNC_SAMPLE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @MOV_FRAG_SAMPLE_FLAG_DEPENDS_NO, align 4
  br label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @MOV_FRAG_SAMPLE_FLAG_DEPENDS_YES, align 4
  %15 = load i32, i32* @MOV_FRAG_SAMPLE_FLAG_IS_NON_SYNC, align 4
  %16 = or i32 %14, %15
  br label %17

17:                                               ; preds = %13, %11
  %18 = phi i32 [ %12, %11 ], [ %16, %13 ]
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
