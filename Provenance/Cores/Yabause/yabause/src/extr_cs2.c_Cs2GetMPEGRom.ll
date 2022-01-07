; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2GetMPEGRom.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2GetMPEGRom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_8__, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i32, i64, i32 }
%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_12__**, i32* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32 }

@Cs2Area = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@CDB_HIRQ_CSCT = common dso_local global i32 0, align 4
@CDB_HIRQ_CMOK = common dso_local global i32 0, align 4
@CDB_HIRQ_MPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cs2GetMPEGRom() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__, align 4
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = or i32 %9, 768
  store i32 %10, i32* %8, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 9
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 6
  store i64 %14, i64* %16, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 8
  store i64 0, i64* %18, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 7
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %141

23:                                               ; preds = %0
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 7
  %26 = load i64, i64* %25, align 8
  %27 = call i32* @fopen(i64 %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %27, i32** %2, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %141

29:                                               ; preds = %23
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 255
  %35 = shl i32 %34, 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %35, %39
  store i32 %40, i32* %4, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %5, align 8
  %45 = load i32*, i32** %2, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %46, %49
  %51 = load i32, i32* @SEEK_SET, align 4
  %52 = call i32 @fseek(i32* %45, i32 %50, i32 %51)
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = call %struct.TYPE_9__* @Cs2GetPartition(i64 %55)
  store %struct.TYPE_9__* %56, %struct.TYPE_9__** %3, align 8
  %57 = icmp ne %struct.TYPE_9__* %56, null
  br i1 %57, label %58, label %138

58:                                               ; preds = %29
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %138, label %63

63:                                               ; preds = %58
  %64 = bitcast %struct.TYPE_10__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %64, i8 0, i64 8, i1 false)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  store i64 0, i64* %1, align 8
  br label %67

67:                                               ; preds = %126, %63
  %68 = load i64, i64* %1, align 8
  %69 = load i64, i64* %5, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %129

71:                                               ; preds = %67
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = call %struct.TYPE_12__* @Cs2AllocateBlock(i32* %78)
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %81, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %82, i64 %85
  store %struct.TYPE_12__* %79, %struct.TYPE_12__** %86, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %88, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %89, i64 %92
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = icmp ne %struct.TYPE_12__* %94, null
  br i1 %95, label %96, label %125

96:                                               ; preds = %71
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %98, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %99, i64 %102
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = inttoptr i64 %106 to i8*
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %2, align 8
  %112 = call i32 @yread(%struct.TYPE_10__* %6, i8* %107, i32 1, i32 %110, i32* %111)
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %114, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, %120
  store i64 %124, i64* %122, align 8
  br label %125

125:                                              ; preds = %96, %71
  br label %126

126:                                              ; preds = %125
  %127 = load i64, i64* %1, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* %1, align 8
  br label %67

129:                                              ; preds = %67
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 2
  store i32 1, i32* %131, align 8
  %132 = load i32, i32* @CDB_HIRQ_CSCT, align 4
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %132
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %129, %58, %29
  %139 = load i32*, i32** %2, align 8
  %140 = call i32 @fclose(i32* %139)
  br label %141

141:                                              ; preds = %138, %23, %0
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @doCDReport(i32 %144)
  %146 = load i32, i32* @CDB_HIRQ_CMOK, align 4
  %147 = load i32, i32* @CDB_HIRQ_MPED, align 4
  %148 = or i32 %146, %147
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, %148
  store i32 %153, i32* %151, align 8
  ret void
}

declare dso_local i32* @fopen(i64, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @Cs2GetPartition(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.TYPE_12__* @Cs2AllocateBlock(i32*) #1

declare dso_local i32 @yread(%struct.TYPE_10__*, i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @doCDReport(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
