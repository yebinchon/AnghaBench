; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ndrv.c_sprint_d.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ndrv.c_sprint_d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IFNAMSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32)* @sprint_d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprint_d(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @IFNAMSIZ, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i32, i32* @IFNAMSIZ, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = getelementptr inbounds i8, i8* %16, i64 -1
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  store i8 0, i8* %18, align 1
  br label %19

19:                                               ; preds = %38, %3
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %6, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 -1
  store i8* %23, i8** %9, align 8
  %24 = load i32, i32* %4, align 4
  %25 = srem i32 %24, 10
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [11 x i8], [11 x i8]* @.str, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = load i8*, i8** %9, align 8
  store i8 %28, i8* %29, align 1
  %30 = load i32, i32* %4, align 4
  %31 = sdiv i32 %30, 10
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %19
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = icmp sgt i32 %36, 0
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi i1 [ false, %32 ], [ %37, %35 ]
  br i1 %39, label %19, label %40

40:                                               ; preds = %38
  %41 = load i8*, i8** %5, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* @IFNAMSIZ, align 4
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %43, %44
  %46 = call i32 @strlcpy(i8* %41, i8* %42, i32 %45)
  %47 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %47)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
