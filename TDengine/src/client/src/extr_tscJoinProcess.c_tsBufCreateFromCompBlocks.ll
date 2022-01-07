; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscJoinProcess.c_tsBufCreateFromCompBlocks.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscJoinProcess.c_tsBufCreateFromCompBlocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64, i64, i32 }
%struct.TYPE_12__ = type { i32, i64, i64, i64 }
%struct.TYPE_13__ = type { i64, i64, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }

@SEEK_SET = common dso_local global i32 0, align 4
@TSQL_SO_ASC = common dso_local global i64 0, align 8
@TSQL_SO_DESC = common dso_local global i64 0, align 8
@TS_COMP_FILE_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @tsBufCreateFromCompBlocks(i8* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_13__, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = call %struct.TYPE_14__* @tsBufCreate(i32 1)
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %9, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %14 = call %struct.TYPE_15__* @addOneVnodeInfo(%struct.TYPE_14__* %13, i32 0)
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %10, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 3
  store i64 %16, i64* %18, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 2
  store i64 %19, i64* %21, align 8
  %22 = call i32 (...) @getDataStartOffset()
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %30, 1
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %33 = call i32 @TSBufUpdateVnodeInfo(%struct.TYPE_14__* %27, i64 %31, %struct.TYPE_12__* %32)
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @SEEK_SET, align 4
  %41 = call i32 @fseek(i32 %36, i32 %39, i32 %40)
  %42 = load i8*, i8** %5, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @fwrite(i8* %42, i32 1, i64 %43, i32 %46)
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %48
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* @TSQL_SO_ASC, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %4
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* @TSQL_SO_DESC, align 8
  %64 = icmp eq i64 %62, %63
  br label %65

65:                                               ; preds = %61, %4
  %66 = phi i1 [ true, %4 ], [ %64, %61 ]
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %69, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %73, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  %78 = load i32, i32* @TS_COMP_FILE_MAGIC, align 4
  store i32 %78, i32* %77, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %80 = call i32 @STSBufUpdateHeader(%struct.TYPE_14__* %79, %struct.TYPE_13__* %11)
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @fileno(i32 %83)
  %85 = call i32 @fsync(i32 %84)
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  ret %struct.TYPE_14__* %86
}

declare dso_local %struct.TYPE_14__* @tsBufCreate(i32) #1

declare dso_local %struct.TYPE_15__* @addOneVnodeInfo(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @getDataStartOffset(...) #1

declare dso_local i32 @TSBufUpdateVnodeInfo(%struct.TYPE_14__*, i64, %struct.TYPE_12__*) #1

declare dso_local i32 @fseek(i32, i32, i32) #1

declare dso_local i32 @fwrite(i8*, i32, i64, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @STSBufUpdateHeader(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @fsync(i32) #1

declare dso_local i32 @fileno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
