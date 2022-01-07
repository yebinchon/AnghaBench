; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/decompress/extr_huf_decompress.c_HUF_readDTableX1_wksp.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/decompress/extr_huf_decompress.c_HUF_readDTableX1_wksp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i8*, i64, i64 }

@HUF_TABLELOG_ABSOLUTEMAX = common dso_local global i64 0, align 8
@HUF_SYMBOLVALUE_MAX = common dso_local global i64 0, align 8
@tableLog_tooLarge = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HUF_readDTableX1_wksp(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_6__, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.TYPE_5__, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = bitcast i32* %30 to i8*
  store i8* %31, i8** %15, align 8
  %32 = load i8*, i8** %15, align 8
  %33 = bitcast i8* %32 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %16, align 8
  store i64 0, i64* %19, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = bitcast i8* %34 to i64*
  %36 = load i64, i64* %19, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  store i64* %37, i64** %17, align 8
  %38 = load i64, i64* @HUF_TABLELOG_ABSOLUTEMAX, align 8
  %39 = add nsw i64 %38, 1
  %40 = load i64, i64* %19, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %19, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = bitcast i8* %42 to i64*
  %44 = load i64, i64* %19, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = bitcast i64* %45 to i8**
  store i8** %46, i8*** %18, align 8
  %47 = load i64, i64* @HUF_SYMBOLVALUE_MAX, align 8
  %48 = add nsw i64 %47, 1
  %49 = call i32 @HUF_ALIGN(i64 %48, i32 8)
  %50 = ashr i32 %49, 2
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %19, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %19, align 8
  %54 = load i64, i64* %19, align 8
  %55 = shl i64 %54, 2
  %56 = load i64, i64* %11, align 8
  %57 = icmp ugt i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %5
  %59 = load i32, i32* @tableLog_tooLarge, align 4
  %60 = call i64 @ERROR(i32 %59)
  store i64 %60, i64* %6, align 8
  br label %174

61:                                               ; preds = %5
  %62 = call i32 @DEBUG_STATIC_ASSERT(i32 0)
  %63 = load i8**, i8*** %18, align 8
  %64 = load i64, i64* @HUF_SYMBOLVALUE_MAX, align 8
  %65 = add nsw i64 %64, 1
  %66 = load i64*, i64** %17, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = call i64 @HUF_readStats(i8** %63, i64 %65, i64* %66, i64* %13, i64* %12, i8* %67, i64 %68)
  store i64 %69, i64* %14, align 8
  %70 = load i64, i64* %14, align 8
  %71 = call i64 @HUF_isError(i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = load i64, i64* %14, align 8
  store i64 %74, i64* %6, align 8
  br label %174

75:                                               ; preds = %61
  %76 = load i32*, i32** %7, align 8
  call void @HUF_getDTableDesc(%struct.TYPE_6__* sret %20, i32* %76)
  %77 = load i64, i64* %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 1
  %81 = icmp sgt i64 %77, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load i32, i32* @tableLog_tooLarge, align 4
  %84 = call i64 @ERROR(i32 %83)
  store i64 %84, i64* %6, align 8
  br label %174

85:                                               ; preds = %75
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = load i64, i64* %12, align 8
  %88 = inttoptr i64 %87 to i8*
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i8* %88, i8** %89, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @memcpy(i32* %90, %struct.TYPE_6__* %20, i32 24)
  store i64 0, i64* %22, align 8
  store i64 1, i64* %21, align 8
  br label %92

92:                                               ; preds = %112, %85
  %93 = load i64, i64* %21, align 8
  %94 = load i64, i64* %12, align 8
  %95 = add nsw i64 %94, 1
  %96 = icmp slt i64 %93, %95
  br i1 %96, label %97, label %115

97:                                               ; preds = %92
  %98 = load i64, i64* %22, align 8
  store i64 %98, i64* %23, align 8
  %99 = load i64*, i64** %17, align 8
  %100 = load i64, i64* %21, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %21, align 8
  %104 = sub nsw i64 %103, 1
  %105 = shl i64 %102, %104
  %106 = load i64, i64* %22, align 8
  %107 = add nsw i64 %106, %105
  store i64 %107, i64* %22, align 8
  %108 = load i64, i64* %23, align 8
  %109 = load i64*, i64** %17, align 8
  %110 = load i64, i64* %21, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  store i64 %108, i64* %111, align 8
  br label %112

112:                                              ; preds = %97
  %113 = load i64, i64* %21, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %21, align 8
  br label %92

115:                                              ; preds = %92
  store i64 0, i64* %24, align 8
  br label %116

116:                                              ; preds = %169, %115
  %117 = load i64, i64* %24, align 8
  %118 = load i64, i64* %13, align 8
  %119 = icmp slt i64 %117, %118
  br i1 %119, label %120, label %172

120:                                              ; preds = %116
  %121 = load i8**, i8*** %18, align 8
  %122 = load i64, i64* %24, align 8
  %123 = getelementptr inbounds i8*, i8** %121, i64 %122
  %124 = load i8*, i8** %123, align 8
  %125 = ptrtoint i8* %124 to i64
  store i64 %125, i64* %25, align 8
  %126 = load i64, i64* %25, align 8
  %127 = trunc i64 %126 to i32
  %128 = shl i32 1, %127
  %129 = ashr i32 %128, 1
  %130 = sext i32 %129 to i64
  store i64 %130, i64* %26, align 8
  %131 = load i64, i64* %24, align 8
  %132 = inttoptr i64 %131 to i8*
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  store i8* %132, i8** %133, align 8
  %134 = load i64, i64* %12, align 8
  %135 = add nsw i64 %134, 1
  %136 = load i64, i64* %25, align 8
  %137 = sub nsw i64 %135, %136
  %138 = inttoptr i64 %137 to i8*
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i8* %138, i8** %139, align 8
  %140 = load i64*, i64** %17, align 8
  %141 = load i64, i64* %25, align 8
  %142 = getelementptr inbounds i64, i64* %140, i64 %141
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %27, align 8
  br label %144

144:                                              ; preds = %159, %120
  %145 = load i64, i64* %27, align 8
  %146 = load i64*, i64** %17, align 8
  %147 = load i64, i64* %25, align 8
  %148 = getelementptr inbounds i64, i64* %146, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* %26, align 8
  %151 = add nsw i64 %149, %150
  %152 = icmp slt i64 %145, %151
  br i1 %152, label %153, label %162

153:                                              ; preds = %144
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %155 = load i64, i64* %27, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i64 %155
  %157 = bitcast %struct.TYPE_5__* %156 to i8*
  %158 = bitcast %struct.TYPE_5__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %157, i8* align 8 %158, i64 16, i1 false)
  br label %159

159:                                              ; preds = %153
  %160 = load i64, i64* %27, align 8
  %161 = add nsw i64 %160, 1
  store i64 %161, i64* %27, align 8
  br label %144

162:                                              ; preds = %144
  %163 = load i64, i64* %26, align 8
  %164 = load i64*, i64** %17, align 8
  %165 = load i64, i64* %25, align 8
  %166 = getelementptr inbounds i64, i64* %164, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %167, %163
  store i64 %168, i64* %166, align 8
  br label %169

169:                                              ; preds = %162
  %170 = load i64, i64* %24, align 8
  %171 = add nsw i64 %170, 1
  store i64 %171, i64* %24, align 8
  br label %116

172:                                              ; preds = %116
  %173 = load i64, i64* %14, align 8
  store i64 %173, i64* %6, align 8
  br label %174

174:                                              ; preds = %172, %82, %73, %58
  %175 = load i64, i64* %6, align 8
  ret i64 %175
}

declare dso_local i32 @HUF_ALIGN(i64, i32) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @DEBUG_STATIC_ASSERT(i32) #1

declare dso_local i64 @HUF_readStats(i8**, i64, i64*, i64*, i64*, i8*, i64) #1

declare dso_local i64 @HUF_isError(i64) #1

declare dso_local void @HUF_getDTableDesc(%struct.TYPE_6__* sret, i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_6__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
