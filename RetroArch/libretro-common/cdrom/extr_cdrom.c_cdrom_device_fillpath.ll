; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/cdrom/extr_cdrom.c_cdrom_device_fillpath.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/cdrom/extr_cdrom.c_cdrom_device_fillpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"cdrom://drive\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".cue\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"-track%02d.bin\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cdrom_device_fillpath(i8* %0, i64 %1, i8 signext %2, i8 zeroext %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8 %2, i8* %8, align 1
  store i8 %3, i8* %9, align 1
  store i32 %4, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %5
  %15 = load i64, i64* %7, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %5
  br label %66

18:                                               ; preds = %14
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %18
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @strlcpy(i8* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %23)
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %11, align 8
  %27 = add i64 %26, 1
  %28 = icmp ugt i64 %25, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = load i8, i8* %8, align 1
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %11, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %11, align 8
  %34 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8 %30, i8* %34, align 1
  %35 = load i8*, i8** %6, align 8
  %36 = load i64, i64* %11, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8 0, i8* %37, align 1
  br label %38

38:                                               ; preds = %29, %21
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i64 @strlcat(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  store i64 %41, i64* %11, align 8
  br label %66

42:                                               ; preds = %18
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @strlcpy(i8* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %44)
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %11, align 8
  %48 = icmp ugt i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load i8, i8* %8, align 1
  %51 = load i8*, i8** %6, align 8
  %52 = load i64, i64* %11, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %11, align 8
  %54 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8 %50, i8* %54, align 1
  br label %55

55:                                               ; preds = %49, %42
  %56 = load i8*, i8** %6, align 8
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %11, align 8
  %61 = sub i64 %59, %60
  %62 = load i8, i8* %9, align 1
  %63 = call i64 @snprintf(i8* %58, i64 %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %62)
  %64 = load i64, i64* %11, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %11, align 8
  br label %66

66:                                               ; preds = %17, %55, %38
  ret void
}

declare dso_local i64 @strlcpy(i8*, i8*, i64) #1

declare dso_local i64 @strlcat(i8*, i8*, i64) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
