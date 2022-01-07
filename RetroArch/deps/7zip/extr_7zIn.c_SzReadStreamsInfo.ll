; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/7zip/extr_7zIn.c_SzReadStreamsInfo.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/7zip/extr_7zIn.c_SzReadStreamsInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@SZ_ERROR_UNSUPPORTED = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, %struct.TYPE_3__*, i32*, i64**, i32**, i32**, i32*, i32*)* @SzReadStreamsInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SzReadStreamsInfo(i32* %0, i64* %1, %struct.TYPE_3__* %2, i32* %3, i64** %4, i32** %5, i32** %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64**, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i32**, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  store i32* %0, i32** %11, align 8
  store i64* %1, i64** %12, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %13, align 8
  store i32* %3, i32** %14, align 8
  store i64** %4, i64*** %15, align 8
  store i32** %5, i32*** %16, align 8
  store i32** %6, i32*** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  br label %21

21:                                               ; preds = %78, %9
  %22 = load i32*, i32** %11, align 8
  %23 = call i32 @SzReadID(i32* %22, i64* %20)
  %24 = call i32 @RINOK(i32 %23)
  %25 = load i64, i64* %20, align 8
  %26 = trunc i64 %25 to i32
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %20, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %31, i32* %10, align 4
  br label %79

32:                                               ; preds = %21
  %33 = load i64, i64* %20, align 8
  %34 = trunc i64 %33 to i32
  switch i32 %34, label %76 [
    i32 131, label %35
    i32 130, label %37
    i32 128, label %51
    i32 129, label %61
  ]

35:                                               ; preds = %32
  %36 = load i32, i32* @SZ_OK, align 4
  store i32 %36, i32* %10, align 4
  br label %79

37:                                               ; preds = %32
  %38 = load i32*, i32** %11, align 8
  %39 = load i64*, i64** %12, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 5
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32*, i32** %18, align 8
  %49 = call i32 @SzReadPackInfo(i32* %38, i64* %39, i32* %41, i32* %43, i32* %45, i32* %47, i32* %48)
  %50 = call i32 @RINOK(i32 %49)
  br label %78

51:                                               ; preds = %32
  %52 = load i32*, i32** %11, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32*, i32** %18, align 8
  %58 = load i32*, i32** %19, align 8
  %59 = call i32 @SzReadUnpackInfo(i32* %52, i32* %54, i32* %56, i32* %57, i32* %58)
  %60 = call i32 @RINOK(i32 %59)
  br label %78

61:                                               ; preds = %32
  %62 = load i32*, i32** %11, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %14, align 8
  %70 = load i64**, i64*** %15, align 8
  %71 = load i32**, i32*** %16, align 8
  %72 = load i32**, i32*** %17, align 8
  %73 = load i32*, i32** %19, align 8
  %74 = call i32 @SzReadSubStreamsInfo(i32* %62, i32 %65, i32 %68, i32* %69, i64** %70, i32** %71, i32** %72, i32* %73)
  %75 = call i32 @RINOK(i32 %74)
  br label %78

76:                                               ; preds = %32
  %77 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %77, i32* %10, align 4
  br label %79

78:                                               ; preds = %61, %51, %37
  br label %21

79:                                               ; preds = %76, %35, %30
  %80 = load i32, i32* %10, align 4
  ret i32 %80
}

declare dso_local i32 @RINOK(i32) #1

declare dso_local i32 @SzReadID(i32*, i64*) #1

declare dso_local i32 @SzReadPackInfo(i32*, i64*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @SzReadUnpackInfo(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @SzReadSubStreamsInfo(i32*, i32, i32, i32*, i64**, i32**, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
