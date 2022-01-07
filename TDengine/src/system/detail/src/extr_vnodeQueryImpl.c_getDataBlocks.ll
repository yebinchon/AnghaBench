; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_getDataBlocks.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_getDataBlocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_19__*, %struct.TYPE_18__* }
%struct.TYPE_19__ = type { i64, i32, i32 }
%struct.TYPE_18__ = type { i64, i64, %struct.TYPE_16__*, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, i64, i32, i32 }
%struct.TYPE_14__ = type { i64, i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i32*, i8**, i64, i64, %struct.TYPE_16__* }

@TSDB_FUNC_ARITHM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_17__*, i8*, %struct.TYPE_22__*, i64, i64, i32)* @getDataBlocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getDataBlocks(%struct.TYPE_17__* %0, i8* %1, %struct.TYPE_22__* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_20__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_21__*, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  store %struct.TYPE_18__* %25, %struct.TYPE_18__** %13, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  store %struct.TYPE_19__* %28, %struct.TYPE_19__** %14, align 8
  store i8* null, i8** %15, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %16, align 8
  %37 = load i64, i64* %16, align 8
  %38 = load i64, i64* @TSDB_FUNC_ARITHM, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %158

40:                                               ; preds = %6
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i64 %44
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 4
  store %struct.TYPE_16__* %45, %struct.TYPE_16__** %47, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %49 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_18__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %40
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %66

57:                                               ; preds = %40
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %11, align 8
  %62 = sub i64 %61, 1
  %63 = sub i64 %60, %62
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %57, %51
  store i64 0, i64* %17, align 8
  br label %67

67:                                               ; preds = %147, %66
  %68 = load i64, i64* %17, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ult i64 %68, %71
  br i1 %72, label %73, label %150

73:                                               ; preds = %67
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = load i64, i64* %17, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  br label %92

84:                                               ; preds = %73
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = load i64, i64* %17, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  br label %92

92:                                               ; preds = %84, %76
  %93 = phi i64 [ %83, %76 ], [ %91, %84 ]
  store i64 %93, i64* %18, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  %97 = load i64, i64* %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 2
  store %struct.TYPE_20__* %99, %struct.TYPE_20__** %19, align 8
  %100 = load i32, i32* %12, align 4
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = load i64, i64* %18, align 8
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %114, align 8
  %116 = load i64, i64* %17, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i8* @doGetDataBlocks(i32 %100, %struct.TYPE_17__* %101, i8* %102, i64 %103, i32 %106, i32 %109, i32 %112, i64 %119)
  store i8* %120, i8** %20, align 8
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i64, i64* %17, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32 %123, i32* %128, align 4
  %129 = load i8*, i8** %20, align 8
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i64, i64* %17, align 8
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = mul i64 %132, %139
  %141 = getelementptr inbounds i8, i8* %129, i64 %140
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 1
  %144 = load i8**, i8*** %143, align 8
  %145 = load i64, i64* %17, align 8
  %146 = getelementptr inbounds i8*, i8** %144, i64 %145
  store i8* %141, i8** %146, align 8
  br label %147

147:                                              ; preds = %92
  %148 = load i64, i64* %17, align 8
  %149 = add i64 %148, 1
  store i64 %149, i64* %17, align 8
  br label %67

150:                                              ; preds = %67
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 2
  store i64 %153, i64* %155, align 8
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 3
  store i64 0, i64* %157, align 8
  br label %207

158:                                              ; preds = %6
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %160, align 8
  %162 = load i64, i64* %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 1
  store %struct.TYPE_21__* %165, %struct.TYPE_21__** %21, align 8
  %166 = load i32, i32* %12, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %158
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  br label %176

172:                                              ; preds = %158
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  br label %176

176:                                              ; preds = %172, %168
  %177 = phi i64 [ %171, %168 ], [ %175, %172 ]
  store i64 %177, i64* %22, align 8
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = call i64 @TSDB_COL_IS_TAG(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %176
  store i8* null, i8** %15, align 8
  br label %206

184:                                              ; preds = %176
  %185 = load i32, i32* %12, align 4
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %187 = load i8*, i8** %8, align 8
  %188 = load i64, i64* %22, align 8
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %193 = load i64, i64* %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %198 = load i64, i64* %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = call i8* @doGetDataBlocks(i32 %185, %struct.TYPE_17__* %186, i8* %187, i64 %188, i32 %191, i32 %196, i32 %201, i64 %204)
  store i8* %205, i8** %15, align 8
  br label %206

206:                                              ; preds = %184, %183
  br label %207

207:                                              ; preds = %206, %150
  %208 = load i8*, i8** %15, align 8
  ret i8* %208
}

declare dso_local i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_18__*) #1

declare dso_local i8* @doGetDataBlocks(i32, %struct.TYPE_17__*, i8*, i64, i32, i32, i32, i64) #1

declare dso_local i64 @TSDB_COL_IS_TAG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
