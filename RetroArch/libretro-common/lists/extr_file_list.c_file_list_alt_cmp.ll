; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/lists/extr_file_list.c_file_list_alt_cmp.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/lists/extr_file_list.c_file_list_alt_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item_file = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @file_list_alt_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_list_alt_cmp(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.item_file*, align 8
  %6 = alloca %struct.item_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.item_file*
  store %struct.item_file* %10, %struct.item_file** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.item_file*
  store %struct.item_file* %12, %struct.item_file** %6, align 8
  %13 = load %struct.item_file*, %struct.item_file** %5, align 8
  %14 = getelementptr inbounds %struct.item_file, %struct.item_file* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.item_file*, %struct.item_file** %5, align 8
  %19 = getelementptr inbounds %struct.item_file, %struct.item_file* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.item_file*, %struct.item_file** %5, align 8
  %23 = getelementptr inbounds %struct.item_file, %struct.item_file* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i8* [ %20, %17 ], [ %24, %21 ]
  store i8* %26, i8** %7, align 8
  %27 = load %struct.item_file*, %struct.item_file** %6, align 8
  %28 = getelementptr inbounds %struct.item_file, %struct.item_file* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.item_file*, %struct.item_file** %6, align 8
  %33 = getelementptr inbounds %struct.item_file, %struct.item_file* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  br label %39

35:                                               ; preds = %25
  %36 = load %struct.item_file*, %struct.item_file** %6, align 8
  %37 = getelementptr inbounds %struct.item_file, %struct.item_file* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i8* [ %34, %31 ], [ %38, %35 ]
  store i8* %40, i8** %8, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @strcasecmp(i8* %41, i8* %42)
  ret i32 %43
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
