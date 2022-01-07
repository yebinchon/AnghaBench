; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/extr_kdp.c_kdp_version.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/extr_kdp.c_kdp_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i16 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i64, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"kdp_version\0A\00", align 1
@KDP_VERSION = common dso_local global i32 0, align 4
@kdp_flag = common dso_local global i32 0, align 4
@KDP_BP_DIS = common dso_local global i32 0, align 4
@KDP_FEATURE_BP = common dso_local global i64 0, align 8
@kdp = common dso_local global %struct.TYPE_9__ zeroinitializer, align 2
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i16*)* @kdp_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kdp_version(%struct.TYPE_8__* %0, i32* %1, i16* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i16* %2, i16** %7, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %9, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %10, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ult i64 %18, 4
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %4, align 4
  br label %53

22:                                               ; preds = %3
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store i32 24, i32* %28, align 4
  %29 = call i32 @dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @KDP_VERSION, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @kdp_flag, align 4
  %34 = load i32, i32* @KDP_BP_DIS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %22
  %38 = load i64, i64* @KDP_FEATURE_BP, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  br label %44

41:                                               ; preds = %22
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i16, i16* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @kdp, i32 0, i32 0), align 2
  %46 = load i16*, i16** %7, align 8
  store i16 %45, i16* %46, align 2
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %6, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @TRUE, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %44, %20
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @dprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
