; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSecondaryMerge.c_tscDestroyLocalReducer.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSecondaryMerge.c_tscDestroyLocalReducer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_18__ = type { i64, i64, %struct.TYPE_17__**, i32, i32, i32, i32, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_12__, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_17__*, %struct.TYPE_17__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_17__*, %struct.TYPE_17__* }

@.str = private unnamed_addr constant [31 x i8] c"%p start to free local reducer\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"%p local reducer has been freed, abort\00", align 1
@TSC_LOCALREDUCE_READY = common dso_local global i32 0, align 4
@TSC_LOCALREDUCE_TOBE_FREED = common dso_local global i32 0, align 4
@TSC_LOCALREDUCE_IN_PROGRESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"%p waiting for delete procedure, status: %d\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"%p already freed or another free function is invoked\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"%p free local reducer finished\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tscDestroyLocalReducer(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %12 = icmp eq %struct.TYPE_15__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %203

14:                                               ; preds = %1
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %16 = call i32 (i8*, %struct.TYPE_15__*, ...) @tscTrace(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__* %15)
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %3, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %25 = call i32 (i8*, %struct.TYPE_15__*, ...) @tscTrace(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_15__* %24)
  br label %203

26:                                               ; preds = %14
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  store %struct.TYPE_16__* %28, %struct.TYPE_16__** %4, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = call i64 @atomic_exchange_ptr(i32** %30, i32* null)
  %32 = inttoptr i64 %31 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %32, %struct.TYPE_18__** %5, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %34 = icmp ne %struct.TYPE_18__* %33, null
  br i1 %34, label %35, label %197

35:                                               ; preds = %26
  store i64 0, i64* %6, align 8
  br label %36

36:                                               ; preds = %44, %35
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 17
  %39 = load i32, i32* @TSC_LOCALREDUCE_READY, align 4
  %40 = load i32, i32* @TSC_LOCALREDUCE_TOBE_FREED, align 4
  %41 = call i64 @atomic_val_compare_exchange_32(i32* %38, i32 %39, i32 %40)
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* @TSC_LOCALREDUCE_IN_PROGRESS, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = call i32 @taosMsleep(i32 100)
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i32 (i8*, %struct.TYPE_15__*, ...) @tscTrace(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_15__* %46, i64 %47)
  br label %36

49:                                               ; preds = %36
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 16
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %52, align 8
  %54 = call i32 @tfree(%struct.TYPE_17__* %53)
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 16
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %57, align 8
  %59 = call i32 @tfree(%struct.TYPE_17__* %58)
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 15
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %61, align 8
  %63 = icmp ne %struct.TYPE_17__* %62, null
  br i1 %63, label %64, label %89

64:                                               ; preds = %49
  store i64 0, i64* %7, align 8
  br label %65

65:                                               ; preds = %81, %64
  %66 = load i64, i64* %7, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ult i64 %66, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %65
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 15
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %74, align 8
  %76 = load i64, i64* %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i64 %76
  store %struct.TYPE_17__* %77, %struct.TYPE_17__** %8, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 2
  %80 = call i32 @tVariantDestroy(i32* %79)
  br label %81

81:                                               ; preds = %72
  %82 = load i64, i64* %7, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %7, align 8
  br label %65

84:                                               ; preds = %65
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 15
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %86, align 8
  %88 = call i32 @tfree(%struct.TYPE_17__* %87)
  br label %89

89:                                               ; preds = %84, %49
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 14
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %91, align 8
  %93 = call i32 @tfree(%struct.TYPE_17__* %92)
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 13
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %95, align 8
  %97 = call i32 @tfree(%struct.TYPE_17__* %96)
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 12
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %99, align 8
  %101 = call i32 @tfree(%struct.TYPE_17__* %100)
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 11
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %103, align 8
  %105 = icmp ne %struct.TYPE_17__* %104, null
  br i1 %105, label %106, label %131

106:                                              ; preds = %89
  store i64 0, i64* %9, align 8
  br label %107

107:                                              ; preds = %123, %106
  %108 = load i64, i64* %9, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ult i64 %108, %112
  br i1 %113, label %114, label %126

114:                                              ; preds = %107
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 11
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %116, align 8
  %118 = load i64, i64* %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %120, align 8
  %122 = call i32 @tfree(%struct.TYPE_17__* %121)
  br label %123

123:                                              ; preds = %114
  %124 = load i64, i64* %9, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %9, align 8
  br label %107

126:                                              ; preds = %107
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 11
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %128, align 8
  %130 = call i32 @tfree(%struct.TYPE_17__* %129)
  br label %131

131:                                              ; preds = %126, %89
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 10
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %133, align 8
  %135 = icmp ne %struct.TYPE_17__* %134, null
  br i1 %135, label %136, label %147

136:                                              ; preds = %131
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 10
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %140, align 8
  %142 = call i32 @tfree(%struct.TYPE_17__* %141)
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 10
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %144, align 8
  %146 = call i32 @tfree(%struct.TYPE_17__* %145)
  br label %147

147:                                              ; preds = %136, %131
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 9
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %149, align 8
  %151 = call i32 @tfree(%struct.TYPE_17__* %150)
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 8
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %153, align 8
  %155 = call i32 @tfree(%struct.TYPE_17__* %154)
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 7
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %157, align 8
  %159 = call i32 @tfree(%struct.TYPE_17__* %158)
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @tscLocalReducerEnvDestroy(i32 %162, i32 %165, i32 %168, i32 %171)
  store i64 0, i64* %10, align 8
  br label %173

173:                                              ; preds = %187, %147
  %174 = load i64, i64* %10, align 8
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp ult i64 %174, %177
  br i1 %178, label %179, label %190

179:                                              ; preds = %173
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 2
  %182 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %181, align 8
  %183 = load i64, i64* %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %182, i64 %183
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %184, align 8
  %186 = call i32 @tfree(%struct.TYPE_17__* %185)
  br label %187

187:                                              ; preds = %179
  %188 = load i64, i64* %10, align 8
  %189 = add i64 %188, 1
  store i64 %189, i64* %10, align 8
  br label %173

190:                                              ; preds = %173
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 0
  store i64 0, i64* %192, align 8
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 1
  store i64 0, i64* %194, align 8
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %196 = call i32 @free(%struct.TYPE_18__* %195)
  br label %200

197:                                              ; preds = %26
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %199 = call i32 (i8*, %struct.TYPE_15__*, ...) @tscTrace(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_15__* %198)
  br label %200

200:                                              ; preds = %197, %190
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %202 = call i32 (i8*, %struct.TYPE_15__*, ...) @tscTrace(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_15__* %201)
  br label %203

203:                                              ; preds = %200, %23, %13
  ret void
}

declare dso_local i32 @tscTrace(i8*, %struct.TYPE_15__*, ...) #1

declare dso_local i64 @atomic_exchange_ptr(i32**, i32*) #1

declare dso_local i64 @atomic_val_compare_exchange_32(i32*, i32, i32) #1

declare dso_local i32 @taosMsleep(i32) #1

declare dso_local i32 @tfree(%struct.TYPE_17__*) #1

declare dso_local i32 @tVariantDestroy(i32*) #1

declare dso_local i32 @tscLocalReducerEnvDestroy(i32, i32, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
