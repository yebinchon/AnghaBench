; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/io/extr_io_null.c_vc_container_io_null_open.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/io/extr_io_null.c_vc_container_io_null_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED = common dso_local global i32 0, align 4
@io_null_close = common dso_local global i32 0, align 4
@io_null_read = common dso_local global i32 0, align 4
@io_null_write = common dso_local global i32 0, align 4
@io_null_seek = common dso_local global i32 0, align 4
@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc_container_io_null_open(%struct.TYPE_3__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = call i32 @VC_CONTAINER_PARAM_UNUSED(i8* %8)
  %10 = load i8*, i8** %7, align 8
  %11 = call i32 @VC_CONTAINER_PARAM_UNUSED(i8* %10)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @vc_uri_scheme(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @vc_uri_scheme(i32 %20)
  %22 = call i64 @strcasecmp(i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @vc_uri_scheme(i32 %27)
  %29 = call i64 @strcasecmp(i32 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24, %3
  %32 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 4
  store i32 %32, i32* %4, align 4
  br label %47

33:                                               ; preds = %24, %17
  %34 = load i32, i32* @io_null_close, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @io_null_read, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @io_null_write, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @io_null_seek, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %33, %31
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @VC_CONTAINER_PARAM_UNUSED(i8*) #1

declare dso_local i32 @vc_uri_scheme(i32) #1

declare dso_local i64 @strcasecmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
