; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_file_path.c_fill_pathname_join_delim.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_file_path.c_fill_pathname_join_delim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fill_pathname_join_delim(i8* %0, i8* %1, i8* %2, i8 signext %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8 %3, i8* %9, align 1
  store i64 %4, i64* %10, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp eq i8* %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @strlen(i8* %16)
  store i64 %17, i64* %11, align 8
  br label %23

18:                                               ; preds = %5
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call i64 @strlcpy(i8* %19, i8* %20, i64 %21)
  store i64 %22, i64* %11, align 8
  br label %23

23:                                               ; preds = %18, %15
  %24 = load i8, i8* %9, align 1
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %11, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8 %24, i8* %27, align 1
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %11, align 8
  %30 = add i64 %29, 1
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  store i8 0, i8* %31, align 1
  %32 = load i8*, i8** %8, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %23
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i64 @strlcat(i8* %35, i8* %36, i64 %37)
  store i64 %38, i64* %11, align 8
  br label %39

39:                                               ; preds = %34, %23
  %40 = load i64, i64* %11, align 8
  ret i64 %40
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strlcpy(i8*, i8*, i64) #1

declare dso_local i64 @strlcat(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
