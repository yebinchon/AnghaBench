; ModuleID = '/home/carl/AnghaBench/Cinder/src/libtess2/extr_sweep.c_AddRightEdges.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/libtess2/extr_sweep.c_AddRightEdges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_28__ = type { i64, i8*, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_27__*, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64, i64, i32, %struct.TYPE_27__*, i32, i32 }

@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*, %struct.TYPE_28__*, %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*, i32)* @AddRightEdges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AddRightEdges(%struct.TYPE_26__* %0, %struct.TYPE_28__* %1, %struct.TYPE_27__* %2, %struct.TYPE_27__* %3, %struct.TYPE_27__* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca %struct.TYPE_28__*, align 8
  %15 = alloca %struct.TYPE_27__*, align 8
  %16 = alloca %struct.TYPE_27__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %7, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %8, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %9, align 8
  store %struct.TYPE_27__* %3, %struct.TYPE_27__** %10, align 8
  store %struct.TYPE_27__* %4, %struct.TYPE_27__** %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = load i8*, i8** @TRUE, align 8
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %17, align 4
  %20 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  store %struct.TYPE_27__* %20, %struct.TYPE_27__** %15, align 8
  br label %21

21:                                               ; preds = %39, %6
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %23 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %26 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @VertLeq(i64 %24, i32 %27)
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @AddRegionBelow(%struct.TYPE_26__* %30, %struct.TYPE_28__* %31, i32 %34)
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %37, align 8
  store %struct.TYPE_27__* %38, %struct.TYPE_27__** %15, align 8
  br label %39

39:                                               ; preds = %21
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %42 = icmp ne %struct.TYPE_27__* %40, %41
  br i1 %42, label %21, label %43

43:                                               ; preds = %39
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %45 = icmp eq %struct.TYPE_27__* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %48 = call %struct.TYPE_28__* @RegionBelow(%struct.TYPE_28__* %47)
  %49 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %51, align 8
  store %struct.TYPE_27__* %52, %struct.TYPE_27__** %11, align 8
  br label %53

53:                                               ; preds = %46, %43
  %54 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  store %struct.TYPE_28__* %54, %struct.TYPE_28__** %14, align 8
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  store %struct.TYPE_27__* %55, %struct.TYPE_27__** %16, align 8
  br label %56

56:                                               ; preds = %155, %53
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %58 = call %struct.TYPE_28__* @RegionBelow(%struct.TYPE_28__* %57)
  store %struct.TYPE_28__* %58, %struct.TYPE_28__** %13, align 8
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %62, align 8
  store %struct.TYPE_27__* %63, %struct.TYPE_27__** %15, align 8
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %56
  br label %159

72:                                               ; preds = %56
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %74, align 8
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %77 = icmp ne %struct.TYPE_27__* %75, %76
  br i1 %77, label %78, label %109

78:                                               ; preds = %72
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %86 = call i32 @tessMeshSplice(i32 %81, i32 %84, %struct.TYPE_27__* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %78
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @longjmp(i32 %91, i32 1)
  br label %93

93:                                               ; preds = %88, %78
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %101 = call i32 @tessMeshSplice(i32 %96, i32 %99, %struct.TYPE_27__* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %93
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @longjmp(i32 %106, i32 1)
  br label %108

108:                                              ; preds = %103, %93
  br label %109

109:                                              ; preds = %108, %72
  %110 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %114 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = sub nsw i64 %112, %115
  %117 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %120 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @IsWindingInside(%struct.TYPE_26__* %119, i64 %122)
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  %126 = load i8*, i8** @TRUE, align 8
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %127, i32 0, i32 1
  store i8* %126, i8** %128, align 8
  %129 = load i32, i32* %17, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %155, label %131

131:                                              ; preds = %109
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %134 = call i64 @CheckForRightSplice(%struct.TYPE_26__* %132, %struct.TYPE_28__* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %155

136:                                              ; preds = %131
  %137 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %138 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %139 = call i32 @AddWinding(%struct.TYPE_27__* %137, %struct.TYPE_27__* %138)
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %142 = call i32 @DeleteRegion(%struct.TYPE_26__* %140, %struct.TYPE_28__* %141)
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %147 = call i32 @tessMeshDelete(i32 %145, %struct.TYPE_27__* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %136
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @longjmp(i32 %152, i32 1)
  br label %154

154:                                              ; preds = %149, %136
  br label %155

155:                                              ; preds = %154, %131, %109
  %156 = load i32, i32* @FALSE, align 4
  store i32 %156, i32* %17, align 4
  %157 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  store %struct.TYPE_28__* %157, %struct.TYPE_28__** %14, align 8
  %158 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  store %struct.TYPE_27__* %158, %struct.TYPE_27__** %16, align 8
  br label %56

159:                                              ; preds = %71
  %160 = load i8*, i8** @TRUE, align 8
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %162 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %161, i32 0, i32 1
  store i8* %160, i8** %162, align 8
  %163 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %164 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %167 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = sub nsw i64 %165, %168
  %170 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %171 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp eq i64 %169, %172
  %174 = zext i1 %173 to i32
  %175 = call i32 @assert(i32 %174)
  %176 = load i32, i32* %12, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %159
  %179 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %180 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %181 = call i32 @WalkDirtyRegions(%struct.TYPE_26__* %179, %struct.TYPE_28__* %180)
  br label %182

182:                                              ; preds = %178, %159
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @VertLeq(i64, i32) #1

declare dso_local i32 @AddRegionBelow(%struct.TYPE_26__*, %struct.TYPE_28__*, i32) #1

declare dso_local %struct.TYPE_28__* @RegionBelow(%struct.TYPE_28__*) #1

declare dso_local i32 @tessMeshSplice(i32, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i32 @IsWindingInside(%struct.TYPE_26__*, i64) #1

declare dso_local i64 @CheckForRightSplice(%struct.TYPE_26__*, %struct.TYPE_28__*) #1

declare dso_local i32 @AddWinding(%struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @DeleteRegion(%struct.TYPE_26__*, %struct.TYPE_28__*) #1

declare dso_local i32 @tessMeshDelete(i32, %struct.TYPE_27__*) #1

declare dso_local i32 @WalkDirtyRegions(%struct.TYPE_26__*, %struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
