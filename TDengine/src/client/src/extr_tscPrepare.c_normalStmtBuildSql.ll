; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscPrepare.c_normalStmtBuildSql.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscPrepare.c_normalStmtBuildSql.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, %struct.TYPE_17__*, %struct.TYPE_20__* }
%struct.TYPE_17__ = type { i32, i8*, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_18__*)* @normalStmtBuildSql to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @normalStmtBuildSql(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_19__, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  store %struct.TYPE_21__* %12, %struct.TYPE_21__** %4, align 8
  %13 = bitcast %struct.TYPE_19__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 4, i1 false)
  %14 = call i64 @taosStringBuilderSetJmp(%struct.TYPE_19__* %5)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 @taosStringBuilderDestroy(%struct.TYPE_19__* %5)
  store i8* null, i8** %2, align 8
  br label %115

18:                                               ; preds = %1
  %19 = call i32 @taosStringBuilderEnsureCapacity(%struct.TYPE_19__* %5, i32 4096)
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %20

20:                                               ; preds = %110, %18
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %26, label %113

26:                                               ; preds = %20
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i64 %30
  store %struct.TYPE_20__* %31, %struct.TYPE_20__** %8, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %26
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @taosStringBuilderAppendStringLen(%struct.TYPE_19__* %5, i32 %39, i32 %42)
  br label %110

44:                                               ; preds = %26
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i64 %48
  store %struct.TYPE_17__* %50, %struct.TYPE_17__** %9, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %107 [
    i32 130, label %54
    i32 135, label %56
    i32 128, label %56
    i32 129, label %56
    i32 132, label %56
    i32 137, label %56
    i32 133, label %61
    i32 134, label %61
    i32 136, label %66
    i32 131, label %97
  ]

54:                                               ; preds = %44
  %55 = call i32 @taosStringBuilderAppendNull(%struct.TYPE_19__* %5)
  br label %109

56:                                               ; preds = %44, %44, %44, %44, %44
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @taosStringBuilderAppendInteger(%struct.TYPE_19__* %5, i32 %59)
  br label %109

61:                                               ; preds = %44, %44
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @taosStringBuilderAppendDouble(%struct.TYPE_19__* %5, i32 %64)
  br label %109

66:                                               ; preds = %44
  %67 = call i32 @taosStringBuilderAppendChar(%struct.TYPE_19__* %5, i8 signext 39)
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %10, align 8
  br label %71

71:                                               ; preds = %92, %66
  %72 = load i8*, i8** %10, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %71
  %77 = load i8*, i8** %10, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 39
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load i8*, i8** %10, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 34
  br i1 %85, label %86, label %88

86:                                               ; preds = %81, %76
  %87 = call i32 @taosStringBuilderAppendChar(%struct.TYPE_19__* %5, i8 signext 92)
  br label %88

88:                                               ; preds = %86, %81
  %89 = load i8*, i8** %10, align 8
  %90 = load i8, i8* %89, align 1
  %91 = call i32 @taosStringBuilderAppendChar(%struct.TYPE_19__* %5, i8 signext %90)
  br label %92

92:                                               ; preds = %88
  %93 = load i8*, i8** %10, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %10, align 8
  br label %71

95:                                               ; preds = %71
  %96 = call i32 @taosStringBuilderAppendChar(%struct.TYPE_19__* %5, i8 signext 39)
  br label %109

97:                                               ; preds = %44
  %98 = call i32 @taosStringBuilderAppendChar(%struct.TYPE_19__* %5, i8 signext 39)
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @taosStringBuilderAppend(%struct.TYPE_19__* %5, i32 %101, i32 %104)
  %106 = call i32 @taosStringBuilderAppendChar(%struct.TYPE_19__* %5, i8 signext 39)
  br label %109

107:                                              ; preds = %44
  %108 = call i32 @assert(i32 0)
  br label %109

109:                                              ; preds = %107, %97, %95, %61, %56, %54
  br label %110

110:                                              ; preds = %109, %36
  %111 = load i64, i64* %7, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %7, align 8
  br label %20

113:                                              ; preds = %20
  %114 = call i8* @taosStringBuilderGetResult(%struct.TYPE_19__* %5, i32* null)
  store i8* %114, i8** %2, align 8
  br label %115

115:                                              ; preds = %113, %16
  %116 = load i8*, i8** %2, align 8
  ret i8* %116
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @taosStringBuilderSetJmp(%struct.TYPE_19__*) #2

declare dso_local i32 @taosStringBuilderDestroy(%struct.TYPE_19__*) #2

declare dso_local i32 @taosStringBuilderEnsureCapacity(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @taosStringBuilderAppendStringLen(%struct.TYPE_19__*, i32, i32) #2

declare dso_local i32 @taosStringBuilderAppendNull(%struct.TYPE_19__*) #2

declare dso_local i32 @taosStringBuilderAppendInteger(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @taosStringBuilderAppendDouble(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @taosStringBuilderAppendChar(%struct.TYPE_19__*, i8 signext) #2

declare dso_local i32 @taosStringBuilderAppend(%struct.TYPE_19__*, i32, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i8* @taosStringBuilderGetResult(%struct.TYPE_19__*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
