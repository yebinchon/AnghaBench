; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/streams/extr_trans_stream.c_trans_stream_trans_full.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/streams/extr_trans_stream.c_trans_stream_trans_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trans_stream_backend = type { i32 (i8*, i32, i32*, i32*, i32*)*, i32 (i8*)*, i32 (i8*, i32*, i32)*, i32 (i8*, i32*, i32)*, i8* (...)* }

@TRANS_STREAM_ERROR_ALLOCATION_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trans_stream_trans_full(%struct.trans_stream_backend* %0, i8** %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.trans_stream_backend*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.trans_stream_backend* %0, %struct.trans_stream_backend** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %20 = load i8**, i8*** %10, align 8
  %21 = icmp ne i8** %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %7
  %23 = load i8**, i8*** %10, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i8**, i8*** %10, align 8
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %16, align 8
  br label %44

29:                                               ; preds = %22, %7
  %30 = load %struct.trans_stream_backend*, %struct.trans_stream_backend** %9, align 8
  %31 = getelementptr inbounds %struct.trans_stream_backend, %struct.trans_stream_backend* %30, i32 0, i32 4
  %32 = load i8* (...)*, i8* (...)** %31, align 8
  %33 = call i8* (...) %32()
  store i8* %33, i8** %16, align 8
  %34 = load i8*, i8** %16, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %29
  %37 = load i32*, i32** %15, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @TRANS_STREAM_ERROR_ALLOCATION_FAILURE, align 4
  %41 = load i32*, i32** %15, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %36
  store i32 0, i32* %8, align 4
  br label %78

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %43, %26
  %45 = load %struct.trans_stream_backend*, %struct.trans_stream_backend** %9, align 8
  %46 = getelementptr inbounds %struct.trans_stream_backend, %struct.trans_stream_backend* %45, i32 0, i32 3
  %47 = load i32 (i8*, i32*, i32)*, i32 (i8*, i32*, i32)** %46, align 8
  %48 = load i8*, i8** %16, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i32 %47(i8* %48, i32* %49, i32 %50)
  %52 = load %struct.trans_stream_backend*, %struct.trans_stream_backend** %9, align 8
  %53 = getelementptr inbounds %struct.trans_stream_backend, %struct.trans_stream_backend* %52, i32 0, i32 2
  %54 = load i32 (i8*, i32*, i32)*, i32 (i8*, i32*, i32)** %53, align 8
  %55 = load i8*, i8** %16, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* %14, align 4
  %58 = call i32 %54(i8* %55, i32* %56, i32 %57)
  %59 = load %struct.trans_stream_backend*, %struct.trans_stream_backend** %9, align 8
  %60 = getelementptr inbounds %struct.trans_stream_backend, %struct.trans_stream_backend* %59, i32 0, i32 0
  %61 = load i32 (i8*, i32, i32*, i32*, i32*)*, i32 (i8*, i32, i32*, i32*, i32*)** %60, align 8
  %62 = load i8*, i8** %16, align 8
  %63 = load i32*, i32** %15, align 8
  %64 = call i32 %61(i8* %62, i32 1, i32* %18, i32* %19, i32* %63)
  store i32 %64, i32* %17, align 4
  %65 = load i8**, i8*** %10, align 8
  %66 = icmp ne i8** %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %44
  %68 = load i8*, i8** %16, align 8
  %69 = load i8**, i8*** %10, align 8
  store i8* %68, i8** %69, align 8
  br label %76

70:                                               ; preds = %44
  %71 = load %struct.trans_stream_backend*, %struct.trans_stream_backend** %9, align 8
  %72 = getelementptr inbounds %struct.trans_stream_backend, %struct.trans_stream_backend* %71, i32 0, i32 1
  %73 = load i32 (i8*)*, i32 (i8*)** %72, align 8
  %74 = load i8*, i8** %16, align 8
  %75 = call i32 %73(i8* %74)
  br label %76

76:                                               ; preds = %70, %67
  %77 = load i32, i32* %17, align 4
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %76, %42
  %79 = load i32, i32* %8, align 4
  ret i32 %79
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
