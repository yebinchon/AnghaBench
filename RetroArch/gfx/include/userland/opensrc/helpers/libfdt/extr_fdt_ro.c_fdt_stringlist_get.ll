; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/opensrc/helpers/libfdt/extr_fdt_ro.c_fdt_stringlist_get.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/opensrc/helpers/libfdt/extr_fdt_ro.c_fdt_stringlist_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FDT_ERR_BADVALUE = common dso_local global i32 0, align 4
@FDT_ERR_NOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fdt_stringlist_get(i8* %0, i32 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = call i8* @fdt_getprop(i8* %15, i32 %16, i8* %17, i32* %14)
  store i8* %18, i8** %12, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %5
  %22 = load i32*, i32** %11, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %14, align 4
  %26 = load i32*, i32** %11, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %21
  store i8* null, i8** %6, align 8
  br label %88

28:                                               ; preds = %5
  %29 = load i8*, i8** %12, align 8
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8* %32, i8** %13, align 8
  br label %33

33:                                               ; preds = %73, %28
  %34 = load i8*, i8** %12, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = icmp ult i8* %34, %35
  br i1 %36, label %37, label %80

37:                                               ; preds = %33
  %38 = load i8*, i8** %12, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = trunc i64 %43 to i32
  %45 = call i32 @strnlen(i8* %38, i32 %44)
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %14, align 4
  %47 = load i8*, i8** %12, align 8
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8*, i8** %13, align 8
  %52 = icmp ugt i8* %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %37
  %54 = load i32*, i32** %11, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* @FDT_ERR_BADVALUE, align 4
  %58 = sub nsw i32 0, %57
  %59 = load i32*, i32** %11, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %56, %53
  store i8* null, i8** %6, align 8
  br label %88

61:                                               ; preds = %37
  %62 = load i32, i32* %10, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load i32*, i32** %11, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i32, i32* %14, align 4
  %69 = sub nsw i32 %68, 1
  %70 = load i32*, i32** %11, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %67, %64
  %72 = load i8*, i8** %12, align 8
  store i8* %72, i8** %6, align 8
  br label %88

73:                                               ; preds = %61
  %74 = load i32, i32* %14, align 4
  %75 = load i8*, i8** %12, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %12, align 8
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %10, align 4
  br label %33

80:                                               ; preds = %33
  %81 = load i32*, i32** %11, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i32, i32* @FDT_ERR_NOTFOUND, align 4
  %85 = sub nsw i32 0, %84
  %86 = load i32*, i32** %11, align 8
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %83, %80
  store i8* null, i8** %6, align 8
  br label %88

88:                                               ; preds = %87, %71, %60, %27
  %89 = load i8*, i8** %6, align 8
  ret i8* %89
}

declare dso_local i8* @fdt_getprop(i8*, i32, i8*, i32*) #1

declare dso_local i32 @strnlen(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
