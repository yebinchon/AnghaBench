; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso2022_jp3.h_iso2022_jp3_reset.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso2022_jp3.h_iso2022_jp3_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@SPLIT_STATE = common dso_local global i32 0, align 4
@lasttwo = common dso_local global i32 0, align 4
@prevstate = common dso_local global i64 0, align 8
@STATE_ASCII = common dso_local global i64 0, align 8
@RET_TOOSMALL = common dso_local global i32 0, align 4
@STATE_JISX0208 = common dso_local global i64 0, align 8
@ESC = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i32)* @iso2022_jp3_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iso2022_jp3_reset(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %8, align 8
  %13 = load i32, i32* @SPLIT_STATE, align 4
  %14 = load i32, i32* @lasttwo, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i64, i64* @prevstate, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp ne i64 %17, %18
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 3, i32 0
  %22 = add nsw i32 %21, 2
  br label %24

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %23, %16
  %25 = phi i32 [ %22, %16 ], [ 0, %23 ]
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @STATE_ASCII, align 8
  %28 = icmp ne i64 %26, %27
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 3, i32 0
  %31 = add nsw i32 %25, %30
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %36, i32* %4, align 4
  br label %88

37:                                               ; preds = %24
  %38 = load i32, i32* @lasttwo, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %74

40:                                               ; preds = %37
  %41 = load i64, i64* @prevstate, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %40
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @STATE_JISX0208, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i32 (...) @abort() #2
  unreachable

50:                                               ; preds = %44
  %51 = load i8, i8* @ESC, align 1
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  store i8 %51, i8* %53, align 1
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  store i8 36, i8* %55, align 1
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 2
  store i8 66, i8* %57, align 1
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 3
  store i8* %59, i8** %6, align 8
  br label %60

60:                                               ; preds = %50, %40
  %61 = load i32, i32* @lasttwo, align 4
  %62 = ashr i32 %61, 8
  %63 = and i32 %62, 255
  %64 = trunc i32 %63 to i8
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  store i8 %64, i8* %66, align 1
  %67 = load i32, i32* @lasttwo, align 4
  %68 = and i32 %67, 255
  %69 = trunc i32 %68 to i8
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  store i8 %69, i8* %71, align 1
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 2
  store i8* %73, i8** %6, align 8
  br label %74

74:                                               ; preds = %60, %37
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* @STATE_ASCII, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load i8, i8* @ESC, align 1
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  store i8 %79, i8* %81, align 1
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  store i8 40, i8* %83, align 1
  %84 = load i8*, i8** %6, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 2
  store i8 66, i8* %85, align 1
  br label %86

86:                                               ; preds = %78, %74
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %86, %35
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
