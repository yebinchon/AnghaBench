; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/cpp/extr_macro.c_expand.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/cpp/extr_macro.c_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__*, i32 }

@NARG = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Disagreement in number of macro arguments\00", align 1
@NAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @expand(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %14 = load i32, i32* @NARG, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca %struct.TYPE_18__*, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @copytokenrow(%struct.TYPE_18__* %5, i32 %21)
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %26 = icmp eq %struct.TYPE_18__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %90

28:                                               ; preds = %2
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %30 = call i32 @gatherargs(%struct.TYPE_18__* %29, %struct.TYPE_18__** %18, i32* %7)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 1
  store %struct.TYPE_18__* %37, %struct.TYPE_18__** %35, align 8
  store i32 1, i32* %13, align 4
  br label %152

38:                                               ; preds = %28
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  %43 = call i32 @rowlen(%struct.TYPE_18__* %42)
  %44 = icmp ne i32 %39, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %38
  %46 = load i32, i32* @ERROR, align 4
  %47 = call i32 @error(i32 %46, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %54 = call i8* @newhideset(i32 %52, %struct.TYPE_19__* %53)
  %55 = ptrtoint i8* %54 to i32
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %62, align 8
  %64 = sext i32 %60 to i64
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i64 %64
  store %struct.TYPE_18__* %65, %struct.TYPE_18__** %62, align 8
  store i32 1, i32* %13, align 4
  br label %152

66:                                               ; preds = %38
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %68 = call i32 @substargs(%struct.TYPE_19__* %67, %struct.TYPE_18__* %5, %struct.TYPE_18__** %18)
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %86, %66
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %69
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %18, i64 %75
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %78, align 8
  %80 = call i32 @dofree(%struct.TYPE_18__* %79)
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %18, i64 %82
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %83, align 8
  %85 = call i32 @dofree(%struct.TYPE_18__* %84)
  br label %86

86:                                               ; preds = %73
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %69

89:                                               ; preds = %69
  br label %90

90:                                               ; preds = %89, %27
  %91 = call i32 @doconcat(%struct.TYPE_18__* %5)
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %98 = call i8* @newhideset(i32 %96, %struct.TYPE_19__* %97)
  %99 = ptrtoint i8* %98 to i32
  store i32 %99, i32* %12, align 4
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 2
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %100, align 8
  store %struct.TYPE_18__* %101, %struct.TYPE_18__** %9, align 8
  br label %102

102:                                              ; preds = %132, %90
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 4
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %104, align 8
  %106 = icmp ult %struct.TYPE_18__* %103, %105
  br i1 %106, label %107, label %135

107:                                              ; preds = %102
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @NAME, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %131

113:                                              ; preds = %107
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load i32, i32* %12, align 4
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  br label %130

122:                                              ; preds = %113
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %12, align 4
  %127 = call i32 @unionhideset(i32 %125, i32 %126)
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  br label %130

130:                                              ; preds = %122, %118
  br label %131

131:                                              ; preds = %130, %107
  br label %132

132:                                              ; preds = %131
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 1
  store %struct.TYPE_18__* %134, %struct.TYPE_18__** %9, align 8
  br label %102

135:                                              ; preds = %102
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 2
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 3
  store %struct.TYPE_18__* %137, %struct.TYPE_18__** %138, align 8
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @insertrow(%struct.TYPE_18__* %139, i32 %140, %struct.TYPE_18__* %5)
  %142 = call i32 @rowlen(%struct.TYPE_18__* %5)
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 3
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %144, align 8
  %146 = sext i32 %142 to i64
  %147 = sub i64 0, %146
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i64 %147
  store %struct.TYPE_18__* %148, %struct.TYPE_18__** %144, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 2
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %149, align 8
  %151 = call i32 @dofree(%struct.TYPE_18__* %150)
  store i32 1, i32* %13, align 4
  br label %152

152:                                              ; preds = %135, %45, %33
  %153 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %153)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @copytokenrow(%struct.TYPE_18__*, i32) #2

declare dso_local i32 @gatherargs(%struct.TYPE_18__*, %struct.TYPE_18__**, i32*) #2

declare dso_local i32 @rowlen(%struct.TYPE_18__*) #2

declare dso_local i32 @error(i32, i8*) #2

declare dso_local i8* @newhideset(i32, %struct.TYPE_19__*) #2

declare dso_local i32 @substargs(%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_18__**) #2

declare dso_local i32 @dofree(%struct.TYPE_18__*) #2

declare dso_local i32 @doconcat(%struct.TYPE_18__*) #2

declare dso_local i32 @unionhideset(i32, i32) #2

declare dso_local i32 @insertrow(%struct.TYPE_18__*, i32, %struct.TYPE_18__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
