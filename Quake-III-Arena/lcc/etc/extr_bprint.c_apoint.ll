; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/etc/extr_bprint.c_apoint.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/etc/extr_bprint.c_apoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.count = type { i32, i32, i32 }
%struct.file = type { i32, i32, %struct.count* }

@PERM = common dso_local global i32 0, align 4
@apoint.z = internal global %struct.count zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32, i32, i32)* @apoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apoint(i32 %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.file*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.count*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = call %struct.file* @findfile(i8* %14)
  store %struct.file* %15, %struct.file** %11, align 8
  %16 = load %struct.file*, %struct.file** %11, align 8
  %17 = call i32 @assert(%struct.file* %16)
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.file*, %struct.file** %11, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sge i32 %18, %21
  br i1 %22, label %23, label %106

23:                                               ; preds = %5
  %24 = load %struct.file*, %struct.file** %11, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = icmp sge i32 %29, 200
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = mul nsw i32 2, %32
  br label %35

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %31
  %36 = phi i32 [ %33, %31 ], [ 200, %34 ]
  %37 = load %struct.file*, %struct.file** %11, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.file*, %struct.file** %11, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @PERM, align 4
  %43 = call i8* @newarray(i32 %41, i32 12, i32 %42)
  %44 = bitcast i8* %43 to %struct.count*
  %45 = load %struct.file*, %struct.file** %11, align 8
  %46 = getelementptr inbounds %struct.file, %struct.file* %45, i32 0, i32 2
  store %struct.count* %44, %struct.count** %46, align 8
  br label %84

47:                                               ; preds = %23
  %48 = load i32, i32* %6, align 4
  %49 = mul nsw i32 2, %48
  %50 = load %struct.file*, %struct.file** %11, align 8
  %51 = getelementptr inbounds %struct.file, %struct.file* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.file*, %struct.file** %11, align 8
  %53 = getelementptr inbounds %struct.file, %struct.file* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @PERM, align 4
  %56 = call i8* @newarray(i32 %54, i32 12, i32 %55)
  %57 = bitcast i8* %56 to %struct.count*
  store %struct.count* %57, %struct.count** %13, align 8
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %77, %47
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.file*, %struct.file** %11, align 8
  %61 = getelementptr inbounds %struct.file, %struct.file* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %58
  %65 = load %struct.count*, %struct.count** %13, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.count, %struct.count* %65, i64 %67
  %69 = load %struct.file*, %struct.file** %11, align 8
  %70 = getelementptr inbounds %struct.file, %struct.file* %69, i32 0, i32 2
  %71 = load %struct.count*, %struct.count** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.count, %struct.count* %71, i64 %73
  %75 = bitcast %struct.count* %68 to i8*
  %76 = bitcast %struct.count* %74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %75, i8* align 4 %76, i64 12, i1 false)
  br label %77

77:                                               ; preds = %64
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %12, align 4
  br label %58

80:                                               ; preds = %58
  %81 = load %struct.count*, %struct.count** %13, align 8
  %82 = load %struct.file*, %struct.file** %11, align 8
  %83 = getelementptr inbounds %struct.file, %struct.file* %82, i32 0, i32 2
  store %struct.count* %81, %struct.count** %83, align 8
  br label %84

84:                                               ; preds = %80, %35
  %85 = load %struct.file*, %struct.file** %11, align 8
  %86 = getelementptr inbounds %struct.file, %struct.file* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %102, %84
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.file*, %struct.file** %11, align 8
  %91 = getelementptr inbounds %struct.file, %struct.file* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %88
  %95 = load %struct.file*, %struct.file** %11, align 8
  %96 = getelementptr inbounds %struct.file, %struct.file* %95, i32 0, i32 2
  %97 = load %struct.count*, %struct.count** %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.count, %struct.count* %97, i64 %99
  %101 = bitcast %struct.count* %100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %101, i8* align 4 bitcast (%struct.count* @apoint.z to i8*), i64 12, i1 false)
  br label %102

102:                                              ; preds = %94
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %12, align 4
  br label %88

105:                                              ; preds = %88
  br label %106

106:                                              ; preds = %105, %5
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.file*, %struct.file** %11, align 8
  %109 = getelementptr inbounds %struct.file, %struct.file* %108, i32 0, i32 2
  %110 = load %struct.count*, %struct.count** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.count, %struct.count* %110, i64 %112
  %114 = getelementptr inbounds %struct.count, %struct.count* %113, i32 0, i32 0
  store i32 %107, i32* %114, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.file*, %struct.file** %11, align 8
  %117 = getelementptr inbounds %struct.file, %struct.file* %116, i32 0, i32 2
  %118 = load %struct.count*, %struct.count** %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.count, %struct.count* %118, i64 %120
  %122 = getelementptr inbounds %struct.count, %struct.count* %121, i32 0, i32 1
  store i32 %115, i32* %122, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load %struct.file*, %struct.file** %11, align 8
  %125 = getelementptr inbounds %struct.file, %struct.file* %124, i32 0, i32 2
  %126 = load %struct.count*, %struct.count** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.count, %struct.count* %126, i64 %128
  %130 = getelementptr inbounds %struct.count, %struct.count* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, %123
  store i32 %132, i32* %130, align 4
  %133 = load i32, i32* %6, align 4
  %134 = load %struct.file*, %struct.file** %11, align 8
  %135 = getelementptr inbounds %struct.file, %struct.file* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp sge i32 %133, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %106
  %139 = load i32, i32* %6, align 4
  %140 = add nsw i32 %139, 1
  %141 = load %struct.file*, %struct.file** %11, align 8
  %142 = getelementptr inbounds %struct.file, %struct.file* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %138, %106
  ret void
}

declare dso_local %struct.file* @findfile(i8*) #1

declare dso_local i32 @assert(%struct.file*) #1

declare dso_local i8* @newarray(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
