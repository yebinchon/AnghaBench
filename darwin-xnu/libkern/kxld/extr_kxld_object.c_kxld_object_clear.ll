; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_object.c_kxld_object_clear.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_object.c_kxld_object_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32*, i8*, i8*, i8*, i8*, i64, i64, i64, %struct.TYPE_8__, i32, i64, i32*, i64, i32, i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { i64, i32* }
%struct.TYPE_10__ = type { i64 }

@isOldInterface = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kxld_object_clear(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = call i32 @check(%struct.TYPE_9__* %7)
  %9 = load i64, i64* @isOldInterface, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 13
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  br label %20

15:                                               ; preds = %1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 10
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %6, align 8
  br label %20

20:                                               ; preds = %15, %11
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = call i64 @kxld_object_is_kernel(%struct.TYPE_9__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load i32*, i32** %6, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @unswap_macho(i32* %25, i64 %28, i64 %31)
  br label %33

33:                                               ; preds = %24, %20
  store i64 0, i64* %5, align 8
  br label %34

34:                                               ; preds = %49, %33
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 22
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %35, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %34
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 22
  %44 = load i64, i64* %5, align 8
  %45 = call i8* @kxld_array_get_item(%struct.TYPE_10__* %43, i64 %44)
  %46 = bitcast i8* %45 to i32*
  store i32* %46, i32** %3, align 8
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @kxld_seg_clear(i32* %47)
  br label %49

49:                                               ; preds = %41
  %50 = load i64, i64* %5, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %5, align 8
  br label %34

52:                                               ; preds = %34
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 22
  %55 = call i32 @kxld_array_reset(%struct.TYPE_10__* %54)
  store i64 0, i64* %5, align 8
  br label %56

56:                                               ; preds = %71, %52
  %57 = load i64, i64* %5, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 21
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %57, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %56
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 21
  %66 = load i64, i64* %5, align 8
  %67 = call i8* @kxld_array_get_item(%struct.TYPE_10__* %65, i64 %66)
  %68 = bitcast i8* %67 to i32*
  store i32* %68, i32** %4, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @kxld_sect_clear(i32* %69)
  br label %71

71:                                               ; preds = %63
  %72 = load i64, i64* %5, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %5, align 8
  br label %56

74:                                               ; preds = %56
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 21
  %77 = call i32 @kxld_array_reset(%struct.TYPE_10__* %76)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 20
  %80 = call i32 @kxld_array_reset(%struct.TYPE_10__* %79)
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 19
  %83 = call i32 @kxld_array_reset(%struct.TYPE_10__* %82)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 18
  %86 = call i32 @kxld_relocator_clear(i32* %85)
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 17
  %89 = call i32 @kxld_uuid_clear(i32* %88)
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 16
  %92 = call i32 @kxld_versionmin_clear(i32* %91)
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 15
  %95 = call i32 @kxld_srcversion_clear(i32* %94)
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 14
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %74
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 14
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @kxld_symtab_clear(i64 %103)
  br label %105

105:                                              ; preds = %100, %74
  %106 = load i64, i64* @isOldInterface, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 13
  store i32* null, i32** %110, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 12
  store i64 0, i64* %112, align 8
  br label %123

113:                                              ; preds = %105
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 11
  %116 = call i32 @kxld_splitinfolc_clear(i32* %115)
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 10
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  store i32* null, i32** %119, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 10
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  store i64 0, i64* %122, align 8
  br label %123

123:                                              ; preds = %113, %108
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 9
  store i64 0, i64* %125, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 8
  store i64 0, i64* %127, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 7
  store i64 0, i64* %129, align 8
  %130 = load i8*, i8** @FALSE, align 8
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 6
  store i8* %130, i8** %132, align 8
  %133 = load i8*, i8** @FALSE, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 5
  store i8* %133, i8** %135, align 8
  %136 = load i8*, i8** @FALSE, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 4
  store i8* %136, i8** %138, align 8
  %139 = load i8*, i8** @FALSE, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 3
  store i8* %139, i8** %141, align 8
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  store i64 0, i64* %143, align 8
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  store i64 0, i64* %145, align 8
  ret void
}

declare dso_local i32 @check(%struct.TYPE_9__*) #1

declare dso_local i64 @kxld_object_is_kernel(%struct.TYPE_9__*) #1

declare dso_local i32 @unswap_macho(i32*, i64, i64) #1

declare dso_local i8* @kxld_array_get_item(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @kxld_seg_clear(i32*) #1

declare dso_local i32 @kxld_array_reset(%struct.TYPE_10__*) #1

declare dso_local i32 @kxld_sect_clear(i32*) #1

declare dso_local i32 @kxld_relocator_clear(i32*) #1

declare dso_local i32 @kxld_uuid_clear(i32*) #1

declare dso_local i32 @kxld_versionmin_clear(i32*) #1

declare dso_local i32 @kxld_srcversion_clear(i32*) #1

declare dso_local i32 @kxld_symtab_clear(i64) #1

declare dso_local i32 @kxld_splitinfolc_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
