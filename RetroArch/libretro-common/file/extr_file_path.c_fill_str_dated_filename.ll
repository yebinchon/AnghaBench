; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_file_path.c_fill_str_dated_filename.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_file_path.c_fill_str_dated_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"-%y%m%d-%H%M%S\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"-%y%m%d-%H%M%S.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_str_dated_filename(i8* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [256 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca %struct.tm*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = call i32 @time(i32* null)
  store i32 %12, i32* %10, align 4
  %13 = call %struct.tm* @localtime(i32* %10)
  store %struct.tm* %13, %struct.tm** %11, align 8
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %14, align 16
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @string_is_empty(i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %4
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %20 = load %struct.tm*, %struct.tm** %11, align 8
  %21 = call i32 @strftime(i8* %19, i32 256, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.tm* %20)
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @fill_pathname_noext(i8* %22, i8* %23, i8* %24, i64 %25)
  br label %37

27:                                               ; preds = %4
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %29 = load %struct.tm*, %struct.tm** %11, align 8
  %30 = call i32 @strftime(i8* %28, i32 256, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.tm* %29)
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %34 = load i8*, i8** %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @fill_pathname_join_concat_noext(i8* %31, i8* %32, i8* %33, i8* %34, i64 %35)
  br label %37

37:                                               ; preds = %27, %18
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @fill_pathname_noext(i8*, i8*, i8*, i64) #1

declare dso_local i32 @fill_pathname_join_concat_noext(i8*, i8*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
