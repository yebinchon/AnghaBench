; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_cdata.c_kcdata_get_memory_addr_with_flavor.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_cdata.c_kcdata_get_memory_addr_with_flavor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i32 }
%struct.kcdata_item = type { i32, i64, i64 }

@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@KERN_RESOURCE_SHORTAGE = common dso_local global i64 0, align 8
@KCFLAG_NO_AUTO_ENDBUFFER = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i64, i64, i32, i64*)* @kcdata_get_memory_addr_with_flavor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kcdata_get_memory_addr_with_flavor(%struct.TYPE_6__* %0, i64 %1, i64 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.kcdata_item, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %17 = load i64, i64* %9, align 8
  store i64 %17, i64* %14, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i64 @kcdata_calc_padding(i64 %18)
  store i64 %19, i64* %15, align 8
  %20 = load i64, i64* %15, align 8
  %21 = load i64, i64* %9, align 8
  %22 = add nsw i64 %21, %20
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = add i64 %23, 24
  store i64 %24, i64* %16, align 8
  %25 = load i64*, i64** %11, align 8
  %26 = icmp eq i64* %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %5
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = icmp eq %struct.TYPE_6__* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* %16, align 8
  %32 = add i64 %31, 24
  %33 = load i64, i64* %14, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30, %27, %5
  %36 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %36, i64* %6, align 8
  br label %122

37:                                               ; preds = %30
  %38 = call i32 @bzero(%struct.kcdata_item* %13, i32 24)
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds %struct.kcdata_item, %struct.kcdata_item* %13, i32 0, i32 2
  store i64 %39, i64* %40, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds %struct.kcdata_item, %struct.kcdata_item* %13, i32 0, i32 1
  store i64 %41, i64* %42, align 8
  %43 = load i32, i32* %10, align 4
  %44 = getelementptr inbounds %struct.kcdata_item, %struct.kcdata_item* %13, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = load i64, i64* %16, align 8
  %46 = add i64 %45, 24
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ugt i64 %46, %49
  br i1 %50, label %66, label %51

51:                                               ; preds = %37
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %16, align 8
  %56 = add i64 %55, 24
  %57 = sub i64 %54, %56
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %60, %63
  %65 = icmp ult i64 %57, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %51, %37
  %67 = load i64, i64* @KERN_RESOURCE_SHORTAGE, align 8
  store i64 %67, i64* %6, align 8
  br label %122

68:                                               ; preds = %51
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @kcdata_memcpy(%struct.TYPE_6__* %69, i64 %72, %struct.kcdata_item* %13, i32 24)
  store i64 %73, i64* %12, align 8
  %74 = load i64, i64* %12, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = load i64, i64* %12, align 8
  store i64 %77, i64* %6, align 8
  br label %122

78:                                               ; preds = %68
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %81, 24
  store i64 %82, i64* %80, align 8
  %83 = load i64, i64* %15, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %78
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %9, align 8
  %91 = add nsw i64 %89, %90
  %92 = load i64, i64* %15, align 8
  %93 = sub nsw i64 %91, %92
  %94 = load i64, i64* %15, align 8
  %95 = call i64 @kcdata_bzero(%struct.TYPE_6__* %86, i64 %93, i64 %94)
  store i64 %95, i64* %12, align 8
  %96 = load i64, i64* %12, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %85
  %99 = load i64, i64* %12, align 8
  store i64 %99, i64* %6, align 8
  br label %122

100:                                              ; preds = %85
  br label %101

101:                                              ; preds = %100, %78
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %11, align 8
  store i64 %104, i64* %105, align 8
  %106 = load i64, i64* %9, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, %106
  store i64 %110, i64* %108, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @KCFLAG_NO_AUTO_ENDBUFFER, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %101
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %119 = call i64 @kcdata_write_buffer_end(%struct.TYPE_6__* %118)
  store i64 %119, i64* %6, align 8
  br label %122

120:                                              ; preds = %101
  %121 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %121, i64* %6, align 8
  br label %122

122:                                              ; preds = %120, %117, %98, %76, %66, %35
  %123 = load i64, i64* %6, align 8
  ret i64 %123
}

declare dso_local i64 @kcdata_calc_padding(i64) #1

declare dso_local i32 @bzero(%struct.kcdata_item*, i32) #1

declare dso_local i64 @kcdata_memcpy(%struct.TYPE_6__*, i64, %struct.kcdata_item*, i32) #1

declare dso_local i64 @kcdata_bzero(%struct.TYPE_6__*, i64, i64) #1

declare dso_local i64 @kcdata_write_buffer_end(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
