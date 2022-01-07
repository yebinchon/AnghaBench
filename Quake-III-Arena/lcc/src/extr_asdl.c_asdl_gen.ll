; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_asdl.c_asdl_gen.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_asdl.c_asdl_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_9__*, %struct.TYPE_8__**, %struct.TYPE_7__**, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__**, i32 }
%struct.TYPE_7__ = type { i64 }

@JUMP = common dso_local global i64 0, align 8
@V = common dso_local global i64 0, align 8
@ADDRG = common dso_local global i64 0, align 8
@P = common dso_local global i64 0, align 8
@LABELS = common dso_local global i64 0, align 8
@temps = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_9__*)* @asdl_gen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @asdl_gen(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %5 = call i32 @Seq_new(i32 0)
  store i32 %5, i32* %4, align 4
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %3, align 8
  br label %7

7:                                                ; preds = %65, %1
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = icmp ne %struct.TYPE_9__* %8, null
  br i1 %9, label %10, label %69

10:                                               ; preds = %7
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @specific(i32 %13)
  %15 = load i64, i64* @JUMP, align 8
  %16 = load i64, i64* @V, align 8
  %17 = add nsw i64 %15, %16
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %64

19:                                               ; preds = %10
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %22, i64 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @specific(i32 %26)
  %28 = load i64, i64* @ADDRG, align 8
  %29 = load i64, i64* @P, align 8
  %30 = add nsw i64 %28, %29
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %64

32:                                               ; preds = %19
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %35, i64 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %39, i64 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @LABELS, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %32
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %49, i64 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %53, i64 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %58, i64 0
  store %struct.TYPE_7__* %55, %struct.TYPE_7__** %59, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %62, i64 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %63, align 8
  br label %64

64:                                               ; preds = %46, %32, %19, %10
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  store %struct.TYPE_9__* %68, %struct.TYPE_9__** %2, align 8
  br label %7

69:                                               ; preds = %7
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_9__* %70, %struct.TYPE_9__** %2, align 8
  br label %71

71:                                               ; preds = %79, %69
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %73 = icmp ne %struct.TYPE_9__* %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %77 = call i32 @visit(%struct.TYPE_9__* %76)
  %78 = call i32 @Seq_addhi(i32 %75, i32 %77)
  br label %79

79:                                               ; preds = %74
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  store %struct.TYPE_9__* %82, %struct.TYPE_9__** %2, align 8
  br label %71

83:                                               ; preds = %71
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @rcc_Forest(i32 %84)
  %86 = call i32 @put(i32 %85)
  store i32* null, i32** @temps, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %87
}

declare dso_local i32 @Seq_new(i32) #1

declare dso_local i64 @specific(i32) #1

declare dso_local i32 @Seq_addhi(i32, i32) #1

declare dso_local i32 @visit(%struct.TYPE_9__*) #1

declare dso_local i32 @put(i32) #1

declare dso_local i32 @rcc_Forest(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
