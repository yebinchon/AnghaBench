; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_IkeEncryptWithPadding.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_IkeEncryptWithPadding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @IkeEncryptWithPadding(i8* %0, i32 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca [1600 x i64], align 16
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %14, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %19 = icmp eq %struct.TYPE_8__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %3
  store i32* null, i32** %4, align 8
  br label %103

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %22, %29
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = srem i32 %31, %38
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 0, i32 1
  %43 = add nsw i32 %30, %42
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %43, %50
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %21
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %54, %21
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp ugt i64 %64, 12800
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* %8, align 4
  %68 = call i64* @Malloc(i32 %67)
  store i64* %68, i64** %11, align 8
  br label %71

69:                                               ; preds = %62
  %70 = getelementptr inbounds [1600 x i64], [1600 x i64]* %13, i64 0, i64 0
  store i64* %70, i64** %11, align 8
  store i32 1, i32* %14, align 4
  br label %71

71:                                               ; preds = %69, %66
  %72 = load i64*, i64** %11, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @Copy(i64* %72, i8* %73, i32 %74)
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %88, %71
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %77
  %82 = load i64, i64* %10, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %10, align 8
  %84 = load i64*, i64** %11, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  store i64 %83, i64* %87, align 8
  br label %88

88:                                               ; preds = %81
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %77

91:                                               ; preds = %77
  %92 = load i64*, i64** %11, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %95 = call i32* @IkeEncrypt(i64* %92, i32 %93, %struct.TYPE_8__* %94)
  store i32* %95, i32** %12, align 8
  %96 = load i32, i32* %14, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i64*, i64** %11, align 8
  %100 = call i32 @Free(i64* %99)
  br label %101

101:                                              ; preds = %98, %91
  %102 = load i32*, i32** %12, align 8
  store i32* %102, i32** %4, align 8
  br label %103

103:                                              ; preds = %101, %20
  %104 = load i32*, i32** %4, align 8
  ret i32* %104
}

declare dso_local i64* @Malloc(i32) #1

declare dso_local i32 @Copy(i64*, i8*, i32) #1

declare dso_local i32* @IkeEncrypt(i64*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @Free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
