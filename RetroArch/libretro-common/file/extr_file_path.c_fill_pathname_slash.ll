; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_file_path.c_fill_pathname_slash.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_file_path.c_fill_pathname_slash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_pathname_slash(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i8* @find_last_slash(i8* %7)
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 (...) @path_default_slash()
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @strlcat(i8* %12, i32 %13, i64 %14)
  br label %36

16:                                               ; preds = %2
  %17 = load i8*, i8** %3, align 8
  %18 = call i64 @strlen(i8* %17)
  store i64 %18, i64* %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = getelementptr inbounds i8, i8* %22, i64 -1
  %24 = icmp ne i8* %19, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %16
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = load i8*, i8** %3, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8 %28, i8* %31, align 1
  %32 = load i8*, i8** %3, align 8
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, 1
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8 0, i8* %35, align 1
  br label %36

36:                                               ; preds = %11, %25, %16
  ret void
}

declare dso_local i8* @find_last_slash(i8*) #1

declare dso_local i32 @strlcat(i8*, i32, i64) #1

declare dso_local i32 @path_default_slash(...) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
