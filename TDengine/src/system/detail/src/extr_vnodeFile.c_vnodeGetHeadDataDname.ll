; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeFile.c_vnodeGetHeadDataDname.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeFile.c_vnodeGetHeadDataDname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"%s/data/vnode%d/v%df%d.head0\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"%s/data/vnode%d/v%df%d.data\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%s/data/vnode%d/v%df%d.last0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnodeGetHeadDataDname(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %6
  %16 = load i8*, i8** %7, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %18, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %15, %6
  %23 = load i8*, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @sprintf(i8* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %27, i32 %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %25, %22
  %33 = load i8*, i8** %9, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i8*, i8** %9, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @sprintf(i8* %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %37, i32 %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %35, %32
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
