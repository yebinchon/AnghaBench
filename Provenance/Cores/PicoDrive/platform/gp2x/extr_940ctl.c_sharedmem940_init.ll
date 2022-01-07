; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_940ctl.c_sharedmem940_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_940ctl.c_sharedmem940_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@shared_mem = common dso_local global i8* null, align 8
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@memdev = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"mmap(shared_data) failed with %i\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@shared_data = common dso_local global i32* null, align 8
@shared_ctl = common dso_local global i32* null, align 8
@MP3_SIZE_MAX = common dso_local global i32 0, align 4
@mp3_mem = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"mmap(mp3_mem) failed with %i\0A\00", align 1
@crashed_940 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sharedmem940_init() #0 {
  %1 = load i8*, i8** @shared_mem, align 8
  %2 = icmp ne i8* %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %42

4:                                                ; preds = %0
  %5 = load i32, i32* @PROT_READ, align 4
  %6 = load i32, i32* @PROT_WRITE, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @MAP_SHARED, align 4
  %9 = load i32, i32* @memdev, align 4
  %10 = call i64 @mmap(i32 0, i32 2162688, i32 %7, i32 %8, i32 %9, i32 33554432)
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** @shared_mem, align 8
  %12 = load i8*, i8** @shared_mem, align 8
  %13 = load i8*, i8** @MAP_FAILED, align 8
  %14 = icmp eq i8* %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i32, i32* @errno, align 4
  %17 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = call i32 @exit(i32 1) #3
  unreachable

19:                                               ; preds = %4
  %20 = load i8*, i8** @shared_mem, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1048576
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** @shared_data, align 8
  %23 = load i8*, i8** @shared_mem, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 2097152
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** @shared_ctl, align 8
  %26 = load i32, i32* @MP3_SIZE_MAX, align 4
  %27 = load i32, i32* @PROT_READ, align 4
  %28 = load i32, i32* @PROT_WRITE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @MAP_SHARED, align 4
  %31 = load i32, i32* @memdev, align 4
  %32 = call i64 @mmap(i32 0, i32 %26, i32 %29, i32 %30, i32 %31, i32 37748736)
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** @mp3_mem, align 8
  %34 = load i8*, i8** @mp3_mem, align 8
  %35 = load i8*, i8** @MAP_FAILED, align 8
  %36 = icmp eq i8* %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %19
  %38 = load i32, i32* @errno, align 4
  %39 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = call i32 @exit(i32 1) #3
  unreachable

41:                                               ; preds = %19
  store i32 1, i32* @crashed_940, align 4
  br label %42

42:                                               ; preds = %41, %3
  ret void
}

declare dso_local i64 @mmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
