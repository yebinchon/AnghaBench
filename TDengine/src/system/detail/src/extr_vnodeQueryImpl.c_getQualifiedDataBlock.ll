; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_getQualifiedDataBlock.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_getQualifiedDataBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_21__*, %struct.TYPE_19__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { i32, i64, i64, i64, i64, %struct.TYPE_17__, i32*, %struct.TYPE_23__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_23__ = type { i64, i64 }
%struct.TYPE_22__ = type { i32 }

@QUERY_RANGE_GREATER_EQUAL = common dso_local global i64 0, align 8
@QUERY_ASC_FORWARD_STEP = common dso_local global i64 0, align 8
@QUERY_DESC_FORWARD_STEP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [95 x i8] c"QInfo:%p fileId:%d total numOfBlks:%d blockId:%d into memory failed due to error in disk files\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_18__*, i64, i64 (i32, i32, i64, i32)*)* @getQualifiedDataBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getQualifiedDataBlock(%struct.TYPE_20__* %0, %struct.TYPE_18__* %1, i64 %2, i64 (i32, i32, i64, i32)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64 (i32, i32, i64, i32)*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 (i32, i32, i64, i32)* %3, i64 (i32, i32, i64, i32)** %9, align 8
  store i64 -1, i64* %10, align 8
  store i64 -1, i64* %11, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @QUERY_RANGE_GREATER_EQUAL, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i64, i64* @QUERY_ASC_FORWARD_STEP, align 8
  br label %25

23:                                               ; preds = %4
  %24 = load i64, i64* @QUERY_DESC_FORWARD_STEP, align 8
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i64 [ %22, %21 ], [ %24, %23 ]
  store i64 %26, i64* %12, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  store %struct.TYPE_19__* %29, %struct.TYPE_19__** %13, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  store i32 -1, i32* %31, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %14, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  store %struct.TYPE_21__* %37, %struct.TYPE_21__** %15, align 8
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %14, align 8
  %42 = call i64 @getFileIdFromKey(i32 %40, i64 %41)
  %43 = load i64, i64* %12, align 8
  %44 = sub nsw i64 %42, %43
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %25, %87
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %50 = load i64, i64* %12, align 8
  %51 = call i64 @getNextDataFileCompInfo(%struct.TYPE_18__* %48, %struct.TYPE_20__* %49, i64 %50)
  store i64 %51, i64* %11, align 8
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %88

54:                                               ; preds = %47
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %56 = load i64, i64* %14, align 8
  %57 = call i64 @binarySearchForBlock(%struct.TYPE_19__* %55, i64 %56)
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* @QUERY_RANGE_GREATER_EQUAL, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %54
  %62 = load i64, i64* %14, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 7
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %64, align 8
  %66 = load i64, i64* %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp sle i64 %62, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %88

72:                                               ; preds = %61
  store i64 -1, i64* %10, align 8
  br label %73

73:                                               ; preds = %72
  br label %87

74:                                               ; preds = %54
  %75 = load i64, i64* %14, align 8
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 7
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %77, align 8
  %79 = load i64, i64* %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp sge i64 %75, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  br label %88

85:                                               ; preds = %74
  store i64 -1, i64* %10, align 8
  br label %86

86:                                               ; preds = %85
  br label %87

87:                                               ; preds = %86, %73
  br label %47

88:                                               ; preds = %84, %71, %53
  %89 = load i64, i64* %10, align 8
  %90 = icmp eq i64 %89, -1
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 0, i32* %5, align 4
  br label %196

92:                                               ; preds = %88
  %93 = load i64, i64* %10, align 8
  %94 = icmp sge i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load i64, i64* %10, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp slt i64 %96, %99
  br label %101

101:                                              ; preds = %95, %92
  %102 = phi i1 [ false, %92 ], [ %100, %95 ]
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  store i32 0, i32* %16, align 4
  br label %105

105:                                              ; preds = %141, %101
  %106 = load i64, i64* %10, align 8
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp slt i64 %106, %109
  br i1 %110, label %111, label %155

111:                                              ; preds = %105
  %112 = load i64, i64* %10, align 8
  %113 = trunc i64 %112 to i32
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 7
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %117, align 8
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i64 %122
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 6
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %126, i64 %130
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %133 = load i64, i64* %11, align 8
  %134 = call i64 @loadDataBlockIntoMem(%struct.TYPE_23__* %123, i32* %131, %struct.TYPE_18__* %132, i64 %133, i32 1, i32 1)
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %111
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @SET_DATA_BLOCK_LOADED(i32 %139)
  store i32 1, i32* %16, align 4
  br label %155

141:                                              ; preds = %111
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %143 = call i32 @GET_QINFO_ADDR(%struct.TYPE_19__* %142)
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* %10, align 8
  %151 = call i32 @dError(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i32 %143, i64 %146, i64 %149, i64 %150)
  %152 = load i64, i64* %12, align 8
  %153 = load i64, i64* %10, align 8
  %154 = add nsw i64 %153, %152
  store i64 %154, i64* %10, align 8
  br label %105

155:                                              ; preds = %136, %105
  %156 = load i32, i32* %16, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  store i32 0, i32* %5, align 4
  br label %196

159:                                              ; preds = %155
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %161 = load i64, i64* %10, align 8
  %162 = call %struct.TYPE_22__* @getDiskDataBlock(%struct.TYPE_19__* %160, i64 %161)
  store %struct.TYPE_22__* %162, %struct.TYPE_22__** %17, align 8
  %163 = load i64 (i32, i32, i64, i32)*, i64 (i32, i32, i64, i32)** %9, align 8
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i64, i64* %14, align 8
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i64 %163(i32 %166, i32 %169, i64 %170, i32 %174)
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 4
  store i64 %175, i64* %177, align 8
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 4
  %180 = load i64, i64* %179, align 8
  %181 = icmp sge i64 %180, 0
  br i1 %181, label %182, label %192

182:                                              ; preds = %159
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = icmp sge i64 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %182
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp sge i32 %190, 0
  br label %192

192:                                              ; preds = %187, %182, %159
  %193 = phi i1 [ false, %182 ], [ false, %159 ], [ %191, %187 ]
  %194 = zext i1 %193 to i32
  %195 = call i32 @assert(i32 %194)
  store i32 1, i32* %5, align 4
  br label %196

196:                                              ; preds = %192, %158, %91
  %197 = load i32, i32* %5, align 4
  ret i32 %197
}

declare dso_local i64 @getFileIdFromKey(i32, i64) #1

declare dso_local i64 @getNextDataFileCompInfo(%struct.TYPE_18__*, %struct.TYPE_20__*, i64) #1

declare dso_local i64 @binarySearchForBlock(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @loadDataBlockIntoMem(%struct.TYPE_23__*, i32*, %struct.TYPE_18__*, i64, i32, i32) #1

declare dso_local i32 @SET_DATA_BLOCK_LOADED(i32) #1

declare dso_local i32 @dError(i8*, i32, i64, i64, i64) #1

declare dso_local i32 @GET_QINFO_ADDR(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_22__* @getDiskDataBlock(%struct.TYPE_19__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
