; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegts.c_add_pat_entry.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegts.c_add_pat_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.Program* }
%struct.Program = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @add_pat_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_pat_entry(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Program*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  %12 = call i64 @av_reallocp_array(%struct.Program** %7, i32 %11, i32 24)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  br label %37

17:                                               ; preds = %2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load %struct.Program*, %struct.Program** %19, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.Program, %struct.Program* %20, i64 %24
  store %struct.Program* %25, %struct.Program** %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.Program*, %struct.Program** %5, align 8
  %28 = getelementptr inbounds %struct.Program, %struct.Program* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.Program*, %struct.Program** %5, align 8
  %30 = getelementptr inbounds %struct.Program, %struct.Program* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.Program*, %struct.Program** %5, align 8
  %32 = getelementptr inbounds %struct.Program, %struct.Program* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %17, %14
  ret void
}

declare dso_local i64 @av_reallocp_array(%struct.Program**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
