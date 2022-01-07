; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_iohidmanager_hid.c_iohidmanager_hid_joypad_button.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_iohidmanager_hid.c_iohidmanager_hid_joypad_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32** }

@MAX_USERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @iohidmanager_hid_joypad_button to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iohidmanager_hid_joypad_button(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @GET_HAT_DIR(i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @iohidmanager_hid_joypad_get_buttons(i8* %16, i32 %17, i32* %8)
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %78

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @GET_HAT(i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp uge i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %106

27:                                               ; preds = %21
  %28 = load i32, i32* %10, align 4
  switch i32 %28, label %77 [
    i32 130, label %29
    i32 129, label %41
    i32 128, label %53
    i32 131, label %65
  ]

29:                                               ; preds = %27
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32**, i32*** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %38, 0
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %4, align 4
  br label %106

41:                                               ; preds = %27
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %50, 0
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %4, align 4
  br label %106

53:                                               ; preds = %27
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %62, 0
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %4, align 4
  br label %106

65:                                               ; preds = %27
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32**, i32*** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %74, 0
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %4, align 4
  br label %106

77:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %106

78:                                               ; preds = %3
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @MAX_USERS, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %105

82:                                               ; preds = %78
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %83, 32
  br i1 %84, label %85, label %105

85:                                               ; preds = %82
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i64 @BIT256_GET(i32 %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %102, label %90

90:                                               ; preds = %85
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %7, align 4
  %99 = shl i32 1, %98
  %100 = and i32 %97, %99
  %101 = icmp ne i32 %100, 0
  br label %102

102:                                              ; preds = %90, %85
  %103 = phi i1 [ true, %85 ], [ %101, %90 ]
  %104 = zext i1 %103 to i32
  store i32 %104, i32* %4, align 4
  br label %106

105:                                              ; preds = %82, %78
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %102, %77, %65, %53, %41, %29, %26
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @GET_HAT_DIR(i32) #1

declare dso_local i32 @iohidmanager_hid_joypad_get_buttons(i8*, i32, i32*) #1

declare dso_local i32 @GET_HAT(i32) #1

declare dso_local i64 @BIT256_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
