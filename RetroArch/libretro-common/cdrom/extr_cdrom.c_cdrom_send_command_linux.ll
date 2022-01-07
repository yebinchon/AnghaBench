; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/cdrom/extr_cdrom.c_cdrom_send_command_linux.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/cdrom/extr_cdrom.c_cdrom_send_command_linux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8, i64, i8*, i64, i8*, i64, i32, i32, i8*, i32, i32 }

@SG_DXFER_FROM_DEV = common dso_local global i32 0, align 4
@SG_DXFER_TO_DEV = common dso_local global i32 0, align 4
@SG_DXFER_NONE = common dso_local global i32 0, align 4
@SG_IO = common dso_local global i32 0, align 4
@SG_INFO_CHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i8*, i64, i8*, i64, i8*, i64)* @cdrom_send_command_linux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_send_command_linux(%struct.TYPE_6__* %0, i32 %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_5__, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i64 %7, i64* %17, align 8
  %20 = bitcast %struct.TYPE_5__* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 72, i1 false)
  %21 = load i32, i32* %11, align 4
  switch i32 %21, label %29 [
    i32 130, label %22
    i32 128, label %25
    i32 129, label %28
  ]

22:                                               ; preds = %8
  %23 = load i32, i32* @SG_DXFER_FROM_DEV, align 4
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 9
  store i32 %23, i32* %24, align 8
  br label %32

25:                                               ; preds = %8
  %26 = load i32, i32* @SG_DXFER_TO_DEV, align 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 9
  store i32 %26, i32* %27, align 8
  br label %32

28:                                               ; preds = %8
  br label %29

29:                                               ; preds = %8, %28
  %30 = load i32, i32* @SG_DXFER_NONE, align 4
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 9
  store i32 %30, i32* %31, align 8
  br label %32

32:                                               ; preds = %29, %25, %22
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i8 83, i8* %33, align 8
  %34 = load i64, i64* %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store i64 %34, i64* %35, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  store i8* %36, i8** %37, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 8
  store i8* %38, i8** %39, align 8
  %40 = load i64, i64* %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  store i64 %40, i64* %41, align 8
  %42 = load i8*, i8** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 4
  store i8* %42, i8** %43, align 8
  %44 = load i64, i64* %17, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 5
  store i64 %44, i64* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 6
  store i32 5000, i32* %46, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @fileno(i32 %49)
  %51 = load i32, i32* @SG_IO, align 4
  %52 = call i32 @ioctl(i32 %50, i32 %51, %struct.TYPE_5__* %18)
  store i32 %52, i32* %19, align 4
  %53 = load i32, i32* %19, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %61, label %55

55:                                               ; preds = %32
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @SG_INFO_CHECK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55, %32
  store i32 1, i32* %9, align 4
  br label %63

62:                                               ; preds = %55
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %62, %61
  %64 = load i32, i32* %9, align 4
  ret i32 %64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ioctl(i32, i32, %struct.TYPE_5__*) #2

declare dso_local i32 @fileno(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
