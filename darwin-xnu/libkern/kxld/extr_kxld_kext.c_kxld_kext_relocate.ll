; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_kext.c_kxld_kext_relocate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_kext.c_kxld_kext_relocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }

@KERN_FAILURE = common dso_local global i32 0, align 4
@finish = common dso_local global i32 0, align 4
@isSplitKext = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kxld_kext_relocate(%struct.TYPE_19__* %0, i32 %1, %struct.TYPE_19__* %2, %struct.TYPE_19__* %3, %struct.TYPE_19__* %4, %struct.TYPE_19__* %5) #0 {
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %9, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %10, align 8
  store %struct.TYPE_19__* %4, %struct.TYPE_19__** %11, align 8
  store %struct.TYPE_19__* %5, %struct.TYPE_19__** %12, align 8
  %14 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %14, i32* %13, align 4
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %16 = call i32 @check(%struct.TYPE_19__* %15)
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %18 = call i32 @check(%struct.TYPE_19__* %17)
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %20 = call i32 @check(%struct.TYPE_19__* %19)
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %22 = call i32 @check(%struct.TYPE_19__* %21)
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @kxld_object_index_cxx_symbols_by_value(i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* @finish, align 4
  %29 = call i32 @require_noerr(i32 %27, i32 %28)
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @kxld_object_index_symbols_by_name(i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @finish, align 4
  %36 = call i32 @require_noerr(i32 %34, i32 %35)
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @kxld_object_relocate(i32 %39, i32 %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @finish, align 4
  %44 = call i32 @require_noerr(i32 %42, i32 %43)
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %48 = call i32 @resolve_symbols(%struct.TYPE_19__* %45, %struct.TYPE_19__* %46, %struct.TYPE_19__* %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @finish, align 4
  %51 = call i32 @require_noerr(i32 %49, i32 %50)
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %54 = call i32 @create_vtables(%struct.TYPE_19__* %52, %struct.TYPE_19__* %53, i32* null)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @finish, align 4
  %57 = call i32 @require_noerr(i32 %55, i32 %56)
  %58 = load i64, i64* @isSplitKext, align 8
  %59 = load i64, i64* @FALSE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %6
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %65 = call i32 @patch_vtables(%struct.TYPE_19__* %62, %struct.TYPE_19__* %63, %struct.TYPE_19__* %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @finish, align 4
  %68 = call i32 @require_noerr(i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %61, %6
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %71 = call i32 @validate_symbols(%struct.TYPE_19__* %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @finish, align 4
  %74 = call i32 @require_noerr(i32 %72, i32 %73)
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %79 = call i32 @kxld_object_process_relocations(i32 %77, %struct.TYPE_19__* %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @finish, align 4
  %82 = call i32 @require_noerr(i32 %80, i32 %81)
  %83 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %83, i32* %13, align 4
  br label %84

84:                                               ; preds = %69
  %85 = load i32, i32* %13, align 4
  ret i32 %85
}

declare dso_local i32 @check(%struct.TYPE_19__*) #1

declare dso_local i32 @kxld_object_index_cxx_symbols_by_value(i32) #1

declare dso_local i32 @require_noerr(i32, i32) #1

declare dso_local i32 @kxld_object_index_symbols_by_name(i32) #1

declare dso_local i32 @kxld_object_relocate(i32, i32) #1

declare dso_local i32 @resolve_symbols(%struct.TYPE_19__*, %struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @create_vtables(%struct.TYPE_19__*, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @patch_vtables(%struct.TYPE_19__*, %struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @validate_symbols(%struct.TYPE_19__*) #1

declare dso_local i32 @kxld_object_process_relocations(i32, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
