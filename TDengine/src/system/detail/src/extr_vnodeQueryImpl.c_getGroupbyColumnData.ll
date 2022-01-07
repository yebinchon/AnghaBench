; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_getGroupbyColumnData.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_getGroupbyColumnData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_19__*, %struct.TYPE_22__* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, i64, i64 }
%struct.TYPE_22__ = type { i64, %struct.TYPE_18__*, %struct.TYPE_20__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_23__ = type { i64, i64, i64 }
%struct.TYPE_15__ = type { i64 }

@TSDB_COL_TAG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_21__*, %struct.TYPE_23__*, %struct.TYPE_15__*, i8*, i32, i64*, i64*)* @getGroupbyColumnData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getGroupbyColumnData(%struct.TYPE_21__* %0, %struct.TYPE_23__* %1, %struct.TYPE_15__* %2, i8* %3, i32 %4, i64* %5, i64* %6) #0 {
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_20__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_24__*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %8, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %9, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64* %5, i64** %13, align 8
  store i64* %6, i64** %14, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %28, align 8
  store %struct.TYPE_22__* %29, %struct.TYPE_22__** %15, align 8
  store i8* null, i8** %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %31, align 8
  store %struct.TYPE_20__* %32, %struct.TYPE_20__** %19, align 8
  store i64 0, i64* %20, align 8
  br label %33

33:                                               ; preds = %180, %7
  %34 = load i64, i64* %20, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %183

39:                                               ; preds = %33
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %41, align 8
  %43 = load i64, i64* %20, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @TSDB_COL_TAG, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %180

50:                                               ; preds = %39
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %52, align 8
  %54 = load i64, i64* %20, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %21, align 8
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %118

60:                                               ; preds = %50
  store i64 0, i64* %22, align 8
  br label %61

61:                                               ; preds = %90, %60
  %62 = load i64, i64* %22, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ult i64 %62, %65
  br i1 %66, label %67, label %93

67:                                               ; preds = %61
  %68 = load i64, i64* %21, align 8
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %70 = load i64, i64* %22, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %68, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %67
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %77 = load i64, i64* %22, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64*, i64** %13, align 8
  store i64 %80, i64* %81, align 8
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %83 = load i64, i64* %22, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64*, i64** %14, align 8
  store i64 %86, i64* %87, align 8
  %88 = load i64, i64* %22, align 8
  store i64 %88, i64* %17, align 8
  br label %93

89:                                               ; preds = %67
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %22, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %22, align 8
  br label %61

93:                                               ; preds = %75, %61
  store i64 0, i64* %23, align 8
  br label %94

94:                                               ; preds = %114, %93
  %95 = load i64, i64* %23, align 8
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ult i64 %95, %98
  br i1 %99, label %100, label %117

100:                                              ; preds = %94
  %101 = load i64, i64* %21, align 8
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %103, align 8
  %105 = load i64, i64* %23, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %101, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %100
  %112 = load i64, i64* %23, align 8
  store i64 %112, i64* %18, align 8
  br label %117

113:                                              ; preds = %100
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %23, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %23, align 8
  br label %94

117:                                              ; preds = %111, %94
  br label %160

118:                                              ; preds = %50
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %122, align 8
  store %struct.TYPE_24__* %123, %struct.TYPE_24__** %24, align 8
  store i64 0, i64* %25, align 8
  br label %124

124:                                              ; preds = %156, %118
  %125 = load i64, i64* %25, align 8
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ult i64 %125, %130
  br i1 %131, label %132, label %159

132:                                              ; preds = %124
  %133 = load i64, i64* %21, align 8
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %24, align 8
  %135 = load i64, i64* %25, align 8
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %133, %138
  br i1 %139, label %140, label %155

140:                                              ; preds = %132
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %24, align 8
  %142 = load i64, i64* %25, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64*, i64** %13, align 8
  store i64 %145, i64* %146, align 8
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %24, align 8
  %148 = load i64, i64* %25, align 8
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load i64*, i64** %14, align 8
  store i64 %151, i64* %152, align 8
  %153 = load i64, i64* %25, align 8
  store i64 %153, i64* %17, align 8
  %154 = load i64, i64* %25, align 8
  store i64 %154, i64* %18, align 8
  br label %159

155:                                              ; preds = %132
  br label %156

156:                                              ; preds = %155
  %157 = load i64, i64* %25, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %25, align 8
  br label %124

159:                                              ; preds = %140, %124
  br label %160

160:                                              ; preds = %159, %117
  %161 = load i32, i32* %12, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %160
  %164 = load i64, i64* %18, align 8
  br label %167

165:                                              ; preds = %160
  %166 = load i64, i64* %17, align 8
  br label %167

167:                                              ; preds = %165, %163
  %168 = phi i64 [ %164, %163 ], [ %166, %165 ]
  store i64 %168, i64* %26, align 8
  %169 = load i32, i32* %12, align 4
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %171 = load i8*, i8** %11, align 8
  %172 = load i64, i64* %26, align 8
  %173 = load i64, i64* %21, align 8
  %174 = load i64*, i64** %13, align 8
  %175 = load i64, i64* %174, align 8
  %176 = load i64*, i64** %14, align 8
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* %18, align 8
  %179 = call i8* @doGetDataBlocks(i32 %169, %struct.TYPE_21__* %170, i8* %171, i64 %172, i64 %173, i64 %175, i64 %177, i64 %178)
  store i8* %179, i8** %16, align 8
  br label %183

180:                                              ; preds = %49
  %181 = load i64, i64* %20, align 8
  %182 = add i64 %181, 1
  store i64 %182, i64* %20, align 8
  br label %33

183:                                              ; preds = %167, %33
  %184 = load i8*, i8** %16, align 8
  ret i8* %184
}

declare dso_local i8* @doGetDataBlocks(i32, %struct.TYPE_21__*, i8*, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
