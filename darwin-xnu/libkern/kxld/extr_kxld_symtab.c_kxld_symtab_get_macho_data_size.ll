; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_symtab.c_kxld_symtab_get_macho_data_size.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_symtab.c_kxld_symtab_get_macho_data_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@kxld_sym_is_defined_locally = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kxld_symtab_get_macho_data_size(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %6, align 8
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @check(i32* %9)
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @kxld_sym_is_defined_locally, align 4
  %13 = load i32, i32* @FALSE, align 4
  %14 = call i32 @kxld_symtab_iterator_init(i32* %5, i32* %11, i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %18, %2
  %16 = call %struct.TYPE_3__* @kxld_symtab_iterator_get_next(i32* %5)
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %6, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @strlen(i32 %21)
  %23 = add nsw i64 %22, 1
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %15

30:                                               ; preds = %15
  %31 = load i64, i64* %4, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %7, align 4
  br label %49

41:                                               ; preds = %30
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %41, %33
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 7
  %52 = and i32 %51, -8
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @check(i32*) #1

declare dso_local i32 @kxld_symtab_iterator_init(i32*, i32*, i32, i32) #1

declare dso_local %struct.TYPE_3__* @kxld_symtab_iterator_get_next(i32*) #1

declare dso_local i64 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
