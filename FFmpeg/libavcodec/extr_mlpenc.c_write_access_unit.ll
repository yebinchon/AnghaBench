; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpenc.c_write_access_unit.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpenc.c_write_access_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@MAX_SUBSTREAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32, i32)* @write_access_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_access_unit(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* @MAX_SUBSTREAMS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load i32*, i32** %7, align 8
  store i32* %21, i32** %13, align 8
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %82

25:                                               ; preds = %4
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 4
  store i32* %27, i32** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 %28, 4
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 28
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %82

36:                                               ; preds = %32
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @write_major_sync(%struct.TYPE_6__* %37, i32* %38, i32 %39)
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 28
  store i32* %42, i32** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sub nsw i32 %43, 28
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %36, %25
  %46 = load i32*, i32** %7, align 8
  store i32* %46, i32** %12, align 8
  store i32 0, i32* %14, align 4
  br label %47

47:                                               ; preds = %58, %45
  %48 = load i32, i32* %14, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ult i32 %48, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  store i32* %55, i32** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sub nsw i32 %56, 2
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %14, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %14, align 4
  br label %47

61:                                               ; preds = %47
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32* @write_substrs(%struct.TYPE_6__* %62, i32* %63, i32 %64, i32 %65, i32* %20)
  store i32* %66, i32** %7, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = load i32*, i32** %13, align 8
  %69 = ptrtoint i32* %67 to i64
  %70 = ptrtoint i32* %68 to i64
  %71 = sub i64 %69, %70
  %72 = sdiv exact i64 %71, 4
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %15, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = load i32, i32* %15, align 4
  %78 = sdiv i32 %77, 2
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @write_frame_headers(%struct.TYPE_6__* %74, i32* %75, i32* %76, i32 %78, i32 %79, i32* %20)
  %81 = load i32, i32* %15, align 4
  store i32 %81, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %82

82:                                               ; preds = %61, %35, %24
  %83 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @write_major_sync(%struct.TYPE_6__*, i32*, i32) #2

declare dso_local i32* @write_substrs(%struct.TYPE_6__*, i32*, i32, i32, i32*) #2

declare dso_local i32 @write_frame_headers(%struct.TYPE_6__*, i32*, i32*, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
