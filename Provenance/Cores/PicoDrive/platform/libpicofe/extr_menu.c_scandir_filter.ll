; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_menu.c_scandir_filter.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_menu.c_scandir_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i64, i32* }

@filter_exts_internal = common dso_local global i8** null, align 8
@DT_DIR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dirent*)* @scandir_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scandir_filter(%struct.dirent* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dirent*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.dirent* %0, %struct.dirent** %3, align 8
  %7 = load i8**, i8*** @filter_exts_internal, align 8
  store i8** %7, i8*** %4, align 8
  %8 = load %struct.dirent*, %struct.dirent** %3, align 8
  %9 = icmp eq %struct.dirent* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.dirent*, %struct.dirent** %3, align 8
  %12 = getelementptr inbounds %struct.dirent, %struct.dirent* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %56

16:                                               ; preds = %10
  %17 = load %struct.dirent*, %struct.dirent** %3, align 8
  %18 = getelementptr inbounds %struct.dirent, %struct.dirent* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DT_DIR, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %56

23:                                               ; preds = %16
  %24 = load %struct.dirent*, %struct.dirent** %3, align 8
  %25 = getelementptr inbounds %struct.dirent, %struct.dirent* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i8* @strrchr(i32* %26, i8 signext 46)
  store i8* %27, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %56

31:                                               ; preds = %23
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %52, %31
  %35 = load i8**, i8*** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %55

41:                                               ; preds = %34
  %42 = load i8*, i8** %5, align 8
  %43 = load i8**, i8*** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @strcasecmp(i8* %42, i8* %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  store i32 1, i32* %2, align 4
  br label %56

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %34

55:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %50, %30, %22, %15
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i8* @strrchr(i32*, i8 signext) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
