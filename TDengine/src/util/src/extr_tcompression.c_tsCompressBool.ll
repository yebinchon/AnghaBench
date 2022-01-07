; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tcompression.c_tsCompressBool.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tcompression.c_tsCompressBool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ONE_STAGE_COMP = common dso_local global i8 0, align 1
@TWO_STAGE_COMP = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsCompressBool(i8* %0, i32 %1, i32 %2, i8* %3, i32 %4, i8 signext %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i8 %5, i8* %15, align 1
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %19 = load i8, i8* %15, align 1
  %20 = sext i8 %19 to i32
  %21 = load i8, i8* @ONE_STAGE_COMP, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %8
  %25 = load i8*, i8** %10, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load i8*, i8** %13, align 8
  %28 = call i32 @tsCompressBoolImp(i8* %25, i32 %26, i8* %27)
  store i32 %28, i32* %9, align 4
  br label %48

29:                                               ; preds = %8
  %30 = load i8, i8* %15, align 1
  %31 = sext i8 %30 to i32
  %32 = load i8, i8* @TWO_STAGE_COMP, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load i8*, i8** %10, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i8*, i8** %16, align 8
  %39 = call i32 @tsCompressBoolImp(i8* %36, i32 %37, i8* %38)
  store i32 %39, i32* %18, align 4
  %40 = load i8*, i8** %16, align 8
  %41 = load i32, i32* %18, align 4
  %42 = load i8*, i8** %13, align 8
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @tsCompressStringImp(i8* %40, i32 %41, i8* %42, i32 %43)
  store i32 %44, i32* %9, align 4
  br label %48

45:                                               ; preds = %29
  %46 = call i32 @assert(i32 0)
  br label %47

47:                                               ; preds = %45
  br label %48

48:                                               ; preds = %24, %35, %47
  %49 = load i32, i32* %9, align 4
  ret i32 %49
}

declare dso_local i32 @tsCompressBoolImp(i8*, i32, i8*) #1

declare dso_local i32 @tsCompressStringImp(i8*, i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
