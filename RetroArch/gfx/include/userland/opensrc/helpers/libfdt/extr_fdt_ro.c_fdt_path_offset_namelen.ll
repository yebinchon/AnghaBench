; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/opensrc/helpers/libfdt/extr_fdt_ro.c_fdt_path_offset_namelen.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/opensrc/helpers/libfdt/extr_fdt_ro.c_fdt_path_offset_namelen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FDT_ERR_BADPATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_path_offset_namelen(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %6, align 8
  store i8* %17, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @FDT_CHECK_HEADER(i8* %18)
  %20 = load i8*, i8** %6, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 47
  br i1 %23, label %24, label %57

24:                                               ; preds = %3
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = trunc i64 %30 to i32
  %32 = call i8* @memchr(i8* %25, i8 signext 47, i32 %31)
  store i8* %32, i8** %11, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %24
  %36 = load i8*, i8** %8, align 8
  store i8* %36, i8** %11, align 8
  br label %37

37:                                               ; preds = %35, %24
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = trunc i64 %44 to i32
  %46 = call i8* @fdt_get_alias_namelen(i8* %38, i8* %39, i32 %45)
  store i8* %46, i8** %9, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %37
  %50 = load i32, i32* @FDT_ERR_BADPATH, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %109

52:                                               ; preds = %37
  %53 = load i8*, i8** %5, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @fdt_path_offset(i8* %53, i8* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i8*, i8** %11, align 8
  store i8* %56, i8** %9, align 8
  br label %57

57:                                               ; preds = %52, %3
  br label %58

58:                                               ; preds = %105, %57
  %59 = load i8*, i8** %9, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = icmp ult i8* %59, %60
  br i1 %61, label %62, label %107

62:                                               ; preds = %58
  br label %63

63:                                               ; preds = %76, %62
  %64 = load i8*, i8** %9, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 47
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %9, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = icmp eq i8* %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %4, align 4
  br label %109

76:                                               ; preds = %68
  br label %63

77:                                               ; preds = %63
  %78 = load i8*, i8** %9, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = trunc i64 %83 to i32
  %85 = call i8* @memchr(i8* %78, i8 signext 47, i32 %84)
  store i8* %85, i8** %12, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %77
  %89 = load i8*, i8** %8, align 8
  store i8* %89, i8** %12, align 8
  br label %90

90:                                               ; preds = %88, %77
  %91 = load i8*, i8** %5, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load i8*, i8** %9, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = ptrtoint i8* %94 to i64
  %97 = ptrtoint i8* %95 to i64
  %98 = sub i64 %96, %97
  %99 = trunc i64 %98 to i32
  %100 = call i32 @fdt_subnode_offset_namelen(i8* %91, i32 %92, i8* %93, i32 %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %90
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %4, align 4
  br label %109

105:                                              ; preds = %90
  %106 = load i8*, i8** %12, align 8
  store i8* %106, i8** %9, align 8
  br label %58

107:                                              ; preds = %58
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %107, %103, %74, %49
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @FDT_CHECK_HEADER(i8*) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i8* @fdt_get_alias_namelen(i8*, i8*, i32) #1

declare dso_local i32 @fdt_path_offset(i8*, i8*) #1

declare dso_local i32 @fdt_subnode_offset_namelen(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
