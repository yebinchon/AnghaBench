; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld.c_init_context.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld.c_init_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@KERN_FAILURE = common dso_local global i32 0, align 4
@finish = common dso_local global i32 0, align 4
@kxld_dict_string_hash = common dso_local global i32 0, align 4
@kxld_dict_string_cmp = common dso_local global i32 0, align 4
@kxld_dict_kxldaddr_hash = common dso_local global i32 0, align 4
@kxld_dict_kxldaddr_cmp = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @init_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_context(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 5
  %9 = call i32 (...) @kxld_object_sizeof()
  %10 = load i32, i32* %4, align 4
  %11 = mul nsw i32 2, %10
  %12 = add nsw i32 %11, 1
  %13 = call i32 @kxld_array_init(i32* %8, i32 %9, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @finish, align 4
  %16 = call i32 @require_noerr(i32 %14, i32 %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 4
  %19 = call i32 (...) @kxld_kext_sizeof()
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @kxld_array_init(i32* %18, i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @finish, align 4
  %24 = call i32 @require_noerr(i32 %22, i32 %23)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load i32, i32* @kxld_dict_string_hash, align 4
  %28 = load i32, i32* @kxld_dict_string_cmp, align 4
  %29 = call i32 @kxld_dict_init(i32* %26, i32 %27, i32 %28, i32 0)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @finish, align 4
  %32 = call i32 @require_noerr(i32 %30, i32 %31)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* @kxld_dict_kxldaddr_hash, align 4
  %36 = load i32, i32* @kxld_dict_kxldaddr_cmp, align 4
  %37 = call i32 @kxld_dict_init(i32* %34, i32 %35, i32 %36, i32 0)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @finish, align 4
  %40 = call i32 @require_noerr(i32 %38, i32 %39)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* @kxld_dict_string_hash, align 4
  %44 = load i32, i32* @kxld_dict_string_cmp, align 4
  %45 = call i32 @kxld_dict_init(i32* %42, i32 %43, i32 %44, i32 0)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @finish, align 4
  %48 = call i32 @require_noerr(i32 %46, i32 %47)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* @kxld_dict_string_hash, align 4
  %52 = load i32, i32* @kxld_dict_string_cmp, align 4
  %53 = call i32 @kxld_dict_init(i32* %50, i32 %51, i32 %52, i32 0)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @finish, align 4
  %56 = call i32 @require_noerr(i32 %54, i32 %55)
  %57 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %2
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @kxld_array_init(i32*, i32, i32) #1

declare dso_local i32 @kxld_object_sizeof(...) #1

declare dso_local i32 @require_noerr(i32, i32) #1

declare dso_local i32 @kxld_kext_sizeof(...) #1

declare dso_local i32 @kxld_dict_init(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
