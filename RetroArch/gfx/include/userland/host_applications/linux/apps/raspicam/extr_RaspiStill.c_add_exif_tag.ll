; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiStill.c_add_exif_tag.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiStill.c_add_exif_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32, i32 }

@MAX_EXIF_PAYLOAD_LENGTH = common dso_local global i32 0, align 4
@MMAL_EINVAL = common dso_local global i32 0, align 4
@MMAL_PARAMETER_EXIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*)* @add_exif_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_exif_tag(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* @MAX_EXIF_PAYLOAD_LENGTH, align 4
  %9 = sext i32 %8 to i64
  %10 = add i64 16, %9
  %11 = trunc i64 %10 to i32
  %12 = call i64 @calloc(i32 %11, i32 1)
  %13 = inttoptr i64 %12 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %7, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = call i32 @vcos_assert(%struct.TYPE_7__* %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = call i32 @vcos_assert(%struct.TYPE_7__* %18)
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8
  %24 = call i32* @strchr(i8* %23, i8 signext 61)
  %25 = icmp eq i32* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = load i32, i32* @MAX_EXIF_PAYLOAD_LENGTH, align 4
  %30 = sub nsw i32 %29, 1
  %31 = icmp sgt i32 %28, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26, %22, %2
  %33 = load i32, i32* @MMAL_EINVAL, align 4
  store i32 %33, i32* %3, align 4
  br label %71

34:                                               ; preds = %26
  %35 = load i32, i32* @MMAL_PARAMETER_EXIF, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* @MAX_EXIF_PAYLOAD_LENGTH, align 4
  %45 = sub nsw i32 %44, 1
  %46 = call i32 @strncpy(i8* %42, i8* %43, i32 %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @strlen(i8* %50)
  %52 = sext i32 %51 to i64
  %53 = add i64 16, %52
  %54 = trunc i64 %53 to i32
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = call i32 @mmal_port_parameter_set(i32 %64, %struct.TYPE_9__* %66)
  store i32 %67, i32* %6, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %69 = call i32 @free(%struct.TYPE_8__* %68)
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %34, %32
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @vcos_assert(%struct.TYPE_7__*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @mmal_port_parameter_set(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
