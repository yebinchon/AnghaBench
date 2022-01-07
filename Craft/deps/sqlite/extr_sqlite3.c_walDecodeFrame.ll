; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_walDecodeFrame.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_walDecodeFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i64* }

@WAL_FRAME_HDRSIZE = common dso_local global i32 0, align 4
@SQLITE_BIGENDIAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64*, i64*, i32*, i32*)* @walDecodeFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walDecodeFrame(%struct.TYPE_5__* %0, i64* %1, i64* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load i64*, i64** %17, align 8
  store i64* %18, i64** %13, align 8
  %19 = load i32, i32* @WAL_FRAME_HDRSIZE, align 4
  %20 = icmp eq i32 %19, 24
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32*, i32** %11, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 8
  %28 = call i64 @memcmp(i32* %25, i32* %27, i32 8)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %82

31:                                               ; preds = %5
  %32 = load i32*, i32** %11, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = call i64 @sqlite3Get4byte(i32* %33)
  store i64 %34, i64* %14, align 8
  %35 = load i64, i64* %14, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %82

38:                                               ; preds = %31
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SQLITE_BIGENDIAN, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = load i64*, i64** %13, align 8
  %49 = load i64*, i64** %13, align 8
  %50 = call i32 @walChecksumBytes(i32 %46, i32* %47, i32 8, i64* %48, i64* %49)
  %51 = load i32, i32* %12, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i64*, i64** %13, align 8
  %57 = load i64*, i64** %13, align 8
  %58 = call i32 @walChecksumBytes(i32 %51, i32* %52, i32 %55, i64* %56, i64* %57)
  %59 = load i64*, i64** %13, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 16
  %64 = call i64 @sqlite3Get4byte(i32* %63)
  %65 = icmp ne i64 %61, %64
  br i1 %65, label %74, label %66

66:                                               ; preds = %38
  %67 = load i64*, i64** %13, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 1
  %69 = load i64, i64* %68, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 20
  %72 = call i64 @sqlite3Get4byte(i32* %71)
  %73 = icmp ne i64 %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %66, %38
  store i32 0, i32* %6, align 4
  br label %82

75:                                               ; preds = %66
  %76 = load i64, i64* %14, align 8
  %77 = load i64*, i64** %8, align 8
  store i64 %76, i64* %77, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 4
  %80 = call i64 @sqlite3Get4byte(i32* %79)
  %81 = load i64*, i64** %9, align 8
  store i64 %80, i64* %81, align 8
  store i32 1, i32* %6, align 4
  br label %82

82:                                               ; preds = %75, %74, %37, %30
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i64 @sqlite3Get4byte(i32*) #1

declare dso_local i32 @walChecksumBytes(i32, i32*, i32, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
