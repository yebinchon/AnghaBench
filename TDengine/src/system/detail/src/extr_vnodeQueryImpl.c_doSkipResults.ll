; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_doSkipResults.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_doSkipResults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__*, %struct.TYPE_19__* }
%struct.TYPE_16__ = type { i64, i64, i64 }
%struct.TYPE_19__ = type { i64, i64, i64, i64, %struct.TYPE_17__, %struct.TYPE_15__**, %struct.TYPE_14__*, %struct.TYPE_12__, i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32 }

@QUERY_RESBUF_FULL = common dso_local global i32 0, align 4
@TSDB_FUNC_DIFF = common dso_local global i64 0, align 8
@TSDB_FUNC_TOP = common dso_local global i64 0, align 8
@TSDB_FUNC_BOTTOM = common dso_local global i64 0, align 8
@TSDB_KEYSIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @doSkipResults(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  store %struct.TYPE_19__* %13, %struct.TYPE_19__** %3, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %1
  br label %215

25:                                               ; preds = %18
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sle i64 %28, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %25
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %41, %37
  store i64 %42, i64* %40, align 8
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %51 = call i32 @resetCtxOutputBuf(%struct.TYPE_18__* %50)
  %52 = load i32, i32* @QUERY_RESBUF_FULL, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %215

58:                                               ; preds = %25
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %4, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %5, align 8
  %66 = load i64, i64* %4, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = sub i64 %69, %66
  store i64 %70, i64* %68, align 8
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 7
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @GET_FORWARD_DIRECTION_FACTOR(i32 %74)
  store i64 %75, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %76

76:                                               ; preds = %208, %58
  %77 = load i64, i64* %7, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp ult i64 %77, %80
  br i1 %81, label %82, label %211

82:                                               ; preds = %76
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 6
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = load i64, i64* %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %8, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %92, align 8
  %94 = load i64, i64* %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %9, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %99 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_19__* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %128

101:                                              ; preds = %82
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 5
  %104 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %103, align 8
  %105 = load i64, i64* %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %104, i64 %105
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 5
  %112 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %111, align 8
  %113 = load i64, i64* %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %112, i64 %113
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %9, align 8
  %119 = load i64, i64* %4, align 8
  %120 = mul i64 %118, %119
  %121 = add i64 %117, %120
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %9, align 8
  %126 = mul i64 %124, %125
  %127 = call i32 @memmove(i64 %109, i64 %121, i64 %126)
  br label %168

128:                                              ; preds = %82
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %10, align 8
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 5
  %134 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %133, align 8
  %135 = load i64, i64* %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %134, i64 %135
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %10, align 8
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = sub i64 %140, %143
  %145 = load i64, i64* %9, align 8
  %146 = mul i64 %144, %145
  %147 = add i64 %139, %146
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 5
  %150 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %149, align 8
  %151 = load i64, i64* %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %150, i64 %151
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* %10, align 8
  %157 = load i64, i64* %5, align 8
  %158 = sub i64 %156, %157
  %159 = load i64, i64* %9, align 8
  %160 = mul i64 %158, %159
  %161 = add i64 %155, %160
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* %9, align 8
  %166 = mul i64 %164, %165
  %167 = call i32 @memmove(i64 %147, i64 %161, i64 %166)
  br label %168

168:                                              ; preds = %128, %101
  %169 = load i64, i64* %9, align 8
  %170 = load i64, i64* %4, align 8
  %171 = mul i64 %169, %170
  %172 = load i64, i64* %6, align 8
  %173 = mul i64 %171, %172
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %175, align 8
  %177 = load i64, i64* %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = sub i64 %180, %173
  store i64 %181, i64* %179, align 8
  %182 = load i64, i64* %8, align 8
  %183 = load i64, i64* @TSDB_FUNC_DIFF, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %193, label %185

185:                                              ; preds = %168
  %186 = load i64, i64* %8, align 8
  %187 = load i64, i64* @TSDB_FUNC_TOP, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %193, label %189

189:                                              ; preds = %185
  %190 = load i64, i64* %8, align 8
  %191 = load i64, i64* @TSDB_FUNC_BOTTOM, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %207

193:                                              ; preds = %189, %185, %168
  %194 = load i64, i64* @TSDB_KEYSIZE, align 8
  %195 = load i64, i64* %4, align 8
  %196 = mul i64 %194, %195
  %197 = load i64, i64* %6, align 8
  %198 = mul i64 %196, %197
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %200, align 8
  %202 = load i64, i64* %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = sub i64 %205, %198
  store i64 %206, i64* %204, align 8
  br label %207

207:                                              ; preds = %193, %189
  br label %208

208:                                              ; preds = %207
  %209 = load i64, i64* %7, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* %7, align 8
  br label %76

211:                                              ; preds = %76
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 4
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 0
  store i64 0, i64* %214, align 8
  br label %215

215:                                              ; preds = %24, %211, %34
  ret void
}

declare dso_local i32 @resetCtxOutputBuf(%struct.TYPE_18__*) #1

declare dso_local i64 @GET_FORWARD_DIRECTION_FACTOR(i32) #1

declare dso_local i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_19__*) #1

declare dso_local i32 @memmove(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
