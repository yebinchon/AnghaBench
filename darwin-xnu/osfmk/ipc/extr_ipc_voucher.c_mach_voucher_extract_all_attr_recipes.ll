; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_mach_voucher_extract_all_attr_recipes.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_mach_voucher_extract_all_attr_recipes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i64 (%struct.TYPE_12__*, i32, i32*, i64, i32*, i32, i64*)* }
%struct.TYPE_10__ = type { i64, i32, i32, i32 }

@IV_NULL = common dso_local global %struct.TYPE_11__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@MACH_VOUCHER_ATTR_VALUE_MAX_NESTED = common dso_local global i32 0, align 4
@IV_UNUSED_VALINDEX = common dso_local global i64 0, align 8
@KERN_NO_SPACE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@IVAM_NULL = common dso_local global %struct.TYPE_12__* null, align 8
@MACH_VOUCHER_ATTR_NOOP = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mach_voucher_extract_all_attr_recipes(%struct.TYPE_11__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** @IV_NULL, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = icmp eq %struct.TYPE_11__* %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %27, i64* %4, align 8
  br label %144

28:                                               ; preds = %3
  store i64 0, i64* %10, align 8
  br label %29

29:                                               ; preds = %137, %28
  %30 = load i64, i64* %10, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %35, label %140

35:                                               ; preds = %29
  %36 = load i32, i32* @MACH_VOUCHER_ATTR_VALUE_MAX_NESTED, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %11, align 8
  %39 = alloca i32, i64 %37, align 16
  store i64 %37, i64* %12, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %41 = load i64, i64* %10, align 8
  %42 = call i64 @iv_lookup(%struct.TYPE_11__* %40, i64 %41)
  store i64 %42, i64* %18, align 8
  %43 = load i64, i64* @IV_UNUSED_VALINDEX, align 8
  %44 = load i64, i64* %18, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  store i32 4, i32* %20, align 4
  br label %133

47:                                               ; preds = %35
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = sub nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = icmp ult i64 %51, 24
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i64, i64* @KERN_NO_SPACE, align 8
  store i64 %54, i64* %4, align 8
  store i32 1, i32* %20, align 4
  br label %133

55:                                               ; preds = %47
  %56 = load i64, i64* %10, align 8
  %57 = load i32, i32* @FALSE, align 4
  %58 = call i32 @ivgt_lookup(i64 %56, i32 %57, %struct.TYPE_12__** %15, i32* null)
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** @IVAM_NULL, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %61 = icmp ne %struct.TYPE_12__* %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** @IVAM_NULL, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %66 = icmp eq %struct.TYPE_12__* %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  store i32 4, i32* %20, align 4
  br label %133

68:                                               ; preds = %55
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = bitcast i32* %72 to i8*
  %74 = bitcast i8* %73 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %74, %struct.TYPE_10__** %16, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = sub nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = sub i64 %78, 24
  store i64 %79, i64* %14, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* %18, align 8
  %82 = call i32 @ivace_lookup_values(i64 %80, i64 %81, i32* %39, i64* %13)
  %83 = load i64, i64* %13, align 8
  %84 = icmp slt i64 0, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load i64, i64* %10, align 8
  %88 = call i32 @iv_index_to_key(i64 %87)
  store i32 %88, i32* %17, align 4
  %89 = load i32, i32* %17, align 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* @MACH_VOUCHER_ATTR_NOOP, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  %95 = load i64, i64* %14, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i64 (%struct.TYPE_12__*, i32, i32*, i64, i32*, i32, i64*)*, i64 (%struct.TYPE_12__*, i32, i32*, i64, i32*, i32, i64*)** %99, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %102 = load i32, i32* %17, align 4
  %103 = load i64, i64* %13, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = call i64 %100(%struct.TYPE_12__* %101, i32 %102, i32* %39, i64 %103, i32* %105, i32 %108, i64* %110)
  store i64 %111, i64* %19, align 8
  %112 = load i64, i64* @KERN_SUCCESS, align 8
  %113 = load i64, i64* %19, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %68
  %116 = load i64, i64* %19, align 8
  store i64 %116, i64* %4, align 8
  store i32 1, i32* %20, align 4
  br label %133

117:                                              ; preds = %68
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %14, align 8
  %122 = icmp sle i64 %120, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert(i32 %123)
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = add i64 24, %127
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = add i64 %130, %128
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %9, align 4
  store i32 0, i32* %20, align 4
  br label %133

133:                                              ; preds = %117, %115, %67, %53, %46
  %134 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %134)
  %135 = load i32, i32* %20, align 4
  switch i32 %135, label %146 [
    i32 0, label %136
    i32 4, label %137
    i32 1, label %144
  ]

136:                                              ; preds = %133
  br label %137

137:                                              ; preds = %136, %133
  %138 = load i64, i64* %10, align 8
  %139 = add nsw i64 %138, 1
  store i64 %139, i64* %10, align 8
  br label %29

140:                                              ; preds = %29
  %141 = load i32, i32* %9, align 4
  %142 = load i32*, i32** %7, align 8
  store i32 %141, i32* %142, align 4
  %143 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %143, i64* %4, align 8
  br label %144

144:                                              ; preds = %140, %133, %26
  %145 = load i64, i64* %4, align 8
  ret i64 %145

146:                                              ; preds = %133
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @iv_lookup(%struct.TYPE_11__*, i64) #2

declare dso_local i32 @ivgt_lookup(i64, i32, %struct.TYPE_12__**, i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @ivace_lookup_values(i64, i64, i32*, i64*) #2

declare dso_local i32 @iv_index_to_key(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
