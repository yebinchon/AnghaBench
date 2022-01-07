; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_ipc_voucher_prepare_processing_recipe.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_ipc_voucher_prepare_processing_recipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__*, i32, i32 }

@IV_NULL = common dso_local global %struct.TYPE_9__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KERN_NO_SPACE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MACH_VOUCHER_ATTR_KEY_ALL = common dso_local global i32 0, align 4
@MACH_VOUCHER_ATTR_COPY = common dso_local global i32 0, align 4
@IV_UNUSED_VALINDEX = common dso_local global i64 0, align 8
@IVAM_NULL = common dso_local global %struct.TYPE_11__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i32*, i32, i32, i32*)* @ipc_voucher_prepare_processing_recipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipc_voucher_prepare_processing_recipe(%struct.TYPE_9__* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** @IV_NULL, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %25 = icmp eq %struct.TYPE_9__* %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %27, i32* %7, align 4
  br label %142

28:                                               ; preds = %6
  %29 = load i32, i32* %14, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ult i64 %30, 24
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @KERN_NO_SPACE, align 4
  store i32 %33, i32* %7, align 4
  br label %142

34:                                               ; preds = %28
  %35 = load i32, i32* @FALSE, align 4
  %36 = load i32*, i32** %13, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %15, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = bitcast i32* %40 to i8*
  %42 = bitcast i8* %41 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %17, align 8
  %43 = load i32, i32* @MACH_VOUCHER_ATTR_KEY_ALL, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @MACH_VOUCHER_ATTR_COPY, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %51, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add i64 24, %56
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = add i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %15, align 4
  store i64 0, i64* %16, align 8
  br label %62

62:                                               ; preds = %135, %34
  %63 = load i64, i64* %16, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %63, %66
  br i1 %67, label %68, label %138

68:                                               ; preds = %62
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %70 = load i64, i64* %16, align 8
  %71 = call i64 @iv_lookup(%struct.TYPE_9__* %69, i64 %70)
  store i64 %71, i64* %20, align 8
  %72 = load i64, i64* @IV_UNUSED_VALINDEX, align 8
  %73 = load i64, i64* %20, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %135

76:                                               ; preds = %68
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %15, align 4
  %79 = sub nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = icmp ult i64 %80, 24
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* @KERN_NO_SPACE, align 4
  store i32 %83, i32* %7, align 4
  br label %142

84:                                               ; preds = %76
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = bitcast i32* %88 to i8*
  %90 = bitcast i8* %89 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %90, %struct.TYPE_10__** %17, align 8
  %91 = load i64, i64* %16, align 8
  %92 = load i32, i32* @FALSE, align 4
  %93 = call i32 @ivgt_lookup(i64 %91, i32 %92, %struct.TYPE_11__** %18, i32* null)
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** @IVAM_NULL, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %96 = icmp ne %struct.TYPE_11__* %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** @IVAM_NULL, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %101 = icmp eq %struct.TYPE_11__* %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %84
  br label %135

103:                                              ; preds = %84
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %12, align 4
  %108 = and i32 %106, %107
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %135

111:                                              ; preds = %103
  %112 = load i64, i64* %16, align 8
  %113 = call i32 @iv_index_to_key(i64 %112)
  store i32 %113, i32* %19, align 4
  %114 = load i32, i32* %19, align 4
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  store i64 0, i64* %121, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  store %struct.TYPE_9__* %122, %struct.TYPE_9__** %124, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = add i64 24, %127
  %129 = load i32, i32* %15, align 4
  %130 = sext i32 %129 to i64
  %131 = add i64 %130, %128
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* @TRUE, align 4
  %134 = load i32*, i32** %13, align 8
  store i32 %133, i32* %134, align 4
  br label %135

135:                                              ; preds = %111, %110, %102, %75
  %136 = load i64, i64* %16, align 8
  %137 = add nsw i64 %136, 1
  store i64 %137, i64* %16, align 8
  br label %62

138:                                              ; preds = %62
  %139 = load i32, i32* %15, align 4
  %140 = load i32*, i32** %10, align 8
  store i32 %139, i32* %140, align 4
  %141 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %138, %82, %32, %26
  %143 = load i32, i32* %7, align 4
  ret i32 %143
}

declare dso_local i64 @iv_lookup(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @ivgt_lookup(i64, i32, %struct.TYPE_11__**, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @iv_index_to_key(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
