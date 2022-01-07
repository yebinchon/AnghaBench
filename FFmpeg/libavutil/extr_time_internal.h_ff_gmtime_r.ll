; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_time_internal.h_ff_gmtime_r.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_time_internal.h_ff_gmtime_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tm* (i32*, %struct.tm*)* @ff_gmtime_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tm* @ff_gmtime_r(i32* %0, %struct.tm* %1) #0 {
  %3 = alloca %struct.tm*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tm*, align 8
  %6 = alloca %struct.tm*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.tm* %1, %struct.tm** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call %struct.tm* @gmtime(i32* %7)
  store %struct.tm* %8, %struct.tm** %6, align 8
  %9 = load %struct.tm*, %struct.tm** %6, align 8
  %10 = icmp ne %struct.tm* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.tm* null, %struct.tm** %3, align 8
  br label %18

12:                                               ; preds = %2
  %13 = load %struct.tm*, %struct.tm** %5, align 8
  %14 = load %struct.tm*, %struct.tm** %6, align 8
  %15 = bitcast %struct.tm* %13 to i8*
  %16 = bitcast %struct.tm* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 4, i1 false)
  %17 = load %struct.tm*, %struct.tm** %5, align 8
  store %struct.tm* %17, %struct.tm** %3, align 8
  br label %18

18:                                               ; preds = %12, %11
  %19 = load %struct.tm*, %struct.tm** %3, align 8
  ret %struct.tm* %19
}

declare dso_local %struct.tm* @gmtime(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
