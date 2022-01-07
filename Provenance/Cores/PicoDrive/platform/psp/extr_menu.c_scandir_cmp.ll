; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_scandir_cmp.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_scandir_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.my_dirent = type { i32, i32 }

@FIO_S_IFDIR = common dso_local global i32 0, align 4
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
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.my_dirent**, %struct.my_dirent*** %7, align 8
  %17 = load %struct.my_dirent*, %struct.my_dirent** %16, align 8
  %18 = getelementptr inbounds %struct.my_dirent, %struct.my_dirent* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %15, %19
  %21 = load i32, i32* @FIO_S_IFDIR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %2
  %25 = load %struct.my_dirent**, %struct.my_dirent*** %6, align 8
  %26 = load %struct.my_dirent*, %struct.my_dirent** %25, align 8
  %27 = getelementptr inbounds %struct.my_dirent, %struct.my_dirent* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.my_dirent**, %struct.my_dirent*** %7, align 8
  %30 = load %struct.my_dirent*, %struct.my_dirent** %29, align 8
  %31 = getelementptr inbounds %struct.my_dirent, %struct.my_dirent* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @strcasecmp(i32 %28, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %62

34:                                               ; preds = %2
  %35 = load %struct.my_dirent**, %struct.my_dirent*** %6, align 8
  %36 = load %struct.my_dirent*, %struct.my_dirent** %35, align 8
  %37 = getelementptr inbounds %struct.my_dirent, %struct.my_dirent* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @FIO_S_IFDIR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 -1, i32* %3, align 4
  br label %62

43:                                               ; preds = %34
  %44 = load %struct.my_dirent**, %struct.my_dirent*** %7, align 8
  %45 = load %struct.my_dirent*, %struct.my_dirent** %44, align 8
  %46 = getelementptr inbounds %struct.my_dirent, %struct.my_dirent* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @FIO_S_IFDIR, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %62

52:                                               ; preds = %43
  %53 = load %struct.my_dirent**, %struct.my_dirent*** %6, align 8
  %54 = load %struct.my_dirent*, %struct.my_dirent** %53, align 8
  %55 = getelementptr inbounds %struct.my_dirent, %struct.my_dirent* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.my_dirent**, %struct.my_dirent*** %7, align 8
  %58 = load %struct.my_dirent*, %struct.my_dirent** %57, align 8
  %59 = getelementptr inbounds %struct.my_dirent, %struct.my_dirent* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @strcasecmp(i32 %56, i32 %60)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %52, %51, %42, %24
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @strcasecmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
