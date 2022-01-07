; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_error.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_error.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.error_entry = type { i32, i8* }

@error_entries = common dso_local global %struct.error_entry* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"%d: %s [%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%d: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.error_entry*, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %25, %0
  %5 = load i32, i32* %2, align 4
  %6 = load %struct.error_entry*, %struct.error_entry** @error_entries, align 8
  %7 = call i32 @FF_ARRAY_ELEMS(%struct.error_entry* %6)
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %4
  %10 = load %struct.error_entry*, %struct.error_entry** @error_entries, align 8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.error_entry, %struct.error_entry* %10, i64 %12
  store %struct.error_entry* %13, %struct.error_entry** %3, align 8
  %14 = load %struct.error_entry*, %struct.error_entry** %3, align 8
  %15 = getelementptr inbounds %struct.error_entry, %struct.error_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.error_entry*, %struct.error_entry** %3, align 8
  %18 = getelementptr inbounds %struct.error_entry, %struct.error_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i8* @av_err2str(i32 %19)
  %21 = load %struct.error_entry*, %struct.error_entry** %3, align 8
  %22 = getelementptr inbounds %struct.error_entry, %struct.error_entry* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (i8*, i32, i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %16, i8* %20, i8* %23)
  br label %25

25:                                               ; preds = %9
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %2, align 4
  br label %4

28:                                               ; preds = %4
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %39, %28
  %30 = load i32, i32* %2, align 4
  %31 = icmp slt i32 %30, 256
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i32, i32* %2, align 4
  %34 = sub nsw i32 0, %33
  %35 = load i32, i32* %2, align 4
  %36 = sub nsw i32 0, %35
  %37 = call i8* @av_err2str(i32 %36)
  %38 = call i32 (i8*, i32, i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %34, i8* %37)
  br label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %2, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %2, align 4
  br label %29

42:                                               ; preds = %29
  ret i32 0
}

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.error_entry*) #1

declare dso_local i32 @printf(i8*, i32, i8*, ...) #1

declare dso_local i8* @av_err2str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
