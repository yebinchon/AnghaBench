; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_test.c_client_io_seek.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_test.c_client_io_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64 }

@VC_CONTAINER_SUCCESS = common dso_local global i8* null, align 8
@UINT_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"no large file support\00", align 1
@VC_CONTAINER_ERROR_EOS = common dso_local global i8* null, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@VC_CONTAINER_ERROR_FAILED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*, i64)* @client_io_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @client_io_seek(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i8*, i8** @VC_CONTAINER_SUCCESS, align 8
  store i8* %9, i8** %6, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @UINT_MAX, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = call i32 @LOG_ERROR(i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %19 = load i8*, i8** @VC_CONTAINER_ERROR_EOS, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** @VC_CONTAINER_ERROR_EOS, align 8
  store i8* %22, i8** %3, align 8
  br label %44

23:                                               ; preds = %2
  %24 = load i32*, i32** %7, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i32, i32* @SEEK_SET, align 4
  %27 = call i32 @fseek(i32* %24, i64 %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load i32*, i32** %7, align 8
  %32 = call i64 @feof(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i8*, i8** @VC_CONTAINER_ERROR_EOS, align 8
  store i8* %35, i8** %6, align 8
  br label %38

36:                                               ; preds = %30
  %37 = load i8*, i8** @VC_CONTAINER_ERROR_FAILED, align 8
  store i8* %37, i8** %6, align 8
  br label %38

38:                                               ; preds = %36, %34
  br label %39

39:                                               ; preds = %38, %23
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** %6, align 8
  store i8* %43, i8** %3, align 8
  br label %44

44:                                               ; preds = %39, %17
  %45 = load i8*, i8** %3, align 8
  ret i8* %45
}

declare dso_local i32 @LOG_ERROR(i32, i8*) #1

declare dso_local i32 @fseek(i32*, i64, i32) #1

declare dso_local i64 @feof(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
