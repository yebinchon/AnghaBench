; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_user.c_vm_map_get_upl.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_user.c_vm_map_get_upl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_MAP_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@UPL_NOZEROFILL = common dso_local global i32 0, align 4
@UPL_FORCE_DATA_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_map_get_upl(i64 %0, i32 %1, i32* %2, i32* %3, i32 %4, i32* %5, i32* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i64 %0, i64* %11, align 8
  store i32 %1, i32* %12, align 4
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %22 = load i64, i64* @VM_MAP_NULL, align 8
  %23 = load i64, i64* %11, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %9
  %26 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %26, i32* %10, align 4
  br label %54

27:                                               ; preds = %9
  %28 = load i32*, i32** %17, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @UPL_NOZEROFILL, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  store i32 %32, i32* %20, align 4
  %33 = load i32, i32* %19, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load i32, i32* @UPL_FORCE_DATA_SYNC, align 4
  %37 = load i32, i32* %20, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %20, align 4
  br label %39

39:                                               ; preds = %35, %27
  %40 = load i64, i64* %11, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load i32*, i32** %13, align 8
  %43 = load i32*, i32** %14, align 8
  %44 = load i32, i32* %15, align 4
  %45 = load i32*, i32** %16, align 8
  %46 = load i32, i32* %18, align 4
  %47 = call i32 @vm_map_create_upl(i64 %40, i32 %41, i32* %42, i32* %43, i32 %44, i32* %45, i32* %20, i32 %46)
  store i32 %47, i32* %21, align 4
  %48 = load i32, i32* %20, align 4
  %49 = load i32, i32* @UPL_FORCE_DATA_SYNC, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = load i32*, i32** %17, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %21, align 4
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %39, %25
  %55 = load i32, i32* %10, align 4
  ret i32 %55
}

declare dso_local i32 @vm_map_create_upl(i64, i32, i32*, i32*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
