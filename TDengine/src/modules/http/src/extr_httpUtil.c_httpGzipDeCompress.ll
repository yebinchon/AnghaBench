; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpUtil.c_httpGzipDeCompress.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpUtil.c_httpGzipDeCompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, i32, i32*, i32*, i64, i64, i64, i32 }

@httpGzipDeCompress.dummyHead = internal global [2 x i8] c"x\01", align 1
@Z_OK = common dso_local global i32 0, align 4
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@Z_DATA_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @httpGzipDeCompress(i8* %0, i64 %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = bitcast %struct.TYPE_5__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 80, i1 false)
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 8
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 7
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 6
  store i64 0, i64* %15, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to i32*
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 4
  store i32* %17, i32** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 5
  store i32* %21, i32** %22, align 8
  %23 = call i32 @inflateInit2(%struct.TYPE_5__* %11, i32 47)
  %24 = load i32, i32* @Z_OK, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %80

27:                                               ; preds = %4
  br label %28

28:                                               ; preds = %70, %27
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %9, align 8
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %30, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp slt i64 %36, %37
  br label %39

39:                                               ; preds = %34, %28
  %40 = phi i1 [ false, %28 ], [ %38, %34 ]
  br i1 %40, label %41, label %71

41:                                               ; preds = %39
  %42 = load i64, i64* %7, align 8
  %43 = trunc i64 %42 to i32
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @Z_NO_FLUSH, align 4
  %47 = call i32 @inflate(%struct.TYPE_5__* %11, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* @Z_STREAM_END, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %71

51:                                               ; preds = %41
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @Z_OK, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %51
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @Z_DATA_ERROR, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 4
  store i32* bitcast ([2 x i8]* @httpGzipDeCompress.dummyHead to i32*), i32** %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 2, i32* %61, align 8
  %62 = load i32, i32* @Z_NO_FLUSH, align 4
  %63 = call i32 @inflate(%struct.TYPE_5__* %11, i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* @Z_OK, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store i32 -2, i32* %5, align 4
  br label %80

67:                                               ; preds = %59
  br label %69

68:                                               ; preds = %55
  store i32 -3, i32* %5, align 4
  br label %80

69:                                               ; preds = %67
  br label %70

70:                                               ; preds = %69, %51
  br label %28

71:                                               ; preds = %50, %39
  %72 = call i32 @inflateEnd(%struct.TYPE_5__* %11)
  %73 = load i32, i32* @Z_OK, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 -4, i32* %5, align 4
  br label %80

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64*, i64** %9, align 8
  store i64 %78, i64* %79, align 8
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %76, %75, %68, %66, %26
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @inflateInit2(%struct.TYPE_5__*, i32) #2

declare dso_local i32 @inflate(%struct.TYPE_5__*, i32) #2

declare dso_local i32 @inflateEnd(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
