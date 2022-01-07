; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_error.c_av_strerror.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_error.c_av_strerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.error_entry = type { i32, i32 }

@error_entries = common dso_local global %struct.error_entry* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"Error number %d occurred\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_strerror(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.error_entry*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store %struct.error_entry* null, %struct.error_entry** %9, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %30, %3
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.error_entry*, %struct.error_entry** @error_entries, align 8
  %13 = call i32 @FF_ARRAY_ELEMS(%struct.error_entry* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.error_entry*, %struct.error_entry** @error_entries, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.error_entry, %struct.error_entry* %17, i64 %19
  %21 = getelementptr inbounds %struct.error_entry, %struct.error_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %16, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  %25 = load %struct.error_entry*, %struct.error_entry** @error_entries, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.error_entry, %struct.error_entry* %25, i64 %27
  store %struct.error_entry* %28, %struct.error_entry** %9, align 8
  br label %33

29:                                               ; preds = %15
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %10

33:                                               ; preds = %24, %10
  %34 = load %struct.error_entry*, %struct.error_entry** %9, align 8
  %35 = icmp ne %struct.error_entry* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i8*, i8** %5, align 8
  %38 = load %struct.error_entry*, %struct.error_entry** %9, align 8
  %39 = getelementptr inbounds %struct.error_entry, %struct.error_entry* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @av_strlcpy(i8* %37, i32 %40, i64 %41)
  br label %52

43:                                               ; preds = %33
  store i32 -1, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i8*, i8** %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @snprintf(i8* %47, i64 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %46, %43
  br label %52

52:                                               ; preds = %51, %36
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.error_entry*) #1

declare dso_local i32 @av_strlcpy(i8*, i32, i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
