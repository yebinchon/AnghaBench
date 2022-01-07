; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_fatfile.c__FAT_findEntry.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_fatfile.c__FAT_findEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_FAT_findEntry(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32* @_FAT_partition_getPartitionFromPath(i8* %7)
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @strchr(i8* %13, i8 signext 58)
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i8*, i8** %4, align 8
  %18 = call i8* @strchr(i8* %17, i8 signext 58)
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  store i8* %19, i8** %4, align 8
  br label %20

20:                                               ; preds = %16, %12
  %21 = load i8*, i8** %4, align 8
  %22 = call i8* @strchr(i8* %21, i8 signext 58)
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %30

25:                                               ; preds = %20
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @_FAT_directory_entryFromPath(i32* %26, i32* %27, i8* %28, i32* null)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %25, %24, %11
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32* @_FAT_partition_getPartitionFromPath(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @_FAT_directory_entryFromPath(i32*, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
