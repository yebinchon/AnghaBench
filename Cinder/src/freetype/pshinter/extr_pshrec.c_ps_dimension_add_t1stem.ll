; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/pshinter/extr_pshrec.c_ps_dimension_add_t1stem.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/pshinter/extr_pshrec.c_ps_dimension_add_t1stem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i64 }

@FT_Err_Ok = common dso_local global i32 0, align 4
@PS_HINT_FLAG_GHOST = common dso_local global i64 0, align 8
@PS_HINT_FLAG_BOTTOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32, i32, i32*)* @ps_dimension_add_t1stem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps_dimension_add_t1stem(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %17 = load i32, i32* @FT_Err_Ok, align 4
  store i32 %17, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %5
  %21 = load i64, i64* @PS_HINT_FLAG_GHOST, align 8
  %22 = load i64, i64* %12, align 8
  %23 = or i64 %22, %21
  store i64 %23, i64* %12, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, -21
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load i64, i64* @PS_HINT_FLAG_BOTTOM, align 8
  %28 = load i64, i64* %12, align 8
  %29 = or i64 %28, %27
  store i64 %29, i64* %12, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %26, %20
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %33, %5
  %35 = load i32*, i32** %10, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32*, i32** %10, align 8
  store i32 -1, i32* %38, align 4
  br label %39

39:                                               ; preds = %37, %34
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %15, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %16, align 8
  store i64 0, i64* %14, align 8
  br label %48

48:                                               ; preds = %66, %39
  %49 = load i64, i64* %14, align 8
  %50 = load i64, i64* %15, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %48
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %71

65:                                               ; preds = %58, %52
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %14, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %14, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 1
  store %struct.TYPE_6__* %70, %struct.TYPE_6__** %16, align 8
  br label %48

71:                                               ; preds = %64, %48
  %72 = load i64, i64* %14, align 8
  %73 = load i64, i64* %15, align 8
  %74 = icmp sge i64 %72, %73
  br i1 %74, label %75, label %93

75:                                               ; preds = %71
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @ps_hint_table_alloc(%struct.TYPE_8__* %77, i32 %78, %struct.TYPE_6__** %16)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %117

83:                                               ; preds = %75
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load i64, i64* %12, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %83, %71
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @ps_mask_table_last(i32* %95, i32 %96, i32* %13)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %117

101:                                              ; preds = %93
  %102 = load i32, i32* %13, align 4
  %103 = load i64, i64* %14, align 8
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @ps_mask_set_bit(i32 %102, i64 %103, i32 %104)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  br label %117

109:                                              ; preds = %101
  %110 = load i32*, i32** %10, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load i64, i64* %14, align 8
  %114 = trunc i64 %113 to i32
  %115 = load i32*, i32** %10, align 8
  store i32 %114, i32* %115, align 4
  br label %116

116:                                              ; preds = %112, %109
  br label %117

117:                                              ; preds = %116, %108, %100, %82
  %118 = load i32, i32* %11, align 4
  ret i32 %118
}

declare dso_local i32 @ps_hint_table_alloc(%struct.TYPE_8__*, i32, %struct.TYPE_6__**) #1

declare dso_local i32 @ps_mask_table_last(i32*, i32, i32*) #1

declare dso_local i32 @ps_mask_set_bit(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
