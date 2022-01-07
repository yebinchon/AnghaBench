; ModuleID = '/home/carl/AnghaBench/esp-idf/components/spiffs/extr_esp_spiffs.c_vfs_spiffs_opendir.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/spiffs/extr_esp_spiffs.c_vfs_spiffs_opendir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SPIFFS_OBJ_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*)* @vfs_spiffs_opendir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @vfs_spiffs_opendir(i8* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @assert(i8* %8)
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %6, align 8
  %12 = call %struct.TYPE_5__* @calloc(i32 1, i32 24)
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %7, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  store i32 %16, i32* @errno, align 4
  store i32* null, i32** %3, align 8
  br label %49

17:                                               ; preds = %2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = call i32 @SPIFFS_opendir(i32 %20, i8* %21, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %17
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %28 = call i32 @free(%struct.TYPE_5__* %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @SPIFFS_errno(i32 %31)
  %33 = call i32 @spiffs_res_to_errno(i32 %32)
  store i32 %33, i32* @errno, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @SPIFFS_clearerr(i32 %36)
  store i32* null, i32** %3, align 8
  br label %49

38:                                               ; preds = %17
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* @SPIFFS_OBJ_NAME_LEN, align 4
  %46 = call i32 @strlcpy(i32 %43, i8* %44, i32 %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %48 = bitcast %struct.TYPE_5__* %47 to i32*
  store i32* %48, i32** %3, align 8
  br label %49

49:                                               ; preds = %38, %26, %15
  %50 = load i32*, i32** %3, align 8
  ret i32* %50
}

declare dso_local i32 @assert(i8*) #1

declare dso_local %struct.TYPE_5__* @calloc(i32, i32) #1

declare dso_local i32 @SPIFFS_opendir(i32, i8*, i32*) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

declare dso_local i32 @spiffs_res_to_errno(i32) #1

declare dso_local i32 @SPIFFS_errno(i32) #1

declare dso_local i32 @SPIFFS_clearerr(i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
