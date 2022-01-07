; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_d3d11va.c_d3d11va_pool_alloc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_d3d11va.c_d3d11va_pool_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__*, %struct.TYPE_9__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Static surface pool size exceeded.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32)* @d3d11va_pool_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @d3d11va_pool_alloc(i8* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_10__, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %6, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %7, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %8, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %26 = call i32* @d3d11va_alloc_single(%struct.TYPE_12__* %25)
  store i32* %26, i32** %3, align 8
  br label %56

27:                                               ; preds = %2
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ID3D11Texture2D_GetDesc(i32 %30, %struct.TYPE_10__* %9)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sge i64 %34, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = load i32, i32* @AV_LOG_ERROR, align 4
  %41 = call i32 @av_log(%struct.TYPE_12__* %39, i32 %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %56

42:                                               ; preds = %27
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ID3D11Texture2D_AddRef(i32 %45)
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %51, align 8
  %54 = trunc i64 %52 to i32
  %55 = call i32* @wrap_texture_buf(i32 %49, i32 %54)
  store i32* %55, i32** %3, align 8
  br label %56

56:                                               ; preds = %42, %38, %24
  %57 = load i32*, i32** %3, align 8
  ret i32* %57
}

declare dso_local i32* @d3d11va_alloc_single(%struct.TYPE_12__*) #1

declare dso_local i32 @ID3D11Texture2D_GetDesc(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @ID3D11Texture2D_AddRef(i32) #1

declare dso_local i32* @wrap_texture_buf(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
