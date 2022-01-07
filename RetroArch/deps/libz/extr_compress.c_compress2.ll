; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libz/extr_compress.c_compress2.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libz/extr_compress.c_compress2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i8*, i8*, i8*, i32*, i8*, i32* }

@Z_BUF_ERROR = common dso_local global i32 0, align 4
@Z_NULL = common dso_local global i8* null, align 8
@Z_OK = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compress2(i32* %0, i64* %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32*, i32** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 7
  store i32* %14, i32** %15, align 8
  %16 = load i64, i64* %10, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 6
  store i8* %17, i8** %18, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 5
  store i32* %19, i32** %20, align 8
  %21 = load i64*, i64** %8, align 8
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 4
  store i8* %23, i8** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 4
  %26 = load i8*, i8** %25, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = load i64*, i64** %8, align 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %27, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %5
  %32 = load i32, i32* @Z_BUF_ERROR, align 4
  store i32 %32, i32* %6, align 4
  br label %69

33:                                               ; preds = %5
  %34 = load i8*, i8** @Z_NULL, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  store i8* %34, i8** %35, align 8
  %36 = load i8*, i8** @Z_NULL, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  store i8* %36, i8** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @deflateInit(%struct.TYPE_5__* %12, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @Z_OK, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %6, align 4
  br label %69

46:                                               ; preds = %33
  %47 = load i32, i32* @Z_FINISH, align 4
  %48 = call i32 @deflate(%struct.TYPE_5__* %12, i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @Z_STREAM_END, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %46
  %53 = call i32 @deflateEnd(%struct.TYPE_5__* %12)
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @Z_OK, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @Z_BUF_ERROR, align 4
  br label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %13, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  store i32 %62, i32* %6, align 4
  br label %69

63:                                               ; preds = %46
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64*, i64** %8, align 8
  store i64 %65, i64* %66, align 8
  %67 = call i32 @deflateEnd(%struct.TYPE_5__* %12)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %63, %61, %44, %31
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @deflateInit(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @deflate(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @deflateEnd(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
