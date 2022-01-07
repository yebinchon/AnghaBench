; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_readsTable.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_readsTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_13__ = type { i64, i32, i32, i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }

@OP_OpenRead = common dso_local global i64 0, align 8
@OP_VOpen = common dso_local global i64 0, align 8
@P4_VTAB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32, i32, %struct.TYPE_14__*)* @readsTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readsTable(%struct.TYPE_15__* %0, i32 %1, i32 %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %18 = call i32* @sqlite3GetVdbe(%struct.TYPE_15__* %17)
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = call i32 @sqlite3VdbeCurrentAddr(i32* %19)
  store i32 %20, i32* %12, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %22 = call i64 @IsVirtual(%struct.TYPE_14__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %29 = call i32* @sqlite3GetVTable(i32 %27, %struct.TYPE_14__* %28)
  br label %31

30:                                               ; preds = %4
  br label %31

31:                                               ; preds = %30, %24
  %32 = phi i32* [ %29, %24 ], [ null, %30 ]
  store i32* %32, i32** %13, align 8
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %116, %31
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %119

38:                                               ; preds = %34
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call %struct.TYPE_13__* @sqlite3VdbeGetOp(i32* %39, i32 %40)
  store %struct.TYPE_13__* %41, %struct.TYPE_13__** %14, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %43 = icmp ne %struct.TYPE_13__* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @OP_OpenRead, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %87

51:                                               ; preds = %38
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %87

57:                                               ; preds = %51
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  store i32 1, i32* %5, align 4
  br label %120

67:                                               ; preds = %57
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %69, align 8
  store %struct.TYPE_16__* %70, %struct.TYPE_16__** %15, align 8
  br label %71

71:                                               ; preds = %82, %67
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %73 = icmp ne %struct.TYPE_16__* %72, null
  br i1 %73, label %74, label %86

74:                                               ; preds = %71
  %75 = load i32, i32* %16, align 4
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %75, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 1, i32* %5, align 4
  br label %120

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %84, align 8
  store %struct.TYPE_16__* %85, %struct.TYPE_16__** %15, align 8
  br label %71

86:                                               ; preds = %71
  br label %87

87:                                               ; preds = %86, %51, %38
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @OP_VOpen, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %115

93:                                               ; preds = %87
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32*, i32** %13, align 8
  %99 = icmp eq i32* %97, %98
  br i1 %99, label %100, label %115

100:                                              ; preds = %93
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = icmp ne i32* %104, null
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @P4_VTAB, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  store i32 1, i32* %5, align 4
  br label %120

115:                                              ; preds = %93, %87
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %34

119:                                              ; preds = %34
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %119, %100, %80, %66
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_15__*) #1

declare dso_local i32 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i64 @IsVirtual(%struct.TYPE_14__*) #1

declare dso_local i32* @sqlite3GetVTable(i32, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_13__* @sqlite3VdbeGetOp(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
