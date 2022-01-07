; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscJoinProcess.c_tsBufGetBlock.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscJoinProcess.c_tsBufGetBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__, i32, i32, %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i64, i64, i64, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }

@TSQL_SO_ASC = common dso_local global i64 0, align 8
@TSQL_SO_DESC = common dso_local global i64 0, align 8
@TWO_STAGE_COMP = common dso_local global i32 0, align 4
@TSDB_KEYSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i64, i64)* @tsBufGetBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsBufGetBlock(%struct.TYPE_15__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 5
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %7, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ule i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = call i32 @assert(i32 0)
  br label %26

26:                                               ; preds = %24, %3
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 4
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %8, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %81

34:                                               ; preds = %26
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp ule i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TSQL_SO_ASC, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %58, label %46

46:                                               ; preds = %40, %34
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp uge i64 %49, %50
  br i1 %51, label %52, label %81

52:                                               ; preds = %46
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @TSQL_SO_DESC, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %81

58:                                               ; preds = %52, %40
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = sub i64 %59, %62
  %64 = call i64 @abs(i64 %63)
  store i64 %64, i64* %11, align 8
  br label %65

65:                                               ; preds = %79, %58
  %66 = load i64, i64* %9, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %9, align 8
  %68 = load i64, i64* %11, align 8
  %69 = icmp ule i64 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32* @readDataFromDisk(%struct.TYPE_15__* %71, i64 %74, i32 %75)
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %154

79:                                               ; preds = %70
  br label %65

80:                                               ; preds = %65
  br label %90

81:                                               ; preds = %52, %46, %26
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @tsBufFindBlock(%struct.TYPE_15__* %82, %struct.TYPE_13__* %83, i64 %84)
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = call i32 @assert(i32 0)
  br label %89

89:                                               ; preds = %87, %81
  br label %90

90:                                               ; preds = %89, %80
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 3
  store %struct.TYPE_16__* %92, %struct.TYPE_16__** %12, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @TWO_STAGE_COMP, align 4
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @tsDecompressTimestamp(i32 %95, i32 %98, i32 %101, i32 %105, i32 %109, i32 %110, i32 %113, i32 %116)
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 8
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @TSDB_KEYSIZE, align 4
  %126 = sdiv i32 %124, %125
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %126, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @assert(i32 %131)
  %133 = load i64, i64* %5, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  %136 = load i64, i64* %6, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 1
  store i64 %136, i64* %138, align 8
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @TSQL_SO_ASC, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %90
  br label %150

145:                                              ; preds = %90
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 %148, 1
  br label %150

150:                                              ; preds = %145, %144
  %151 = phi i32 [ 0, %144 ], [ %149, %145 ]
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 3
  store i32 %151, i32* %153, align 8
  br label %154

154:                                              ; preds = %150, %78
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32* @readDataFromDisk(%struct.TYPE_15__*, i64, i32) #1

declare dso_local i32 @tsBufFindBlock(%struct.TYPE_15__*, %struct.TYPE_13__*, i64) #1

declare dso_local i32 @tsDecompressTimestamp(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
