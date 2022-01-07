; ModuleID = '/home/carl/AnghaBench/darwin-xnu/iokit/Kernel/extr_IOHibernateRestoreKernel.c_store_one_page.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/iokit/Kernel/extr_IOHibernateRestoreKernel.c_store_one_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WKdm_SCRATCH_BUF_SIZE_INTERNAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DEST_COPY_AREA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32*, i32)* @store_one_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_one_page(i32 %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i64 @ptoa_64(i32 %17)
  store i64 %18, i64* %11, align 8
  %19 = load i32, i32* @WKdm_SCRATCH_BUF_SIZE_INTERNAL, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %68

26:                                               ; preds = %5
  %27 = load i32, i32* @DEST_COPY_AREA, align 4
  %28 = load i64, i64* %11, align 8
  %29 = call i64 @pal_hib_map(i32 %27, i64 %28)
  store i64 %29, i64* %11, align 8
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 4
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load i32*, i32** %7, align 8
  %34 = load i64, i64* %11, align 8
  %35 = inttoptr i64 %34 to i32*
  %36 = getelementptr inbounds i32, i32* %22, i64 0
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @WKdm_decompress_new(i32* %33, i32* %35, i32* %36, i32 %37)
  br label %67

39:                                               ; preds = %26
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %15, align 4
  %42 = load i64, i64* %11, align 8
  %43 = inttoptr i64 %42 to i32*
  store i32* %43, i32** %16, align 8
  %44 = load i32, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %39
  %47 = load i64, i64* %11, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = call i32 @__nosan_bzero(i8* %48, i32 %49)
  br label %66

51:                                               ; preds = %39
  store i64 0, i64* %14, align 8
  br label %52

52:                                               ; preds = %62, %51
  %53 = load i64, i64* %14, align 8
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = sext i32 %54 to i64
  %56 = udiv i64 %55, 4
  %57 = icmp ult i64 %53, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load i32, i32* %15, align 4
  %60 = load i32*, i32** %16, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %16, align 8
  store i32 %59, i32* %60, align 4
  br label %62

62:                                               ; preds = %58
  %63 = load i64, i64* %14, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %14, align 8
  br label %52

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65, %46
  br label %67

67:                                               ; preds = %66, %32
  br label %75

68:                                               ; preds = %5
  %69 = load i32*, i32** %7, align 8
  %70 = ptrtoint i32* %69 to i64
  %71 = load i64, i64* %11, align 8
  %72 = load i32, i32* @PAGE_SIZE, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i64 @hibernate_restore_phys_page(i64 %70, i64 %71, i32 %72, i32 %73)
  store i64 %74, i64* %11, align 8
  br label %75

75:                                               ; preds = %68, %67
  %76 = load i64, i64* %11, align 8
  %77 = inttoptr i64 %76 to i32*
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @hibernate_sum_page(i32* %77, i32 %78)
  %80 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %80)
  ret i32 %79
}

declare dso_local i64 @ptoa_64(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @pal_hib_map(i32, i64) #1

declare dso_local i32 @WKdm_decompress_new(i32*, i32*, i32*, i32) #1

declare dso_local i32 @__nosan_bzero(i8*, i32) #1

declare dso_local i64 @hibernate_restore_phys_page(i64, i64, i32, i32) #1

declare dso_local i32 @hibernate_sum_page(i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
