; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_adaptive_executor.c_ExtractParametersFromParamList.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_adaptive_executor.c_ExtractParametersFromParamList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32, i64 }

@InvalidOid = common dso_local global i64 0, align 8
@FirstNormalObjectId = common dso_local global i64 0, align 8
@TEXTOID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExtractParametersFromParamList(%struct.TYPE_4__* %0, i64** %1, i8*** %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64**, align 8
  %7 = alloca i8***, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64** %1, i64*** %6, align 8
  store i8*** %2, i8**** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  %20 = trunc i64 %19 to i32
  %21 = call i64 @palloc0(i32 %20)
  %22 = inttoptr i64 %21 to i64*
  %23 = load i64**, i64*** %6, align 8
  store i64* %22, i64** %23, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 8
  %27 = trunc i64 %26 to i32
  %28 = call i64 @palloc0(i32 %27)
  %29 = inttoptr i64 %28 to i8**
  %30 = load i8***, i8**** %7, align 8
  store i8** %29, i8*** %30, align 8
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %109, %4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %112

35:                                               ; preds = %31
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %11, align 8
  %42 = load i64, i64* @InvalidOid, align 8
  store i64 %42, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @FirstNormalObjectId, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %35
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = load i64**, i64*** %6, align 8
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  store i64 0, i64* %56, align 8
  br label %66

57:                                               ; preds = %48, %35
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64**, i64*** %6, align 8
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  store i64 %60, i64* %65, align 8
  br label %66

66:                                               ; preds = %57, %51
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %66
  %72 = load i8***, i8**** %7, align 8
  %73 = load i8**, i8*** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  store i8* null, i8** %76, align 8
  %77 = load i64, i64* @TEXTOID, align 8
  %78 = load i64**, i64*** %6, align 8
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  store i64 %77, i64* %82, align 8
  br label %109

83:                                               ; preds = %66
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load i8***, i8**** %7, align 8
  %90 = load i8**, i8*** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  store i8* null, i8** %93, align 8
  br label %109

94:                                               ; preds = %83
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @getTypeOutputInfo(i64 %97, i64* %12, i32* %13)
  %99 = load i64, i64* %12, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i8* @OidOutputFunctionCall(i64 %99, i32 %102)
  %104 = load i8***, i8**** %7, align 8
  %105 = load i8**, i8*** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  store i8* %103, i8** %108, align 8
  br label %109

109:                                              ; preds = %94, %88, %71
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %31

112:                                              ; preds = %31
  ret void
}

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @getTypeOutputInfo(i64, i64*, i32*) #1

declare dso_local i8* @OidOutputFunctionCall(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
