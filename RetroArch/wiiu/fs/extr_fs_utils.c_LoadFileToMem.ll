; ModuleID = '/home/carl/AnghaBench/RetroArch/wiiu/fs/extr_fs_utils.c_LoadFileToMem.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wiiu/fs/extr_fs_utils.c_LoadFileToMem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LoadFileToMem(i8* %0, i32** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 16384, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32**, i32*** %6, align 8
  store i32* null, i32** %14, align 8
  %15 = load i64*, i64** %7, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i64*, i64** %7, align 8
  store i64 0, i64* %18, align 8
  br label %19

19:                                               ; preds = %17, %3
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* @O_RDONLY, align 4
  %22 = call i32 @open(i8* %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %91

26:                                               ; preds = %19
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @SEEK_END, align 4
  %29 = call i64 @lseek(i32 %27, i32 0, i32 %28)
  store i64 %29, i64* %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @SEEK_SET, align 4
  %32 = call i64 @lseek(i32 %30, i32 0, i32 %31)
  %33 = load i64, i64* %9, align 8
  %34 = call i64 @malloc(i64 %33)
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %8, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @close(i32 %39)
  store i32 -2, i32* %4, align 4
  br label %91

41:                                               ; preds = %26
  br label %42

42:                                               ; preds = %66, %41
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %71

46:                                               ; preds = %42
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* %11, align 8
  %49 = add nsw i64 %47, %48
  %50 = load i64, i64* %9, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %12, align 8
  %55 = sub nsw i64 %53, %54
  store i64 %55, i64* %11, align 8
  br label %56

56:                                               ; preds = %52, %46
  %57 = load i32, i32* %10, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = load i64, i64* %12, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i64, i64* %11, align 8
  %62 = call i32 @read(i32 %57, i32* %60, i64 %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp sle i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %71

66:                                               ; preds = %56
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %12, align 8
  %70 = add nsw i64 %69, %68
  store i64 %70, i64* %12, align 8
  br label %42

71:                                               ; preds = %65, %42
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @close(i32 %72)
  %74 = load i64, i64* %12, align 8
  %75 = load i64, i64* %9, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @free(i32* %78)
  store i32 -3, i32* %4, align 4
  br label %91

80:                                               ; preds = %71
  %81 = load i32*, i32** %8, align 8
  %82 = load i32**, i32*** %6, align 8
  store i32* %81, i32** %82, align 8
  %83 = load i64*, i64** %7, align 8
  %84 = icmp ne i64* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i64, i64* %9, align 8
  %87 = load i64*, i64** %7, align 8
  store i64 %86, i64* %87, align 8
  br label %88

88:                                               ; preds = %85, %80
  %89 = load i64, i64* %9, align 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %88, %77, %38, %25
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @read(i32, i32*, i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
