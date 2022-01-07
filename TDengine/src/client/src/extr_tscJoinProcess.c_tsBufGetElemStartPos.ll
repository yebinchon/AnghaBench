; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscJoinProcess.c_tsBufGetElemStartPos.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscJoinProcess.c_tsBufGetElemStartPos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__*, %struct.TYPE_12__, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@__const.tsBufGetElemStartPos.elem = private unnamed_addr constant %struct.TYPE_11__ { i32 -1 }, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsBufGetElemStartPos(%struct.TYPE_13__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = bitcast %struct.TYPE_11__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.TYPE_11__* @__const.tsBufGetElemStartPos.elem to i8*), i64 4, i1 false)
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %15 = icmp eq %struct.TYPE_13__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = bitcast %struct.TYPE_11__* %4 to i8*
  %18 = bitcast %struct.TYPE_11__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 4, i1 false)
  br label %66

19:                                               ; preds = %3
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @tsBufFindVnodeIndexFromId(%struct.TYPE_14__* %22, i32 %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = bitcast %struct.TYPE_11__* %4 to i8*
  %32 = bitcast %struct.TYPE_11__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 4, i1 false)
  br label %66

33:                                               ; preds = %19
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %10, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  store i32* %42, i32** %11, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @tsBufFindBlockByTag(%struct.TYPE_13__* %43, i32* %44, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %33
  %50 = bitcast %struct.TYPE_11__* %4 to i8*
  %51 = bitcast %struct.TYPE_11__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 4, i1 false)
  br label %66

52:                                               ; preds = %33
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @tsBufGetBlock(%struct.TYPE_13__* %59, i32 %60, i32 %61)
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %64 = call i32 @tsBufGetElem(%struct.TYPE_13__* %63)
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %52, %49, %30, %16
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  ret i32 %68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @tsBufFindVnodeIndexFromId(%struct.TYPE_14__*, i32, i32) #2

declare dso_local i32 @tsBufFindBlockByTag(%struct.TYPE_13__*, i32*, i32) #2

declare dso_local i32 @tsBufGetBlock(%struct.TYPE_13__*, i32, i32) #2

declare dso_local i32 @tsBufGetElem(%struct.TYPE_13__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
