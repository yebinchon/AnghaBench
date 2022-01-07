; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/device/extr_iokit_rpc.c_IOMapPages.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/device/extr_iokit_rpc.c_IOMapPages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@kIOMapReadOnly = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@kIOMapCacheMask = common dso_local global i32 0, align 4
@VM_WIMG_IO = common dso_local global i32 0, align 4
@VM_WIMG_WTHRU = common dso_local global i32 0, align 4
@VM_WIMG_WCOMB = common dso_local global i32 0, align 4
@VM_WIMG_COPYBACK = common dso_local global i32 0, align 4
@VM_WIMG_INNERWBACK = common dso_local global i32 0, align 4
@VM_WIMG_POSTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IOMapPages(%struct.TYPE_4__* %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @kIOMapReadOnly, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @VM_PROT_READ, align 4
  br label %28

24:                                               ; preds = %5
  %25 = load i32, i32* @VM_PROT_READ, align 4
  %26 = load i32, i32* @VM_PROT_WRITE, align 4
  %27 = or i32 %25, %26
  br label %28

28:                                               ; preds = %24, %22
  %29 = phi i32 [ %23, %22 ], [ %27, %24 ]
  store i32 %29, i32* %11, align 4
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @atop_64(i64 %30)
  store i64 %31, i64* %13, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @kIOMapCacheMask, align 4
  %34 = and i32 %32, %33
  switch i32 %34, label %36 [
    i32 132, label %35
    i32 131, label %39
    i32 128, label %41
    i32 129, label %43
    i32 134, label %45
    i32 133, label %47
    i32 130, label %49
  ]

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %28, %35
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @IODefaultCacheBits(i64 %37)
  store i32 %38, i32* %12, align 4
  br label %51

39:                                               ; preds = %28
  %40 = load i32, i32* @VM_WIMG_IO, align 4
  store i32 %40, i32* %12, align 4
  br label %51

41:                                               ; preds = %28
  %42 = load i32, i32* @VM_WIMG_WTHRU, align 4
  store i32 %42, i32* %12, align 4
  br label %51

43:                                               ; preds = %28
  %44 = load i32, i32* @VM_WIMG_WCOMB, align 4
  store i32 %44, i32* %12, align 4
  br label %51

45:                                               ; preds = %28
  %46 = load i32, i32* @VM_WIMG_COPYBACK, align 4
  store i32 %46, i32* %12, align 4
  br label %51

47:                                               ; preds = %28
  %48 = load i32, i32* @VM_WIMG_INNERWBACK, align 4
  store i32 %48, i32* %12, align 4
  br label %51

49:                                               ; preds = %28
  %50 = load i32, i32* @VM_WIMG_POSTED, align 4
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %49, %47, %45, %43, %41, %39, %36
  %52 = load i64, i64* %13, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @pmap_set_cache_attributes(i64 %52, i32 %53)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @vm_map_set_cache_attr(%struct.TYPE_4__* %55, i32 %57)
  %59 = load i32, i32* %14, align 4
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %13, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i64 @round_page_64(i32 %62)
  %64 = call i64 @atop_64(i64 %63)
  %65 = trunc i64 %64 to i32
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @pmap_map_block(i32 %59, i64 %60, i64 %61, i32 %65, i32 %66, i32 0, i32 0)
  ret i32 %67
}

declare dso_local i64 @atop_64(i64) #1

declare dso_local i32 @IODefaultCacheBits(i64) #1

declare dso_local i32 @pmap_set_cache_attributes(i64, i32) #1

declare dso_local i32 @vm_map_set_cache_attr(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @pmap_map_block(i32, i64, i64, i32, i32, i32, i32) #1

declare dso_local i64 @round_page_64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
