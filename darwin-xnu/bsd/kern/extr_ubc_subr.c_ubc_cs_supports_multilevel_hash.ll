; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_ubc_cs_supports_multilevel_hash.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_ubc_cs_supports_multilevel_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_blob = type { i32, %struct.TYPE_4__*, i32*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@CS_SUPPORTSSCATTER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_blob*)* @ubc_cs_supports_multilevel_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubc_cs_supports_multilevel_hash(%struct.cs_blob* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cs_blob*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cs_blob* %0, %struct.cs_blob** %3, align 8
  %8 = load %struct.cs_blob*, %struct.cs_blob** %3, align 8
  %9 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.cs_blob*, %struct.cs_blob** %3, align 8
  %14 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12, %1
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %2, align 4
  br label %118

19:                                               ; preds = %12
  %20 = load i32, i32* @PAGE_SHIFT, align 4
  %21 = load %struct.cs_blob*, %struct.cs_blob** %3, align 8
  %22 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sle i32 %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %2, align 4
  br label %118

27:                                               ; preds = %19
  %28 = load %struct.cs_blob*, %struct.cs_blob** %3, align 8
  %29 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %4, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ntohl(i32 %33)
  %35 = load i32, i32* @PAGE_MASK, align 4
  %36 = load %struct.cs_blob*, %struct.cs_blob** %3, align 8
  %37 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = ashr i32 %35, %38
  %40 = and i32 %34, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %27
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %2, align 4
  br label %118

44:                                               ; preds = %27
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ntohl(i32 %47)
  %49 = load i32, i32* @CS_SUPPORTSSCATTER, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %106

51:                                               ; preds = %44
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ntohl(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %106

57:                                               ; preds = %51
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = bitcast %struct.TYPE_4__* %58 to i8*
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ntohl(i32 %62)
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %59, i64 %64
  %66 = bitcast i8* %65 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %66, %struct.TYPE_3__** %5, align 8
  br label %67

67:                                               ; preds = %104, %57
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ntohl(i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ntohl(i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  br label %105

79:                                               ; preds = %67
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @PAGE_MASK, align 4
  %82 = load %struct.cs_blob*, %struct.cs_blob** %3, align 8
  %83 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = ashr i32 %81, %84
  %86 = and i32 %80, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = load i32, i32* @FALSE, align 4
  store i32 %89, i32* %2, align 4
  br label %118

90:                                               ; preds = %79
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @PAGE_MASK, align 4
  %93 = load %struct.cs_blob*, %struct.cs_blob** %3, align 8
  %94 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = ashr i32 %92, %95
  %97 = and i32 %91, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %90
  %100 = load i32, i32* @FALSE, align 4
  store i32 %100, i32* %2, align 4
  br label %118

101:                                              ; preds = %90
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 1
  store %struct.TYPE_3__* %103, %struct.TYPE_3__** %5, align 8
  br label %104

104:                                              ; preds = %101
  br i1 true, label %67, label %105

105:                                              ; preds = %104, %78
  br label %106

106:                                              ; preds = %105, %51, %44
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @ntohl(i32 %109)
  %111 = load i32, i32* @PAGE_MASK, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %106
  %115 = load i32, i32* @FALSE, align 4
  store i32 %115, i32* %2, align 4
  br label %118

116:                                              ; preds = %106
  %117 = load i32, i32* @TRUE, align 4
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %116, %114, %99, %88, %42, %25, %17
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
