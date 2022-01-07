; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/bdf/extr_bdflib.c__bdf_atous.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/bdf/extr_bdflib.c__bdf_atous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ddigits = common dso_local global i32 0, align 4
@FT_USHORT_MAX = common dso_local global i32 0, align 4
@a2i = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i8*)* @_bdf_atous to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @_bdf_atous(i8* %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i8*, align 8
  %4 = alloca i16, align 2
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %1
  store i16 0, i16* %2, align 2
  br label %50

13:                                               ; preds = %7
  store i16 0, i16* %4, align 2
  br label %14

14:                                               ; preds = %45, %13
  %15 = load i32, i32* @ddigits, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = load i8, i8* %16, align 1
  %18 = call i64 @sbitset(i32 %15, i8 signext %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %14
  %21 = load i16, i16* %4, align 2
  %22 = zext i16 %21 to i32
  %23 = load i32, i32* @FT_USHORT_MAX, align 4
  %24 = sub nsw i32 %23, 9
  %25 = sdiv i32 %24, 10
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %20
  %28 = load i16, i16* %4, align 2
  %29 = zext i16 %28 to i32
  %30 = mul nsw i32 %29, 10
  %31 = sext i32 %30 to i64
  %32 = load i64*, i64** @a2i, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %32, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %31, %38
  %40 = trunc i64 %39 to i16
  store i16 %40, i16* %4, align 2
  br label %44

41:                                               ; preds = %20
  %42 = load i32, i32* @FT_USHORT_MAX, align 4
  %43 = trunc i32 %42 to i16
  store i16 %43, i16* %4, align 2
  br label %48

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %3, align 8
  br label %14

48:                                               ; preds = %41, %14
  %49 = load i16, i16* %4, align 2
  store i16 %49, i16* %2, align 2
  br label %50

50:                                               ; preds = %48, %12
  %51 = load i16, i16* %2, align 2
  ret i16 %51
}

declare dso_local i64 @sbitset(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
