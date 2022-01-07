; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_list_getbytes.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_list_getbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hb_list_getbytes(i32* %0, i32* %1, i32 %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %17 = load i64*, i64** %9, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store i64* %15, i64** %9, align 8
  br label %20

20:                                               ; preds = %19, %5
  %21 = load i64*, i64** %10, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  store i64* %16, i64** %10, align 8
  br label %24

24:                                               ; preds = %23, %20
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %25

25:                                               ; preds = %87, %24
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %91

29:                                               ; preds = %25
  %30 = load i32*, i32** %6, align 8
  %31 = call %struct.TYPE_7__* @hb_list_item(i32* %30, i32 0)
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %11, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = sub i64 %34, %37
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %12, align 4
  %41 = sub nsw i32 %39, %40
  %42 = call i32 @MIN(i64 %38, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @memcpy(i32* %46, i32* %53, i32 %54)
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %29
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64*, i64** %9, align 8
  store i64 %62, i64* %63, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64*, i64** %10, align 8
  store i64 %66, i64* %67, align 8
  store i32 1, i32* %14, align 4
  br label %68

68:                                               ; preds = %58, %29
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, %70
  store i64 %74, i64* %72, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp uge i64 %77, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %68
  %83 = load i32*, i32** %6, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %85 = call i32 @hb_list_rem(i32* %83, %struct.TYPE_7__* %84)
  %86 = call i32 @hb_buffer_close(%struct.TYPE_7__** %11)
  br label %87

87:                                               ; preds = %82, %68
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %12, align 4
  br label %25

91:                                               ; preds = %25
  ret void
}

declare dso_local %struct.TYPE_7__* @hb_list_item(i32*, i32) #1

declare dso_local i32 @MIN(i64, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @hb_list_rem(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @hb_buffer_close(%struct.TYPE_7__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
