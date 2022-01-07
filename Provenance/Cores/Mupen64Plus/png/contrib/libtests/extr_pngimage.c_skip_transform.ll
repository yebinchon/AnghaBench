; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngimage.c_skip_transform.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngimage.c_skip_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display = type { i32, i8* }

@SKIP_BUGS = common dso_local global i32 0, align 4
@LOG_SKIPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"SKIP: %s transforms \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@INFORMATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"%s: skipped known bad combo 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.display*, i32)* @skip_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skip_transform(%struct.display* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.display*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.display* %0, %struct.display** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.display*, %struct.display** %4, align 8
  %8 = getelementptr inbounds %struct.display, %struct.display* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SKIP_BUGS, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %58

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @is_bad_combo(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %58

17:                                               ; preds = %13
  %18 = load %struct.display*, %struct.display** %4, align 8
  %19 = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @LOG_SKIPPED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %17
  %25 = load %struct.display*, %struct.display** %4, align 8
  %26 = getelementptr inbounds %struct.display, %struct.display* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %46, %24
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @first_transform(i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i8* @transform_name(i32 %39)
  %41 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %32
  %45 = call i32 @putchar(i8 signext 43)
  br label %46

46:                                               ; preds = %44, %32
  br label %29

47:                                               ; preds = %29
  %48 = call i32 @putchar(i8 signext 10)
  br label %57

49:                                               ; preds = %17
  %50 = load %struct.display*, %struct.display** %4, align 8
  %51 = load i32, i32* @INFORMATION, align 4
  %52 = load %struct.display*, %struct.display** %4, align 8
  %53 = getelementptr inbounds %struct.display, %struct.display* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @display_log(%struct.display* %50, i32 %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %54, i32 %55)
  br label %57

57:                                               ; preds = %49, %47
  store i32 1, i32* %3, align 4
  br label %59

58:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %57
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @is_bad_combo(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @first_transform(i32) #1

declare dso_local i8* @transform_name(i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @display_log(%struct.display*, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
