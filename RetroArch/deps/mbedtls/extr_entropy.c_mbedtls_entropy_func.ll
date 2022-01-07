; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_entropy.c_mbedtls_entropy_func.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_entropy.c_mbedtls_entropy_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i8, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }

@MBEDTLS_ENTROPY_BLOCK_SIZE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ENTROPY_SOURCE_FAILED = common dso_local global i32 0, align 4
@ENTROPY_MAX_LOOP = common dso_local global i32 0, align 4
@MBEDTLS_ERR_THREADING_MUTEX_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_entropy_func(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %12, align 8
  %18 = load i32, i32* @MBEDTLS_ENTROPY_BLOCK_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* @MBEDTLS_ENTROPY_BLOCK_SIZE, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ugt i64 %22, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @MBEDTLS_ERR_ENTROPY_SOURCE_FAILED, align 4
  store i32 %27, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %117

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %72, %28
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* @ENTROPY_MAX_LOOP, align 4
  %33 = icmp sgt i32 %30, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @MBEDTLS_ERR_ENTROPY_SOURCE_FAILED, align 4
  store i32 %35, i32* %8, align 4
  br label %115

36:                                               ; preds = %29
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %38 = call i32 @entropy_gather_internal(%struct.TYPE_6__* %37)
  store i32 %38, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %115

41:                                               ; preds = %36
  store i32 1, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %68, %41
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %71

48:                                               ; preds = %42
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %56, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %48
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %66, %48
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %42

71:                                               ; preds = %42
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  br i1 %75, label %29, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* @MBEDTLS_ENTROPY_BLOCK_SIZE, align 4
  %78 = call i32 @memset(i8* %21, i32 0, i32 %77)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = call i32 @mbedtls_sha256_finish(i8* %80, i8* %21)
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = call i32 @memset(i8* %83, i32 0, i32 4)
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = call i32 @mbedtls_sha256_starts(i8* %86, i32 0)
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load i32, i32* @MBEDTLS_ENTROPY_BLOCK_SIZE, align 4
  %91 = call i32 @mbedtls_sha256_update(i8* %89, i8* %21, i32 %90)
  %92 = load i32, i32* @MBEDTLS_ENTROPY_BLOCK_SIZE, align 4
  %93 = call i32 @mbedtls_sha256(i8* %21, i32 %92, i8* %21, i32 0)
  store i32 0, i32* %10, align 4
  br label %94

94:                                               ; preds = %108, %76
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %94
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  store i64 0, i64* %107, align 8
  br label %108

108:                                              ; preds = %100
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %94

111:                                              ; preds = %94
  %112 = load i8*, i8** %6, align 8
  %113 = load i64, i64* %7, align 8
  %114 = call i32 @memcpy(i8* %112, i8* %21, i64 %113)
  store i32 0, i32* %8, align 4
  br label %115

115:                                              ; preds = %111, %40, %34
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %117

117:                                              ; preds = %115, %26
  %118 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @entropy_gather_internal(%struct.TYPE_6__*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @mbedtls_sha256_finish(i8*, i8*) #2

declare dso_local i32 @mbedtls_sha256_starts(i8*, i32) #2

declare dso_local i32 @mbedtls_sha256_update(i8*, i8*, i32) #2

declare dso_local i32 @mbedtls_sha256(i8*, i32, i8*, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
