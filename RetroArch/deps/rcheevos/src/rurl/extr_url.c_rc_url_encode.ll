; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/rcheevos/src/rurl/extr_url.c_rc_url_encode.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/rcheevos/src/rurl/extr_url.c_rc_url_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%%%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*)* @rc_url_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc_url_encode(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  br label %8

8:                                                ; preds = %44, %3
  %9 = load i8*, i8** %7, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  switch i32 %11, label %25 [
    i32 97, label %12
    i32 98, label %12
    i32 99, label %12
    i32 100, label %12
    i32 101, label %12
    i32 102, label %12
    i32 103, label %12
    i32 104, label %12
    i32 105, label %12
    i32 106, label %12
    i32 107, label %12
    i32 108, label %12
    i32 109, label %12
    i32 110, label %12
    i32 111, label %12
    i32 112, label %12
    i32 113, label %12
    i32 114, label %12
    i32 115, label %12
    i32 116, label %12
    i32 117, label %12
    i32 118, label %12
    i32 119, label %12
    i32 120, label %12
    i32 121, label %12
    i32 122, label %12
    i32 65, label %12
    i32 66, label %12
    i32 67, label %12
    i32 68, label %12
    i32 69, label %12
    i32 70, label %12
    i32 71, label %12
    i32 72, label %12
    i32 73, label %12
    i32 74, label %12
    i32 75, label %12
    i32 76, label %12
    i32 77, label %12
    i32 78, label %12
    i32 79, label %12
    i32 80, label %12
    i32 81, label %12
    i32 82, label %12
    i32 83, label %12
    i32 84, label %12
    i32 85, label %12
    i32 86, label %12
    i32 87, label %12
    i32 88, label %12
    i32 89, label %12
    i32 90, label %12
    i32 48, label %12
    i32 49, label %12
    i32 50, label %12
    i32 51, label %12
    i32 52, label %12
    i32 53, label %12
    i32 54, label %12
    i32 55, label %12
    i32 56, label %12
    i32 57, label %12
    i32 45, label %12
    i32 95, label %12
    i32 46, label %12
    i32 126, label %12
    i32 0, label %42
  ]

12:                                               ; preds = %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8
  %13 = load i64, i64* %6, align 8
  %14 = icmp uge i64 %13, 2
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %7, align 8
  %18 = load i8, i8* %16, align 1
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %5, align 8
  store i8 %18, i8* %19, align 1
  %21 = load i64, i64* %6, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %6, align 8
  br label %24

23:                                               ; preds = %12
  store i32 -1, i32* %4, align 4
  br label %45

24:                                               ; preds = %15
  br label %44

25:                                               ; preds = %8
  %26 = load i64, i64* %6, align 8
  %27 = icmp uge i64 %26, 4
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load i8*, i8** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call i32 @snprintf(i8* %29, i64 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8 zeroext %32)
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 3
  store i8* %35, i8** %5, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %7, align 8
  %38 = load i64, i64* %6, align 8
  %39 = sub i64 %38, 3
  store i64 %39, i64* %6, align 8
  br label %41

40:                                               ; preds = %25
  store i32 -1, i32* %4, align 4
  br label %45

41:                                               ; preds = %28
  br label %44

42:                                               ; preds = %8
  %43 = load i8*, i8** %5, align 8
  store i8 0, i8* %43, align 1
  store i32 0, i32* %4, align 4
  br label %45

44:                                               ; preds = %41, %24
  br label %8

45:                                               ; preds = %42, %40, %23
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
