; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfilefile_path.c_path_mkdir.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfilefile_path.c_path_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @path_mkdir(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i8* null, i8** %6, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %69

16:                                               ; preds = %10
  %17 = load i8*, i8** %3, align 8
  %18 = call i8* @strdup(i8* %17)
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %69

22:                                               ; preds = %16
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @path_parent_dir(i8* %23)
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @strcmp(i8* %29, i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28, %22
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @free(i8* %34)
  store i32 0, i32* %2, align 4
  br label %69

36:                                               ; preds = %28
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @path_is_directory(i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 1, i32* %5, align 4
  br label %48

41:                                               ; preds = %36
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @path_mkdir(i8* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 1, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %41
  br label %48

48:                                               ; preds = %47, %40
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @free(i8* %49)
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 @path_mkdir_cb(i8* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %56, -2
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i8*, i8** %3, align 8
  %60 = call i64 @path_is_directory(i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 1, i32* %2, align 4
  br label %69

63:                                               ; preds = %58, %53
  %64 = load i32, i32* %7, align 4
  %65 = icmp eq i32 %64, 0
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %2, align 4
  br label %69

67:                                               ; preds = %48
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %63, %62, %33, %21, %15
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @path_parent_dir(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @path_is_directory(i8*) #1

declare dso_local i32 @path_mkdir_cb(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
