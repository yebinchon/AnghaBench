; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/libs/debug_sym/extr_debug_sym.c_vc_mem_copy.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/libs/debug_sym/extr_debug_sym.c_vc_mem_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_dmacopy = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [9 x i8] c"/dev/fb0\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_SYNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unable to open '%s': %s(%d)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@FBIODMACOPY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Failed to get memory size via ioctl: %s(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @vc_mem_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc_mem_copy(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fb_dmacopy, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = getelementptr inbounds %struct.fb_dmacopy, %struct.fb_dmacopy* %10, i32 0, i32 2
  store i8* %11, i8** %12, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds %struct.fb_dmacopy, %struct.fb_dmacopy* %10, i32 0, i32 1
  store i8* %13, i8** %14, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = getelementptr inbounds %struct.fb_dmacopy, %struct.fb_dmacopy* %10, i32 0, i32 0
  store i8* %15, i8** %16, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* @O_RDWR, align 4
  %19 = load i32, i32* @O_SYNC, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @open(i8* %17, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %3
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 @strerror(i32 %25)
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 (i8*, i8*, i32, ...) @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %24, i32 %26, i32 %27)
  %29 = load i32, i32* @errno, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %50

31:                                               ; preds = %3
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @FBIODMACOPY, align 4
  %34 = call i64 @ioctl(i32 %32, i32 %33, %struct.fb_dmacopy* %10)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load i32, i32* @errno, align 4
  %38 = call i32 @strerror(i32 %37)
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = load i32, i32* @errno, align 4
  %42 = call i32 (i8*, i8*, i32, ...) @ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %40, i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @close(i32 %43)
  %45 = load i32, i32* @errno, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %50

47:                                               ; preds = %31
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @close(i32 %48)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %36, %23
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @ERR(i8*, i8*, i32, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.fb_dmacopy*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
