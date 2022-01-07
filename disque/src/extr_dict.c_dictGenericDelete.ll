; ModuleID = '/home/carl/AnghaBench/disque/src/extr_dict.c_dictGenericDelete.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_dict.c_dictGenericDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32, i32, %struct.TYPE_15__** }
%struct.TYPE_15__ = type { %struct.TYPE_15__*, i32 }

@DICT_ERR = common dso_local global i32 0, align 4
@DICT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*, i32)* @dictGenericDelete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dictGenericDelete(%struct.TYPE_16__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @DICT_ERR, align 4
  store i32 %21, i32* %4, align 4
  br label %133

22:                                               ; preds = %3
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %24 = call i64 @dictIsRehashing(%struct.TYPE_16__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %28 = call i32 @_dictRehashStep(%struct.TYPE_16__* %27)
  br label %29

29:                                               ; preds = %26, %22
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @dictHashKey(%struct.TYPE_16__* %30, i8* %31)
  store i32 %32, i32* %8, align 4
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %128, %29
  %34 = load i32, i32* %12, align 4
  %35 = icmp sle i32 %34, 1
  br i1 %35, label %36, label %131

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %37, %45
  store i32 %46, i32* %9, align 4
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %54, i64 %56
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %57, align 8
  store %struct.TYPE_15__* %58, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %11, align 8
  br label %59

59:                                               ; preds = %117, %36
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %61 = icmp ne %struct.TYPE_15__* %60, null
  br i1 %61, label %62, label %122

62:                                               ; preds = %59
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @dictCompareKeys(%struct.TYPE_16__* %63, i8* %64, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %117

70:                                               ; preds = %62
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %72 = icmp ne %struct.TYPE_15__* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %75, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  store %struct.TYPE_15__* %76, %struct.TYPE_15__** %78, align 8
  br label %94

79:                                               ; preds = %70
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %81, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %90, i64 %92
  store %struct.TYPE_15__* %82, %struct.TYPE_15__** %93, align 8
  br label %94

94:                                               ; preds = %79, %73
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %94
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %100 = call i32 @dictFreeKey(%struct.TYPE_16__* %98, %struct.TYPE_15__* %99)
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %103 = call i32 @dictFreeVal(%struct.TYPE_16__* %101, %struct.TYPE_15__* %102)
  br label %104

104:                                              ; preds = %97, %94
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %106 = call i32 @zfree(%struct.TYPE_15__* %105)
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %113, align 4
  %116 = load i32, i32* @DICT_OK, align 4
  store i32 %116, i32* %4, align 4
  br label %133

117:                                              ; preds = %62
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* %118, %struct.TYPE_15__** %11, align 8
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %120, align 8
  store %struct.TYPE_15__* %121, %struct.TYPE_15__** %10, align 8
  br label %59

122:                                              ; preds = %59
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %124 = call i64 @dictIsRehashing(%struct.TYPE_16__* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  br label %131

127:                                              ; preds = %122
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %12, align 4
  br label %33

131:                                              ; preds = %126, %33
  %132 = load i32, i32* @DICT_ERR, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %131, %104, %20
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i64 @dictIsRehashing(%struct.TYPE_16__*) #1

declare dso_local i32 @_dictRehashStep(%struct.TYPE_16__*) #1

declare dso_local i32 @dictHashKey(%struct.TYPE_16__*, i8*) #1

declare dso_local i64 @dictCompareKeys(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @dictFreeKey(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @dictFreeVal(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @zfree(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
