; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vaapi_encode.c_vaapi_encode_set_b_pictures.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vaapi_encode.c_vaapi_encode_set_b_pictures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_12__**, i8*, %struct.TYPE_12__* }

@PICTURE_TYPE_B = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32, %struct.TYPE_12__**)* @vaapi_encode_set_b_pictures to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vaapi_encode_set_b_pictures(%struct.TYPE_14__* %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2, %struct.TYPE_12__* %3, i32 %4, %struct.TYPE_12__** %5) #0 {
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__**, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_12__** %5, %struct.TYPE_12__*** %12, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %13, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %23 = icmp ne %struct.TYPE_12__* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %6
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %26 = icmp ne %struct.TYPE_12__* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %30 = icmp ne %struct.TYPE_12__* %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %36 = icmp ne %struct.TYPE_12__* %34, %35
  br label %37

37:                                               ; preds = %31, %27, %24, %6
  %38 = phi i1 [ false, %27 ], [ false, %24 ], [ false, %6 ], [ %36, %31 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @av_assert0(i32 %39)
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %41, %44
  br i1 %45, label %54, label %46

46:                                               ; preds = %37
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %53 = icmp eq %struct.TYPE_12__* %51, %52
  br i1 %53, label %54, label %112

54:                                               ; preds = %46, %37
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  store %struct.TYPE_12__* %57, %struct.TYPE_12__** %14, align 8
  br label %58

58:                                               ; preds = %105, %54
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %60 = icmp ne %struct.TYPE_12__* %59, null
  br i1 %60, label %61, label %109

61:                                               ; preds = %58
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %64 = icmp eq %struct.TYPE_12__* %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %109

66:                                               ; preds = %61
  %67 = load i8*, i8** @PICTURE_TYPE_B, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %76 = call i32 @vaapi_encode_add_ref(%struct.TYPE_14__* %73, %struct.TYPE_12__* %74, %struct.TYPE_12__* %75, i32 1, i32 1, i32 0)
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %80 = call i32 @vaapi_encode_add_ref(%struct.TYPE_14__* %77, %struct.TYPE_12__* %78, %struct.TYPE_12__* %79, i32 1, i32 1, i32 0)
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %84 = call i32 @vaapi_encode_add_ref(%struct.TYPE_14__* %81, %struct.TYPE_12__* %82, %struct.TYPE_12__* %83, i32 0, i32 0, i32 1)
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %87, i64 1
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  store %struct.TYPE_12__* %89, %struct.TYPE_12__** %16, align 8
  br label %90

90:                                               ; preds = %98, %66
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %92 = icmp ne %struct.TYPE_12__* %91, null
  br i1 %92, label %93, label %104

93:                                               ; preds = %90
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %97 = call i32 @vaapi_encode_add_ref(%struct.TYPE_14__* %94, %struct.TYPE_12__* %95, %struct.TYPE_12__* %96, i32 0, i32 1, i32 0)
  br label %98

98:                                               ; preds = %93
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %101, i64 1
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  store %struct.TYPE_12__* %103, %struct.TYPE_12__** %16, align 8
  br label %90

104:                                              ; preds = %90
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 4
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  store %struct.TYPE_12__* %108, %struct.TYPE_12__** %14, align 8
  br label %58

109:                                              ; preds = %65, %58
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %111 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %12, align 8
  store %struct.TYPE_12__* %110, %struct.TYPE_12__** %111, align 8
  br label %207

112:                                              ; preds = %46
  store i32 0, i32* %18, align 4
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %114, align 8
  store %struct.TYPE_12__* %115, %struct.TYPE_12__** %14, align 8
  br label %116

116:                                              ; preds = %123, %112
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %119 = icmp ne %struct.TYPE_12__* %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %116
  %121 = load i32, i32* %18, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %18, align 4
  br label %123

123:                                              ; preds = %120
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 4
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  store %struct.TYPE_12__* %126, %struct.TYPE_12__** %14, align 8
  br label %116

127:                                              ; preds = %116
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 4
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %129, align 8
  store %struct.TYPE_12__* %130, %struct.TYPE_12__** %14, align 8
  store i32 1, i32* %17, align 4
  br label %131

131:                                              ; preds = %137, %127
  %132 = load i32, i32* %17, align 4
  %133 = mul nsw i32 2, %132
  %134 = load i32, i32* %18, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %131
  br label %137

137:                                              ; preds = %136
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 4
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %139, align 8
  store %struct.TYPE_12__* %140, %struct.TYPE_12__** %14, align 8
  %141 = load i32, i32* %17, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %17, align 4
  br label %131

143:                                              ; preds = %131
  %144 = load i8*, i8** @PICTURE_TYPE_B, align 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 3
  store i8* %144, i8** %146, align 8
  %147 = load i32, i32* %11, align 4
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  store i32 1, i32* %151, align 4
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %155 = call i32 @vaapi_encode_add_ref(%struct.TYPE_14__* %152, %struct.TYPE_12__* %153, %struct.TYPE_12__* %154, i32 0, i32 1, i32 0)
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %159 = call i32 @vaapi_encode_add_ref(%struct.TYPE_14__* %156, %struct.TYPE_12__* %157, %struct.TYPE_12__* %158, i32 1, i32 1, i32 0)
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %163 = call i32 @vaapi_encode_add_ref(%struct.TYPE_14__* %160, %struct.TYPE_12__* %161, %struct.TYPE_12__* %162, i32 1, i32 1, i32 0)
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %167 = call i32 @vaapi_encode_add_ref(%struct.TYPE_14__* %164, %struct.TYPE_12__* %165, %struct.TYPE_12__* %166, i32 0, i32 0, i32 1)
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %170, i64 1
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %171, align 8
  store %struct.TYPE_12__* %172, %struct.TYPE_12__** %16, align 8
  br label %173

173:                                              ; preds = %181, %143
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %175 = icmp ne %struct.TYPE_12__* %174, null
  br i1 %175, label %176, label %187

176:                                              ; preds = %173
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %180 = call i32 @vaapi_encode_add_ref(%struct.TYPE_14__* %177, %struct.TYPE_12__* %178, %struct.TYPE_12__* %179, i32 0, i32 1, i32 0)
  br label %181

181:                                              ; preds = %176
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %184, i64 1
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %185, align 8
  store %struct.TYPE_12__* %186, %struct.TYPE_12__** %16, align 8
  br label %173

187:                                              ; preds = %173
  %188 = load i32, i32* %17, align 4
  %189 = icmp sgt i32 %188, 1
  br i1 %189, label %190, label %197

190:                                              ; preds = %187
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %195 = load i32, i32* %11, align 4
  %196 = add nsw i32 %195, 1
  call void @vaapi_encode_set_b_pictures(%struct.TYPE_14__* %191, %struct.TYPE_12__* %192, %struct.TYPE_12__* %193, %struct.TYPE_12__* %194, i32 %196, %struct.TYPE_12__** %15)
  br label %199

197:                                              ; preds = %187
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  store %struct.TYPE_12__* %198, %struct.TYPE_12__** %15, align 8
  br label %199

199:                                              ; preds = %197, %190
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %204 = load i32, i32* %11, align 4
  %205 = add nsw i32 %204, 1
  %206 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %12, align 8
  call void @vaapi_encode_set_b_pictures(%struct.TYPE_14__* %200, %struct.TYPE_12__* %201, %struct.TYPE_12__* %202, %struct.TYPE_12__* %203, i32 %205, %struct.TYPE_12__** %206)
  br label %207

207:                                              ; preds = %199, %109
  ret void
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @vaapi_encode_add_ref(%struct.TYPE_14__*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
