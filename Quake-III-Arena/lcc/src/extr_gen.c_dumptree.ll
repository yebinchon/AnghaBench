; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_gen.c_dumptree.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_gen.c_dumptree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_5__**, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }

@VREG = common dso_local global i64 0, align 8
@P = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"VREGP(%s)\00", align 1
@LOAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"LOAD(\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s(\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@B = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c", \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @dumptree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dumptree(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @VREG, align 8
  %7 = load i64, i64* @P, align 8
  %8 = add nsw i64 %6, %7
  %9 = icmp eq i64 %5, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %13, i64 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = load i32, i32* @stderr, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %21, i64 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32, i8*, ...) @fprint(i32 %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %126

27:                                               ; preds = %10, %1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @generic(i64 %30)
  %32 = load i32, i32* @LOAD, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %27
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 (i32, i8*, ...) @fprint(i32 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %39, i64 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  call void @dumptree(%struct.TYPE_5__* %41)
  %42 = load i32, i32* @stderr, align 4
  %43 = call i32 (i32, i8*, ...) @fprint(i32 %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %126

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* @stderr, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @opname(i64 %49)
  %51 = call i32 (i32, i8*, ...) @fprint(i32 %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @generic(i64 %54)
  switch i32 %55, label %121 [
    i32 149, label %56
    i32 138, label %56
    i32 158, label %56
    i32 159, label %56
    i32 157, label %56
    i32 130, label %74
    i32 148, label %88
    i32 147, label %88
    i32 146, label %88
    i32 145, label %88
    i32 139, label %88
    i32 156, label %88
    i32 153, label %88
    i32 131, label %88
    i32 140, label %88
    i32 150, label %94
    i32 143, label %108
    i32 132, label %108
    i32 141, label %108
    i32 142, label %108
    i32 137, label %108
    i32 135, label %108
    i32 155, label %108
    i32 152, label %108
    i32 154, label %108
    i32 151, label %108
    i32 129, label %108
    i32 136, label %108
    i32 160, label %108
    i32 128, label %108
    i32 144, label %108
    i32 133, label %108
    i32 134, label %108
  ]

56:                                               ; preds = %45, %45, %45, %45, %45
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %59, i64 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = icmp ne %struct.TYPE_4__* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %56
  %64 = load i32, i32* @stderr, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %67, i64 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, ...) @fprint(i32 %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %63, %56
  br label %123

74:                                               ; preds = %45
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %77, i64 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = icmp ne %struct.TYPE_5__* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %84, i64 0
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  call void @dumptree(%struct.TYPE_5__* %86)
  br label %87

87:                                               ; preds = %81, %74
  br label %123

88:                                               ; preds = %45, %45, %45, %45, %45, %45, %45, %45, %45
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %91, i64 0
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  call void @dumptree(%struct.TYPE_5__* %93)
  br label %123

94:                                               ; preds = %45
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @optype(i64 %97)
  %99 = load i32, i32* @B, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %94
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %104, i64 0
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  call void @dumptree(%struct.TYPE_5__* %106)
  br label %123

107:                                              ; preds = %94
  br label %108

108:                                              ; preds = %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %107
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %111, i64 0
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  call void @dumptree(%struct.TYPE_5__* %113)
  %114 = load i32, i32* @stderr, align 4
  %115 = call i32 (i32, i8*, ...) @fprint(i32 %114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %118, i64 1
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  call void @dumptree(%struct.TYPE_5__* %120)
  br label %123

121:                                              ; preds = %45
  %122 = call i32 @assert(i32 0)
  br label %123

123:                                              ; preds = %121, %108, %101, %88, %87, %73
  %124 = load i32, i32* @stderr, align 4
  %125 = call i32 (i32, i8*, ...) @fprint(i32 %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %126

126:                                              ; preds = %123, %34, %17
  ret void
}

declare dso_local i32 @fprint(i32, i8*, ...) #1

declare dso_local i32 @generic(i64) #1

declare dso_local i32 @opname(i64) #1

declare dso_local i32 @optype(i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
