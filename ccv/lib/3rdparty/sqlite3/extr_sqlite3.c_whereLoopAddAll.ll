; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_whereLoopAddAll.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_whereLoopAddAll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__*, %struct.TYPE_20__* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_20__ = type { i64, i32, %struct.TYPE_15__*, %struct.TYPE_21__* }
%struct.TYPE_15__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_21__ = type { %struct.SrcList_item* }
%struct.SrcList_item = type { i32, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@JT_LEFT = common dso_local global i32 0, align 4
@JT_CROSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @whereLoopAddAll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @whereLoopAddAll(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.SrcList_item*, align 8
  %9 = alloca %struct.SrcList_item*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.SrcList_item*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %7, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = load %struct.SrcList_item*, %struct.SrcList_item** %23, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %24, i64 %27
  store %struct.SrcList_item* %28, %struct.SrcList_item** %9, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  store %struct.TYPE_17__* %33, %struct.TYPE_17__** %10, align 8
  %34 = load i32, i32* @SQLITE_OK, align 4
  store i32 %34, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  store %struct.TYPE_19__* %37, %struct.TYPE_19__** %12, align 8
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %39 = call i32 @whereLoopInit(%struct.TYPE_19__* %38)
  store i32 0, i32* %6, align 4
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  %42 = load %struct.SrcList_item*, %struct.SrcList_item** %41, align 8
  store %struct.SrcList_item* %42, %struct.SrcList_item** %8, align 8
  br label %43

43:                                               ; preds = %148, %1
  %44 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %45 = load %struct.SrcList_item*, %struct.SrcList_item** %9, align 8
  %46 = icmp ult %struct.SrcList_item* %44, %45
  br i1 %46, label %47, label %153

47:                                               ; preds = %43
  store i32 0, i32* %14, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 1
  %53 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %54 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @sqlite3WhereGetMask(i32* %52, i32 %55)
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %60 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %13, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @JT_LEFT, align 4
  %66 = load i32, i32* @JT_CROSS, align 4
  %67 = or i32 %65, %66
  %68 = and i32 %64, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %47
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %47
  %73 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %74 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %13, align 4
  %77 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %78 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @IsVirtual(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %120

82:                                               ; preds = %72
  %83 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %84 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %83, i64 1
  store %struct.SrcList_item* %84, %struct.SrcList_item** %15, align 8
  br label %85

85:                                               ; preds = %112, %82
  %86 = load %struct.SrcList_item*, %struct.SrcList_item** %15, align 8
  %87 = load %struct.SrcList_item*, %struct.SrcList_item** %9, align 8
  %88 = icmp ult %struct.SrcList_item* %86, %87
  br i1 %88, label %89, label %115

89:                                               ; preds = %85
  %90 = load i32, i32* %14, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %102, label %92

92:                                               ; preds = %89
  %93 = load %struct.SrcList_item*, %struct.SrcList_item** %15, align 8
  %94 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @JT_LEFT, align 4
  %98 = load i32, i32* @JT_CROSS, align 4
  %99 = or i32 %97, %98
  %100 = and i32 %96, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %92, %89
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 1
  %105 = load %struct.SrcList_item*, %struct.SrcList_item** %15, align 8
  %106 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @sqlite3WhereGetMask(i32* %104, i32 %107)
  %109 = load i32, i32* %14, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %14, align 4
  br label %111

111:                                              ; preds = %102, %92
  br label %112

112:                                              ; preds = %111
  %113 = load %struct.SrcList_item*, %struct.SrcList_item** %15, align 8
  %114 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %113, i32 1
  store %struct.SrcList_item* %114, %struct.SrcList_item** %15, align 8
  br label %85

115:                                              ; preds = %85
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* %14, align 4
  %119 = call i32 @whereLoopAddVirtual(%struct.TYPE_18__* %116, i32 %117, i32 %118)
  store i32 %119, i32* %11, align 4
  br label %124

120:                                              ; preds = %72
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @whereLoopAddBtree(%struct.TYPE_18__* %121, i32 %122)
  store i32 %123, i32* %11, align 4
  br label %124

124:                                              ; preds = %120, %115
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* @SQLITE_OK, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %124
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* %14, align 4
  %132 = call i32 @whereLoopAddOr(%struct.TYPE_18__* %129, i32 %130, i32 %131)
  store i32 %132, i32* %11, align 4
  br label %133

133:                                              ; preds = %128, %124
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %5, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* %11, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %133
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141, %133
  br label %153

147:                                              ; preds = %141
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %6, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %6, align 4
  %151 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %152 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %151, i32 1
  store %struct.SrcList_item* %152, %struct.SrcList_item** %8, align 8
  br label %43

153:                                              ; preds = %146, %43
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %156 = call i32 @whereLoopClear(%struct.TYPE_17__* %154, %struct.TYPE_19__* %155)
  %157 = load i32, i32* %11, align 4
  ret i32 %157
}

declare dso_local i32 @whereLoopInit(%struct.TYPE_19__*) #1

declare dso_local i32 @sqlite3WhereGetMask(i32*, i32) #1

declare dso_local i64 @IsVirtual(i32) #1

declare dso_local i32 @whereLoopAddVirtual(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @whereLoopAddBtree(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @whereLoopAddOr(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @whereLoopClear(%struct.TYPE_17__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
