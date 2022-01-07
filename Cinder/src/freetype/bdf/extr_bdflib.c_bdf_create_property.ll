; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/bdf/extr_bdflib.c_bdf_create_property.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/bdf/extr_bdflib.c_bdf_create_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i64, i64 }

@FT_Err_Ok = common dso_local global i64 0, align 8
@FT_ULONG_MAX = common dso_local global i64 0, align 8
@Invalid_Argument = common dso_local global i32 0, align 4
@_num_bdf_properties = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, %struct.TYPE_7__*)* @bdf_create_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bdf_create_property(i8* %0, i32 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %10, align 4
  %15 = load i64, i64* @FT_Err_Ok, align 8
  store i64 %15, i64* %11, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = call i64 @ft_hash_str_lookup(i8* %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %100

22:                                               ; preds = %3
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  %33 = call i64 @FT_RENEW_ARRAY(%struct.TYPE_6__* %25, i32 %28, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %100

36:                                               ; preds = %22
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %43
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %9, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %46 = call i32 @FT_ZERO(%struct.TYPE_6__* %45)
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @ft_strlen(i8* %47)
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @FT_ULONG_MAX, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %36
  %55 = load i32, i32* @Invalid_Argument, align 4
  %56 = call i64 @FT_THROW(i32 %55)
  store i64 %56, i64* %4, align 8
  br label %102

57:                                               ; preds = %36
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i64 @FT_NEW_ARRAY(i64 %60, i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %100

65:                                               ; preds = %57
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = load i8*, i8** %5, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @FT_MEM_COPY(i8* %69, i8* %70, i64 %71)
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  store i64 0, i64* %77, align 8
  %78 = load i64, i64* @_num_bdf_properties, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = add i64 %78, %82
  store i64 %83, i64* %8, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %8, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i32, i32* %10, align 4
  %91 = call i64 @ft_hash_str_insert(i64 %86, i64 %87, i32* %89, i32 %90)
  store i64 %91, i64* %11, align 8
  %92 = load i64, i64* %11, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %65
  br label %100

95:                                               ; preds = %65
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %95, %94, %64, %35, %21
  %101 = load i64, i64* %11, align 8
  store i64 %101, i64* %4, align 8
  br label %102

102:                                              ; preds = %100, %54
  %103 = load i64, i64* %4, align 8
  ret i64 %103
}

declare dso_local i64 @ft_hash_str_lookup(i8*, i32*) #1

declare dso_local i64 @FT_RENEW_ARRAY(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @FT_ZERO(%struct.TYPE_6__*) #1

declare dso_local i32 @ft_strlen(i8*) #1

declare dso_local i64 @FT_THROW(i32) #1

declare dso_local i64 @FT_NEW_ARRAY(i64, i64) #1

declare dso_local i32 @FT_MEM_COPY(i8*, i8*, i64) #1

declare dso_local i64 @ft_hash_str_insert(i64, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
