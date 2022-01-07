; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_setCtxOutputPointerForSupplementScan.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_setCtxOutputPointerForSupplementScan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32 (%struct.TYPE_32__*)* }
%struct.TYPE_32__ = type { i64, i64 }
%struct.TYPE_33__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_24__*, %struct.TYPE_32__*, %struct.TYPE_31__* }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.TYPE_31__ = type { i64, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_34__ = type { i64, i64, i64, i32* }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_29__ = type { i64 }

@TSDB_FUNC_FIRST_DST = common dso_local global i64 0, align 8
@TSDB_FUNC_LAST_DST = common dso_local global i64 0, align 8
@aAggs = common dso_local global %struct.TYPE_25__* null, align 8
@.str = private unnamed_addr constant [75 x i8] c"QInfo:%p vid:%d sid:%d id:%s, set output result pointer, ts:%lld, index:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setCtxOutputPointerForSupplementScan(%struct.TYPE_33__* %0, %struct.TYPE_34__* %1) #0 {
  %3 = alloca %struct.TYPE_33__*, align 8
  %4 = alloca %struct.TYPE_34__*, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_32__*, align 8
  %12 = alloca %struct.TYPE_29__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %3, align 8
  store %struct.TYPE_34__* %1, %struct.TYPE_34__** %4, align 8
  %16 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %16, i32 0, i32 0
  store %struct.TYPE_30__* %17, %struct.TYPE_30__** %5, align 8
  %18 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  store %struct.TYPE_31__* %20, %struct.TYPE_31__** %6, align 8
  %21 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %8, align 8
  store i64 0, i64* %9, align 8
  br label %24

24:                                               ; preds = %51, %2
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %54

30:                                               ; preds = %24
  %31 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %32 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.TYPE_28__* @getFilePage(%struct.TYPE_33__* %31, i32 %37)
  store %struct.TYPE_28__* %38, %struct.TYPE_28__** %8, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ule i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  br label %54

45:                                               ; preds = %30
  %46 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = sub i64 %49, %48
  store i64 %50, i64* %7, align 8
  br label %51

51:                                               ; preds = %45
  %52 = load i64, i64* %9, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %9, align 8
  br label %24

54:                                               ; preds = %44, %24
  %55 = load i64, i64* %7, align 8
  %56 = icmp uge i64 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load i64, i64* %7, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %164

62:                                               ; preds = %54
  store i64 0, i64* %10, align 8
  br label %63

63:                                               ; preds = %133, %62
  %64 = load i64, i64* %10, align 8
  %65 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ult i64 %64, %67
  br i1 %68, label %69, label %136

69:                                               ; preds = %63
  %70 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_32__*, %struct.TYPE_32__** %71, align 8
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %72, i64 %73
  store %struct.TYPE_32__* %74, %struct.TYPE_32__** %11, align 8
  %75 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %77 = load i64, i64* %7, align 8
  %78 = sub i64 %77, 1
  %79 = load i64, i64* %10, align 8
  %80 = call i64 @getOutputResPos(%struct.TYPE_30__* %75, %struct.TYPE_28__* %76, i64 %78, i64 %79)
  %81 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %84 = call %struct.TYPE_29__* @GET_RES_INFO(%struct.TYPE_32__* %83)
  store %struct.TYPE_29__* %84, %struct.TYPE_29__** %12, align 8
  %85 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %69
  br label %133

90:                                               ; preds = %69
  %91 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %92, align 8
  %94 = load i64, i64* %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %13, align 8
  %99 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %100 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_31__* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %90
  %103 = load i64, i64* %13, align 8
  %104 = load i64, i64* @TSDB_FUNC_FIRST_DST, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %114, label %106

106:                                              ; preds = %102, %90
  %107 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %108 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_31__* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %132, label %110

110:                                              ; preds = %106
  %111 = load i64, i64* %13, align 8
  %112 = load i64, i64* @TSDB_FUNC_LAST_DST, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %132

114:                                              ; preds = %110, %102
  %115 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %114
  %120 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %120, i32 0, i32 1
  store i64 0, i64* %121, align 8
  %122 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %123 = call i32 @resetResultInfo(%struct.TYPE_29__* %122)
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** @aAggs, align 8
  %125 = load i64, i64* %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 0
  %128 = load i32 (%struct.TYPE_32__*)*, i32 (%struct.TYPE_32__*)** %127, align 8
  %129 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %130 = call i32 %128(%struct.TYPE_32__* %129)
  br label %131

131:                                              ; preds = %119, %114
  br label %132

132:                                              ; preds = %131, %110, %106
  br label %133

133:                                              ; preds = %132, %89
  %134 = load i64, i64* %10, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %10, align 8
  br label %63

136:                                              ; preds = %63
  %137 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_32__*, %struct.TYPE_32__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %139, i64 0
  %141 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = inttoptr i64 %142 to i32*
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %14, align 4
  %145 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %146, align 8
  store %struct.TYPE_24__* %147, %struct.TYPE_24__** %15, align 8
  %148 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %149 = call i32 @GET_QINFO_ADDR(%struct.TYPE_31__* %148)
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %14, align 4
  %160 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @qTrace(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %149, i32 %152, i32 %155, i32 %158, i32 %159, i64 %162)
  br label %164

164:                                              ; preds = %136, %61
  ret void
}

declare dso_local %struct.TYPE_28__* @getFilePage(%struct.TYPE_33__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @getOutputResPos(%struct.TYPE_30__*, %struct.TYPE_28__*, i64, i64) #1

declare dso_local %struct.TYPE_29__* @GET_RES_INFO(%struct.TYPE_32__*) #1

declare dso_local i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_31__*) #1

declare dso_local i32 @resetResultInfo(%struct.TYPE_29__*) #1

declare dso_local i32 @qTrace(i8*, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @GET_QINFO_ADDR(%struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
