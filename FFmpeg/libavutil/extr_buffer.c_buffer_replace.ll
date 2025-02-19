; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_buffer.c_buffer_replace.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_buffer.c_buffer_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 (i32, i32)*, i32, %struct.TYPE_6__* }

@memory_order_acq_rel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__**, %struct.TYPE_6__**)* @buffer_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buffer_replace(%struct.TYPE_6__** %0, %struct.TYPE_6__** %1) #0 {
  %3 = alloca %struct.TYPE_6__**, align 8
  %4 = alloca %struct.TYPE_6__**, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %3, align 8
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %4, align 8
  %6 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %5, align 8
  %10 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %11 = icmp ne %struct.TYPE_6__** %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = bitcast %struct.TYPE_6__* %14 to i8*
  %18 = bitcast %struct.TYPE_6__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 32, i1 false)
  %19 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %20 = call i32 @av_freep(%struct.TYPE_6__** %19)
  br label %24

21:                                               ; preds = %2
  %22 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %23 = call i32 @av_freep(%struct.TYPE_6__** %22)
  br label %24

24:                                               ; preds = %21, %12
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 3
  %27 = load i32, i32* @memory_order_acq_rel, align 4
  %28 = call i32 @atomic_fetch_add_explicit(i32* %26, i32 -1, i32 %27)
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i32 (i32, i32)*, i32 (i32, i32)** %32, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 %33(i32 %36, i32 %39)
  %41 = call i32 @av_freep(%struct.TYPE_6__** %5)
  br label %42

42:                                               ; preds = %30, %24
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @av_freep(%struct.TYPE_6__**) #2

declare dso_local i32 @atomic_fetch_add_explicit(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
