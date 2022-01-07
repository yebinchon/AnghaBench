; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_smpc.c_SmpcSaveState.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_smpc.c_SmpcSaveState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, i64, i32, i32, i64, i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"SMPC\00", align 1
@SmpcRegs = common dso_local global %struct.TYPE_5__* null, align 8
@SmpcInternalVars = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SmpcSaveState(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__, align 4
  store i32* %0, i32** %2, align 8
  %5 = bitcast %struct.TYPE_4__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 8, i1 false)
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @StateWriteHeader(i32* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 3)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SmpcRegs, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 8
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @ywrite(%struct.TYPE_4__* %4, i8* %11, i32 4, i32 7, i32* %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SmpcRegs, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 7
  %16 = bitcast i32* %15 to i8*
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @ywrite(%struct.TYPE_4__* %4, i8* %16, i32 4, i32 1, i32* %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SmpcRegs, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @ywrite(%struct.TYPE_4__* %4, i8* %22, i32 4, i32 32, i32* %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SmpcRegs, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 5
  %27 = bitcast i32* %26 to i8*
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @ywrite(%struct.TYPE_4__* %4, i8* %27, i32 4, i32 1, i32* %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SmpcRegs, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 4
  %32 = bitcast i32* %31 to i8*
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @ywrite(%struct.TYPE_4__* %4, i8* %32, i32 4, i32 1, i32* %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SmpcRegs, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @ywrite(%struct.TYPE_4__* %4, i8* %38, i32 4, i32 2, i32* %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SmpcRegs, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @ywrite(%struct.TYPE_4__* %4, i8* %44, i32 4, i32 2, i32* %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SmpcRegs, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = bitcast i32* %48 to i8*
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @ywrite(%struct.TYPE_4__* %4, i8* %49, i32 4, i32 1, i32* %50)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SmpcRegs, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = bitcast i32* %53 to i8*
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @ywrite(%struct.TYPE_4__* %4, i8* %54, i32 4, i32 1, i32* %55)
  %57 = load i64, i64* @SmpcInternalVars, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = load i32*, i32** %2, align 8
  %60 = call i32 @ywrite(%struct.TYPE_4__* %4, i8* %58, i32 4, i32 1, i32* %59)
  %61 = load i32*, i32** %2, align 8
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @StateFinishHeader(i32* %61, i32 %62)
  ret i32 %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @StateWriteHeader(i32*, i8*, i32) #2

declare dso_local i32 @ywrite(%struct.TYPE_4__*, i8*, i32, i32, i32*) #2

declare dso_local i32 @StateFinishHeader(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
