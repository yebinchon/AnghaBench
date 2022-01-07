; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/samples/file/nbio/extr_nbio_test.c_nbio_read_test.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/samples/file/nbio/extr_nbio_test.c_nbio_read_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbio_t = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"test.bin\00", align 1
@NBIO_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"[ERROR]: nbio_open failed (2)\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"[ERROR]: wrong size (2)\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"[SUCCESS]: Read pointer is available before iterating.\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"[SUCCESS]: Read finished immediately.\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"[ERROR]: wrong size (3)\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"[ERROR]: wrong data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @nbio_read_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nbio_read_test() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.nbio_t*, align 8
  %4 = alloca i8*, align 8
  store i32 0, i32* %2, align 4
  %5 = load i32, i32* @NBIO_READ, align 4
  %6 = call %struct.nbio_t* @nbio_open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %5)
  store %struct.nbio_t* %6, %struct.nbio_t** %3, align 8
  %7 = load %struct.nbio_t*, %struct.nbio_t** %3, align 8
  %8 = call i8* @nbio_get_ptr(%struct.nbio_t* %7, i64* %1)
  store i8* %8, i8** %4, align 8
  %9 = load %struct.nbio_t*, %struct.nbio_t** %3, align 8
  %10 = icmp ne %struct.nbio_t* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %0
  %12 = call i32 @puts(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %0
  %14 = load i64, i64* %1, align 8
  %15 = icmp ne i64 %14, 1048576
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 @puts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %13
  %19 = load i8*, i8** %4, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 @puts(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %18
  %24 = load %struct.nbio_t*, %struct.nbio_t** %3, align 8
  %25 = call i32 @nbio_begin_read(%struct.nbio_t* %24)
  br label %26

26:                                               ; preds = %31, %23
  %27 = load %struct.nbio_t*, %struct.nbio_t** %3, align 8
  %28 = call i32 @nbio_iterate(%struct.nbio_t* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %26

32:                                               ; preds = %26
  %33 = load i32, i32* %2, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = call i32 @puts(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %32
  %38 = load %struct.nbio_t*, %struct.nbio_t** %3, align 8
  %39 = call i8* @nbio_get_ptr(%struct.nbio_t* %38, i64* %1)
  store i8* %39, i8** %4, align 8
  %40 = load i64, i64* %1, align 8
  %41 = icmp ne i64 %40, 1048576
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 @puts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %37
  %45 = load i8*, i8** %4, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 66
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = load i8*, i8** %4, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = call i64 @memcmp(i8* %50, i8* %52, i32 1048575)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49, %44
  %56 = call i32 @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %49
  %58 = load %struct.nbio_t*, %struct.nbio_t** %3, align 8
  %59 = call i32 @nbio_free(%struct.nbio_t* %58)
  ret void
}

declare dso_local %struct.nbio_t* @nbio_open(i8*, i32) #1

declare dso_local i8* @nbio_get_ptr(%struct.nbio_t*, i64*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @nbio_begin_read(%struct.nbio_t*) #1

declare dso_local i32 @nbio_iterate(%struct.nbio_t*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @nbio_free(%struct.nbio_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
