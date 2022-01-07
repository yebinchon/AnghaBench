; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_collapse_images_vert.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_collapse_images_vert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i32 } @collapse_images_vert(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca { i64, i32 }, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_12__, align 4
  %16 = alloca { i64, i32 }, align 4
  %17 = alloca { i64, i32 }, align 8
  %18 = alloca { i64, i32 }, align 4
  %19 = alloca { i64, i32 }, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_12__, align 4
  %22 = alloca { i64, i32 }, align 4
  %23 = alloca { i64, i32 }, align 8
  %24 = alloca { i64, i32 }, align 4
  %25 = alloca { i64, i32 }, align 4
  %26 = alloca { i64, i32 }, align 4
  %27 = alloca { i64, i32 }, align 4
  %28 = alloca { i64, i32 }, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i32, i32* %5, align 4
  %40 = mul nsw i32 %38, %39
  %41 = load i32, i32* %7, align 4
  %42 = sub nsw i32 %40, %41
  store i32 %42, i32* %8, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 3
  br i1 %48, label %52, label %49

49:                                               ; preds = %2
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %49, %2
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %53, %54
  %56 = load i32, i32* %10, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load i32, i32* %7, align 4
  %59 = sub nsw i32 %57, %58
  store i32 %59, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %60

60:                                               ; preds = %52, %49
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call { i64, i32 } @make_image(i32 %61, i32 %62, i32 %63)
  store { i64, i32 } %64, { i64, i32 }* %11, align 8
  %65 = bitcast { i64, i32 }* %11 to i8*
  %66 = bitcast %struct.TYPE_12__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 8 %65, i64 12, i1 false)
  store i32 0, i32* %12, align 4
  br label %67

67:                                               ; preds = %172, %60
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %175

71:                                               ; preds = %67
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %76, %77
  %79 = mul nsw i32 %72, %78
  store i32 %79, i32* %14, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i64 %82
  %84 = bitcast { i64, i32 }* %16 to i8*
  %85 = bitcast %struct.TYPE_12__* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %84, i8* align 4 %85, i64 12, i1 false)
  %86 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %87 = load i64, i64* %86, align 4
  %88 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call { i64, i32 } @copy_image(i64 %87, i32 %89)
  store { i64, i32 } %90, { i64, i32 }* %17, align 8
  %91 = bitcast { i64, i32 }* %17 to i8*
  %92 = bitcast %struct.TYPE_12__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %92, i8* align 8 %91, i64 12, i1 false)
  %93 = load i32, i32* %10, align 4
  %94 = icmp eq i32 %93, 3
  br i1 %94, label %95, label %113

95:                                               ; preds = %71
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %95
  %99 = load i32, i32* %14, align 4
  %100 = bitcast { i64, i32 }* %18 to i8*
  %101 = bitcast %struct.TYPE_12__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %100, i8* align 4 %101, i64 12, i1 false)
  %102 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 0
  %103 = load i64, i64* %102, align 4
  %104 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = bitcast { i64, i32 }* %19 to i8*
  %107 = bitcast %struct.TYPE_12__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %106, i8* align 4 %107, i64 12, i1 false)
  %108 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 0
  %109 = load i64, i64* %108, align 4
  %110 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @embed_image(i64 %103, i32 %105, i64 %109, i32 %111, i32 0, i32 %99)
  br label %164

113:                                              ; preds = %95, %71
  store i32 0, i32* %13, align 4
  br label %114

114:                                              ; preds = %160, %113
  %115 = load i32, i32* %13, align 4
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %115, %117
  br i1 %118, label %119, label %163

119:                                              ; preds = %114
  %120 = load i32, i32* %13, align 4
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i64 0
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %124, %125
  %127 = mul nsw i32 %120, %126
  store i32 %127, i32* %20, align 4
  %128 = load i32, i32* %13, align 4
  %129 = bitcast { i64, i32 }* %22 to i8*
  %130 = bitcast %struct.TYPE_12__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %129, i8* align 4 %130, i64 12, i1 false)
  %131 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 0
  %132 = load i64, i64* %131, align 4
  %133 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call { i64, i32 } @get_image_layer(i64 %132, i32 %134, i32 %128)
  store { i64, i32 } %135, { i64, i32 }* %23, align 8
  %136 = bitcast { i64, i32 }* %23 to i8*
  %137 = bitcast %struct.TYPE_12__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %137, i8* align 8 %136, i64 12, i1 false)
  %138 = load i32, i32* %20, align 4
  %139 = load i32, i32* %14, align 4
  %140 = bitcast { i64, i32 }* %24 to i8*
  %141 = bitcast %struct.TYPE_12__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %140, i8* align 4 %141, i64 12, i1 false)
  %142 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %24, i32 0, i32 0
  %143 = load i64, i64* %142, align 4
  %144 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %24, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = bitcast { i64, i32 }* %25 to i8*
  %147 = bitcast %struct.TYPE_12__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %146, i8* align 4 %147, i64 12, i1 false)
  %148 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %25, i32 0, i32 0
  %149 = load i64, i64* %148, align 4
  %150 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %25, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @embed_image(i64 %143, i32 %145, i64 %149, i32 %151, i32 %138, i32 %139)
  %153 = bitcast { i64, i32 }* %26 to i8*
  %154 = bitcast %struct.TYPE_12__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %153, i8* align 4 %154, i64 12, i1 false)
  %155 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %26, i32 0, i32 0
  %156 = load i64, i64* %155, align 4
  %157 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %26, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @free_image(i64 %156, i32 %158)
  br label %160

160:                                              ; preds = %119
  %161 = load i32, i32* %13, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %13, align 4
  br label %114

163:                                              ; preds = %114
  br label %164

164:                                              ; preds = %163, %98
  %165 = bitcast { i64, i32 }* %27 to i8*
  %166 = bitcast %struct.TYPE_12__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %165, i8* align 4 %166, i64 12, i1 false)
  %167 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %27, i32 0, i32 0
  %168 = load i64, i64* %167, align 4
  %169 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %27, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @free_image(i64 %168, i32 %170)
  br label %172

172:                                              ; preds = %164
  %173 = load i32, i32* %12, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %12, align 4
  br label %67

175:                                              ; preds = %67
  %176 = bitcast { i64, i32 }* %28 to i8*
  %177 = bitcast %struct.TYPE_12__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %176, i8* align 4 %177, i64 12, i1 false)
  %178 = load { i64, i32 }, { i64, i32 }* %28, align 8
  ret { i64, i32 } %178
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
