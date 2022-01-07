; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/vfs/extr_vfs_fat.c_vfs_fat_fstat.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/vfs/extr_vfs_fat.c_vfs_fat_fstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i64, i64, i64, i32 }
%struct.TYPE_2__ = type { i32* }

@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.stat*)* @vfs_fat_fstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfs_fat_fstat(i8* %0, i32 %1, %struct.stat* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.stat* %2, %struct.stat** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %7, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @f_size(i32* %17)
  %19 = load %struct.stat*, %struct.stat** %6, align 8
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @S_IRWXU, align 4
  %22 = load i32, i32* @S_IRWXG, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @S_IRWXO, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @S_IFREG, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.stat*, %struct.stat** %6, align 8
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.stat*, %struct.stat** %6, align 8
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.stat*, %struct.stat** %6, align 8
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.stat*, %struct.stat** %6, align 8
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  ret i32 0
}

declare dso_local i32 @f_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
