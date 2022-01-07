; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v07.c_HUFv07_readDTableX2.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v07.c_HUFv07_readDTableX2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i8*, i64, i64 }

@HUFv07_SYMBOLVALUE_MAX = common dso_local global i32 0, align 4
@HUFv07_TABLELOG_ABSOLUTEMAX = common dso_local global i32 0, align 4
@tableLog_tooLarge = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HUFv07_readDTableX2(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_6__, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_5__, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %26 = load i32, i32* @HUFv07_SYMBOLVALUE_MAX, align 4
  %27 = add nsw i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %8, align 8
  %30 = alloca i8*, i64 %28, align 16
  store i64 %28, i64* %9, align 8
  %31 = load i32, i32* @HUFv07_TABLELOG_ABSOLUTEMAX, align 4
  %32 = add nsw i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = alloca i64, i64 %33, align 16
  store i64 %33, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = bitcast i32* %36 to i8*
  store i8* %37, i8** %14, align 8
  %38 = load i8*, i8** %14, align 8
  %39 = bitcast i8* %38 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %15, align 8
  %40 = call i32 @HUFv07_STATIC_ASSERT(i32 0)
  %41 = load i32, i32* @HUFv07_SYMBOLVALUE_MAX, align 4
  %42 = add nsw i32 %41, 1
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @HUFv07_readStats(i8** %30, i32 %42, i64* %34, i64* %12, i64* %11, i8* %43, i64 %44)
  store i64 %45, i64* %13, align 8
  %46 = load i64, i64* %13, align 8
  %47 = call i64 @HUFv07_isError(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %3
  %50 = load i64, i64* %13, align 8
  store i64 %50, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %144

51:                                               ; preds = %3
  %52 = load i32*, i32** %5, align 8
  call void @HUFv07_getDTableDesc(%struct.TYPE_6__* sret %17, i32* %52)
  %53 = load i64, i64* %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  %57 = icmp sgt i64 %53, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* @tableLog_tooLarge, align 4
  %60 = call i64 @ERROR(i32 %59)
  store i64 %60, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %144

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = load i64, i64* %11, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i8* %64, i8** %65, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @memcpy(i32* %66, %struct.TYPE_6__* %17, i32 24)
  store i64 0, i64* %19, align 8
  store i64 1, i64* %18, align 8
  br label %68

68:                                               ; preds = %86, %61
  %69 = load i64, i64* %18, align 8
  %70 = load i64, i64* %11, align 8
  %71 = add nsw i64 %70, 1
  %72 = icmp slt i64 %69, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %68
  %74 = load i64, i64* %19, align 8
  store i64 %74, i64* %20, align 8
  %75 = load i64, i64* %18, align 8
  %76 = getelementptr inbounds i64, i64* %34, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %18, align 8
  %79 = sub nsw i64 %78, 1
  %80 = shl i64 %77, %79
  %81 = load i64, i64* %19, align 8
  %82 = add nsw i64 %81, %80
  store i64 %82, i64* %19, align 8
  %83 = load i64, i64* %20, align 8
  %84 = load i64, i64* %18, align 8
  %85 = getelementptr inbounds i64, i64* %34, i64 %84
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %73
  %87 = load i64, i64* %18, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %18, align 8
  br label %68

89:                                               ; preds = %68
  store i64 0, i64* %21, align 8
  br label %90

90:                                               ; preds = %139, %89
  %91 = load i64, i64* %21, align 8
  %92 = load i64, i64* %12, align 8
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %94, label %142

94:                                               ; preds = %90
  %95 = load i64, i64* %21, align 8
  %96 = getelementptr inbounds i8*, i8** %30, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = ptrtoint i8* %97 to i64
  store i64 %98, i64* %22, align 8
  %99 = load i64, i64* %22, align 8
  %100 = trunc i64 %99 to i32
  %101 = shl i32 1, %100
  %102 = ashr i32 %101, 1
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %23, align 8
  %104 = load i64, i64* %21, align 8
  %105 = inttoptr i64 %104 to i8*
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  store i8* %105, i8** %106, align 8
  %107 = load i64, i64* %11, align 8
  %108 = add nsw i64 %107, 1
  %109 = load i64, i64* %22, align 8
  %110 = sub nsw i64 %108, %109
  %111 = inttoptr i64 %110 to i8*
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i8* %111, i8** %112, align 8
  %113 = load i64, i64* %22, align 8
  %114 = getelementptr inbounds i64, i64* %34, i64 %113
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %24, align 8
  br label %116

116:                                              ; preds = %130, %94
  %117 = load i64, i64* %24, align 8
  %118 = load i64, i64* %22, align 8
  %119 = getelementptr inbounds i64, i64* %34, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %23, align 8
  %122 = add nsw i64 %120, %121
  %123 = icmp slt i64 %117, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %116
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %126 = load i64, i64* %24, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i64 %126
  %128 = bitcast %struct.TYPE_5__* %127 to i8*
  %129 = bitcast %struct.TYPE_5__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %128, i8* align 8 %129, i64 16, i1 false)
  br label %130

130:                                              ; preds = %124
  %131 = load i64, i64* %24, align 8
  %132 = add nsw i64 %131, 1
  store i64 %132, i64* %24, align 8
  br label %116

133:                                              ; preds = %116
  %134 = load i64, i64* %23, align 8
  %135 = load i64, i64* %22, align 8
  %136 = getelementptr inbounds i64, i64* %34, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %137, %134
  store i64 %138, i64* %136, align 8
  br label %139

139:                                              ; preds = %133
  %140 = load i64, i64* %21, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %21, align 8
  br label %90

142:                                              ; preds = %90
  %143 = load i64, i64* %13, align 8
  store i64 %143, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %144

144:                                              ; preds = %142, %58, %49
  %145 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %145)
  %146 = load i64, i64* %4, align 8
  ret i64 %146
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @HUFv07_STATIC_ASSERT(i32) #2

declare dso_local i64 @HUFv07_readStats(i8**, i32, i64*, i64*, i64*, i8*, i64) #2

declare dso_local i64 @HUFv07_isError(i64) #2

declare dso_local void @HUFv07_getDTableDesc(%struct.TYPE_6__* sret, i32*) #2

declare dso_local i64 @ERROR(i32) #2

declare dso_local i32 @memcpy(i32*, %struct.TYPE_6__*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
