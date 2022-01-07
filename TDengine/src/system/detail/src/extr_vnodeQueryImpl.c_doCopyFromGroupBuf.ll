; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_doCopyFromGroupBuf.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_doCopyFromGroupBuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_17__*, %struct.TYPE_14__* }
%struct.TYPE_17__ = type { i64, i64, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_15__** }
%struct.TYPE_15__ = type { i64 }

@.str = private unnamed_addr constant [40 x i8] c"QInfo:%p start to copy data to dest buf\00", align 1
@TSQL_SO_ASC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"QInfo:%p done copy data to dst buf\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_19__*, %struct.TYPE_18__*, i64)* @doCopyFromGroupBuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @doCopyFromGroupBuf(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_15__**, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store i64 %2, i64* %6, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 2
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %7, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 1, i64* %11, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %29 = call i32 @GET_QINFO_ADDR(%struct.TYPE_17__* %28)
  %30 = call i32 @dTrace(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %32 = call i64 @getSubsetNumber(%struct.TYPE_19__* %31)
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @TSQL_SO_ASC, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %3
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %10, align 8
  br label %47

40:                                               ; preds = %3
  %41 = load i64, i64* %12, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %41, %44
  %46 = sub nsw i64 %45, 1
  store i64 %46, i64* %10, align 8
  store i64 -1, i64* %11, align 8
  br label %47

47:                                               ; preds = %40, %36
  %48 = load i64, i64* %10, align 8
  store i64 %48, i64* %13, align 8
  br label %49

49:                                               ; preds = %190, %47
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* %12, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i64, i64* %13, align 8
  %55 = icmp sge i64 %54, 0
  br label %56

56:                                               ; preds = %53, %49
  %57 = phi i1 [ false, %49 ], [ %55, %53 ]
  br i1 %57, label %58, label %194

58:                                               ; preds = %56
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %60 = load i64, i64* %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 1
  store i32 0, i32* %67, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %69, align 8
  br label %190

72:                                               ; preds = %58
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %74 = load i64, i64* %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp sge i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp sle i32 %82, 1
  br label %84

84:                                               ; preds = %79, %72
  %85 = phi i1 [ false, %72 ], [ %83, %79 ]
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %89 = load i64, i64* %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %91, align 8
  store %struct.TYPE_15__** %92, %struct.TYPE_15__*** %14, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %94 = load i64, i64* %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = sub nsw i64 %97, %101
  store i64 %102, i64* %15, align 8
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  store i64 %106, i64* %16, align 8
  %107 = load i64, i64* %15, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %9, align 8
  %112 = sub nsw i64 %110, %111
  %113 = icmp sgt i64 %107, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %84
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %9, align 8
  %119 = sub nsw i64 %117, %118
  store i64 %119, i64* %15, align 8
  %120 = load i64, i64* %15, align 8
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %124, %120
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %122, align 8
  br label %134

127:                                              ; preds = %84
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 1
  store i32 0, i32* %129, align 8
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %131, align 8
  br label %134

134:                                              ; preds = %127, %114
  store i64 0, i64* %17, align 8
  br label %135

135:                                              ; preds = %176, %134
  %136 = load i64, i64* %17, align 8
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp slt i64 %136, %139
  br i1 %140, label %141, label %179

141:                                              ; preds = %135
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %143, align 8
  %145 = load i64, i64* %17, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  store i64 %148, i64* %18, align 8
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %150, align 8
  %152 = load i64, i64* %17, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %151, i64 %152
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = load i64, i64* %9, align 8
  %158 = load i64, i64* %18, align 8
  %159 = mul nsw i64 %157, %158
  %160 = getelementptr inbounds i8, i8* %156, i64 %159
  store i8* %160, i8** %19, align 8
  %161 = load i8*, i8** %19, align 8
  %162 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %14, align 8
  %163 = load i64, i64* %17, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %162, i64 %163
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* %16, align 8
  %169 = load i64, i64* %18, align 8
  %170 = mul nsw i64 %168, %169
  %171 = add nsw i64 %167, %170
  %172 = load i64, i64* %18, align 8
  %173 = load i64, i64* %15, align 8
  %174 = mul nsw i64 %172, %173
  %175 = call i32 @memcpy(i8* %161, i64 %171, i64 %174)
  br label %176

176:                                              ; preds = %141
  %177 = load i64, i64* %17, align 8
  %178 = add nsw i64 %177, 1
  store i64 %178, i64* %17, align 8
  br label %135

179:                                              ; preds = %135
  %180 = load i64, i64* %15, align 8
  %181 = load i64, i64* %9, align 8
  %182 = add nsw i64 %181, %180
  store i64 %182, i64* %9, align 8
  %183 = load i64, i64* %9, align 8
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp eq i64 %183, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %179
  br label %194

189:                                              ; preds = %179
  br label %190

190:                                              ; preds = %189, %65
  %191 = load i64, i64* %11, align 8
  %192 = load i64, i64* %13, align 8
  %193 = add nsw i64 %192, %191
  store i64 %193, i64* %13, align 8
  br label %49

194:                                              ; preds = %188, %56
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %197, align 8
  %199 = call i32 @GET_QINFO_ADDR(%struct.TYPE_17__* %198)
  %200 = call i32 @dTrace(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %199)
  %201 = load i64, i64* %9, align 8
  ret i64 %201
}

declare dso_local i32 @dTrace(i8*, i32) #1

declare dso_local i32 @GET_QINFO_ADDR(%struct.TYPE_17__*) #1

declare dso_local i64 @getSubsetNumber(%struct.TYPE_19__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
