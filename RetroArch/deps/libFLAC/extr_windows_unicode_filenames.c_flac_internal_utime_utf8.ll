; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_windows_unicode_filenames.c_flac_internal_utime_utf8.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_windows_unicode_filenames.c_flac_internal_utime_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utimbuf = type { i32, i32 }
%struct.__utimbuf64 = type { i32, i32 }

@utf8_filenames = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flac_internal_utime_utf8(i8* %0, %struct.utimbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.utimbuf*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.__utimbuf64, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.utimbuf* %1, %struct.utimbuf** %5, align 8
  %9 = load i32, i32* @utf8_filenames, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = load %struct.utimbuf*, %struct.utimbuf** %5, align 8
  %14 = call i32 @utime(i8* %12, %struct.utimbuf* %13)
  store i32 %14, i32* %3, align 4
  br label %34

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i32* @wchar_from_utf8(i8* %16)
  store i32* %17, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %34

20:                                               ; preds = %15
  %21 = load %struct.utimbuf*, %struct.utimbuf** %5, align 8
  %22 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.__utimbuf64, %struct.__utimbuf64* %7, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load %struct.utimbuf*, %struct.utimbuf** %5, align 8
  %26 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.__utimbuf64, %struct.__utimbuf64* %7, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @_wutime64(i32* %29, %struct.__utimbuf64* %7)
  store i32 %30, i32* %8, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @free(i32* %31)
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %20, %19, %11
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @utime(i8*, %struct.utimbuf*) #1

declare dso_local i32* @wchar_from_utf8(i8*) #1

declare dso_local i32 @_wutime64(i32*, %struct.__utimbuf64*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
