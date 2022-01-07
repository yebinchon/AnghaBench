; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_doSetInterpVal.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_doSetInterpVal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i32, i64 }

@TSDB_KEYSIZE = common dso_local global i64 0, align 8
@TSDB_NCHAR_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32, i64, i8*)* @doSetInterpVal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doSetInterpVal(%struct.TYPE_5__* %0, i32 %1, i32 %2, i64 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load i64, i64* %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp eq i8* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 136
  br i1 %25, label %26, label %41

26:                                               ; preds = %5
  %27 = load i8*, i8** %10, align 8
  %28 = call i64 @strlen(i8* %27)
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = add i64 %29, 1
  %31 = load i64, i64* @TSDB_KEYSIZE, align 8
  %32 = add i64 %30, %31
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %11, align 8
  %34 = call i8* @calloc(i32 1, i64 %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i8* %34, i8** %40, align 8
  br label %74

41:                                               ; preds = %5
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 131
  br i1 %43, label %44, label %62

44:                                               ; preds = %41
  %45 = load i8*, i8** %10, align 8
  %46 = bitcast i8* %45 to i32*
  %47 = call i64 @wcslen(i32* %46)
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = add i64 %48, 1
  %50 = load i64, i64* @TSDB_NCHAR_SIZE, align 8
  %51 = mul i64 %49, %50
  %52 = load i64, i64* @TSDB_KEYSIZE, align 8
  %53 = add i64 %51, %52
  store i64 %53, i64* %11, align 8
  %54 = load i64, i64* %11, align 8
  %55 = call i8* @calloc(i32 1, i64 %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i8* %55, i8** %61, align 8
  br label %73

62:                                               ; preds = %41
  %63 = load i64, i64* @TSDB_KEYSIZE, align 8
  %64 = mul i64 %63, 2
  store i64 %64, i64* %11, align 8
  %65 = load i64, i64* %11, align 8
  %66 = call i8* @malloc(i64 %65)
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i8* %66, i8** %72, align 8
  br label %73

73:                                               ; preds = %62, %44
  br label %74

74:                                               ; preds = %73, %26
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i64, i64* %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i32 136, i32* %80, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i64, i64* %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %13, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i8*, i8** %13, align 8
  %90 = bitcast i8* %89 to i32*
  store i32 %88, i32* %90, align 4
  %91 = load i64, i64* @TSDB_KEYSIZE, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 %91
  store i8* %93, i8** %13, align 8
  %94 = load i32, i32* %8, align 4
  switch i32 %94, label %122 [
    i32 133, label %95
    i32 134, label %100
    i32 132, label %105
    i32 135, label %105
    i32 137, label %105
    i32 128, label %105
    i32 130, label %105
    i32 129, label %105
    i32 136, label %110
    i32 131, label %115
  ]

95:                                               ; preds = %74
  %96 = load i8*, i8** %10, align 8
  %97 = call double @GET_FLOAT_VAL(i8* %96)
  %98 = load i8*, i8** %13, align 8
  %99 = bitcast i8* %98 to double*
  store double %97, double* %99, align 8
  br label %124

100:                                              ; preds = %74
  %101 = load i8*, i8** %10, align 8
  %102 = call double @GET_DOUBLE_VAL(i8* %101)
  %103 = load i8*, i8** %13, align 8
  %104 = bitcast i8* %103 to double*
  store double %102, double* %104, align 8
  br label %124

105:                                              ; preds = %74, %74, %74, %74, %74, %74
  %106 = load i8*, i8** %10, align 8
  %107 = call i32 @GET_INT64_VAL(i8* %106)
  %108 = load i8*, i8** %13, align 8
  %109 = bitcast i8* %108 to i32*
  store i32 %107, i32* %109, align 4
  br label %124

110:                                              ; preds = %74
  %111 = load i8*, i8** %13, align 8
  %112 = load i8*, i8** %10, align 8
  %113 = load i64, i64* %12, align 8
  %114 = call i32 @strncpy(i8* %111, i8* %112, i64 %113)
  br label %124

115:                                              ; preds = %74
  %116 = load i8*, i8** %13, align 8
  %117 = bitcast i8* %116 to i32*
  %118 = load i8*, i8** %10, align 8
  %119 = bitcast i8* %118 to i32*
  %120 = load i64, i64* %12, align 8
  %121 = call i32 @wcsncpy(i32* %117, i32* %119, i64 %120)
  br label %124

122:                                              ; preds = %74
  %123 = call i32 @assert(i32 0)
  br label %124

124:                                              ; preds = %122, %115, %110, %105, %100, %95
  %125 = load i64, i64* %11, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = load i64, i64* %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  store i64 %125, i64* %131, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i64 @wcslen(i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local double @GET_FLOAT_VAL(i8*) #1

declare dso_local double @GET_DOUBLE_VAL(i8*) #1

declare dso_local i32 @GET_INT64_VAL(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @wcsncpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
