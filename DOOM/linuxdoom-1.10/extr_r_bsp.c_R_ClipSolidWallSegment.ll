; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_bsp.c_R_ClipSolidWallSegment.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_bsp.c_R_ClipSolidWallSegment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@solidsegs = common dso_local global %struct.TYPE_4__* null, align 8
@newend = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_ClipSolidWallSegment(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @solidsegs, align 8
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %6, align 8
  br label %8

8:                                                ; preds = %15, %2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %3, align 4
  %13 = sub nsw i32 %12, 1
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 1
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %6, align 8
  br label %8

18:                                               ; preds = %8
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %67

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 1
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %24
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @R_StoreWallRange(i32 %32, i32 %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @newend, align 8
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %5, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @newend, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 1
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** @newend, align 8
  br label %38

38:                                               ; preds = %42, %31
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = icmp ne %struct.TYPE_4__* %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 -1
  %46 = bitcast %struct.TYPE_4__* %43 to i8*
  %47 = bitcast %struct.TYPE_4__* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 8, i1 false)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 -1
  store %struct.TYPE_4__* %49, %struct.TYPE_4__** %5, align 8
  br label %38

50:                                               ; preds = %38
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %139

57:                                               ; preds = %24
  %58 = load i32, i32* %3, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, 1
  %63 = call i32 @R_StoreWallRange(i32 %58, i32 %62)
  %64 = load i32, i32* %3, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %57, %18
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp sle i32 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %139

74:                                               ; preds = %67
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %75, %struct.TYPE_4__** %5, align 8
  br label %76

76:                                               ; preds = %108, %74
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, 1
  %83 = icmp sge i32 %77, %82
  br i1 %83, label %84, label %109

84:                                               ; preds = %76
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %92, 1
  %94 = call i32 @R_StoreWallRange(i32 %88, i32 %93)
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 1
  store %struct.TYPE_4__* %96, %struct.TYPE_4__** %5, align 8
  %97 = load i32, i32* %4, align 4
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp sle i32 %97, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %84
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  br label %119

108:                                              ; preds = %84
  br label %76

109:                                              ; preds = %76
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @R_StoreWallRange(i32 %113, i32 %114)
  %116 = load i32, i32* %4, align 4
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  br label %119

119:                                              ; preds = %109, %102
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %122 = icmp eq %struct.TYPE_4__* %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  br label %139

124:                                              ; preds = %119
  br label %125

125:                                              ; preds = %130, %124
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 1
  store %struct.TYPE_4__* %127, %struct.TYPE_4__** %5, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** @newend, align 8
  %129 = icmp ne %struct.TYPE_4__* %126, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 1
  store %struct.TYPE_4__* %132, %struct.TYPE_4__** %6, align 8
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %134 = bitcast %struct.TYPE_4__* %132 to i8*
  %135 = bitcast %struct.TYPE_4__* %133 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %134, i8* align 4 %135, i64 8, i1 false)
  br label %125

136:                                              ; preds = %125
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i64 1
  store %struct.TYPE_4__* %138, %struct.TYPE_4__** @newend, align 8
  br label %139

139:                                              ; preds = %136, %123, %73, %50
  ret void
}

declare dso_local i32 @R_StoreWallRange(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
