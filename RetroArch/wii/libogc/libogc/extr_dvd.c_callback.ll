; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c_callback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__dvd_tmpid0 = common dso_local global i32 0, align 4
@DVD_DISKIDSIZE = common dso_local global i32 0, align 4
@__dvd_diskID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @callback(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @DVD_ReadDiskID(i32* %8, i32* @__dvd_tmpid0, void (i32, i32*)* @callback)
  br label %31

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @DVD_DISKIDSIZE, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i32, i32* @__dvd_diskID, align 4
  %16 = load i32, i32* @DVD_DISKIDSIZE, align 4
  %17 = call i32 @memcpy(i32 %15, i32* @__dvd_tmpid0, i32 %16)
  br label %25

18:                                               ; preds = %10
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, -4
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @DVD_SpinUpDriveAsync(i32* %22, void (i32, i32*)* @callback)
  br label %31

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %14
  br label %26

26:                                               ; preds = %25
  br i1 true, label %27, label %31

27:                                               ; preds = %26
  %28 = load i32, i32* %3, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @__dvd_mountusrcb(i32 %28, i32* %29)
  br label %31

31:                                               ; preds = %7, %21, %27, %26
  ret void
}

declare dso_local i32 @DVD_ReadDiskID(i32*, i32*, void (i32, i32*)*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @DVD_SpinUpDriveAsync(i32*, void (i32, i32*)*) #1

declare dso_local i32 @__dvd_mountusrcb(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
