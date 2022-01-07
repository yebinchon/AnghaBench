; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_apply_crop.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_apply_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"PictureAutoCrop\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"PictureLooseCrop\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"PictureTopCrop\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"PictureBottomCrop\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"PictureLeftCrop\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"PictureRightCrop\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"PictureModulus\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_apply_crop(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %15 = bitcast [4 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 16, i1 false)
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @ghb_dict_get_bool(i32* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i64 %17, i64* %5, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i64 @ghb_dict_get_bool(i32* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %27, i32* %28, align 16
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %33, i32* %34, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 %39, i32* %40, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 %45, i32* %46, align 4
  br label %60

47:                                               ; preds = %2
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @ghb_dict_get_int(i32* %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %49, i32* %50, align 16
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @ghb_dict_get_int(i32* %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %52, i32* %53, align 4
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @ghb_dict_get_int(i32* %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 %55, i32* %56, align 8
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @ghb_dict_get_int(i32* %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %47, %22
  %61 = load i64, i64* %6, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %132

63:                                               ; preds = %60
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @ghb_settings_combo_int(i32* %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp sle i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 16, i32* %14, align 4
  br label %69

69:                                               ; preds = %68, %63
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %75 = load i32, i32* %74, align 8
  %76 = sub nsw i32 %73, %75
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %76, %78
  store i32 %79, i32* %10, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %85 = load i32, i32* %84, align 16
  %86 = sub nsw i32 %83, %85
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %86, %88
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @MOD_DOWN(i32 %90, i32 %91)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @MOD_DOWN(i32 %93, i32 %94)
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %13, align 4
  %98 = sub nsw i32 %96, %97
  %99 = sdiv i32 %98, 2
  %100 = call i32 @EVEN(i32 %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %13, align 4
  %103 = sub nsw i32 %101, %102
  %104 = load i32, i32* %8, align 4
  %105 = sub nsw i32 %103, %104
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %8, align 4
  %107 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %108 = load i32, i32* %107, align 16
  %109 = add nsw i32 %108, %106
  store i32 %109, i32* %107, align 16
  %110 = load i32, i32* %9, align 4
  %111 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, %110
  store i32 %113, i32* %111, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %12, align 4
  %116 = sub nsw i32 %114, %115
  %117 = sdiv i32 %116, 2
  %118 = call i32 @EVEN(i32 %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %12, align 4
  %121 = sub nsw i32 %119, %120
  %122 = load i32, i32* %8, align 4
  %123 = sub nsw i32 %121, %122
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %8, align 4
  %125 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, %124
  store i32 %127, i32* %125, align 8
  %128 = load i32, i32* %9, align 4
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, %128
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %69, %60
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %138 = load i32, i32* %137, align 16
  %139 = sub nsw i32 %136, %138
  %140 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = sub nsw i32 %139, %141
  %143 = icmp slt i32 %142, 16
  br i1 %143, label %144, label %165

144:                                              ; preds = %132
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = sub nsw i32 %148, %150
  %152 = sub nsw i32 %151, 16
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %152, i32* %153, align 16
  %154 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %155 = load i32, i32* %154, align 16
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %144
  %158 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %159 = load i32, i32* %158, align 16
  %160 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, %159
  store i32 %162, i32* %160, align 4
  %163 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %163, align 16
  br label %164

164:                                              ; preds = %157, %144
  br label %165

165:                                              ; preds = %164, %132
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %171 = load i32, i32* %170, align 8
  %172 = sub nsw i32 %169, %171
  %173 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %174 = load i32, i32* %173, align 4
  %175 = sub nsw i32 %172, %174
  %176 = icmp slt i32 %175, 16
  br i1 %176, label %177, label %198

177:                                              ; preds = %165
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %183 = load i32, i32* %182, align 4
  %184 = sub nsw i32 %181, %183
  %185 = sub nsw i32 %184, 16
  %186 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 %185, i32* %186, align 8
  %187 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %188 = load i32, i32* %187, align 8
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %177
  %191 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %192 = load i32, i32* %191, align 8
  %193 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, %192
  store i32 %195, i32* %193, align 4
  %196 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 0, i32* %196, align 8
  br label %197

197:                                              ; preds = %190, %177
  br label %198

198:                                              ; preds = %197, %165
  %199 = load i32*, i32** %3, align 8
  %200 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %201 = load i32, i32* %200, align 16
  %202 = call i32 @ghb_dict_set_int(i32* %199, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %201)
  %203 = load i32*, i32** %3, align 8
  %204 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @ghb_dict_set_int(i32* %203, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %205)
  %207 = load i32*, i32** %3, align 8
  %208 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @ghb_dict_set_int(i32* %207, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %209)
  %211 = load i32*, i32** %3, align 8
  %212 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @ghb_dict_set_int(i32* %211, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %213)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @ghb_dict_get_bool(i32*, i8*) #2

declare dso_local i32 @ghb_dict_get_int(i32*, i8*) #2

declare dso_local i32 @ghb_settings_combo_int(i32*, i8*) #2

declare dso_local i32 @MOD_DOWN(i32, i32) #2

declare dso_local i32 @EVEN(i32) #2

declare dso_local i32 @ghb_dict_set_int(i32*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
