; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libxvid.c_xvid_ff_2pass_create.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libxvid.c_xvid_ff_2pass_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.xvid_ff_pass1 = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }

@XVID_ERR_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"# ffmpeg 2-pass log file, using xvid codec\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"# Do not modify. libxvidcore version: %d.%d.%d\0A\0A\00", align 1
@XVID_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8**)* @xvid_ff_2pass_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xvid_ff_2pass_create(%struct.TYPE_5__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.xvid_ff_pass1*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.xvid_ff_pass1*
  store %struct.xvid_ff_pass1* %11, %struct.xvid_ff_pass1** %6, align 8
  %12 = load %struct.xvid_ff_pass1*, %struct.xvid_ff_pass1** %6, align 8
  %13 = getelementptr inbounds %struct.xvid_ff_pass1, %struct.xvid_ff_pass1* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @XVID_ERR_FAIL, align 4
  store i32 %20, i32* %3, align 4
  br label %46

21:                                               ; preds = %2
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 0, i8* %23, align 1
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @BUFFER_REMAINING(i8* %25)
  %27 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %24, i32 %26, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @BUFFER_CAT(i8* %28)
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @BUFFER_REMAINING(i8* %32)
  %34 = load i32, i32* @XVID_VERSION, align 4
  %35 = call i32 @XVID_VERSION_MAJOR(i32 %34)
  %36 = load i32, i32* @XVID_VERSION, align 4
  %37 = call i32 @XVID_VERSION_MINOR(i32 %36)
  %38 = load i32, i32* @XVID_VERSION, align 4
  %39 = call i32 @XVID_VERSION_PATCH(i32 %38)
  %40 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %31, i32 %33, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %37, i32 %39)
  %41 = load %struct.xvid_ff_pass1*, %struct.xvid_ff_pass1** %6, align 8
  %42 = getelementptr inbounds %struct.xvid_ff_pass1, %struct.xvid_ff_pass1* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = bitcast %struct.TYPE_4__* %43 to i8*
  %45 = load i8**, i8*** %5, align 8
  store i8* %44, i8** %45, align 8
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %21, %19
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @BUFFER_REMAINING(i8*) #1

declare dso_local i32 @BUFFER_CAT(i8*) #1

declare dso_local i32 @XVID_VERSION_MAJOR(i32) #1

declare dso_local i32 @XVID_VERSION_MINOR(i32) #1

declare dso_local i32 @XVID_VERSION_PATCH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
