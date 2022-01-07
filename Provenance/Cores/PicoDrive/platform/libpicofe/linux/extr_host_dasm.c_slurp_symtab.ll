; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/linux/extr_host_dasm.c_slurp_symtab.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/linux/extr_host_dasm.c_slurp_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@symcount = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"failed to open: %s\0A\00", align 1
@bfd_object = common dso_local global i32 0, align 4
@HAS_SYMS = common dso_local global i32 0, align 4
@symstorage = common dso_local global i64 0, align 8
@symbols = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"no symbols in %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @slurp_symtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slurp_symtab(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  store i64 0, i64* @symcount, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32* @bfd_openr(i8* %4, i32* null)
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @stderr, align 4
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %10)
  br label %48

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @bfd_object, align 4
  %15 = call i32 @bfd_check_format(i32* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %48

18:                                               ; preds = %12
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @bfd_get_file_flags(i32* %19)
  %21 = load i32, i32* @HAS_SYMS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %48

25:                                               ; preds = %18
  %26 = load i32*, i32** %3, align 8
  %27 = call i64 @bfd_get_symtab_upper_bound(i32* %26)
  store i64 %27, i64* @symstorage, align 8
  %28 = load i64, i64* @symstorage, align 8
  %29 = icmp sle i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %48

31:                                               ; preds = %25
  %32 = load i64, i64* @symstorage, align 8
  %33 = call i32* @malloc(i64 %32)
  store i32* %33, i32** @symbols, align 8
  %34 = load i32*, i32** @symbols, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %48

37:                                               ; preds = %31
  %38 = load i32*, i32** %3, align 8
  %39 = load i32*, i32** @symbols, align 8
  %40 = call i64 @bfd_canonicalize_symtab(i32* %38, i32* %39)
  store i64 %40, i64* @symcount, align 8
  %41 = load i64, i64* @symcount, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %48

44:                                               ; preds = %37
  %45 = load i32*, i32** @symbols, align 8
  %46 = load i64, i64* @symcount, align 8
  %47 = call i64 @remove_useless_symbols(i32* %45, i64 %46)
  store i64 %47, i64* @symcount, align 8
  br label %64

48:                                               ; preds = %43, %36, %30, %24, %17, %8
  %49 = load i32, i32* @stderr, align 4
  %50 = load i32*, i32** %3, align 8
  %51 = call i8* @bfd_get_filename(i32* %50)
  %52 = call i32 @fprintf(i32 %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  %53 = load i32*, i32** @symbols, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32*, i32** @symbols, align 8
  %57 = call i32 @free(i32* %56)
  br label %58

58:                                               ; preds = %55, %48
  store i32* null, i32** @symbols, align 8
  %59 = load i32*, i32** %3, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @bfd_close(i32* %62)
  br label %64

64:                                               ; preds = %44, %61, %58
  ret void
}

declare dso_local i32* @bfd_openr(i8*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @bfd_check_format(i32*, i32) #1

declare dso_local i32 @bfd_get_file_flags(i32*) #1

declare dso_local i64 @bfd_get_symtab_upper_bound(i32*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i64 @bfd_canonicalize_symtab(i32*, i32*) #1

declare dso_local i64 @remove_useless_symbols(i32*, i64) #1

declare dso_local i8* @bfd_get_filename(i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @bfd_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
