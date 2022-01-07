; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonstreamstrans_stream_pipe.c_pipe_trans.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonstreamstrans_stream_pipe.c_pipe_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_trans_stream = type { i64, i64, i32, i32 }

@TRANS_STREAM_ERROR_BUFFER_FULL = common dso_local global i32 0, align 4
@TRANS_STREAM_ERROR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64*, i64*, i32*)* @pipe_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_trans(i8* %0, i32 %1, i64* %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.pipe_trans_stream*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.pipe_trans_stream*
  store %struct.pipe_trans_stream* %14, %struct.pipe_trans_stream** %12, align 8
  %15 = load %struct.pipe_trans_stream*, %struct.pipe_trans_stream** %12, align 8
  %16 = getelementptr inbounds %struct.pipe_trans_stream, %struct.pipe_trans_stream* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.pipe_trans_stream*, %struct.pipe_trans_stream** %12, align 8
  %19 = getelementptr inbounds %struct.pipe_trans_stream, %struct.pipe_trans_stream* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %58

22:                                               ; preds = %5
  %23 = load %struct.pipe_trans_stream*, %struct.pipe_trans_stream** %12, align 8
  %24 = getelementptr inbounds %struct.pipe_trans_stream, %struct.pipe_trans_stream* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.pipe_trans_stream*, %struct.pipe_trans_stream** %12, align 8
  %27 = getelementptr inbounds %struct.pipe_trans_stream, %struct.pipe_trans_stream* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.pipe_trans_stream*, %struct.pipe_trans_stream** %12, align 8
  %30 = getelementptr inbounds %struct.pipe_trans_stream, %struct.pipe_trans_stream* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @memcpy(i32 %25, i32 %28, i64 %31)
  %33 = load %struct.pipe_trans_stream*, %struct.pipe_trans_stream** %12, align 8
  %34 = getelementptr inbounds %struct.pipe_trans_stream, %struct.pipe_trans_stream* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %10, align 8
  store i64 %35, i64* %36, align 8
  %37 = load i64*, i64** %9, align 8
  store i64 %35, i64* %37, align 8
  %38 = load %struct.pipe_trans_stream*, %struct.pipe_trans_stream** %12, align 8
  %39 = getelementptr inbounds %struct.pipe_trans_stream, %struct.pipe_trans_stream* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.pipe_trans_stream*, %struct.pipe_trans_stream** %12, align 8
  %42 = getelementptr inbounds %struct.pipe_trans_stream, %struct.pipe_trans_stream* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %40
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 4
  %47 = load %struct.pipe_trans_stream*, %struct.pipe_trans_stream** %12, align 8
  %48 = getelementptr inbounds %struct.pipe_trans_stream, %struct.pipe_trans_stream* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.pipe_trans_stream*, %struct.pipe_trans_stream** %12, align 8
  %51 = getelementptr inbounds %struct.pipe_trans_stream, %struct.pipe_trans_stream* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %49
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 8
  %56 = load i32, i32* @TRANS_STREAM_ERROR_BUFFER_FULL, align 4
  %57 = load i32*, i32** %11, align 8
  store i32 %56, i32* %57, align 4
  store i32 0, i32* %6, align 4
  br label %94

58:                                               ; preds = %5
  %59 = load %struct.pipe_trans_stream*, %struct.pipe_trans_stream** %12, align 8
  %60 = getelementptr inbounds %struct.pipe_trans_stream, %struct.pipe_trans_stream* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.pipe_trans_stream*, %struct.pipe_trans_stream** %12, align 8
  %63 = getelementptr inbounds %struct.pipe_trans_stream, %struct.pipe_trans_stream* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.pipe_trans_stream*, %struct.pipe_trans_stream** %12, align 8
  %66 = getelementptr inbounds %struct.pipe_trans_stream, %struct.pipe_trans_stream* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @memcpy(i32 %61, i32 %64, i64 %67)
  %69 = load %struct.pipe_trans_stream*, %struct.pipe_trans_stream** %12, align 8
  %70 = getelementptr inbounds %struct.pipe_trans_stream, %struct.pipe_trans_stream* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64*, i64** %10, align 8
  store i64 %71, i64* %72, align 8
  %73 = load i64*, i64** %9, align 8
  store i64 %71, i64* %73, align 8
  %74 = load %struct.pipe_trans_stream*, %struct.pipe_trans_stream** %12, align 8
  %75 = getelementptr inbounds %struct.pipe_trans_stream, %struct.pipe_trans_stream* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.pipe_trans_stream*, %struct.pipe_trans_stream** %12, align 8
  %78 = getelementptr inbounds %struct.pipe_trans_stream, %struct.pipe_trans_stream* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %76
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %78, align 4
  %83 = load %struct.pipe_trans_stream*, %struct.pipe_trans_stream** %12, align 8
  %84 = getelementptr inbounds %struct.pipe_trans_stream, %struct.pipe_trans_stream* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.pipe_trans_stream*, %struct.pipe_trans_stream** %12, align 8
  %87 = getelementptr inbounds %struct.pipe_trans_stream, %struct.pipe_trans_stream* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %89, %85
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %87, align 8
  %92 = load i32, i32* @TRANS_STREAM_ERROR_NONE, align 4
  %93 = load i32*, i32** %11, align 8
  store i32 %92, i32* %93, align 4
  store i32 1, i32* %6, align 4
  br label %94

94:                                               ; preds = %58, %22
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
