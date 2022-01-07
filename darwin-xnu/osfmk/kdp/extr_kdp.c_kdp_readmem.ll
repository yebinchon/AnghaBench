; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/extr_kdp.c_kdp_readmem.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/extr_kdp.c_kdp_readmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i16 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.TYPE_7__, i32, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i64 }

@FALSE = common dso_local global i32 0, align 4
@MAX_KDP_DATA_SIZE = common dso_local global i32 0, align 4
@KDPERR_BAD_NBYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"kdp_readmem addr %x size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"  cnt %lld error %d\0A\00", align 1
@kdp = common dso_local global %struct.TYPE_11__ zeroinitializer, align 2
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, i16*)* @kdp_readmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kdp_readmem(%struct.TYPE_10__* %0, i32* %1, i16* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i16* %2, i16** %7, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %8, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %9, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %10, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ult i64 %20, 16
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %4, align 4
  br label %90

24:                                               ; preds = %3
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  store i32 24, i32* %30, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @MAX_KDP_DATA_SIZE, align 4
  %36 = icmp ugt i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %24
  %38 = load i32, i32* @KDPERR_BAD_NBYTES, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  br label %81

41:                                               ; preds = %24
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = zext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 @dprintf(i8* %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @kdp_machine_vm_read(i32 %52, i32 %56, i32 %59)
  store i64 %60, i64* %11, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load i64, i64* %11, align 8
  %63 = call i32 @KDPERR_ACCESS(i32 %61, i64 %62)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 @dprintf(i8* %71)
  %73 = load i64, i64* %11, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %73
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %76, align 4
  br label %81

81:                                               ; preds = %41, %37
  %82 = load i16, i16* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @kdp, i32 0, i32 0), align 2
  %83 = load i16*, i16** %7, align 8
  store i16 %82, i16* %83, align 2
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %6, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* @TRUE, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %81, %22
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @dprintf(i8*) #1

declare dso_local i64 @kdp_machine_vm_read(i32, i32, i32) #1

declare dso_local i32 @KDPERR_ACCESS(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
