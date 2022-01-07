; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_object.c_get_macho_header_size.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_object.c_get_macho_header_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_15__, %struct.TYPE_11__, %struct.TYPE_16__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_16__ = type { i64 }

@isSplitKext = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @get_macho_header_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_macho_header_size(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  store i32* null, i32** %3, align 8
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %8 = call i64 @kxld_object_is_32_bit(%struct.TYPE_14__* %7)
  store i64 %8, i64* %6, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %10 = call i32 @check(%struct.TYPE_14__* %9)
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i64 4, i64 4
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = add i64 %16, %14
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %4, align 4
  store i64 0, i64* %5, align 8
  br label %19

19:                                               ; preds = %38, %1
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %20, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %19
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 4
  %29 = load i64, i64* %5, align 8
  %30 = call i32* @kxld_array_get_item(%struct.TYPE_16__* %28, i64 %29)
  store i32* %30, i32** %3, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @kxld_seg_get_macho_header_size(i32* %31, i64 %32)
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %26
  %39 = load i64, i64* %5, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %5, align 8
  br label %19

41:                                               ; preds = %19
  %42 = call i64 (...) @kxld_symtab_get_macho_header_size()
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %4, align 4
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %41
  %53 = call i64 (...) @kxld_uuid_get_macho_header_size()
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %52, %41
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %58
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 2
  %67 = call i64 @kxld_versionmin_get_macho_header_size(%struct.TYPE_15__* %66)
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %64, %58
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = call i64 (...) @kxld_srcversion_get_macho_header_size()
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %78, %72
  %85 = load i64, i64* @isSplitKext, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %84
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = call i64 (...) @kxld_splitinfolc_get_macho_header_size()
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %94
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %93, %87, %84
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i64 @kxld_object_is_32_bit(%struct.TYPE_14__*) #1

declare dso_local i32 @check(%struct.TYPE_14__*) #1

declare dso_local i32* @kxld_array_get_item(%struct.TYPE_16__*, i64) #1

declare dso_local i64 @kxld_seg_get_macho_header_size(i32*, i64) #1

declare dso_local i64 @kxld_symtab_get_macho_header_size(...) #1

declare dso_local i64 @kxld_uuid_get_macho_header_size(...) #1

declare dso_local i64 @kxld_versionmin_get_macho_header_size(%struct.TYPE_15__*) #1

declare dso_local i64 @kxld_srcversion_get_macho_header_size(...) #1

declare dso_local i64 @kxld_splitinfolc_get_macho_header_size(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
