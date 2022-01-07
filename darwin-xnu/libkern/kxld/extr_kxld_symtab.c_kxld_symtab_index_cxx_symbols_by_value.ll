; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_symtab.c_kxld_symtab_index_cxx_symbols_by_value.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_symtab.c_kxld_symtab_index_cxx_symbols_by_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32 }

@KERN_FAILURE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@sym_is_defined_cxx = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@kxld_dict_kxldaddr_hash = common dso_local global i32 0, align 4
@kxld_dict_kxldaddr_cmp = common dso_local global i32 0, align 4
@finish = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kxld_symtab_index_cxx_symbols_by_value(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %7 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %7, i32* %3, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = call i32 @check(%struct.TYPE_8__* %8)
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %15, i32* %3, align 4
  br label %49

16:                                               ; preds = %1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = load i32, i32* @sym_is_defined_cxx, align 4
  %19 = load i32, i32* @FALSE, align 4
  %20 = call i32 @kxld_symtab_iterator_init(i32* %4, %struct.TYPE_8__* %17, i32 %18, i32 %19)
  %21 = call i32 @kxld_symtab_iterator_get_num_remaining(i32* %4)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* @kxld_dict_kxldaddr_hash, align 4
  %25 = load i32, i32* @kxld_dict_kxldaddr_cmp, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @kxld_dict_init(i32* %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @finish, align 4
  %30 = call i32 @require_noerr(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %34, %16
  %32 = call %struct.TYPE_9__* @kxld_symtab_iterator_get_next(i32* %4)
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %5, align 8
  %33 = icmp ne %struct.TYPE_9__* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = call i32 @kxld_dict_insert(i32* %36, i32* %38, %struct.TYPE_9__* %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @finish, align 4
  %43 = call i32 @require_noerr(i32 %41, i32 %42)
  br label %31

44:                                               ; preds = %31
  %45 = load i64, i64* @TRUE, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %44, %14
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @check(%struct.TYPE_8__*) #1

declare dso_local i32 @kxld_symtab_iterator_init(i32*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @kxld_symtab_iterator_get_num_remaining(i32*) #1

declare dso_local i32 @kxld_dict_init(i32*, i32, i32, i32) #1

declare dso_local i32 @require_noerr(i32, i32) #1

declare dso_local %struct.TYPE_9__* @kxld_symtab_iterator_get_next(i32*) #1

declare dso_local i32 @kxld_dict_insert(i32*, i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
