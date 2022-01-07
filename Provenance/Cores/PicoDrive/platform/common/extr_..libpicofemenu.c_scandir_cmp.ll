; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_..libpicofemenu.c_scandir_cmp.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_..libpicofemenu.c_scandir_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i64 }

@DT_DIR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @scandir_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scandir_cmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dirent**, align 8
  %7 = alloca %struct.dirent**, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.dirent**
  store %struct.dirent** %9, %struct.dirent*** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.dirent**
  store %struct.dirent** %11, %struct.dirent*** %7, align 8
  %12 = load %struct.dirent**, %struct.dirent*** %6, align 8
  %13 = load %struct.dirent*, %struct.dirent** %12, align 8
  %14 = getelementptr inbounds %struct.dirent, %struct.dirent* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.dirent**, %struct.dirent*** %7, align 8
  %17 = load %struct.dirent*, %struct.dirent** %16, align 8
  %18 = getelementptr inbounds %struct.dirent, %struct.dirent* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %15, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.dirent**, %struct.dirent*** %6, align 8
  %23 = load %struct.dirent**, %struct.dirent*** %7, align 8
  %24 = call i32 @alphasort(%struct.dirent** %22, %struct.dirent** %23)
  store i32 %24, i32* %3, align 4
  br label %45

25:                                               ; preds = %2
  %26 = load %struct.dirent**, %struct.dirent*** %6, align 8
  %27 = load %struct.dirent*, %struct.dirent** %26, align 8
  %28 = getelementptr inbounds %struct.dirent, %struct.dirent* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DT_DIR, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %45

33:                                               ; preds = %25
  %34 = load %struct.dirent**, %struct.dirent*** %7, align 8
  %35 = load %struct.dirent*, %struct.dirent** %34, align 8
  %36 = getelementptr inbounds %struct.dirent, %struct.dirent* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DT_DIR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %45

41:                                               ; preds = %33
  %42 = load %struct.dirent**, %struct.dirent*** %6, align 8
  %43 = load %struct.dirent**, %struct.dirent*** %7, align 8
  %44 = call i32 @alphasort(%struct.dirent** %42, %struct.dirent** %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %40, %32, %21
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @alphasort(%struct.dirent**, %struct.dirent**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
