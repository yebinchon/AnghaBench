; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_blockwiseApplyAllFunctions.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_blockwiseApplyAllFunctions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 (i32*)* }
%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_25__*, i32* }
%struct.TYPE_25__ = type { i64, %struct.TYPE_23__*, i32, i32, i32, i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_26__ = type { i64, i32 }

@aAggs = common dso_local global %struct.TYPE_21__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_24__*, i64, i32*, i8*, %struct.TYPE_26__*, i32*, i32)* @blockwiseApplyAllFunctions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @blockwiseApplyAllFunctions(%struct.TYPE_24__* %0, i64 %1, i32* %2, i8* %3, %struct.TYPE_26__* %4, i32* %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_25__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_26__, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca %struct.TYPE_26__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.TYPE_26__* %4, %struct.TYPE_26__** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %15, align 8
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %34, align 8
  store %struct.TYPE_25__* %35, %struct.TYPE_25__** %16, align 8
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %37 = call i64 @getNumOfResult(%struct.TYPE_24__* %36)
  store i64 %37, i64* %17, align 8
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32* @calloc(i64 %40, i32 4)
  store i32* %41, i32** %18, align 8
  store i64 0, i64* %19, align 8
  br label %42

42:                                               ; preds = %135, %7
  %43 = load i64, i64* %19, align 8
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ult i64 %43, %46
  br i1 %47, label %48, label %138

48:                                               ; preds = %42
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %50, align 8
  %52 = load i64, i64* %19, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %20, align 8
  %57 = bitcast %struct.TYPE_26__* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %57, i8 0, i64 16, i1 false)
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %59 = load i64, i64* %19, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @hasNullVal(%struct.TYPE_25__* %58, i64 %59, i32* %60, %struct.TYPE_26__* %61, i32 %62)
  store i32 %63, i32* %22, align 4
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = load i32*, i32** %18, align 8
  %67 = load i64, i64* %19, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i64, i64* %19, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i32, i32* %14, align 4
  %72 = call i8* @getDataBlocks(%struct.TYPE_24__* %64, i8* %65, i32* %68, i64 %69, i64 %70, i32 %71)
  store i8* %72, i8** %23, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %24, align 8
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %74 = icmp ne %struct.TYPE_26__* %73, null
  br i1 %74, label %75, label %88

75:                                               ; preds = %48
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %77 = load i32*, i32** %13, align 8
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %79 = load i64, i64* %19, align 8
  %80 = call %struct.TYPE_26__* @getFieldInfo(%struct.TYPE_25__* %76, i32* %77, %struct.TYPE_26__* %78, i64 %79)
  store %struct.TYPE_26__* %80, %struct.TYPE_26__** %24, align 8
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %82 = icmp eq %struct.TYPE_26__* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %75
  store %struct.TYPE_26__* %21, %struct.TYPE_26__** %24, align 8
  %84 = load i64, i64* %9, align 8
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %86 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %83, %75
  br label %88

88:                                               ; preds = %87, %48
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %90 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_25__* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  br label %100

96:                                               ; preds = %88
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  br label %100

100:                                              ; preds = %96, %92
  %101 = phi i32 [ %95, %92 ], [ %99, %96 ]
  store i32 %101, i32* %25, align 4
  %102 = load i32, i32* %25, align 4
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @taosGetIntervalStartTimestamp(i32 %102, i32 %105, i32 %108, i32 %111)
  store i64 %112, i64* %26, align 8
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %114 = load i32*, i32** %15, align 8
  %115 = load i64, i64* %19, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i64, i64* %26, align 8
  %118 = load i8*, i8** %23, align 8
  %119 = load i32*, i32** %10, align 8
  %120 = bitcast i32* %119 to i8*
  %121 = load i64, i64* %9, align 8
  %122 = load i64, i64* %20, align 8
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %124 = load i32, i32* %22, align 4
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %18, align 8
  %129 = load i64, i64* %19, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @setExecParams(%struct.TYPE_25__* %113, i32* %116, i64 %117, i8* %118, i8* %120, i64 %121, i64 %122, %struct.TYPE_26__* %123, i32 %124, i32 %127, i32* %130, i32 %133)
  br label %135

135:                                              ; preds = %100
  %136 = load i64, i64* %19, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %19, align 8
  br label %42

138:                                              ; preds = %42
  store i64 0, i64* %27, align 8
  br label %139

139:                                              ; preds = %172, %138
  %140 = load i64, i64* %27, align 8
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ult i64 %140, %143
  br i1 %144, label %145, label %175

145:                                              ; preds = %139
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %147, align 8
  %149 = load i64, i64* %27, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %28, align 8
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %155 = load i32*, i32** %15, align 8
  %156 = load i64, i64* %27, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = load i64, i64* %28, align 8
  %159 = call i64 @functionNeedToExecute(%struct.TYPE_24__* %154, i32* %157, i64 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %171

161:                                              ; preds = %145
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** @aAggs, align 8
  %163 = load i64, i64* %28, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 0
  %166 = load i32 (i32*)*, i32 (i32*)** %165, align 8
  %167 = load i32*, i32** %15, align 8
  %168 = load i64, i64* %27, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  %170 = call i32 %166(i32* %169)
  br label %171

171:                                              ; preds = %161, %145
  br label %172

172:                                              ; preds = %171
  %173 = load i64, i64* %27, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %27, align 8
  br label %139

175:                                              ; preds = %139
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %177 = call i64 @getNumOfResult(%struct.TYPE_24__* %176)
  %178 = load i64, i64* %17, align 8
  %179 = sub nsw i64 %177, %178
  store i64 %179, i64* %29, align 8
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %181 = load i64, i64* %29, align 8
  %182 = call i32 @validateTimestampForSupplementResult(%struct.TYPE_24__* %180, i64 %181)
  %183 = load i32*, i32** %18, align 8
  %184 = call i32 @tfree(i32* %183)
  %185 = load i64, i64* %29, align 8
  ret i64 %185
}

declare dso_local i64 @getNumOfResult(%struct.TYPE_24__*) #1

declare dso_local i32* @calloc(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @hasNullVal(%struct.TYPE_25__*, i64, i32*, %struct.TYPE_26__*, i32) #1

declare dso_local i8* @getDataBlocks(%struct.TYPE_24__*, i8*, i32*, i64, i64, i32) #1

declare dso_local %struct.TYPE_26__* @getFieldInfo(%struct.TYPE_25__*, i32*, %struct.TYPE_26__*, i64) #1

declare dso_local i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_25__*) #1

declare dso_local i64 @taosGetIntervalStartTimestamp(i32, i32, i32, i32) #1

declare dso_local i32 @setExecParams(%struct.TYPE_25__*, i32*, i64, i8*, i8*, i64, i64, %struct.TYPE_26__*, i32, i32, i32*, i32) #1

declare dso_local i64 @functionNeedToExecute(%struct.TYPE_24__*, i32*, i64) #1

declare dso_local i32 @validateTimestampForSupplementResult(%struct.TYPE_24__*, i64) #1

declare dso_local i32 @tfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
