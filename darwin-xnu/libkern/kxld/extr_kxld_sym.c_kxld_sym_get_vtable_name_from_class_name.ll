; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_sym.c_kxld_sym_get_vtable_name_from_class_name.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_sym.c_kxld_sym_get_vtable_name_from_class_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KERN_FAILURE = common dso_local global i32 0, align 4
@VTABLE_PREFIX = common dso_local global i32 0, align 4
@finish = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kxld_sym_get_vtable_name_from_class_name(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %9, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @check(i8* %10)
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @check(i8* %12)
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* @VTABLE_PREFIX, align 4
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @strlcpy(i8* %14, i32 %15, i64 %16)
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp slt i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* @finish, align 4
  %23 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %23, i32* %7, align 4
  %24 = call i32 @require_action(i32 %21, i32 %22, i32 %23)
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @strlcat(i8* %25, i8* %26, i64 %27)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp slt i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* @finish, align 4
  %34 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %34, i32* %7, align 4
  %35 = call i32 @require_action(i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %3
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i32 @check(i8*) #1

declare dso_local i64 @strlcpy(i8*, i32, i64) #1

declare dso_local i32 @require_action(i32, i32, i32) #1

declare dso_local i64 @strlcat(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
