; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/linux/extr_in_evdev.c_in_evdev_clean_binds.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/linux/extr_in_evdev.c_in_evdev_clean_binds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }

@KEY_CNT = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"in_evdev: ioctl failed\00", align 1
@KEY_LEFT = common dso_local global i32 0, align 4
@KEY_RIGHT = common dso_local global i32 0, align 4
@KEY_UP = common dso_local global i32 0, align 4
@KEY_DOWN = common dso_local global i32 0, align 4
@IN_BINDTYPE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @in_evdev_clean_binds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_evdev_clean_binds(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %15 = load i32, i32* @KEY_CNT, align 4
  %16 = sext i32 %15 to i64
  %17 = udiv i64 %16, 4
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %21, %struct.TYPE_2__** %9, align 8
  store i32 0, i32* %14, align 4
  %22 = mul nuw i64 4, %17
  %23 = trunc i64 %22 to i32
  %24 = call i32 @memset(i32* %19, i32 0, i32 %23)
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @EV_KEY, align 4
  %29 = mul nuw i64 4, %17
  %30 = trunc i64 %29 to i32
  %31 = call i32 @EVIOCGBIT(i32 %28, i32 %30)
  %32 = call i32 @ioctl(i32 %27, i32 %31, i32* %19)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = call i32 @perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load i32, i32* @KEY_LEFT, align 4
  %49 = call i32 @KEYBITS_BIT_SET(i32 %48)
  %50 = load i32, i32* @KEY_RIGHT, align 4
  %51 = call i32 @KEYBITS_BIT_SET(i32 %50)
  %52 = load i32, i32* @KEY_UP, align 4
  %53 = call i32 @KEYBITS_BIT_SET(i32 %52)
  %54 = load i32, i32* @KEY_DOWN, align 4
  %55 = call i32 @KEYBITS_BIT_SET(i32 %54)
  br label %56

56:                                               ; preds = %47, %42, %37
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %97, %56
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @KEY_CNT, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %100

61:                                               ; preds = %57
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %93, %61
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @IN_BINDTYPE_COUNT, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %96

66:                                               ; preds = %62
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @IN_BIND_OFFS(i32 %67, i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @KEYBITS_BIT(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %66
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 0, i32* %77, align 4
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 0, i32* %81, align 4
  br label %82

82:                                               ; preds = %73, %66
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %14, align 4
  br label %92

92:                                               ; preds = %89, %82
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  br label %62

96:                                               ; preds = %62
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %57

100:                                              ; preds = %57
  %101 = load i32, i32* %14, align 4
  %102 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %102)
  ret i32 %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @ioctl(i32, i32, i32*) #2

declare dso_local i32 @EVIOCGBIT(i32, i32) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @KEYBITS_BIT_SET(i32) #2

declare dso_local i32 @IN_BIND_OFFS(i32, i32) #2

declare dso_local i32 @KEYBITS_BIT(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
