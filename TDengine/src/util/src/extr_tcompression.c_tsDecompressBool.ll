; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tcompression.c_tsDecompressBool.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tcompression.c_tsDecompressBool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ONE_STAGE_COMP = common dso_local global i8 0, align 1
@TWO_STAGE_COMP = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsDecompressBool(i8* %0, i32 %1, i32 %2, i8* %3, i32 %4, i8 signext %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i8 %5, i8* %15, align 1
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %18 = load i8, i8* %15, align 1
  %19 = sext i8 %18 to i32
  %20 = load i8, i8* @ONE_STAGE_COMP, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %8
  %24 = load i8*, i8** %10, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i8*, i8** %13, align 8
  %27 = call i32 @tsDecompressBoolImp(i8* %24, i32 %25, i8* %26)
  store i32 %27, i32* %9, align 4
  br label %47

28:                                               ; preds = %8
  %29 = load i8, i8* %15, align 1
  %30 = sext i8 %29 to i32
  %31 = load i8, i8* @TWO_STAGE_COMP, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i8*, i8** %16, align 8
  %38 = load i32, i32* %17, align 4
  %39 = call i32 @tsDecompressStringImp(i8* %35, i32 %36, i8* %37, i32 %38)
  %40 = load i8*, i8** %16, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load i8*, i8** %13, align 8
  %43 = call i32 @tsDecompressBoolImp(i8* %40, i32 %41, i8* %42)
  store i32 %43, i32* %9, align 4
  br label %47

44:                                               ; preds = %28
  %45 = call i32 @assert(i32 0)
  br label %46

46:                                               ; preds = %44
  br label %47

47:                                               ; preds = %23, %34, %46
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

declare dso_local i32 @tsDecompressBoolImp(i8*, i32, i8*) #1

declare dso_local i32 @tsDecompressStringImp(i8*, i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
