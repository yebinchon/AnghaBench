; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_normalizedFirstQueryRange.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_normalizedFirstQueryRange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_20__*, %struct.TYPE_18__* }
%struct.TYPE_20__ = type { i64, i64 }
%struct.TYPE_18__ = type { i64, i32, i64, i32, i32 }
%struct.TYPE_21__ = type { i64, i32* }

@vnodeSearchKeyFunc = common dso_local global i32* null, align 8
@QUERY_RANGE_GREATER_EQUAL = common dso_local global i32 0, align 4
@QUERY_RANGE_LESS_EQUAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @normalizedFirstQueryRange(i32 %0, i32 %1, %struct.TYPE_19__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %10, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %11, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  store %struct.TYPE_20__* %26, %struct.TYPE_20__** %12, align 8
  %27 = load i32*, i32** @vnodeSearchKeyFunc, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %13, align 4
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %34 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_18__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %97

36:                                               ; preds = %4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %36
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %42 = load i32, i32* @QUERY_RANGE_GREATER_EQUAL, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i64 @getQualifiedDataBlock(%struct.TYPE_20__* %40, %struct.TYPE_17__* %41, i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %39
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @getTimestampInDiskBlock(%struct.TYPE_17__* %47, i32 %50)
  store i64 %51, i64* %14, align 8
  %52 = load i64, i64* %14, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sge i64 %52, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load i64, i64* %14, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @doGetQueryPos(i64 %59, %struct.TYPE_19__* %60, i32* %61)
  store i32 %62, i32* %5, align 4
  br label %209

63:                                               ; preds = %39, %36
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 1
  store i32 -1, i32* %65, align 8
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %69, %struct.TYPE_21__** %15, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %71 = icmp eq %struct.TYPE_21__* %70, null
  br i1 %71, label %85, label %72

72:                                               ; preds = %63
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %85, label %77

77:                                               ; preds = %72
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %82, %77, %72, %63
  store i32 0, i32* %5, align 4
  br label %209

86:                                               ; preds = %82
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 4
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 3
  %92 = call i64 @getQueryStartPositionInCache(%struct.TYPE_17__* %87, i32* %89, i32* %91, i32 0)
  store i64 %92, i64* %16, align 8
  %93 = load i64, i64* %16, align 8
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = call i32 @doGetQueryPos(i64 %93, %struct.TYPE_19__* %94, i32* %95)
  store i32 %96, i32* %5, align 4
  br label %209

97:                                               ; preds = %4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %149

100:                                              ; preds = %97
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 4
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 3
  %106 = call i64 @getQueryStartPositionInCache(%struct.TYPE_17__* %101, i32* %103, i32* %105, i32 0)
  store i64 %106, i64* %17, align 8
  %107 = load i64, i64* %17, align 8
  %108 = icmp eq i64 %107, -1
  br i1 %108, label %115, label %109

109:                                              ; preds = %100
  %110 = load i64, i64* %17, align 8
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp sle i64 %110, %113
  br label %115

115:                                              ; preds = %109, %100
  %116 = phi i1 [ true, %100 ], [ %114, %109 ]
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert(i32 %117)
  %119 = load i64, i64* %17, align 8
  %120 = icmp ne i64 %119, -1
  br i1 %120, label %121, label %147

121:                                              ; preds = %115
  %122 = load i64, i64* %17, align 8
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp sge i64 %122, %125
  br i1 %126, label %127, label %146

127:                                              ; preds = %121
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %129 = call i64 @isFirstLastRowQuery(%struct.TYPE_18__* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %127
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %134 = load i32*, i32** %9, align 8
  %135 = call i32 @getNeighborPoints(%struct.TYPE_19__* %132, %struct.TYPE_20__* %133, i32* %134)
  store i32 %135, i32* %5, align 4
  br label %209

136:                                              ; preds = %127
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %138 = load i64, i64* %17, align 8
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @getAlignedIntervalQueryRange(%struct.TYPE_18__* %137, i64 %138, i64 %141, i64 %144)
  store i32 1, i32* %5, align 4
  br label %209

146:                                              ; preds = %121
  store i32 0, i32* %5, align 4
  br label %209

147:                                              ; preds = %115
  br label %148

148:                                              ; preds = %147
  br label %149

149:                                              ; preds = %148, %97
  %150 = load i32, i32* %6, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %207

152:                                              ; preds = %149
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %155 = load i32, i32* @QUERY_RANGE_LESS_EQUAL, align 4
  %156 = load i32, i32* %13, align 4
  %157 = call i64 @getQualifiedDataBlock(%struct.TYPE_20__* %153, %struct.TYPE_17__* %154, i32 %155, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %207

159:                                              ; preds = %152
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = call i64 @getTimestampInDiskBlock(%struct.TYPE_17__* %160, i32 %163)
  store i64 %164, i64* %18, align 8
  %165 = load i64, i64* %18, align 8
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp sle i64 %165, %168
  %170 = zext i1 %169 to i32
  %171 = call i32 @assert(i32 %170)
  %172 = load i64, i64* %18, align 8
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = icmp sge i64 %172, %175
  br i1 %176, label %177, label %196

177:                                              ; preds = %159
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %179 = call i64 @isFirstLastRowQuery(%struct.TYPE_18__* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %177
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %184 = load i32*, i32** %9, align 8
  %185 = call i32 @getNeighborPoints(%struct.TYPE_19__* %182, %struct.TYPE_20__* %183, i32* %184)
  store i32 %185, i32* %5, align 4
  br label %209

186:                                              ; preds = %177
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %188 = load i64, i64* %18, align 8
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @getAlignedIntervalQueryRange(%struct.TYPE_18__* %187, i64 %188, i64 %191, i64 %194)
  store i32 1, i32* %5, align 4
  br label %209

196:                                              ; preds = %159
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %198 = call i64 @isFirstLastRowQuery(%struct.TYPE_18__* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %196
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %203 = load i32*, i32** %9, align 8
  %204 = call i32 @getNeighborPoints(%struct.TYPE_19__* %201, %struct.TYPE_20__* %202, i32* %203)
  store i32 %204, i32* %5, align 4
  br label %209

205:                                              ; preds = %196
  br label %206

206:                                              ; preds = %205
  br label %207

207:                                              ; preds = %206, %152, %149
  br label %208

208:                                              ; preds = %207
  store i32 0, i32* %5, align 4
  br label %209

209:                                              ; preds = %208, %200, %186, %181, %146, %136, %131, %86, %85, %46
  %210 = load i32, i32* %5, align 4
  ret i32 %210
}

declare dso_local i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_18__*) #1

declare dso_local i64 @getQualifiedDataBlock(%struct.TYPE_20__*, %struct.TYPE_17__*, i32, i32) #1

declare dso_local i64 @getTimestampInDiskBlock(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @doGetQueryPos(i64, %struct.TYPE_19__*, i32*) #1

declare dso_local i64 @getQueryStartPositionInCache(%struct.TYPE_17__*, i32*, i32*, i32) #1

declare dso_local i64 @isFirstLastRowQuery(%struct.TYPE_18__*) #1

declare dso_local i32 @getNeighborPoints(%struct.TYPE_19__*, %struct.TYPE_20__*, i32*) #1

declare dso_local i32 @getAlignedIntervalQueryRange(%struct.TYPE_18__*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
