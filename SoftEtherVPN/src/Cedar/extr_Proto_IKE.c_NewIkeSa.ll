; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_NewIkeSa.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_NewIkeSa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i64, i32, i32, i32, i64, i32*, i64 }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_19__ = type { i32, i32, i32, %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_15__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [63 x i8] c"New IKE SA (Mode = %u): %I64u <--> %I64u (%s %s %s(%u) %u %u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"LI_NEW_IKE_SA\00", align 1
@IKE_SA_MAIN_MODE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"LI_TAG_MAINMODE\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"LI_TAG_AGGRESSIVE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @NewIkeSa(%struct.TYPE_18__* %0, i32* %1, i64 %2, i64 %3, %struct.TYPE_19__* %4) #0 {
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_19__* %4, %struct.TYPE_19__** %11, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %14 = icmp eq %struct.TYPE_18__* %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %5
  %16 = load i32*, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* %9, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %23 = icmp eq %struct.TYPE_19__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18, %15, %5
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %6, align 8
  br label %133

25:                                               ; preds = %21
  %26 = call %struct.TYPE_20__* @ZeroMalloc(i32 56)
  store %struct.TYPE_20__* %26, %struct.TYPE_20__** %12, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %28, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 7
  store i64 %30, i64* %32, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 6
  store i32* %33, i32** %35, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %40 = call i32 @GenerateNewResponserCookie(%struct.TYPE_18__* %39)
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 5
  store i64 %43, i64* %45, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 4
  store i32 %48, i32* %52, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %56 = call i32 @Copy(i32* %54, %struct.TYPE_19__* %55, i32 40)
  %57 = load i64, i64* %10, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 5
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @Debug(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %57, i64 %60, i32 %63, i32 %68, i32 %73, i32 %78, i32 %81, i32 %84, i32 %87)
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %91 = load i64, i64* %10, align 8
  %92 = load i64, i64* @IKE_SA_MAIN_MODE, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %25
  %95 = call i32 @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %98

96:                                               ; preds = %25
  %97 = call i32 @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i32 [ %95, %94 ], [ %97, %96 ]
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 5
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 4
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = mul nsw i32 %123, 8
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @IPsecLog(%struct.TYPE_18__* %89, i32* null, %struct.TYPE_20__* %90, i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %99, i64 %102, i32 %105, i32 %110, i32 %115, i32 %120, i32 %124, i32 %127, i32 %130)
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  store %struct.TYPE_20__* %132, %struct.TYPE_20__** %6, align 8
  br label %133

133:                                              ; preds = %98, %24
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  ret %struct.TYPE_20__* %134
}

declare dso_local %struct.TYPE_20__* @ZeroMalloc(i32) #1

declare dso_local i32 @GenerateNewResponserCookie(%struct.TYPE_18__*) #1

declare dso_local i32 @Copy(i32*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @Debug(i8*, i64, i64, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @IPsecLog(%struct.TYPE_18__*, i32*, %struct.TYPE_20__*, i32*, i8*, i32, i64, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @_UU(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
