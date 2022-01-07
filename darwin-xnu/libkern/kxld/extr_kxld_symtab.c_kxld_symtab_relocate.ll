; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_symtab.c_kxld_symtab_relocate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_symtab.c_kxld_symtab_relocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@KERN_FAILURE = common dso_local global i32 0, align 4
@kxld_sym_is_section = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@finish = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kxld_symtab_relocate(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %9, i32* %5, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %7, align 8
  store i32* null, i32** %8, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @check(i32* %10)
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @check(i32* %12)
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @kxld_sym_is_section, align 4
  %16 = load i32, i32* @FALSE, align 4
  %17 = call i32 @kxld_symtab_iterator_init(i32* %6, i32* %14, i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %21, %2
  %19 = call %struct.TYPE_4__* @kxld_symtab_iterator_get_next(i32* %6)
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %7, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32* @kxld_array_get_item(i32* %22, i32 %25)
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* @finish, align 4
  %29 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %29, i32* %5, align 4
  %30 = call i32 @require_action(i32* %27, i32 %28, i32 %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @kxld_sym_relocate(%struct.TYPE_4__* %31, i32* %32)
  br label %18

34:                                               ; preds = %18
  %35 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %34
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @check(i32*) #1

declare dso_local i32 @kxld_symtab_iterator_init(i32*, i32*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @kxld_symtab_iterator_get_next(i32*) #1

declare dso_local i32* @kxld_array_get_item(i32*, i32) #1

declare dso_local i32 @require_action(i32*, i32, i32) #1

declare dso_local i32 @kxld_sym_relocate(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
