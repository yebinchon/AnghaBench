; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_menu.c_scandir_cmp.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_menu.c_scandir_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.my_dirent = type { i64, i32 }

@DT_DIR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @scandir_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scandir_cmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.my_dirent**, align 8
  %7 = alloca %struct.my_dirent**, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.my_dirent**
  store %struct.my_dirent** %9, %struct.my_dirent*** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.my_dirent**
  store %struct.my_dirent** %11, %struct.my_dirent*** %7, align 8
  %12 = load %struct.my_dirent**, %struct.my_dirent*** %6, align 8
  %13 = load %struct.my_dirent*, %struct.my_dirent** %12, align 8
  %14 = getelementptr inbounds %struct.my_dirent, %struct.my_dirent* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.my_dirent**, %struct.my_dirent*** %7, align 8
  %17 = load %struct.my_dirent*, %struct.my_dirent** %16, align 8
  %18 = getelementptr inbounds %struct.my_dirent, %struct.my_dirent* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %15, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load %struct.my_dirent**, %struct.my_dirent*** %6, align 8
  %23 = load %struct.my_dirent*, %struct.my_dirent** %22, align 8
  %24 = getelementptr inbounds %struct.my_dirent, %struct.my_dirent* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.my_dirent**, %struct.my_dirent*** %7, align 8
  %27 = load %struct.my_dirent*, %struct.my_dirent** %26, align 8
  %28 = getelementptr inbounds %struct.my_dirent, %struct.my_dirent* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @strcasecmp(i32 %25, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %57

31:                                               ; preds = %2
  %32 = load %struct.my_dirent**, %struct.my_dirent*** %6, align 8
  %33 = load %struct.my_dirent*, %struct.my_dirent** %32, align 8
  %34 = getelementptr inbounds %struct.my_dirent, %struct.my_dirent* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DT_DIR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %57

39:                                               ; preds = %31
  %40 = load %struct.my_dirent**, %struct.my_dirent*** %7, align 8
  %41 = load %struct.my_dirent*, %struct.my_dirent** %40, align 8
  %42 = getelementptr inbounds %struct.my_dirent, %struct.my_dirent* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DT_DIR, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %57

47:                                               ; preds = %39
  %48 = load %struct.my_dirent**, %struct.my_dirent*** %6, align 8
  %49 = load %struct.my_dirent*, %struct.my_dirent** %48, align 8
  %50 = getelementptr inbounds %struct.my_dirent, %struct.my_dirent* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.my_dirent**, %struct.my_dirent*** %7, align 8
  %53 = load %struct.my_dirent*, %struct.my_dirent** %52, align 8
  %54 = getelementptr inbounds %struct.my_dirent, %struct.my_dirent* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @strcasecmp(i32 %51, i32 %55)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %47, %46, %38, %21
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @strcasecmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
