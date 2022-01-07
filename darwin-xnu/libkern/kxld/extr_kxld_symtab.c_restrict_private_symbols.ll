; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_symtab.c_restrict_private_symbols.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_symtab.c_restrict_private_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@KXLD_KMOD_INFO_SYMBOL = common dso_local global i8* null, align 8
@KXLD_OPERATOR_NEW_SYMBOL = common dso_local global i8* null, align 8
@KXLD_OPERATOR_NEW_ARRAY_SYMBOL = common dso_local global i8* null, align 8
@KXLD_OPERATOR_DELETE_SYMBOL = common dso_local global i8* null, align 8
@KXLD_OPERATOR_DELETE_ARRAY_SYMBOL = common dso_local global i8* null, align 8
@kxld_sym_is_exported = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @restrict_private_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restrict_private_symbols(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [5 x i8*], align 16
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %8 = getelementptr inbounds [5 x i8*], [5 x i8*]* %3, i64 0, i64 0
  %9 = load i8*, i8** @KXLD_KMOD_INFO_SYMBOL, align 8
  store i8* %9, i8** %8, align 8
  %10 = getelementptr inbounds i8*, i8** %8, i64 1
  %11 = load i8*, i8** @KXLD_OPERATOR_NEW_SYMBOL, align 8
  store i8* %11, i8** %10, align 8
  %12 = getelementptr inbounds i8*, i8** %10, i64 1
  %13 = load i8*, i8** @KXLD_OPERATOR_NEW_ARRAY_SYMBOL, align 8
  store i8* %13, i8** %12, align 8
  %14 = getelementptr inbounds i8*, i8** %12, i64 1
  %15 = load i8*, i8** @KXLD_OPERATOR_DELETE_SYMBOL, align 8
  store i8* %15, i8** %14, align 8
  %16 = getelementptr inbounds i8*, i8** %14, i64 1
  %17 = load i8*, i8** @KXLD_OPERATOR_DELETE_ARRAY_SYMBOL, align 8
  store i8* %17, i8** %16, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  store i8* null, i8** %6, align 8
  store i64 0, i64* %7, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @kxld_sym_is_exported, align 4
  %20 = load i32, i32* @FALSE, align 4
  %21 = call i32 @kxld_symtab_iterator_init(i32* %4, i32* %18, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %48, %1
  %23 = call %struct.TYPE_4__* @kxld_symtab_iterator_get_next(i32* %4)
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %5, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %49

25:                                               ; preds = %22
  store i64 0, i64* %7, align 8
  br label %26

26:                                               ; preds = %45, %25
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds [5 x i8*], [5 x i8*]* %3, i64 0, i64 0
  %29 = call i64 @const_array_len(i8** %28)
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %26
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds [5 x i8*], [5 x i8*]* %3, i64 0, i64 %32
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %6, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @streq(i32 %37, i8* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %31
  br label %45

42:                                               ; preds = %31
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %44 = call i32 @kxld_sym_mark_private(%struct.TYPE_4__* %43)
  br label %45

45:                                               ; preds = %42, %41
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %7, align 8
  br label %26

48:                                               ; preds = %26
  br label %22

49:                                               ; preds = %22
  ret void
}

declare dso_local i32 @kxld_symtab_iterator_init(i32*, i32*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @kxld_symtab_iterator_get_next(i32*) #1

declare dso_local i64 @const_array_len(i8**) #1

declare dso_local i32 @streq(i32, i8*) #1

declare dso_local i32 @kxld_sym_mark_private(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
