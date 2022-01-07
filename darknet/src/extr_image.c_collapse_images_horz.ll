; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_collapse_images_horz.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_collapse_images_horz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i32 } @collapse_images_horz(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca { i64, i32 }, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_12__, align 4
  %17 = alloca { i64, i32 }, align 4
  %18 = alloca { i64, i32 }, align 8
  %19 = alloca { i64, i32 }, align 4
  %20 = alloca { i64, i32 }, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_12__, align 4
  %23 = alloca { i64, i32 }, align 4
  %24 = alloca { i64, i32 }, align 8
  %25 = alloca { i64, i32 }, align 4
  %26 = alloca { i64, i32 }, align 4
  %27 = alloca { i64, i32 }, align 4
  %28 = alloca { i64, i32 }, align 4
  %29 = alloca { i64, i32 }, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %8, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %38, %39
  %41 = load i32, i32* %5, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 %42, %43
  store i32 %44, i32* %9, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 3
  br i1 %50, label %54, label %51

51:                                               ; preds = %2
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %51, %2
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %55, %56
  %58 = load i32, i32* %10, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 %59, %60
  store i32 %61, i32* %8, align 4
  store i32 1, i32* %10, align 4
  br label %62

62:                                               ; preds = %54, %51
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call { i64, i32 } @make_image(i32 %63, i32 %64, i32 %65)
  store { i64, i32 } %66, { i64, i32 }* %12, align 8
  %67 = bitcast { i64, i32 }* %12 to i8*
  %68 = bitcast %struct.TYPE_12__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 8 %67, i64 12, i1 false)
  store i32 0, i32* %13, align 4
  br label %69

69:                                               ; preds = %168, %62
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %171

73:                                               ; preds = %69
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %75, %76
  %78 = mul nsw i32 %74, %77
  store i32 %78, i32* %15, align 4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i64 %81
  %83 = bitcast { i64, i32 }* %17 to i8*
  %84 = bitcast %struct.TYPE_12__* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %83, i8* align 4 %84, i64 12, i1 false)
  %85 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %86 = load i64, i64* %85, align 4
  %87 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call { i64, i32 } @copy_image(i64 %86, i32 %88)
  store { i64, i32 } %89, { i64, i32 }* %18, align 8
  %90 = bitcast { i64, i32 }* %18 to i8*
  %91 = bitcast %struct.TYPE_12__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %91, i8* align 8 %90, i64 12, i1 false)
  %92 = load i32, i32* %10, align 4
  %93 = icmp eq i32 %92, 3
  br i1 %93, label %94, label %112

94:                                               ; preds = %73
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %94
  %98 = load i32, i32* %15, align 4
  %99 = bitcast { i64, i32 }* %19 to i8*
  %100 = bitcast %struct.TYPE_12__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %99, i8* align 4 %100, i64 12, i1 false)
  %101 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 0
  %102 = load i64, i64* %101, align 4
  %103 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = bitcast { i64, i32 }* %20 to i8*
  %106 = bitcast %struct.TYPE_12__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %105, i8* align 4 %106, i64 12, i1 false)
  %107 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 0
  %108 = load i64, i64* %107, align 4
  %109 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @embed_image(i64 %102, i32 %104, i64 %108, i32 %110, i32 %98, i32 0)
  br label %160

112:                                              ; preds = %94, %73
  store i32 0, i32* %14, align 4
  br label %113

113:                                              ; preds = %156, %112
  %114 = load i32, i32* %14, align 4
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %114, %116
  br i1 %117, label %118, label %159

118:                                              ; preds = %113
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %120, %121
  %123 = mul nsw i32 %119, %122
  store i32 %123, i32* %21, align 4
  %124 = load i32, i32* %14, align 4
  %125 = bitcast { i64, i32 }* %23 to i8*
  %126 = bitcast %struct.TYPE_12__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %125, i8* align 4 %126, i64 12, i1 false)
  %127 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %23, i32 0, i32 0
  %128 = load i64, i64* %127, align 4
  %129 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %23, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call { i64, i32 } @get_image_layer(i64 %128, i32 %130, i32 %124)
  store { i64, i32 } %131, { i64, i32 }* %24, align 8
  %132 = bitcast { i64, i32 }* %24 to i8*
  %133 = bitcast %struct.TYPE_12__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %133, i8* align 8 %132, i64 12, i1 false)
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* %21, align 4
  %136 = bitcast { i64, i32 }* %25 to i8*
  %137 = bitcast %struct.TYPE_12__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %136, i8* align 4 %137, i64 12, i1 false)
  %138 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %25, i32 0, i32 0
  %139 = load i64, i64* %138, align 4
  %140 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %25, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = bitcast { i64, i32 }* %26 to i8*
  %143 = bitcast %struct.TYPE_12__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %142, i8* align 4 %143, i64 12, i1 false)
  %144 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %26, i32 0, i32 0
  %145 = load i64, i64* %144, align 4
  %146 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %26, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @embed_image(i64 %139, i32 %141, i64 %145, i32 %147, i32 %134, i32 %135)
  %149 = bitcast { i64, i32 }* %27 to i8*
  %150 = bitcast %struct.TYPE_12__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %149, i8* align 4 %150, i64 12, i1 false)
  %151 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %27, i32 0, i32 0
  %152 = load i64, i64* %151, align 4
  %153 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %27, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @free_image(i64 %152, i32 %154)
  br label %156

156:                                              ; preds = %118
  %157 = load i32, i32* %14, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %14, align 4
  br label %113

159:                                              ; preds = %113
  br label %160

160:                                              ; preds = %159, %97
  %161 = bitcast { i64, i32 }* %28 to i8*
  %162 = bitcast %struct.TYPE_12__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %161, i8* align 4 %162, i64 12, i1 false)
  %163 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %28, i32 0, i32 0
  %164 = load i64, i64* %163, align 4
  %165 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %28, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @free_image(i64 %164, i32 %166)
  br label %168

168:                                              ; preds = %160
  %169 = load i32, i32* %13, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %13, align 4
  br label %69

171:                                              ; preds = %69
  %172 = bitcast { i64, i32 }* %29 to i8*
  %173 = bitcast %struct.TYPE_12__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %172, i8* align 4 %173, i64 12, i1 false)
  %174 = load { i64, i32 }, { i64, i32 }* %29, align 8
  ret { i64, i32 } %174
}

declare dso_local { i64, i32 } @make_image(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { i64, i32 } @copy_image(i64, i32) #1

declare dso_local i32 @embed_image(i64, i32, i64, i32, i32, i32) #1

declare dso_local { i64, i32 } @get_image_layer(i64, i32, i32) #1

declare dso_local i32 @free_image(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
