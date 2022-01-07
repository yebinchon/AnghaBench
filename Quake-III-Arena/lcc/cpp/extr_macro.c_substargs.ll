; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/cpp/extr_macro.c_substargs.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/cpp/extr_macro.c_substargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }

@SHARP = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"# not followed by macro parameter\00", align 1
@NAME = common dso_local global i64 0, align 8
@DSHARP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"<macro>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @substargs(i32* %0, %struct.TYPE_14__* %1, %struct.TYPE_14__** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__**, align 8
  %7 = alloca %struct.TYPE_14__, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_14__** %2, %struct.TYPE_14__*** %6, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %15, align 8
  br label %16

16:                                               ; preds = %135, %134, %49, %46, %3
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %23 = icmp ult %struct.TYPE_15__* %19, %22
  br i1 %23, label %24, label %140

24:                                               ; preds = %16
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SHARP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %72

32:                                               ; preds = %24
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  store %struct.TYPE_15__* %35, %struct.TYPE_15__** %8, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i64 1
  store %struct.TYPE_15__* %39, %struct.TYPE_15__** %37, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  %44 = call i32 @lookuparg(i32* %40, %struct.TYPE_15__* %43)
  store i32 %44, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %32
  %47 = load i32, i32* @ERROR, align 4
  %48 = call i32 @error(i32 %47, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %16

49:                                               ; preds = %32
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %54 = ptrtoint %struct.TYPE_15__* %52 to i64
  %55 = ptrtoint %struct.TYPE_15__* %53 to i64
  %56 = sub i64 %54, %55
  %57 = sdiv exact i64 %56, 8
  %58 = add nsw i64 1, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %9, align 4
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  store %struct.TYPE_15__* %60, %struct.TYPE_15__** %62, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %65, i64 %67
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %68, align 8
  %70 = call %struct.TYPE_14__* @stringify(%struct.TYPE_14__* %69)
  %71 = call i32 @insertrow(%struct.TYPE_14__* %63, i32 %64, %struct.TYPE_14__* %70)
  br label %16

72:                                               ; preds = %24
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @NAME, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %135

80:                                               ; preds = %72
  %81 = load i32*, i32** %4, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %83, align 8
  %85 = call i32 @lookuparg(i32* %81, %struct.TYPE_15__* %84)
  store i32 %85, i32* %10, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %135

87:                                               ; preds = %80
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i64 1
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @DSHARP, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %113, label %96

96:                                               ; preds = %87
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %98, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %101, align 8
  %103 = icmp ne %struct.TYPE_15__* %99, %102
  br i1 %103, label %104, label %121

104:                                              ; preds = %96
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i64 -1
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @DSHARP, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %104, %87
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %115 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %115, i64 %117
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %118, align 8
  %120 = call i32 @insertrow(%struct.TYPE_14__* %114, i32 1, %struct.TYPE_14__* %119)
  br label %134

121:                                              ; preds = %104, %96
  %122 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %122, i64 %124
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %125, align 8
  %127 = call i32 @copytokenrow(%struct.TYPE_14__* %7, %struct.TYPE_14__* %126)
  %128 = call i32 @expandrow(%struct.TYPE_14__* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %130 = call i32 @insertrow(%struct.TYPE_14__* %129, i32 1, %struct.TYPE_14__* %7)
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %131, align 8
  %133 = call i32 @dofree(%struct.TYPE_15__* %132)
  br label %134

134:                                              ; preds = %121, %113
  br label %16

135:                                              ; preds = %80, %72
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 1
  store %struct.TYPE_15__* %139, %struct.TYPE_15__** %137, align 8
  br label %16

140:                                              ; preds = %16
  ret void
}

declare dso_local i32 @lookuparg(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @insertrow(%struct.TYPE_14__*, i32, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @stringify(%struct.TYPE_14__*) #1

declare dso_local i32 @copytokenrow(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @expandrow(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @dofree(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
