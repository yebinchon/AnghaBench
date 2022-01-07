; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/code940/extr_mp3test.c_YM2612Init_940.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/code940/extr_mp3test.c_YM2612Init_940.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i64* }

@.str = private unnamed_addr constant [18 x i8] c"YM2612Init_940()\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Mem usage: shared_data: %i, shared_ctl: %i\0A\00", align 1
@gp2x_memregs = common dso_local global i32* null, align 8
@gp2x_memregl = common dso_local global i32* null, align 8
@shared_mem = common dso_local global i8* null, align 8
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@memdev = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"mmap(shared_data) failed with %i\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@shared_data = common dso_local global %struct.TYPE_6__* null, align 8
@shared_ctl = common dso_local global %struct.TYPE_6__* null, align 8
@MP3_SIZE_MAX = common dso_local global i32 0, align 4
@mp3_mem = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"mmap(mp3_mem) failed with %i\0A\00", align 1
@crashed_940 = common dso_local global i32 0, align 4
@g_argv = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"/code940.bin\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"failed to open %s\0A\00", align 1
@JOB940_INITALL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @YM2612Init_940(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca [1024 x i8], align 16
  %8 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 24, i64 24)
  %11 = call i32 @Reset940(i32 1, i32 2)
  %12 = call i32 @Pause940(i32 1)
  %13 = load i32*, i32** @gp2x_memregs, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 7587
  store i32 65535, i32* %14, align 4
  %15 = load i32*, i32** @gp2x_memregs, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 7585
  store i32 65535, i32* %16, align 4
  %17 = load i32*, i32** @gp2x_memregl, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 4418
  store i32 -67108865, i32* %18, align 4
  %19 = load i8*, i8** @shared_mem, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %59

21:                                               ; preds = %2
  %22 = load i32, i32* @PROT_READ, align 4
  %23 = load i32, i32* @PROT_WRITE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @MAP_SHARED, align 4
  %26 = load i32, i32* @memdev, align 4
  %27 = call i64 @mmap(i32 0, i32 2162688, i32 %24, i32 %25, i32 %26, i32 33554432)
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** @shared_mem, align 8
  %29 = load i8*, i8** @shared_mem, align 8
  %30 = load i8*, i8** @MAP_FAILED, align 8
  %31 = icmp eq i8* %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %21
  %33 = load i32, i32* @errno, align 4
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = call i32 @exit(i32 1) #3
  unreachable

36:                                               ; preds = %21
  %37 = load i8*, i8** @shared_mem, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1048576
  %39 = bitcast i8* %38 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** @shared_data, align 8
  %40 = load i8*, i8** @shared_mem, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2097152
  %42 = bitcast i8* %41 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** @shared_ctl, align 8
  %43 = load i32, i32* @MP3_SIZE_MAX, align 4
  %44 = load i32, i32* @PROT_READ, align 4
  %45 = load i32, i32* @PROT_WRITE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @MAP_SHARED, align 4
  %48 = load i32, i32* @memdev, align 4
  %49 = call i64 @mmap(i32 0, i32 %43, i32 %46, i32 %47, i32 %48, i32 50331648)
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** @mp3_mem, align 8
  %51 = load i8*, i8** @mp3_mem, align 8
  %52 = load i8*, i8** @MAP_FAILED, align 8
  %53 = icmp eq i8* %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %36
  %55 = load i32, i32* @errno, align 4
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = call i32 @exit(i32 1) #3
  unreachable

58:                                               ; preds = %36
  store i32 1, i32* @crashed_940, align 4
  br label %59

59:                                               ; preds = %58, %2
  %60 = load i32, i32* @crashed_940, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %107

62:                                               ; preds = %59
  %63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %64 = load i32*, i32** @g_argv, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @strncpy(i8* %63, i32 %66, i32 1023)
  %68 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 1023
  store i8 0, i8* %68, align 1
  %69 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %70 = call i32 @strlen(i8* %69)
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %86, %62
  %72 = load i32, i32* %6, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %71
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 47
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 %83
  store i8 0, i8* %84, align 1
  br label %89

85:                                               ; preds = %74
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %6, align 4
  br label %71

89:                                               ; preds = %81, %71
  %90 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %91 = call i32 @strcat(i8* %90, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %92 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %93 = call i32* @fopen(i8* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32* %93, i32** %8, align 8
  %94 = load i32*, i32** %8, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %89
  %97 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %97)
  %99 = call i32 @exit(i32 1) #3
  unreachable

100:                                              ; preds = %89
  %101 = load i8*, i8** @shared_mem, align 8
  %102 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 @read_to_upper(i8* %101, i8* %102, i32 1024, i32* %103)
  %105 = load i32*, i32** %8, align 8
  %106 = call i32 @fclose(i32* %105)
  store i32 0, i32* @crashed_940, align 4
  br label %107

107:                                              ; preds = %100, %59
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shared_data, align 8
  %109 = call i32 @memset(%struct.TYPE_6__* %108, i32 0, i32 24)
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shared_ctl, align 8
  %111 = call i32 @memset(%struct.TYPE_6__* %110, i32 0, i32 24)
  %112 = load i32, i32* %3, align 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shared_ctl, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* %4, align 4
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shared_ctl, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load i64, i64* @JOB940_INITALL, align 8
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shared_ctl, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 3
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 0
  store i64 %118, i64* %122, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shared_ctl, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 3
  %125 = load i64*, i64** %124, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 1
  store i64 0, i64* %126, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shared_ctl, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  store i32 1, i32* %128, align 8
  %129 = call i32 @Reset940(i32 0, i32 2)
  %130 = call i32 @Pause940(i32 0)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @Reset940(i32, i32) #1

declare dso_local i32 @Pause940(i32) #1

declare dso_local i64 @mmap(i32, i32, i32, i32, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @read_to_upper(i8*, i8*, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
