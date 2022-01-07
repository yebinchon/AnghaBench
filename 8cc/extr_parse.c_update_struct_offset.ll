; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_update_struct_offset.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_update_struct_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, i64, i32, i32 }

@KIND_STRUCT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @update_struct_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @update_struct_offset(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %16 = call i32* (...) @make_dict()
  store i32* %16, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %163, %3
  %18 = load i32, i32* %10, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @vec_len(i32* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %166

22:                                               ; preds = %17
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i8** @vec_get(i32* %23, i32 %24)
  store i8** %25, i8*** %11, align 8
  %26 = load i8**, i8*** %11, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %12, align 8
  %29 = load i8**, i8*** %11, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = bitcast i8* %31 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %13, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %22
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @MAX(i32 %37, i32 %40)
  %42 = load i32*, i32** %5, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %35, %22
  %44 = load i8*, i8** %12, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %70

46:                                               ; preds = %43
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @KIND_STRUCT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %70

52:                                               ; preds = %46
  %53 = call i32 @finish_bitfield(i32* %7, i32* %8)
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @compute_padding(i32 %54, i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @squash_unnamed_struct(i32* %61, %struct.TYPE_4__* %62, i32 %63)
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %163

70:                                               ; preds = %46, %43
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = call i32 @finish_bitfield(i32* %7, i32* %8)
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @compute_padding(i32 %77, i32 %80)
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %163

84:                                               ; preds = %70
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %137

89:                                               ; preds = %84
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = mul nsw i32 %92, 8
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %7, align 4
  %96 = mul nsw i32 %95, 8
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %96, %97
  %99 = load i32, i32* %14, align 4
  %100 = srem i32 %98, %99
  %101 = sub nsw i32 %94, %100
  store i32 %101, i32* %15, align 4
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = icmp sle i64 %104, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %89
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 5
  store i32 %112, i32* %114, align 4
  br label %129

115:                                              ; preds = %89
  %116 = call i32 @finish_bitfield(i32* %7, i32* %8)
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @compute_padding(i32 %117, i32 %120)
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 8
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 5
  store i32 0, i32* %128, align 4
  br label %129

129:                                              ; preds = %115, %108
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %134, %132
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %8, align 4
  br label %154

137:                                              ; preds = %84
  %138 = call i32 @finish_bitfield(i32* %7, i32* %8)
  %139 = load i32, i32* %7, align 4
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @compute_padding(i32 %139, i32 %142)
  %144 = load i32, i32* %7, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 8
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %7, align 4
  br label %154

154:                                              ; preds = %137, %129
  %155 = load i8*, i8** %12, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %162

157:                                              ; preds = %154
  %158 = load i32*, i32** %9, align 8
  %159 = load i8*, i8** %12, align 8
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %161 = call i32 @dict_put(i32* %158, i8* %159, %struct.TYPE_4__* %160)
  br label %162

162:                                              ; preds = %157, %154
  br label %163

163:                                              ; preds = %162, %75, %52
  %164 = load i32, i32* %10, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %10, align 4
  br label %17

166:                                              ; preds = %17
  %167 = call i32 @finish_bitfield(i32* %7, i32* %8)
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* %7, align 4
  %170 = load i32*, i32** %5, align 8
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @compute_padding(i32 %169, i32 %171)
  %173 = add nsw i32 %168, %172
  %174 = load i32*, i32** %4, align 8
  store i32 %173, i32* %174, align 4
  %175 = load i32*, i32** %9, align 8
  ret i32* %175
}

declare dso_local i32* @make_dict(...) #1

declare dso_local i32 @vec_len(i32*) #1

declare dso_local i8** @vec_get(i32*, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @finish_bitfield(i32*, i32*) #1

declare dso_local i32 @compute_padding(i32, i32) #1

declare dso_local i32 @squash_unnamed_struct(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @dict_put(i32*, i8*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
