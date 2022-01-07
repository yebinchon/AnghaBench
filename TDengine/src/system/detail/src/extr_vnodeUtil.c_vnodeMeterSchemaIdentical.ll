; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeUtil.c_vnodeMeterSchemaIdentical.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeUtil.c_vnodeMeterSchemaIdentical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnodeMeterSchemaIdentical(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @VALIDNUMOFCOLS(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %4
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @VALIDNUMOFCOLS(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %13, %4
  store i32 0, i32* %5, align 4
  br label %34

22:                                               ; preds = %17
  %23 = load i32*, i32** %6, align 8
  %24 = bitcast i32* %23 to i8*
  %25 = load i32*, i32** %8, align 8
  %26 = bitcast i32* %25 to i8*
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 4, %28
  %30 = trunc i64 %29 to i32
  %31 = call i64 @memcmp(i8* %24, i8* %26, i32 %30)
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %22, %21
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @VALIDNUMOFCOLS(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
