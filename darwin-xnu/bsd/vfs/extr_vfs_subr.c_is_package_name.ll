; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_is_package_name.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_is_package_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pkg_extensions_lck = common dso_local global i32 0, align 4
@extension_table = common dso_local global i8* null, align 8
@nexts = common dso_local global i32 0, align 4
@max_ext_width = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_package_name(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp sle i32 %10, 3
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

13:                                               ; preds = %2
  store i8* null, i8** %9, align 8
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** %8, align 8
  br label %15

15:                                               ; preds = %28, %13
  %16 = load i8*, i8** %8, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load i8*, i8** %8, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 46
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i8*, i8** %8, align 8
  store i8* %26, i8** %9, align 8
  br label %27

27:                                               ; preds = %25, %20
  br label %28

28:                                               ; preds = %27
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %8, align 8
  br label %15

31:                                               ; preds = %15
  %32 = load i8*, i8** %9, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %76

35:                                               ; preds = %31
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %9, align 8
  %38 = load i32, i32* @pkg_extensions_lck, align 4
  %39 = call i32 @lck_mtx_lock(i32 %38)
  %40 = load i8*, i8** @extension_table, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  store i8* %41, i8** %8, align 8
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %66, %35
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @nexts, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %73

46:                                               ; preds = %42
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @strlen(i8* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @strncasecmp(i8* %49, i8* %50, i32 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %46
  %55 = load i8*, i8** %9, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i32, i32* @pkg_extensions_lck, align 4
  %64 = call i32 @lck_mtx_unlock(i32 %63)
  store i32 1, i32* %3, align 4
  br label %76

65:                                               ; preds = %54, %46
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* @max_ext_width, align 4
  %70 = load i8*, i8** %8, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %8, align 8
  br label %42

73:                                               ; preds = %42
  %74 = load i32, i32* @pkg_extensions_lck, align 4
  %75 = call i32 @lck_mtx_unlock(i32 %74)
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %73, %62, %34, %12
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
