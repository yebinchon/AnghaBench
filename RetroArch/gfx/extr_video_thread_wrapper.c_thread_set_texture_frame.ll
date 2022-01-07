; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/extr_video_thread_wrapper.c_thread_set_texture_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/extr_video_thread_wrapper.c_thread_set_texture_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, float, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i32, float)* @thread_set_texture_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_set_texture_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, float %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store float %5, float* %12, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %13, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %11, align 4
  %19 = mul i32 %17, %18
  %20 = zext i32 %19 to i64
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i64 4, i64 4
  %25 = mul i64 %20, %24
  store i64 %25, i64* %14, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @slock_lock(i32 %29)
  %31 = load i64, i64* %14, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ugt i64 %31, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %6
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 6
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %14, align 8
  %43 = call i64 @realloc(i64 %41, i64 %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 6
  store i64 %43, i64* %46, align 8
  %47 = load i64, i64* %14, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i64 %47, i64* %50, align 8
  br label %51

51:                                               ; preds = %37, %6
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %84

57:                                               ; preds = %51
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = load i64, i64* %14, align 8
  %64 = call i32 @memcpy(i64 %61, i8* %62, i64 %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i32 1, i32* %67, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  store i32 %72, i32* %75, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 4
  store i32 %76, i32* %79, align 4
  %80 = load float, float* %12, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 5
  store float %80, float* %83, align 8
  br label %84

84:                                               ; preds = %57, %51
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @slock_unlock(i32 %88)
  ret void
}

declare dso_local i32 @slock_lock(i32) #1

declare dso_local i64 @realloc(i64, i64) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @slock_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
