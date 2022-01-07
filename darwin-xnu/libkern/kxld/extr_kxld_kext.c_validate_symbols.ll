; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_kext.c_validate_symbols.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_kext.c_validate_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@KERN_FAILURE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@kxld_sym_is_unresolved = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@kKxldLogLinking = common dso_local global i32 0, align 4
@kKxldLogErr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"The following symbols are unresolved for this kext:\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\09%s\00", align 1
@finish = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @validate_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_symbols(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %9 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %9, i32* %3, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %5, align 8
  %10 = load i64, i64* @FALSE, align 8
  store i64 %10, i64* %6, align 8
  store i8* null, i8** %7, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @kxld_object_get_symtab(i32 %13)
  %15 = load i32, i32* @kxld_sym_is_unresolved, align 4
  %16 = load i64, i64* @FALSE, align 8
  %17 = call i32 @kxld_symtab_iterator_init(i32* %4, i32 %14, i32 %15, i64 %16)
  br label %18

18:                                               ; preds = %29, %1
  %19 = call %struct.TYPE_5__* @kxld_symtab_iterator_get_next(i32* %4)
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %5, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %18
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* @TRUE, align 8
  store i64 %25, i64* %6, align 8
  %26 = load i32, i32* @kKxldLogLinking, align 4
  %27 = load i32, i32* @kKxldLogErr, align 4
  %28 = call i32 (i32, i32, i8*, ...) @kxld_log(i32 %26, i32 %27, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %24, %21
  %30 = load i32, i32* @kKxldLogLinking, align 4
  %31 = load i32, i32* @kKxldLogErr, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @kxld_demangle(i32 %34, i8** %7, i64* %8)
  %36 = call i32 (i32, i32, i8*, ...) @kxld_log(i32 %30, i32 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %18

37:                                               ; preds = %18
  %38 = load i64, i64* %6, align 8
  %39 = load i32, i32* @finish, align 4
  %40 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %40, i32* %3, align 4
  %41 = call i32 @require_noerr_action(i64 %38, i32 %39, i32 %40)
  %42 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %37
  %44 = load i8*, i8** %7, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i8*, i8** %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @kxld_free(i8* %47, i64 %48)
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @kxld_symtab_iterator_init(i32*, i32, i32, i64) #1

declare dso_local i32 @kxld_object_get_symtab(i32) #1

declare dso_local %struct.TYPE_5__* @kxld_symtab_iterator_get_next(i32*) #1

declare dso_local i32 @kxld_log(i32, i32, i8*, ...) #1

declare dso_local i32 @kxld_demangle(i32, i8**, i64*) #1

declare dso_local i32 @require_noerr_action(i64, i32, i32) #1

declare dso_local i32 @kxld_free(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
