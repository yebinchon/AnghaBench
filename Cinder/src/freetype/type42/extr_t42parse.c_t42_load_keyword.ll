; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/type42/extr_t42parse.c_t42_load_keyword.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/type42/extr_t42parse.c_t42_load_keyword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { i64, i32, i32 (i32, %struct.TYPE_17__*)* }

@T1_FIELD_TYPE_CALLBACK = common dso_local global i64 0, align 8
@T1_FIELD_TYPE_INTEGER_ARRAY = common dso_local global i64 0, align 8
@T1_FIELD_TYPE_FIXED_ARRAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_19__*)* @t42_load_keyword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t42_load_keyword(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @T1_FIELD_TYPE_CALLBACK, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %3
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 2
  %19 = load i32 (i32, %struct.TYPE_17__*)*, i32 (i32, %struct.TYPE_17__*)** %18, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %21 = ptrtoint %struct.TYPE_18__* %20 to i32
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %23 = call i32 %19(i32 %21, %struct.TYPE_17__* %22)
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  br label %79

29:                                               ; preds = %3
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %48 [
    i32 128, label %33
    i32 129, label %38
    i32 130, label %43
  ]

33:                                               ; preds = %29
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 2
  %37 = bitcast i32* %36 to i8*
  store i8* %37, i8** %8, align 8
  br label %52

38:                                               ; preds = %29
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  %42 = bitcast i32* %41 to i8*
  store i8* %42, i8** %8, align 8
  br label %52

43:                                               ; preds = %29
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = bitcast i32* %46 to i8*
  store i8* %47, i8** %8, align 8
  br label %52

48:                                               ; preds = %29
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = bitcast %struct.TYPE_16__* %50 to i8*
  store i8* %51, i8** %8, align 8
  br label %52

52:                                               ; preds = %48, %43, %38, %33
  store i8** %8, i8*** %9, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @T1_FIELD_TYPE_INTEGER_ARRAY, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @T1_FIELD_TYPE_FIXED_ARRAY, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %58, %52
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %68 = load i8**, i8*** %9, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @T1_Load_Field_Table(%struct.TYPE_14__* %66, %struct.TYPE_19__* %67, i8** %68, i32 %69, i32 0)
  store i32 %70, i32* %7, align 4
  br label %78

71:                                               ; preds = %58
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %75 = load i8**, i8*** %9, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @T1_Load_Field(%struct.TYPE_14__* %73, %struct.TYPE_19__* %74, i8** %75, i32 %76, i32 0)
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %71, %64
  br label %79

79:                                               ; preds = %78, %16
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local i32 @T1_Load_Field_Table(%struct.TYPE_14__*, %struct.TYPE_19__*, i8**, i32, i32) #1

declare dso_local i32 @T1_Load_Field(%struct.TYPE_14__*, %struct.TYPE_19__*, i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
