; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld.c_init_kext_objects.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld.c_init_kext_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, i32, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i8*, i8*, i64, i32, i32*, i32, i32* }

@KERN_FAILURE = common dso_local global i32 0, align 4
@finish = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32, i8*, %struct.TYPE_7__*, i64)* @init_kext_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_kext_objects(%struct.TYPE_8__* %0, i32* %1, i32 %2, i8* %3, %struct.TYPE_7__* %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %11, align 8
  store i64 %5, i64* %12, align 8
  %18 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %18, i32* %13, align 4
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %17, align 8
  br label %19

19:                                               ; preds = %112, %6
  %20 = load i64, i64* %17, align 8
  %21 = load i64, i64* %12, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %115

23:                                               ; preds = %19
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 4
  %26 = load i64, i64* %17, align 8
  %27 = call i32* @kxld_array_get_item(%struct.TYPE_9__* %25, i64 %26)
  store i32* %27, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %30 = load i64, i64* %17, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 6
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %35 = load i64, i64* %17, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %40 = load i64, i64* %17, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32* @get_object_for_file(%struct.TYPE_8__* %28, i32* %33, i32 %38, i8* %43)
  store i32* %44, i32** %15, align 8
  %45 = load i32*, i32** %15, align 8
  %46 = load i32, i32* @finish, align 4
  %47 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %47, i32* %13, align 4
  %48 = call i32 @require_action(i32* %45, i32 %46, i32 %47)
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %50 = load i64, i64* %17, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %77

55:                                               ; preds = %23
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %58 = load i64, i64* %17, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %63 = load i64, i64* %17, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %68 = load i64, i64* %17, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32* @get_object_for_file(%struct.TYPE_8__* %56, i32* %61, i32 %66, i8* %71)
  store i32* %72, i32** %16, align 8
  %73 = load i32*, i32** %16, align 8
  %74 = load i32, i32* @finish, align 4
  %75 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %75, i32* %13, align 4
  %76 = call i32 @require_action(i32* %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %55, %23
  %78 = load i32*, i32** %14, align 8
  %79 = load i32*, i32** %15, align 8
  %80 = load i32*, i32** %16, align 8
  %81 = call i32 @kxld_kext_init(i32* %78, i32* %79, i32* %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @finish, align 4
  %84 = call i32 @require_noerr(i32 %82, i32 %83)
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %86 = load i64, i64* %17, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %77
  %92 = load i32*, i32** %14, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 5
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = call i32 @kxld_kext_export_symbols(i32* %92, i32* %94, i32* %96, i32* %98)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* @finish, align 4
  %102 = call i32 @require_noerr(i32 %100, i32 %101)
  br label %111

103:                                              ; preds = %77
  %104 = load i32*, i32** %14, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = call i32 @kxld_kext_export_symbols(i32* %104, i32* null, i32* null, i32* %106)
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* @finish, align 4
  %110 = call i32 @require_noerr(i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %103, %91
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %17, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %17, align 8
  br label %19

115:                                              ; preds = %19
  store i64 0, i64* %17, align 8
  br label %116

116:                                              ; preds = %139, %115
  %117 = load i64, i64* %17, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ult i64 %117, %121
  br i1 %122, label %123, label %142

123:                                              ; preds = %116
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 4
  %126 = load i64, i64* %17, align 8
  %127 = call i32* @kxld_array_get_item(%struct.TYPE_9__* %125, i64 %126)
  store i32* %127, i32** %14, align 8
  %128 = load i32*, i32** %14, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 3
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  %135 = call i32 @kxld_kext_export_vtables(i32* %128, i32* %130, i32* %132, i32* %134)
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* @finish, align 4
  %138 = call i32 @require_noerr(i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %123
  %140 = load i64, i64* %17, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %17, align 8
  br label %116

142:                                              ; preds = %116
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %144 = load i32*, i32** %8, align 8
  %145 = load i32, i32* %9, align 4
  %146 = load i8*, i8** %10, align 8
  %147 = call i32* @get_object_for_file(%struct.TYPE_8__* %143, i32* %144, i32 %145, i8* %146)
  store i32* %147, i32** %15, align 8
  %148 = load i32*, i32** %15, align 8
  %149 = load i32, i32* @finish, align 4
  %150 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %150, i32* %13, align 4
  %151 = call i32 @require_action(i32* %148, i32 %149, i32 %150)
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load i32*, i32** %15, align 8
  %156 = call i32 @kxld_kext_init(i32* %154, i32* %155, i32* null)
  store i32 %156, i32* %13, align 4
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* @finish, align 4
  %159 = call i32 @require_noerr(i32 %157, i32 %158)
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = call i32 @kxld_kext_export_symbols(i32* %162, i32* null, i32* null, i32* %164)
  store i32 %165, i32* %13, align 4
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* @finish, align 4
  %168 = call i32 @require_noerr(i32 %166, i32 %167)
  %169 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %169, i32* %13, align 4
  br label %170

170:                                              ; preds = %142
  %171 = load i32, i32* %13, align 4
  ret i32 %171
}

declare dso_local i32* @kxld_array_get_item(%struct.TYPE_9__*, i64) #1

declare dso_local i32* @get_object_for_file(%struct.TYPE_8__*, i32*, i32, i8*) #1

declare dso_local i32 @require_action(i32*, i32, i32) #1

declare dso_local i32 @kxld_kext_init(i32*, i32*, i32*) #1

declare dso_local i32 @require_noerr(i32, i32) #1

declare dso_local i32 @kxld_kext_export_symbols(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @kxld_kext_export_vtables(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
