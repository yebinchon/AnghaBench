; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_ivace_reference_by_value.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_ivace_reference_by_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32, i32, i8*, i8*, i32 }
%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_10__*, i32 }

@IVACE_NULL = common dso_local global %struct.TYPE_10__* null, align 8
@IVAC_NULL = common dso_local global %struct.TYPE_11__* null, align 8
@IV_UNUSED_VALINDEX = common dso_local global i64 0, align 8
@IV_HASH_END = common dso_local global i64 0, align 8
@IV_FREELIST_END = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@MACH_VOUCHER_ATTR_VALUE_FLAGS_PERSIST = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, i32, i32)* @ivace_reference_by_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ivace_reference_by_value(%struct.TYPE_11__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** @IVACE_NULL, align 8
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %8, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** @IVAC_NULL, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = icmp eq %struct.TYPE_11__* %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i64, i64* @IV_UNUSED_VALINDEX, align 8
  store i64 %16, i64* %4, align 8
  br label %160

17:                                               ; preds = %3
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = call i32 @ivac_lock(%struct.TYPE_11__* %18)
  br label %20

20:                                               ; preds = %105, %17
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @IV_HASH_VAL(i32 %23, i32 %24)
  store i64 %25, i64* %9, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %10, align 8
  br label %33

33:                                               ; preds = %63, %20
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @IV_HASH_END, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %74

37:                                               ; preds = %33
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %38, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i64 %48
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %8, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 5
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %37
  br label %74

63:                                               ; preds = %37
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %10, align 8
  %68 = icmp ne i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %10, align 8
  br label %33

74:                                               ; preds = %62, %33
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* @IV_HASH_END, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %98

78:                                               ; preds = %74
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 4
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %92, label %83

83:                                               ; preds = %78
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %83, %78
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %94 = call i32 @ivac_unlock(%struct.TYPE_11__* %93)
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %96 = call i32 @ivac_release(%struct.TYPE_11__* %95)
  %97 = load i64, i64* %10, align 8
  store i64 %97, i64* %4, align 8
  br label %160

98:                                               ; preds = %74
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %10, align 8
  %102 = load i64, i64* @IV_FREELIST_END, align 8
  %103 = load i64, i64* %10, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %107 = call i32 @ivac_grow_table(%struct.TYPE_11__* %106)
  br label %20

108:                                              ; preds = %98
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = load i64, i64* %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i64 %112
  store %struct.TYPE_10__* %113, %struct.TYPE_10__** %8, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  %119 = load i32, i32* %6, align 4
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 6
  store i32 %119, i32* %121, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  store i32 1, i32* %123, align 8
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 3
  store i32 1, i32* %125, align 4
  %126 = load i8*, i8** @FALSE, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 5
  store i8* %126, i8** %128, align 8
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* @MACH_VOUCHER_ATTR_VALUE_FLAGS_PERSIST, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %108
  %134 = load i8*, i8** @TRUE, align 8
  br label %137

135:                                              ; preds = %108
  %136 = load i8*, i8** @FALSE, align 8
  br label %137

137:                                              ; preds = %135, %133
  %138 = phi i8* [ %134, %133 ], [ %136, %135 ]
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 4
  store i8* %138, i8** %140, align 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = load i64, i64* %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 1
  store i64 %147, i64* %149, align 8
  %150 = load i64, i64* %10, align 8
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %152, align 8
  %154 = load i64, i64* %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  store i64 %150, i64* %156, align 8
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %158 = call i32 @ivac_unlock(%struct.TYPE_11__* %157)
  %159 = load i64, i64* %10, align 8
  store i64 %159, i64* %4, align 8
  br label %160

160:                                              ; preds = %137, %92, %15
  %161 = load i64, i64* %4, align 8
  ret i64 %161
}

declare dso_local i32 @ivac_lock(%struct.TYPE_11__*) #1

declare dso_local i64 @IV_HASH_VAL(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ivac_unlock(%struct.TYPE_11__*) #1

declare dso_local i32 @ivac_release(%struct.TYPE_11__*) #1

declare dso_local i32 @ivac_grow_table(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
