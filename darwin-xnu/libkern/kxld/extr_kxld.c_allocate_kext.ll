; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld.c_allocate_kext.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld.c_allocate_kext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i64, i32*, i8*)*, i32 }

@finish = common dso_local global i32 0, align 4
@kKxldLogLinking = common dso_local global i32 0, align 4
@kKxldLogErr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Load address %p is not page-aligned.\00", align 1
@kKxldAllocateWritable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i8*, i32*, i64*, i32**)* @allocate_kext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @allocate_kext(%struct.TYPE_3__* %0, i8* %1, i32* %2, i64* %3, i32** %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32** %4, i32*** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i32* null, i32** %15, align 8
  %16 = load i32**, i32*** %10, align 8
  store i32* null, i32** %16, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @kxld_kext_get_vmsize(i32 %19, i64* %14, i64* %13)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32 (i64, i32*, i8*)*, i32 (i64, i32*, i8*)** %22, align 8
  %24 = load i64, i64* %13, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 %23(i64 %24, i32* %11, i8* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = call i32 (...) @kxld_get_effective_page_size()
  %29 = sub nsw i32 %28, 1
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* @finish, align 4
  %35 = load i32, i32* @kKxldLogLinking, align 4
  %36 = load i32, i32* @kKxldLogErr, align 4
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @kxld_log(i32 %35, i32 %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = call i32 @require_action(i32 %33, i32 %34, i32 %40)
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @kKxldAllocateWritable, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %5
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i32*
  store i32* %49, i32** %15, align 8
  br label %58

50:                                               ; preds = %5
  %51 = load i64, i64* %13, align 8
  %52 = call i32* @kxld_page_alloc_untracked(i64 %51)
  store i32* %52, i32** %15, align 8
  %53 = load i32*, i32** %15, align 8
  %54 = load i32, i32* @finish, align 4
  %55 = call i32 @require(i32* %53, i32 %54)
  %56 = load i32*, i32** %15, align 8
  %57 = load i32**, i32*** %10, align 8
  store i32* %56, i32** %57, align 8
  br label %58

58:                                               ; preds = %50, %46
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %13, align 8
  %63 = call i32 @kxld_kext_set_linked_object_size(i32 %61, i64 %62)
  %64 = load i32*, i32** %15, align 8
  %65 = load i64, i64* %13, align 8
  %66 = call i32 @bzero(i32* %64, i64 %65)
  %67 = load i32, i32* %12, align 4
  %68 = load i32*, i32** %8, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i64, i64* %13, align 8
  %70 = load i64*, i64** %9, align 8
  store i64 %69, i64* %70, align 8
  br label %71

71:                                               ; preds = %58
  %72 = load i32*, i32** %15, align 8
  ret i32* %72
}

declare dso_local i32 @kxld_kext_get_vmsize(i32, i64*, i64*) #1

declare dso_local i32 @require_action(i32, i32, i32) #1

declare dso_local i32 @kxld_get_effective_page_size(...) #1

declare dso_local i32 @kxld_log(i32, i32, i8*, i8*) #1

declare dso_local i32* @kxld_page_alloc_untracked(i64) #1

declare dso_local i32 @require(i32*, i32) #1

declare dso_local i32 @kxld_kext_set_linked_object_size(i32, i64) #1

declare dso_local i32 @bzero(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
