; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/etc/extr_bprint.c_getstr.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/etc/extr_bprint.c_getstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXTOKEN = common dso_local global i32 0, align 4
@fp = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @getstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getstr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = load i32, i32* @MAXTOKEN, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %2, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %3, align 8
  store i8* %8, i8** %4, align 8
  br label %9

9:                                                ; preds = %39, %0
  %10 = load i32, i32* @fp, align 4
  %11 = call i32 @getc(i32 %10)
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* @EOF, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load i32, i32* %1, align 4
  %16 = icmp ne i32 %15, 32
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i32, i32* %1, align 4
  %19 = icmp ne i32 %18, 10
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* %1, align 4
  %22 = icmp ne i32 %21, 9
  br label %23

23:                                               ; preds = %20, %17, %14, %9
  %24 = phi i1 [ false, %17 ], [ false, %14 ], [ false, %9 ], [ %22, %20 ]
  br i1 %24, label %25, label %40

25:                                               ; preds = %23
  %26 = load i8*, i8** %4, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = ptrtoint i8* %8 to i64
  %29 = sub i64 %27, %28
  %30 = trunc i64 %6 to i32
  %31 = sub nsw i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load i32, i32* %1, align 4
  %36 = trunc i32 %35 to i8
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %4, align 8
  store i8 %36, i8* %37, align 1
  br label %39

39:                                               ; preds = %34, %25
  br label %9

40:                                               ; preds = %23
  %41 = load i8*, i8** %4, align 8
  store i8 0, i8* %41, align 1
  %42 = load i8*, i8** %4, align 8
  %43 = icmp eq i8* %42, %8
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %47

45:                                               ; preds = %40
  %46 = call i8* @string(i8* %8)
  br label %47

47:                                               ; preds = %45, %44
  %48 = phi i8* [ null, %44 ], [ %46, %45 ]
  %49 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %49)
  ret i8* %48
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getc(i32) #2

declare dso_local i8* @string(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
