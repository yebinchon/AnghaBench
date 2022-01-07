; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/lists/extr_file_list.c_file_list_insert.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/lists/extr_file_list.c_file_list_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.item_file* }
%struct.item_file = type { i32, i64, i64, i32*, i32*, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_list_insert(%struct.TYPE_4__* %0, i8* %1, i8* %2, i32 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.item_file*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %20, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %7
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 2
  %31 = add nsw i32 %30, 1
  %32 = call i32 @file_list_reserve(%struct.TYPE_4__* %26, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %166

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35, %7
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %16, align 4
  br label %40

40:                                               ; preds = %81, %36
  %41 = load i32, i32* %16, align 4
  %42 = load i64, i64* %15, align 8
  %43 = trunc i64 %42 to i32
  %44 = icmp sgt i32 %41, %43
  br i1 %44, label %45, label %84

45:                                               ; preds = %40
  %46 = call i64 @calloc(i32 1, i32 64)
  %47 = inttoptr i64 %46 to %struct.item_file*
  store %struct.item_file* %47, %struct.item_file** %17, align 8
  %48 = load %struct.item_file*, %struct.item_file** %17, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load %struct.item_file*, %struct.item_file** %50, align 8
  %52 = load i32, i32* %16, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.item_file, %struct.item_file* %51, i64 %54
  %56 = call i32 @memcpy(%struct.item_file* %48, %struct.item_file* %55, i32 64)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load %struct.item_file*, %struct.item_file** %58, align 8
  %60 = load i32, i32* %16, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.item_file, %struct.item_file* %59, i64 %62
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load %struct.item_file*, %struct.item_file** %65, align 8
  %67 = load i32, i32* %16, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.item_file, %struct.item_file* %66, i64 %68
  %70 = call i32 @memcpy(%struct.item_file* %63, %struct.item_file* %69, i32 64)
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load %struct.item_file*, %struct.item_file** %72, align 8
  %74 = load i32, i32* %16, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.item_file, %struct.item_file* %73, i64 %75
  %77 = load %struct.item_file*, %struct.item_file** %17, align 8
  %78 = call i32 @memcpy(%struct.item_file* %76, %struct.item_file* %77, i32 64)
  %79 = load %struct.item_file*, %struct.item_file** %17, align 8
  %80 = call i32 @free(%struct.item_file* %79)
  br label %81

81:                                               ; preds = %45
  %82 = load i32, i32* %16, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %16, align 4
  br label %40

84:                                               ; preds = %40
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load %struct.item_file*, %struct.item_file** %86, align 8
  %88 = load i64, i64* %15, align 8
  %89 = getelementptr inbounds %struct.item_file, %struct.item_file* %87, i64 %88
  %90 = getelementptr inbounds %struct.item_file, %struct.item_file* %89, i32 0, i32 3
  store i32* null, i32** %90, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load %struct.item_file*, %struct.item_file** %92, align 8
  %94 = load i64, i64* %15, align 8
  %95 = getelementptr inbounds %struct.item_file, %struct.item_file* %93, i64 %94
  %96 = getelementptr inbounds %struct.item_file, %struct.item_file* %95, i32 0, i32 4
  store i32* null, i32** %96, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load %struct.item_file*, %struct.item_file** %98, align 8
  %100 = load i64, i64* %15, align 8
  %101 = getelementptr inbounds %struct.item_file, %struct.item_file* %99, i64 %100
  %102 = getelementptr inbounds %struct.item_file, %struct.item_file* %101, i32 0, i32 7
  store i32* null, i32** %102, align 8
  %103 = load i32, i32* %12, align 4
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load %struct.item_file*, %struct.item_file** %105, align 8
  %107 = load i64, i64* %15, align 8
  %108 = getelementptr inbounds %struct.item_file, %struct.item_file* %106, i64 %107
  %109 = getelementptr inbounds %struct.item_file, %struct.item_file* %108, i32 0, i32 0
  store i32 %103, i32* %109, align 8
  %110 = load i64, i64* %13, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  %113 = load %struct.item_file*, %struct.item_file** %112, align 8
  %114 = load i64, i64* %15, align 8
  %115 = getelementptr inbounds %struct.item_file, %struct.item_file* %113, i64 %114
  %116 = getelementptr inbounds %struct.item_file, %struct.item_file* %115, i32 0, i32 1
  store i64 %110, i64* %116, align 8
  %117 = load i64, i64* %14, align 8
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  %120 = load %struct.item_file*, %struct.item_file** %119, align 8
  %121 = load i64, i64* %15, align 8
  %122 = getelementptr inbounds %struct.item_file, %struct.item_file* %120, i64 %121
  %123 = getelementptr inbounds %struct.item_file, %struct.item_file* %122, i32 0, i32 2
  store i64 %117, i64* %123, align 8
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 2
  %126 = load %struct.item_file*, %struct.item_file** %125, align 8
  %127 = load i64, i64* %15, align 8
  %128 = getelementptr inbounds %struct.item_file, %struct.item_file* %126, i64 %127
  %129 = getelementptr inbounds %struct.item_file, %struct.item_file* %128, i32 0, i32 6
  store i32* null, i32** %129, align 8
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  %132 = load %struct.item_file*, %struct.item_file** %131, align 8
  %133 = load i64, i64* %15, align 8
  %134 = getelementptr inbounds %struct.item_file, %struct.item_file* %132, i64 %133
  %135 = getelementptr inbounds %struct.item_file, %struct.item_file* %134, i32 0, i32 5
  store i32* null, i32** %135, align 8
  %136 = load i8*, i8** %11, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %148

138:                                              ; preds = %84
  %139 = load i8*, i8** %11, align 8
  %140 = call i8* @strdup(i8* %139)
  %141 = bitcast i8* %140 to i32*
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 2
  %144 = load %struct.item_file*, %struct.item_file** %143, align 8
  %145 = load i64, i64* %15, align 8
  %146 = getelementptr inbounds %struct.item_file, %struct.item_file* %144, i64 %145
  %147 = getelementptr inbounds %struct.item_file, %struct.item_file* %146, i32 0, i32 4
  store i32* %141, i32** %147, align 8
  br label %148

148:                                              ; preds = %138, %84
  %149 = load i8*, i8** %10, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %161

151:                                              ; preds = %148
  %152 = load i8*, i8** %10, align 8
  %153 = call i8* @strdup(i8* %152)
  %154 = bitcast i8* %153 to i32*
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 2
  %157 = load %struct.item_file*, %struct.item_file** %156, align 8
  %158 = load i64, i64* %15, align 8
  %159 = getelementptr inbounds %struct.item_file, %struct.item_file* %157, i64 %158
  %160 = getelementptr inbounds %struct.item_file, %struct.item_file* %159, i32 0, i32 3
  store i32* %154, i32** %160, align 8
  br label %161

161:                                              ; preds = %151, %148
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 8
  store i32 1, i32* %8, align 4
  br label %166

166:                                              ; preds = %161, %34
  %167 = load i32, i32* %8, align 4
  ret i32 %167
}

declare dso_local i32 @file_list_reserve(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.item_file*, %struct.item_file*, i32) #1

declare dso_local i32 @free(%struct.item_file*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
