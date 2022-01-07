; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/glxx/extr_glxx_client.c_glxx_buffer_info_get.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/glxx/extr_glxx_client.c_glxx_buffer_info_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @glxx_buffer_info_get(%struct.TYPE_8__* %0, i32 %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @get_bound_buffer(%struct.TYPE_8__* %9, i32 %10)
  store i64 %11, i64* %7, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %13 = call i32 @memset(%struct.TYPE_9__* %12, i32 0, i32 8)
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %3
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %7, align 8
  %22 = call %struct.TYPE_9__* @khrn_pointer_map_lookup(i32* %20, i64 %21)
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %8, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %24 = icmp ne %struct.TYPE_9__* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %28 = bitcast %struct.TYPE_9__* %26 to i8*
  %29 = bitcast %struct.TYPE_9__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 8, i1 false)
  br label %30

30:                                               ; preds = %25, %18
  br label %31

31:                                               ; preds = %30, %3
  ret void
}

declare dso_local i64 @get_bound_buffer(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @khrn_pointer_map_lookup(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
