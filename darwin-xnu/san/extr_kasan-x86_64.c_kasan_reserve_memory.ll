; ModuleID = '/home/carl/AnghaBench/darwin-xnu/san/extr_kasan-x86_64.c_kasan_reserve_memory.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/san/extr_kasan-x86_64.c_kasan_reserve_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i64, i64 }
%struct.TYPE_4__ = type { i64, i32, i64 }

@kernel_vbase = common dso_local global i8* null, align 8
@kernel_vtop = common dso_local global i8* null, align 8
@STOLEN_MEM_PERCENT = common dso_local global i64 0, align 8
@STOLEN_MEM_BYTES = common dso_local global i64 0, align 8
@I386_PGBYTES = common dso_local global i64 0, align 8
@I386_PGSHIFT = common dso_local global i32 0, align 4
@kEfiConventionalMemory = common dso_local global i64 0, align 8
@shadow_pbase = common dso_local global i64 0, align 8
@shadow_ptop = common dso_local global i64 0, align 8
@shadow_pnext = common dso_local global i64 0, align 8
@shadow_pages_total = common dso_local global i64 0, align 8
@shadow_stolen_idx = common dso_local global i32 0, align 4
@zero_superpage_phys = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"KASAN: could not reserve memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kasan_reserve_memory(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %3, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %4, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i8* @ml_static_ptovirt(i64 %27)
  store i8* %28, i8** @kernel_vbase, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i8* @ml_static_ptovirt(i64 %29)
  store i8* %30, i8** @kernel_vtop, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i8* @ml_static_ptovirt(i64 %33)
  %35 = bitcast i8* %34 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %6, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %9, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %9, align 4
  %43 = udiv i32 %41, %42
  store i32 %43, i32* %8, align 4
  store i64 0, i64* %11, align 8
  store i32 0, i32* %10, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %7, align 8
  br label %45

45:                                               ; preds = %55, %1
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %45
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %11, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %11, align 8
  br label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %10, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %10, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %59 = ptrtoint %struct.TYPE_4__* %58 to i64
  %60 = load i32, i32* %9, align 4
  %61 = zext i32 %60 to i64
  %62 = add nsw i64 %59, %61
  %63 = inttoptr i64 %62 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %63, %struct.TYPE_4__** %7, align 8
  br label %45

64:                                               ; preds = %45
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* @STOLEN_MEM_PERCENT, align 8
  %67 = mul i64 %65, %66
  %68 = udiv i64 %67, 100
  %69 = load i64, i64* @STOLEN_MEM_BYTES, align 8
  %70 = load i64, i64* @I386_PGBYTES, align 8
  %71 = udiv i64 %69, %70
  %72 = add i64 %68, %71
  store i64 %72, i64* %12, align 8
  store i32 0, i32* %10, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %73, %struct.TYPE_4__** %7, align 8
  br label %74

74:                                               ; preds = %135, %64
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %144

78:                                               ; preds = %74
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @I386_PGSHIFT, align 4
  %83 = ashr i32 %81, %82
  %84 = sext i32 %83 to i64
  store i64 %84, i64* %13, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @I386_PGSHIFT, align 4
  %89 = ashr i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %90, %93
  %95 = sub i64 %94, 1
  store i64 %95, i64* %14, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @kEfiConventionalMemory, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %134

101:                                              ; preds = %78
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %12, align 8
  %106 = icmp ugt i64 %104, %105
  br i1 %106, label %107, label %134

107:                                              ; preds = %101
  %108 = load i64, i64* %12, align 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = sub i64 %111, %108
  store i64 %112, i64* %110, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* @I386_PGSHIFT, align 4
  %121 = zext i32 %120 to i64
  %122 = shl i64 %119, %121
  %123 = add i64 %116, %122
  store i64 %123, i64* @shadow_pbase, align 8
  %124 = load i64, i64* @shadow_pbase, align 8
  %125 = load i64, i64* %12, align 8
  %126 = load i32, i32* @I386_PGSHIFT, align 4
  %127 = zext i32 %126 to i64
  %128 = shl i64 %125, %127
  %129 = add i64 %124, %128
  store i64 %129, i64* @shadow_ptop, align 8
  %130 = load i64, i64* @shadow_pbase, align 8
  store i64 %130, i64* @shadow_pnext, align 8
  %131 = load i64, i64* %12, align 8
  store i64 %131, i64* @shadow_pages_total, align 8
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* @shadow_stolen_idx, align 4
  %133 = call i32 (...) @alloc_superpage()
  store i32 %133, i32* @zero_superpage_phys, align 4
  br label %146

134:                                              ; preds = %101, %78
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %10, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %10, align 4
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %139 = ptrtoint %struct.TYPE_4__* %138 to i64
  %140 = load i32, i32* %9, align 4
  %141 = zext i32 %140 to i64
  %142 = add nsw i64 %139, %141
  %143 = inttoptr i64 %142 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %143, %struct.TYPE_4__** %7, align 8
  br label %74

144:                                              ; preds = %74
  %145 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144, %107
  ret void
}

declare dso_local i8* @ml_static_ptovirt(i64) #1

declare dso_local i32 @alloc_superpage(...) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
