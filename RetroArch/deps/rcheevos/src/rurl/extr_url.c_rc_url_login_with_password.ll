; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/rcheevos/src/rurl/extr_url.c_rc_url_login_with_password.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/rcheevos/src/rurl/extr_url.c_rc_url_login_with_password.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [61 x i8] c"http://retroachievements.org/dorequest.php?r=login&u=%s&p=%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rc_url_login_with_password(i8* %0, i64 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [64 x i8], align 16
  %11 = alloca [64 x i8], align 16
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %14 = load i8*, i8** %8, align 8
  %15 = call i64 @rc_url_encode(i8* %13, i32 64, i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %36

18:                                               ; preds = %4
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %20 = load i8*, i8** %9, align 8
  %21 = call i64 @rc_url_encode(i8* %19, i32 64, i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 -1, i32* %5, align 4
  br label %36

24:                                               ; preds = %18
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %29 = call i32 @snprintf(i8* %25, i64 %26, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i8* %27, i8* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %7, align 8
  %33 = icmp uge i64 %31, %32
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 -1, i32 0
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %24, %23, %17
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i64 @rc_url_encode(i8*, i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
