; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_kext.c_export_symbols.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_kext.c_export_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }

@KERN_FAILURE = common dso_local global i32 0, align 4
@kxld_sym_is_exported = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@finish = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @export_symbols(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %10, i32* %7, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %9, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @kxld_object_get_symtab(i32* %11)
  %13 = load i32, i32* @kxld_sym_is_exported, align 4
  %14 = load i32, i32* @FALSE, align 4
  %15 = call i32 @kxld_symtab_iterator_init(i32* %8, i32 %12, i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %48, %3
  %17 = call %struct.TYPE_5__* @kxld_symtab_iterator_get_next(i32* %8)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %9, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %49

19:                                               ; preds = %16
  %20 = load i32*, i32** %5, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %28 = call i32 @kxld_dict_insert(i32* %23, i32* %26, %struct.TYPE_5__* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @finish, align 4
  %31 = call i32 @require_noerr(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %22, %19
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %34 = call i64 @kxld_sym_is_cxx(%struct.TYPE_5__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = load i32*, i32** %6, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %44 = call i32 @kxld_dict_insert(i32* %40, i32* %42, %struct.TYPE_5__* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @finish, align 4
  %47 = call i32 @require_noerr(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %39, %36, %32
  br label %16

49:                                               ; preds = %16
  %50 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %49
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32 @kxld_symtab_iterator_init(i32*, i32, i32, i32) #1

declare dso_local i32 @kxld_object_get_symtab(i32*) #1

declare dso_local %struct.TYPE_5__* @kxld_symtab_iterator_get_next(i32*) #1

declare dso_local i32 @kxld_dict_insert(i32*, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @require_noerr(i32, i32) #1

declare dso_local i64 @kxld_sym_is_cxx(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
