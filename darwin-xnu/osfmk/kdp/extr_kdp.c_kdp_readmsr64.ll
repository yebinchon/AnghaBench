; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/extr_kdp.c_kdp_readmsr64.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/extr_kdp.c_kdp_readmsr64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i16 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"kdp_readmsr64 lcpu %x addr %x\0A\00", align 1
@KDPERR_NO_ERROR = common dso_local global i64 0, align 8
@kdp = common dso_local global %struct.TYPE_12__ zeroinitializer, align 2
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*, i16*)* @kdp_readmsr64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kdp_readmsr64(%struct.TYPE_11__* %0, i32* %1, i16* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i16* %2, i16** %7, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %8, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %10, align 8
  %19 = icmp ult i64 %18, 8
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %4, align 4
  br label %70

22:                                               ; preds = %3
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  store i32 24, i32* %28, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 @dprintf(i8* %36)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @kdp_machine_msr64_read(%struct.TYPE_9__* %38, i32 %41, i32 %44)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @KDPERR_NO_ERROR, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %22
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 %58, 4
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %56, align 4
  br label %61

61:                                               ; preds = %53, %22
  %62 = load i16, i16* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @kdp, i32 0, i32 0), align 2
  %63 = load i16*, i16** %7, align 8
  store i16 %62, i16* %63, align 2
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %6, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* @TRUE, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %61, %20
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @dprintf(i8*) #1

declare dso_local i64 @kdp_machine_msr64_read(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
