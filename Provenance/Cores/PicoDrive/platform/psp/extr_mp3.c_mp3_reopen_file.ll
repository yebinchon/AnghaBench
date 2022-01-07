; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_mp3.c_mp3_reopen_file.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_mp3.c_mp3_reopen_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mp3_fname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"mp3_reopen_file(%s)\0A\00", align 1
@mp3_handle = common dso_local global i64 0, align 8
@PSP_O_RDONLY = common dso_local global i32 0, align 4
@mp3_src_pos = common dso_local global i32 0, align 4
@PSP_SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"mp3_reopen_file %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp3_reopen_file() #0 {
  %1 = load i8*, i8** @mp3_fname, align 8
  %2 = icmp eq i8* %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %29

4:                                                ; preds = %0
  %5 = load i8*, i8** @mp3_fname, align 8
  %6 = call i32 @lprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %5)
  %7 = load i64, i64* @mp3_handle, align 8
  %8 = icmp sge i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = load i64, i64* @mp3_handle, align 8
  %11 = call i32 @sceIoClose(i64 %10)
  br label %12

12:                                               ; preds = %9, %4
  %13 = load i8*, i8** @mp3_fname, align 8
  %14 = load i32, i32* @PSP_O_RDONLY, align 4
  %15 = call i64 @sceIoOpen(i8* %13, i32 %14, i32 511)
  store i64 %15, i64* @mp3_handle, align 8
  %16 = load i64, i64* @mp3_handle, align 8
  %17 = icmp sge i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load i64, i64* @mp3_handle, align 8
  %20 = load i32, i32* @mp3_src_pos, align 4
  %21 = load i32, i32* @PSP_SEEK_SET, align 4
  %22 = call i32 @sceIoLseek32(i64 %19, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %18, %12
  %24 = load i64, i64* @mp3_handle, align 8
  %25 = icmp sge i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %28 = call i32 @lprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %23, %3
  ret void
}

declare dso_local i32 @lprintf(i8*, i8*) #1

declare dso_local i32 @sceIoClose(i64) #1

declare dso_local i64 @sceIoOpen(i8*, i32, i32) #1

declare dso_local i32 @sceIoLseek32(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
