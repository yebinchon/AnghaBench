; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_saveResult.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_saveResult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_34__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i64, %struct.TYPE_36__*, %struct.TYPE_29__*, %struct.TYPE_33__* }
%struct.TYPE_36__ = type { i32, i32, i32 }
%struct.TYPE_29__ = type { i64, i64 }
%struct.TYPE_33__ = type { i64 }
%struct.TYPE_35__ = type { i64, i64, i32, i32, i64*, i32, i32* }
%struct.TYPE_30__ = type { i64 }

@.str = private unnamed_addr constant [62 x i8] c"QInfo:%p vid:%d sid:%d id:%s, save results, ts:%lld, total:%d\00", align 1
@TSDB_DATA_TYPE_BIGINT = common dso_local global i8* null, align 8
@TSDB_MAX_COLUMNS = common dso_local global i32 0, align 4
@outputPage = common dso_local global %struct.TYPE_28__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saveResult(%struct.TYPE_34__* %0, %struct.TYPE_35__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_34__*, align 8
  %5 = alloca %struct.TYPE_35__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_32__*, align 8
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_30__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_36__*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %4, align 8
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %15, i32 0, i32 0
  store %struct.TYPE_32__* %16, %struct.TYPE_32__** %7, align 8
  %17 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_33__*, %struct.TYPE_33__** %18, align 8
  store %struct.TYPE_33__* %19, %struct.TYPE_33__** %8, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ule i64 %20, 0
  br i1 %21, label %22, label %79

22:                                               ; preds = %3
  %23 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %24 = call i64 @IS_MASTER_SCAN(%struct.TYPE_32__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %211

27:                                               ; preds = %22
  %28 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i64*
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_29__*, %struct.TYPE_29__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %36, %42
  br i1 %43, label %44, label %78

44:                                               ; preds = %27
  %45 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %78

49:                                               ; preds = %44
  %50 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp sge i64 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %49
  %55 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp sle i64 %62, %65
  br label %67

67:                                               ; preds = %59, %54, %49
  %68 = phi i1 [ false, %54 ], [ false, %49 ], [ %66, %59 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %73, 1
  store i64 %74, i64* %72, align 8
  %75 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %76 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %77 = call i32 @setCtxOutputPointerForSupplementScan(%struct.TYPE_34__* %75, %struct.TYPE_35__* %76)
  br label %78

78:                                               ; preds = %67, %44, %27
  br label %211

79:                                               ; preds = %3
  %80 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 1
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  store i64 1, i64* %6, align 8
  %86 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %86, i32 0, i32 2
  store i32 0, i32* %87, align 8
  %88 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %89 = call i64 @IS_SUPPLEMENT_SCAN(%struct.TYPE_32__* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %125

91:                                               ; preds = %79
  %92 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %125

96:                                               ; preds = %91
  %97 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %96
  %102 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp sgt i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp sle i64 %109, %112
  br label %114

114:                                              ; preds = %106, %101, %96
  %115 = phi i1 [ false, %101 ], [ false, %96 ], [ %113, %106 ]
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  %118 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = sub nsw i64 %120, 1
  store i64 %121, i64* %119, align 8
  %122 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %123 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %124 = call i32 @setCtxOutputPointerForSupplementScan(%struct.TYPE_34__* %122, %struct.TYPE_35__* %123)
  br label %211

125:                                              ; preds = %91, %79
  %126 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %126, i32 0, i32 4
  %128 = load i64*, i64** %127, align 8
  %129 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %128, i64 %133
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %10, align 8
  %136 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %137 = load i64, i64* %10, align 8
  %138 = call %struct.TYPE_30__* @getFilePage(%struct.TYPE_34__* %136, i64 %137)
  store %struct.TYPE_30__* %138, %struct.TYPE_30__** %11, align 8
  %139 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %140 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %141 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = call i64 @getOutputResPos(%struct.TYPE_32__* %139, %struct.TYPE_30__* %140, i64 %143, i32 0)
  %145 = inttoptr i64 %144 to i64*
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %12, align 8
  %147 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_36__*, %struct.TYPE_36__** %148, align 8
  store %struct.TYPE_36__* %149, %struct.TYPE_36__** %13, align 8
  %150 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %151 = call i32 @GET_QINFO_ADDR(%struct.TYPE_33__* %150)
  %152 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i64, i64* %12, align 8
  %162 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %164, 1
  %166 = call i32 @qTrace(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %151, i32 %154, i32 %157, i32 %160, i64 %161, i64 %165)
  %167 = load i64, i64* %6, align 8
  %168 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = add i64 %170, %167
  store i64 %171, i64* %169, align 8
  %172 = load i64, i64* %6, align 8
  %173 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = add i64 %175, %172
  store i64 %176, i64* %174, align 8
  %177 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp sle i64 %179, %182
  %184 = zext i1 %183 to i32
  %185 = call i32 @assert(i32 %184)
  %186 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %187 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %188 = call i32 @setOutputBufferForIntervalQuery(%struct.TYPE_34__* %186, %struct.TYPE_35__* %187)
  store i64 0, i64* %14, align 8
  br label %189

189:                                              ; preds = %202, %125
  %190 = load i64, i64* %14, align 8
  %191 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp ult i64 %190, %193
  br i1 %194, label %195, label %205

195:                                              ; preds = %189
  %196 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %196, i32 0, i32 6
  %198 = load i32*, i32** %197, align 8
  %199 = load i64, i64* %14, align 8
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  %201 = call i32 @resetResultInfo(i32* %200)
  br label %202

202:                                              ; preds = %195
  %203 = load i64, i64* %14, align 8
  %204 = add i64 %203, 1
  store i64 %204, i64* %14, align 8
  br label %189

205:                                              ; preds = %189
  %206 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %207 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %208 = call i32 @validateResultBuf(%struct.TYPE_34__* %206, %struct.TYPE_35__* %207)
  %209 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %210 = call i32 @initCtxOutputBuf(%struct.TYPE_32__* %209)
  br label %211

211:                                              ; preds = %26, %78, %205, %114
  ret void
}

declare dso_local i64 @IS_MASTER_SCAN(%struct.TYPE_32__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @setCtxOutputPointerForSupplementScan(%struct.TYPE_34__*, %struct.TYPE_35__*) #1

declare dso_local i64 @IS_SUPPLEMENT_SCAN(%struct.TYPE_32__*) #1

declare dso_local %struct.TYPE_30__* @getFilePage(%struct.TYPE_34__*, i64) #1

declare dso_local i64 @getOutputResPos(%struct.TYPE_32__*, %struct.TYPE_30__*, i64, i32) #1

declare dso_local i32 @qTrace(i8*, i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @GET_QINFO_ADDR(%struct.TYPE_33__*) #1

declare dso_local i32 @setOutputBufferForIntervalQuery(%struct.TYPE_34__*, %struct.TYPE_35__*) #1

declare dso_local i32 @resetResultInfo(i32*) #1

declare dso_local i32 @validateResultBuf(%struct.TYPE_34__*, %struct.TYPE_35__*) #1

declare dso_local i32 @initCtxOutputBuf(%struct.TYPE_32__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
