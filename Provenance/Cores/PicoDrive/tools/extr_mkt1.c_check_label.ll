; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/tools/extr_mkt1.c_check_label.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/tools/extr_mkt1.c_check_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pattern_db = common dso_local global i32* null, align 8
@fo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"tile%i%i%i%i%i%i%i%i:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @check_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_label(i8 zeroext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i32*, i32** @pattern_db, align 8
  %5 = load i8, i8* %3, align 1
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds i32, i32* %4, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %65, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @fo, align 4
  %12 = load i8, i8* %3, align 1
  %13 = zext i8 %12 to i32
  %14 = and i32 %13, 128
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 1, i32 0
  %18 = load i8, i8* %3, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 64
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  %24 = load i8, i8* %3, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 32
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1, i32 0
  %30 = load i8, i8* %3, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 16
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  %36 = load i8, i8* %3, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, 8
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 0
  %42 = load i8, i8* %3, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  %48 = load i8, i8* %3, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %49, 2
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1, i32 0
  %54 = load i8, i8* %3, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 1, i32 0
  %60 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %23, i32 %29, i32 %35, i32 %41, i32 %47, i32 %53, i32 %59)
  %61 = load i32*, i32** @pattern_db, align 8
  %62 = load i8, i8* %3, align 1
  %63 = zext i8 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 1, i32* %64, align 4
  store i32 0, i32* %2, align 4
  br label %66

65:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %10
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
