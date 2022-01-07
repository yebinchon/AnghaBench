; ModuleID = '/home/carl/AnghaBench/esp-idf/components/spiffs/extr_esp_spiffs.c_vfs_spiffs_open.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/spiffs/extr_esp_spiffs.c_vfs_spiffs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@errno = common dso_local global i32 0, align 4
@SPIFFS_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32)* @vfs_spiffs_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfs_spiffs_open(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @assert(i8* %13)
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @spiffs_mode_conv(i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @SPIFFS_open(i32 %21, i8* %22, i32 %23, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @SPIFFS_errno(i32 %31)
  %33 = call i32 @spiffs_res_to_errno(i32 %32)
  store i32 %33, i32* @errno, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @SPIFFS_clearerr(i32 %36)
  store i32 -1, i32* %5, align 4
  br label %51

38:                                               ; preds = %4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @SPIFFS_RDONLY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %38
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @vfs_spiffs_update_mtime(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %43, %38
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %28
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @spiffs_mode_conv(i32) #1

declare dso_local i32 @SPIFFS_open(i32, i8*, i32, i32) #1

declare dso_local i32 @spiffs_res_to_errno(i32) #1

declare dso_local i32 @SPIFFS_errno(i32) #1

declare dso_local i32 @SPIFFS_clearerr(i32) #1

declare dso_local i32 @vfs_spiffs_update_mtime(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
