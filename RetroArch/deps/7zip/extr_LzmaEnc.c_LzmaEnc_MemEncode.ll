; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/7zip/extr_LzmaEnc.c_LzmaEnc_MemEncode.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/7zip/extr_LzmaEnc.c_LzmaEnc_MemEncode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i8*, i64, i32, %struct.TYPE_7__ }

@MyWrite = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i64 0, align 8
@SZ_ERROR_FAIL = common dso_local global i64 0, align 8
@SZ_ERROR_OUTPUT_EOF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @LzmaEnc_MemEncode(i64 %0, i8* %1, i64* %2, i8* %3, i64 %4, i32 %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_9__*, align 8
  %22 = alloca %struct.TYPE_8__, align 8
  store i64 %0, i64* %11, align 8
  store i8* %1, i8** %12, align 8
  store i64* %2, i64** %13, align 8
  store i8* %3, i8** %14, align 8
  store i64 %4, i64* %15, align 8
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %23 = load i64, i64* %11, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %21, align 8
  %25 = load i32, i32* @MyWrite, align 4
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i8*, i8** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i8* %28, i8** %29, align 8
  %30 = load i64*, i64** %13, align 8
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  store i64 %31, i64* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  store i32 0, i32* %33, align 8
  %34 = load i32, i32* %16, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %40, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = load i64, i64* %15, align 8
  %44 = load i32*, i32** %18, align 8
  %45 = load i32*, i32** %19, align 8
  %46 = call i64 @LzmaEnc_MemPrepare(i64 %41, i8* %42, i64 %43, i32 0, i32* %44, i32* %45)
  store i64 %46, i64* %20, align 8
  %47 = load i64, i64* %20, align 8
  %48 = load i64, i64* @SZ_OK, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %9
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %52 = load i32*, i32** %17, align 8
  %53 = call i64 @LzmaEnc_Encode2(%struct.TYPE_9__* %51, i32* %52)
  store i64 %53, i64* %20, align 8
  %54 = load i64, i64* %20, align 8
  %55 = load i64, i64* @SZ_OK, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %15, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i64, i64* @SZ_ERROR_FAIL, align 8
  store i64 %64, i64* %20, align 8
  br label %65

65:                                               ; preds = %63, %57, %50
  br label %66

66:                                               ; preds = %65, %9
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** %13, align 8
  %70 = load i64, i64* %69, align 8
  %71 = sub i64 %70, %68
  store i64 %71, i64* %69, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %66
  %76 = load i64, i64* @SZ_ERROR_OUTPUT_EOF, align 8
  store i64 %76, i64* %10, align 8
  br label %79

77:                                               ; preds = %66
  %78 = load i64, i64* %20, align 8
  store i64 %78, i64* %10, align 8
  br label %79

79:                                               ; preds = %77, %75
  %80 = load i64, i64* %10, align 8
  ret i64 %80
}

declare dso_local i64 @LzmaEnc_MemPrepare(i64, i8*, i64, i32, i32*, i32*) #1

declare dso_local i64 @LzmaEnc_Encode2(%struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
