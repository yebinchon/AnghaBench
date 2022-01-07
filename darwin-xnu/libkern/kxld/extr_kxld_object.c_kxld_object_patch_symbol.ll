; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_object.c_kxld_object_patch_symbol.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_object.c_kxld_object_patch_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kxld_sym = type { i32 }

@KERN_FAILURE = common dso_local global i32 0, align 4
@finish = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kxld_object_patch_symbol(i32* %0, %struct.kxld_sym* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.kxld_sym*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.kxld_sym* %1, %struct.kxld_sym** %4, align 8
  %7 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %7, i32* %5, align 4
  store i32* null, i32** %6, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load %struct.kxld_sym*, %struct.kxld_sym** %4, align 8
  %10 = call i32* @get_mutable_sym(i32* %8, %struct.kxld_sym* %9)
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* @finish, align 4
  %13 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %13, i32* %5, align 4
  %14 = call i32 @require_action(i32* %11, i32 %12, i32 %13)
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @kxld_sym_patch(i32* %15)
  %17 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

declare dso_local i32* @get_mutable_sym(i32*, %struct.kxld_sym*) #1

declare dso_local i32 @require_action(i32*, i32, i32) #1

declare dso_local i32 @kxld_sym_patch(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
