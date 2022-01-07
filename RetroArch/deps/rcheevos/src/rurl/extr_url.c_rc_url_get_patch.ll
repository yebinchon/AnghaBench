; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/rcheevos/src/rurl/extr_url.c_rc_url_get_patch.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/rcheevos/src/rurl/extr_url.c_rc_url_get_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [66 x i8] c"http://retroachievements.org/dorequest.php?r=patch&u=%s&t=%s&g=%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rc_url_get_patch(i8* %0, i64 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [64 x i8], align 16
  %13 = alloca [64 x i8], align 16
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %16 = load i8*, i8** %9, align 8
  %17 = call i64 @rc_url_encode(i8* %15, i32 64, i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %39

20:                                               ; preds = %5
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %22 = load i8*, i8** %10, align 8
  %23 = call i64 @rc_url_encode(i8* %21, i32 64, i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 -1, i32* %6, align 4
  br label %39

26:                                               ; preds = %20
  %27 = load i8*, i8** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @snprintf(i8* %27, i64 %28, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i8* %29, i8* %30, i32 %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %8, align 8
  %36 = icmp uge i64 %34, %35
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 -1, i32 0
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %26, %25, %19
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i64 @rc_url_encode(i8*, i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
